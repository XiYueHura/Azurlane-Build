#!/bin/bash

# ==============================================================================
# 全局变量和配置
# ==============================================================================

# 检查是否提供了 bundle id
if [ -z "$1" ]; then
	echo "错误：未提供包名"
	exit 1
fi

bundle_id=$1

# 国服Bilibili配置
cn_download_url=""

# 其他版本的配置
other_bundle_id=""
other_download_url=""

# 如果bundle_id为"com.bilibili.azurlane"，则使用Bilibili版本的配置
if [ "$bundle_id" = "com.bilibili.azurlane" ]; then
	if [ -z "$2" ]; then
		echo "错误：当使用'CN'时，需要提供下载链接"
		exit 1
	fi

	cn_download_url=$2
	echo "使用国服Bilibili版本配置: 包名=$bundle_id, 下载链接=$cn_download_url"

# 如果bundle_id为"other"，则使用其他版本的配置
elif [ "$bundle_id" = "other" ]; then
	if [ -z "$2" ]; then
		echo "错误：当使用'other'时，需要提供实际的包名或者名称"
		exit 1
	fi
	if [ -z "$3" ]; then
		echo "错误：当使用'other'时，需要提供下载链接"
		exit 1
	fi

	other_bundle_id=$2
	other_download_url=$3
	echo "使用其他版本配置: 包名=$other_bundle_id, 下载链接=$other_download_url"
fi

# ==============================================================================
# 函数定义
# ==============================================================================

# 获取 GitHub Release 最新版本的下载链接
get_artifact_download_url() {
	# 用法: get_artifact_download_url <仓库名> <文件关键词> <文件类型>
	local api_url="https://api.github.com/repos/$1/releases/latest"
	local result=$(curl -s $api_url | jq ".assets[] | select(.name | contains(\"$2\") and contains(\"$3\") and (contains(\".sig\") | not)) | .browser_download_url")
	echo ${result:1:-1}
}

# 下载所需依赖文件（apkeep, apktool.jar）
download_dependencies() {
	echo "正在检查和下载依赖项..."
	declare -A artifacts
	artifacts["apkeep"]="EFForg/apkeep apkeep-x86_64-unknown-linux-gnu"
	artifacts["apktool.jar"]="iBotPeaches/Apktool apktool .jar"

	for artifact in "${!artifacts[@]}"; do
		if [ ! -f $artifact ]; then
			echo "正在下载 $artifact ..."
			curl -L -o $artifact $(get_artifact_download_url ${artifacts[$artifact]})
			if [ $? -ne 0 ]; then
				echo "错误: 下载 $artifact 失败！"
				exit 1
			fi
		fi
	done
	chmod +x apkeep
	echo "所有依赖项已就绪。"
}

# 获取实际使用的包名
get_actual_bundle_id() {
	if [ "$bundle_id" = "other" ]; then
		echo "$other_bundle_id"
	else
		echo "$bundle_id"
	fi
}

# 下载《Azur Lane》APK/XAPK 文件
download_azurlane() {
	local actual_bundle_id=$(get_actual_bundle_id)
	local target_file="${actual_bundle_id}.apk"

	if [ ! -f "$target_file" ]; then
		echo "正在获取《Azur Lane》APK，包名：${actual_bundle_id}"

		# 处理不同版本
		# Bilibili
		if [ "$bundle_id" = "com.bilibili.azurlane" ]; then
			echo "正在从固定链接下载国服（${actual_bundle_id}） APK..."
			curl -L "$cn_download_url" -o "$target_file"
			if [ $? -ne 0 ]; then
				echo "错误: 下载国服 APK 失败！"
				exit 1
			fi
			echo "国服 APK 下载成功！"
		# 其他服务器
		elif [ "$bundle_id" = "other" ]; then
			echo "正在从自定义链接下载其他版本（${actual_bundle_id}） APK..."
			curl -L "$other_download_url" -o "$target_file"
			if [ $? -ne 0 ]; then
				echo "错误: 下载其他版本 APK 失败！"
				exit 1
			fi
			echo "其他版本 APK 下载成功！"
		# 外服
		else
			echo "正在使用 apkeep 下载（XAPK 格式）..."
			./apkeep -a "$actual_bundle_id" .
			if [ $? -ne 0 ]; then
				echo "错误: 下载 XAPK 失败！"
				exit 1
			fi
			echo "XAPK 下载成功！"

			# 提取 APK 和 manifest.json
			echo "正在从 XAPK 中提取 APK 文件..."
			unzip -o "${actual_bundle_id}.xapk" "${actual_bundle_id}.apk"
			if [ $? -ne 0 ]; then
				echo "错误: 提取 APK 失败！"
				exit 1
			fi

			mkdir -p "AzurLane"
			unzip -o "${actual_bundle_id}.xapk" "manifest.json" -d "AzurLane/"
			echo "APK 和 manifest.json 提取成功！"
		fi
	fi
}

