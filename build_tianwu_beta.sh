#!/bin/bash

# ==============================================================================
# 全局变量和配置
# ==============================================================================

# 定义国服包名
bundle_id="com.bilibili.azurlane"
# 定义国服下载链接
cn_download_url="https://drive.usercontent.google.com/download?id=1_K7EOoq3Ku3JS63PQpeAv2-t6P-4WhTh&export=download&confirm=t&uuid=f3132d29-4529-4e99-a779-bb5c977849e1&at=AN8xHoqpgPXiw9DWtc24IjYgswtd%3A1756390813525"

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

# 下载《Azur Lane》APK 文件
download_azurlane() {
	if [ ! -f "${bundle_id}.apk" ]; then
		echo "正在下载国服（Bilibili） APK..."
		curl -L "$cn_download_url" -o "${bundle_id}.apk"
		if [ $? -ne 0 ]; then
			echo "错误: 下载国服 APK 失败！"
			exit 1
		fi
		echo "国服 APK 下载成功！"
	fi
}

# 验证 APK 文件完整性并执行解包
verify_and_decompile_apk() {
	# 验证 APK 文件完整性
	echo "正在验证 APK 文件完整性..."
	if ! unzip -t "${bundle_id}.apk" >/dev/null 2>&1; then
		echo "错误: APK 文件已损坏或无效！"
		echo "请检查下载源并重试。"
		exit 1
	fi
	echo "APK 文件验证通过。"

	# 执行 APK 解包
	echo "正在对《Azur Lane》进行反编译..."
	java -jar apktool.jar d -f "${bundle_id}.apk"
	if [ $? -ne 0 ]; then
		echo "错误: APK 反编译失败！"
		exit 1
	fi
	echo "反编译完成。"

	# 检查 Tianwu 目录是否存在
	if [ ! -d "Tianwu" ]; then
    	echo "错误: Tianwu 目录不存在！"
    	exit 1
	fi
}

# 打补丁核心逻辑
patch_apk() {
	echo "正在进行补丁操作..."

	# 1. 复制 Tianwu lib 文件
	echo "正在复制 Tianwu 库文件..."
	if [ ! -d "${bundle_id}/lib/" ]; then
		echo "错误: 目标目录 ${bundle_id}/lib/ 不存在！"
		exit 1
	fi
	cp -r Tianwu/lib/. "${bundle_id}/lib/"
	if [ $? -ne 0 ]; then
		echo "错误: 复制库文件失败！"
		exit 1
	fi

	# 2. 复制 Tianwu smali 文件
	echo "正在复制 Tianwu smali 文件..."
	local SRC_DIR="Tianwu/smali_classes4"

	# 检查原始源目录是否存在
	if [ ! -d "$SRC_DIR" ]; then
		echo "错误: 源目录 $SRC_DIR 不存在！"
		exit 1
	fi

	# 查找目标目录中最大的 smali_classes 目录编号
	local MAX_CLASS_NUM=3
	if [ -d "${bundle_id}/" ]; then
		# 使用 find 查找所有 smali_classesX 目录，并提取最大的编号
		MAX_CLASS_NUM=$(find "${bundle_id}/" -maxdepth 1 -type d -name "smali_classes*" | sed 's/.*smali_classes//' | sort -n | tail -1)
		# 如果没有找到，将编号重置为 3
		[ -z "$MAX_CLASS_NUM" ] && MAX_CLASS_NUM=3
	fi

	# 计算新的 smali_classes 目录编号
	local NEW_CLASS_NUM=$((MAX_CLASS_NUM + 1))
	local NEW_SRC_PATH="Tianwu/smali_classes${NEW_CLASS_NUM}"

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

	# 复制新的目录以及资源到目标位置
	cp -r "$NEW_SRC_PATH" "${bundle_id}/"
	if [ $? -ne 0 ]; then
		echo "错误: 复制 smali 文件失败！"
		exit 1
	fi

	# 首先检查源文件是否存在
	if [ ! -f "Tianwu/cs.png" ]; then
		echo "错误: 源文件 Tianwu/cs.png 不存在！"
		exit 1
	fi

	cp Tianwu/cs.png "${bundle_id}/assets"
	if [ $? -ne 0 ]; then
		echo "错误: 复制资源文件失败！"
		exit 1
	fi

	echo "成功复制 Tianwu smali 文件到 ${bundle_id}/smali_classes${NEW_CLASS_NUM}/"
	echo "资源文件复制成功！"

	# 3. 修改 UnityPlayerActivity.smali
	# 在指定目录下自动查找 UnityPlayerActivity.smali 文件
	local SMALI_FILE=$(find "${bundle_id}" -type f -name "UnityPlayerActivity.smali")
	# 检查是否找到了文件
	if [ -z "$SMALI_FILE" ]; then
		echo "错误: UnityPlayerActivity.smali 文件未找到！"
		exit 1
	fi
	echo "已找到 UnityPlayerActivity.smali 文件，路径为: $SMALI_FILE"

	local oncreate=$(grep -n -m 1 'onCreate' "$SMALI_FILE" | sed  's/[0-9]*\:\(.*\)/\1/')
	if [ -z "$oncreate" ]; then
		echo "错误: <oncreate> 方法未找到！"
		exit 1
	fi
	echo "正在修改 UnityPlayerActivity.smali 文件..."

	sed -ir "N; s#\($oncreate\n    .locals 2\)#\1\n    invoke-static {p0}, Lcom/android/support/Main;->Start(Landroid/content/Context;)V#" "$SMALI_FILE"

	# 4. 修改 AndroidManifest.xml
	echo "正在修改 AndroidManifest.xml 文件..."
	sed -i 's#</application>#    <service android:name="com.android.support.Launcher" android:enabled="true" android:exported="false" android:stopWithTask="true"/>\n    </application>\n    <uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW"/>#' "${bundle_id}/AndroidManifest.xml"
	echo "打补丁完成。"
}

# 构建最终的 APK 文件
build_apk() {
	echo "正在重新构建已打补丁的 APK 文件..."
	mkdir -p build
	java -jar apktool.jar b -f "$bundle_id" -o "build/${bundle_id}.patched.apk"
	if [ $? -ne 0 ]; then
		echo "错误: APK 构建失败！"
		exit 1
	fi
	echo "APK 构建成功：build/${bundle_id}.patched.apk"
}

# 设置 GitHub Actions 的版本环境变量
set_github_version() {
	echo "正在设置版本环境变量..."
	local version="9.6.11"
	echo "PERSEUS_VERSION=$version" >>"$GITHUB_ENV"
	echo "VERSION=$version" >>"$GITHUB_ENV"
	echo "版本：$version 已设置。"
}

# ==============================================================================
# 脚本主执行流程
# ==============================================================================

download_dependencies
download_azurlane
verify_and_decompile_apk
patch_apk
build_apk
set_github_version

echo "补丁流程执行完毕！"