# 下载 JMBQ 补丁包
download_jmbq_patch() {
	if [ ! -d "JMBQ" ]; then
		local REPO="JMBQ/azurlane"
		local FILENAME="MOD_MENU_2.81.zip"

		echo "正在下载 JMBQ 补丁文件 $FILENAME ..."
		curl -L "https://github.com/$REPO/releases/latest/download/$FILENAME" -o "JMBQ.zip"
		if [ $? -ne 0 ]; then
			echo "错误: 下载 JMBQ.zip 失败！"
			exit 1
		fi

		echo "正在解压 JMBQ.zip ..."
		unzip -q "JMBQ.zip" -d "JMBQ"
		if [ $? -ne 0 ]; then
			echo "错误: 解压 JMBQ.zip 失败！"
			exit 1
		fi

		rm "JMBQ.zip"
		echo "JMBQ 补丁文件已成功解压。"
	fi
}

# 验证 APK 文件完整性并执行解包
verify_and_decompile_apk() {
	local actual_bundle_id=$(get_actual_bundle_id)
	local apk_file="${actual_bundle_id}.apk"

	# 验证 APK 文件完整性
	echo "正在验证 APK 文件完整性..."
	if ! unzip -t "$apk_file" >/dev/null 2>&1; then
		echo "错误: APK 文件已损坏或无效！"
		echo "请检查下载源并重试。"
		exit 1
	fi
	echo "APK 文件验证通过。"

	# 执行 APK 解包
	echo "正在对《Azur Lane》进行反编译..."
	java -jar apktool.jar d -f "$apk_file"
	if [ $? -ne 0 ]; then
		echo "错误: APK 反编译失败！"
		exit 1
	fi
	echo "反编译完成。"

	# 检查 JMBQ 目录是否存在
	if [ ! -d "JMBQ" ]; then
		echo "错误: JMBQ 目录不存在！"
		exit 1
	fi
}

# 打补丁核心逻辑
patch_apk() {
	local actual_bundle_id=$(get_actual_bundle_id)

	echo "正在对《Azur Lane》进行补丁操作..."

	# 1. 复制 JMBQ lib 文件
	echo "正在复制 JMBQ 库文件..."
	if [ ! -d "${actual_bundle_id}/lib/" ]; then
		echo "错误: 目标目录 ${actual_bundle_id}/lib/ 不存在！"
		exit 1
	fi
	cp -r JMBQ/lib/. "${actual_bundle_id}/lib/"
	if [ $? -ne 0 ]; then
		echo "错误: 复制库文件失败！"
		exit 1
	fi

	# 2. 复制 JMBQ smali 文件
	echo "正在复制 JMBQ smali 文件..."
	local SRC_DIR="JMBQ/smali_classes4"

	# 检查原始源目录是否存在
	if [ ! -d "$SRC_DIR" ]; then
		echo "错误: 源目录 $SRC_DIR 不存在！"
		exit 1
	fi

	# 查找目标目录中最大的 smali_classes 目录编号
	local MAX_CLASS_NUM=3
	if [ -d "${actual_bundle_id}/" ]; then
		# 使用 find 查找所有 smali_classesX 目录，并提取最大的编号
		MAX_CLASS_NUM=$(find "${actual_bundle_id}/" -maxdepth 1 -type d -name "smali_classes*" | sed 's/.*smali_classes//' | sort -n | tail -1)
		# 如果没有找到，将编号重置为 3
		[ -z "$MAX_CLASS_NUM" ] && MAX_CLASS_NUM=3
	fi

	# 计算新的 smali_classes 目录编号
	local NEW_CLASS_NUM=$((MAX_CLASS_NUM + 1))
	local NEW_SRC_PATH="JMBQ/smali_classes${NEW_CLASS_NUM}"

	# 只有当新的目录路径与旧的目录路径不同时，才执行重命名
	if [ "$SRC_DIR" != "$NEW_SRC_PATH" ]; then
		echo "正在将 $SRC_DIR 重命名为 $NEW_SRC_PATH"
		mv "$SRC_DIR" "$NEW_SRC_PATH"
		if [ $? -ne 0 ]; then
			echo "错误: 移动 smali 文件失败！"
			exit 1
		fi
	else
		echo "新的目录名与原目录名相同，跳过重命名。"
	fi

	# 复制新的目录到目标位置
	cp -r "$NEW_SRC_PATH" "${actual_bundle_id}/"
	if [ $? -ne 0 ]; then
		echo "错误: 复制 smali 文件失败！"
		exit 1
	fi

	echo "成功复制 JMBQ smali 文件到 ${actual_bundle_id}/smali_classes${NEW_CLASS_NUM}/"

	# 3. 修改 UnityPlayerActivity.smali
	# 在指定目录下自动查找 UnityPlayerActivity.smali 文件
	local SMALI_FILE=$(find "${actual_bundle_id}" -type f -name "UnityPlayerActivity.smali")
	# 检查是否找到了文件
	if [ -z "$SMALI_FILE" ]; then
		echo "错误: UnityPlayerActivity.smali 文件未找到！"
		exit 1
	fi
	echo "已找到 UnityPlayerActivity.smali 文件，路径为: $SMALI_FILE"

	# 先找到构造函数开始的位置
	local LINE_NUM=$(grep -n "\.method public constructor <init>()V" "$SMALI_FILE" | cut -d: -f1)

	if [ -n "$LINE_NUM" ]; then
		echo "正在修改 $SMALI_FILE 文件..."

		# 使用更可靠的 sed 语法
		sed -i -e "/\.method public constructor <init>()V/,/\.end method/{" \
			-e "/\.locals 0/a\    invoke-static {}, Lcom/android/support/Main;->Start()V" \
			-e "}" "$SMALI_FILE"

		# 检查 sed 命令的退出状态
		if [ $? -ne 0 ]; then
			echo "错误：添加代码失败，请检查文件路径、权限或文件内容格式。"
			exit 1
		else
			echo "代码添加成功！"
		fi
	else
		echo "未找到构造函数"
		exit 1
	fi

	# 4. 修改 AndroidManifest.xml
	echo "正在修改 AndroidManifest.xml 文件..."
	sed -i 's#</application>#    <service android:name="com.android.support.Launcher" android:enabled="true" android:exported="false" android:stopWithTask="true"/>\n    </application>\n    <uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW"/>#' "${actual_bundle_id}/AndroidManifest.xml"
	if [ $? -ne 0 ]; then
			echo "错误：修改 AndroidManifest.xml 文件失败，请检查文件路径、权限或文件内容格式。"
			exit 1
		else
			echo "修改成功！"
		fi
	echo "补丁完成。"
}

# 构建最终的 APK 文件
build_apk() {
	local actual_bundle_id=$(get_actual_bundle_id)

	echo "正在重新构建已打补丁的 APK 文件..."
	mkdir -p build
	java -jar apktool.jar b -f "$actual_bundle_id" -o "build/${actual_bundle_id}.patched.apk"
	if [ $? -ne 0 ]; then
		echo "错误: APK 构建失败！"
		exit 1
	fi
	echo "APK 构建成功：build/${actual_bundle_id}.patched.apk"
}

# 优化APK并签名
optimize_and_sign_apk() {
	# 自动检测最新版本的 build-tools
	local BUILD_TOOLS_DIR=$(find $ANDROID_HOME/build-tools -maxdepth 1 -type d | sort -V | tail -n 1)
	local PATH=$PATH:$BUILD_TOOLS_DIR

	# 密钥路径
	local SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
	local KEY_DIR="${SCRIPT_DIR}/key/"
	local PRIVATE_KEY="${KEY_DIR}testkey.pk8"
	local CERTIFICATE="${KEY_DIR}testkey.x509.pem"

	# 检查密钥文件是否存在
	if [ ! -f "$PRIVATE_KEY" ] || [ ! -f "$CERTIFICATE" ]; then
		echo "错误：找不到签名密钥文件"
		echo "请确保以下文件存在："
		echo "  - $PRIVATE_KEY"
		echo "  - $CERTIFICATE"
		exit 1
	else
		echo "已找到签名密钥："
		echo "  - $PRIVATE_KEY"
		echo "  - $CERTIFICATE"
	fi

	# 处理 APK 文件
	for f in build/*.apk; do
		if [ ! -f "$f" ]; then
			echo "未找到 APK 文件"
			continue
		fi

		echo "正在处理: $f"

		# 创建临时文件
		local UNSIGNED_APK="${f%.apk}.unsigned.apk"

		# 复制文件而不是移动，避免原文件丢失
		cp "$f" "$UNSIGNED_APK"

		echo "正在优化: $f"
		if zipalign -f 4 "$UNSIGNED_APK" "$f"; then
			echo "优化成功"
			rm "$UNSIGNED_APK"

			echo "正在为 $f 签名"
			if apksigner sign --key "$PRIVATE_KEY" --cert "$CERTIFICATE" "$f"; then
				echo "签名成功"
			else
				echo "签名失败"
				exit 1
			fi
		else
			echo "优化失败"
			rm "$UNSIGNED_APK"
			exit 1
		fi
	done

	echo "所有 APK 处理完成"
}

# 设置 GitHub Actions 的版本环境变量
set_github_version() {
    echo "正在设置版本环境变量..."
    local version="未知"
    local package_name="未知"
    local actual_bundle_id=$(get_actual_bundle_id)

    # 查找aapt工具
    local BUILD_TOOLS_DIR=$(find $ANDROID_HOME/build-tools -maxdepth 1 -type d | sort -V | tail -n 1)
    local AAPT_PATH="$BUILD_TOOLS_DIR/aapt"

    # 检查APK文件是否存在
    if [ -f "${actual_bundle_id}.apk" ]; then
        # 检查aapt工具是否存在
        if [ -f "$AAPT_PATH" ]; then
            echo "使用aapt工具提取APK信息: $AAPT_PATH"
            
            # 从APK中提取版本信息
            version=$("$AAPT_PATH" dump badging "${actual_bundle_id}.apk" | grep "versionName" | sed "s/.*versionName='\([^']*\)'.*/\1/" | head -1)
            
            # 从APK中提取包名
            package_name=$("$AAPT_PATH" dump badging "${actual_bundle_id}.apk" | grep "package: name=" | cut -d"'" -f2 | head -1)
            
            # 验证提取结果
            if [ -z "$version" ] || [ "$version" = "''" ]; then
                version="未知"
                echo "警告：无法从APK提取版本信息"
            fi
            
            if [ -z "$package_name" ] || [ "$package_name" = "''" ]; then
                package_name="未知"
                echo "警告：无法从APK提取包名"
            fi
            
            echo "提取到的版本: $version"
            echo "提取到的包名: $package_name"
            
        else
            echo "错误：找不到aapt工具: $AAPT_PATH"
            echo "可用的build-tools目录:"
            find $ANDROID_HOME/build-tools -maxdepth 1 -type d
        fi
    else
        echo "错误：APK文件不存在: ${actual_bundle_id}.apk"
        echo "当前目录文件:"
        ls -la
    fi

	for f in build/*.apk; do
		if [ ! -f "$f" ]; then
			echo "未找到 APK 文件"
			continue
		fi
		# 获取到包名后重命名编译后APK名称
		mv "$f" "build/${package_name}.patched.apk"
		if [ $? -ne 0 ]; then
			echo "错误: 重命名失败！"
			exit 1
		fi
		echo "已重命名: $f -> build/${package_name}.patched.apk"
	done

    # 设置GitHub环境变量
    echo "VERSION=$version" >> "$GITHUB_ENV"
    echo "BUNDLE=$package_name" >> "$GITHUB_ENV"
    
    echo "版本信息已设置:"
    echo "  - 版本: $version"
    echo "  - 包名: $package_name"
}
# ==============================================================================
# 脚本主执行流程
# ==============================================================================

download_dependencies
download_azurlane
download_jmbq_patch
verify_and_decompile_apk
patch_apk
build_apk
optimize_and_sign_apk
set_github_version

echo "补丁流程执行完毕！"
