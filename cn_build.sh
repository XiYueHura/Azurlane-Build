# 公共变量参数 部分从Github Action中传入
BUILD_TOOLS_DIR=$(find $ANDROID_HOME/build-tools -maxdepth 1 -type d | sort -V | tail -n 1)
AAPT_PATH="$BUILD_TOOLS_DIR/aapt"
DOWNLOAD_DIR="."
GAME_SERVER=$1
APK_FILENAME="$2.apk"
APK_URL="$3"

# 检查参数
CHECK_PARAM() {
    if [ -z "$APK_URL" ] || [ -z "$APK_FILENAME" ] || [ -z "$GAME_SERVER" ]; then
        echo "服务器名称、下载链接或文件名不能为空"
        exit 1
    fi

    if ! echo "$2" | grep -q "^[a-zA-Z0-9]*$"; then
        echo "APK名称参数包含非英文数字字符,请重新输入"
        exit 1
    fi
}

# 下载ApkTool
DOWNLOAD_APKTOOL() {
	local OWNER="iBotPeaches"
	local REPO="Apktool"
	local FILENAME="apktool.jar"

	local API_RESPONSE=$(curl -s "https://api.github.com/repos/$OWNER/$REPO/releases/latest")
	local DOWNLOAD_LINK=$(echo "$API_RESPONSE" | jq -r '.assets[] | select(.name | endswith(".jar")) | .browser_download_url' | head -n 1)
	if [ -z "$DOWNLOAD_LINK" ] || [ "$DOWNLOAD_LINK" == "null" ]; then
		echo "无法找到Apktool下载链接"
		exit 1
	fi

	curl -L -o "$DOWNLOAD_DIR/$FILENAME" "$DOWNLOAD_LINK"
	if [ $? -eq 0 ]; then
		echo "Apktool下载成功！文件保存至：$DOWNLOAD_DIR/$FILENAME"
	else
		echo "Apktool下载失败，请重试"
		exit 1
	fi
}

# 下载 Mod Patch 文件并解压
DOWNLOAD_MOD_MENU() {
	local OWNER="JMBQ"
	local REPO="azurlane"
	local FILENAME="MOD_MENU.zip"

	local API_RESPONSE=$(curl -s "https://api.github.com/repos/$OWNER/$REPO/releases/latest")
	local JMBQ_VERSION=$(echo "$API_RESPONSE" | jq -r '.tag_name')
	local DOWNLOAD_LINK=$(echo "$API_RESPONSE" | jq -r '.assets[0].browser_download_url')

	if [ -z "$DOWNLOAD_LINK" ] || [ "$DOWNLOAD_LINK" == "null" ]; then
		echo "无法获取MOD Patch文件下载链接"
		exit 1
	fi

	curl -L -o "$DOWNLOAD_DIR/$FILENAME" "$DOWNLOAD_LINK"
	if [ $? -eq 0 ]; then
		echo "补丁下载成功！文件保存至：$DOWNLOAD_DIR/$FILENAME"
	else
		echo "补丁下载失败，请重试"
		exit 1
	fi

    unzip -q "$DOWNLOAD_DIR/$FILENAME" -d "$DOWNLOAD_DIR/JMBQ"
    if [ $? -ne 0 ]; then
        echo "错误: 解压 $FILENAME 失败！"
        exit 1
    fi

    echo "JMBQ_VERSION=$JMBQ_VERSION" >> "$GITHUB_ENV"
}

DOWNLOAD_APK() {
    curl -L -o "$DOWNLOAD_DIR/$APK_FILENAME" "$APK_URL"
    if [ $? -ne 0 ]; then
        echo "APK下载失败"
        exit 1
    fi
    echo "APK [$APK_FILENAME] 下载完成"
}

VERIFY_APK() {
    [ ! -f "$DOWNLOAD_DIR/$APK_FILENAME" ] && { echo "APK文件未找到"; exit 1; }
    
    local FILE_SIZE=$(stat -f%z "$DOWNLOAD_DIR/$APK_FILENAME" 2>/dev/null || stat -c%s "$DOWNLOAD_DIR/$APK_FILENAME" 2>/dev/null)
    [ "$FILE_SIZE" -lt 1024 ] && { echo "APK文件大小异常"; exit 1; }
    unzip -t "$DOWNLOAD_DIR/$APK_FILENAME" >/dev/null 2>&1 || { echo "APK文件损坏"; exit 1; }
    echo "APK验证通过"
}

# APK 解包
DECODE_APK() {
    echo "APK反编译"
    java -jar "$DOWNLOAD_DIR/apktool.jar" d -f "$DOWNLOAD_DIR/$APK_FILENAME" -o "$DOWNLOAD_DIR/DECODE_Output"
	if [ $? -ne 0 ]; then
		echo "错误: APK 反编译失败！"
		exit 1
	fi
	echo "反编译完成。"
}

# 删除源APK
DELETE_ORGINAL_APK() {
    rm -rf "$DOWNLOAD_DIR/$APK_FILENAME"
}

# 合入MOD
PATCH_APK() {
    cp -r "$DOWNLOAD_DIR/JMBQ/assets/." "$DOWNLOAD_DIR/DECODE_Output/assets/"
	if [ $? -ne 0 ]; then
		echo "错误: 复制资源文件失败！"
		exit 1
	fi
    echo "复制资源文件完成"

    local MAX_CLASS_NUM=$(find "$DOWNLOAD_DIR/DECODE_Output/" -maxdepth 1 -type d -name "smali_classes*" 2>/dev/null | sed 's/.*smali_classes//' | sort -n | tail -1)
    MAX_CLASS_NUM=${MAX_CLASS_NUM:-3}
    local NEW_CLASS_NUM=$((MAX_CLASS_NUM + 1))
    local NEW_SMALI_DIR="smali_classes${NEW_CLASS_NUM}"
    local SRC_DIR=$(find "$DOWNLOAD_DIR/JMBQ" -maxdepth 1 -type d -name "smali_classes*")

    if [ -z "$SRC_DIR" ]; then
        echo "错误: MOD 补丁目录中未找到 smali_classes 目录！"
        exit 1
    fi

    cp -r "$SRC_DIR" "$DOWNLOAD_DIR/DECODE_Output/$NEW_SMALI_DIR" || {
        echo "错误: 复制 smali 文件失败！"
        exit 1
    }
    echo "smali文件复制完成"

    local SMALI_FILE=$(find "$DOWNLOAD_DIR/DECODE_Output" -type f -name "UnityPlayerActivity.smali")
    if [ -z "$SMALI_FILE" ]; then
        echo "错误: UnityPlayerActivity.smali 文件未找到！"
        exit 1
    fi
    echo "已找到 UnityPlayerActivity.smali 文件，路径为: $SMALI_FILE"

    local LINE_NUM=$(grep -n "\.method public constructor <init>()V" "$SMALI_FILE" | cut -d: -f1)
    [ -z "$LINE_NUM" ] && {
        echo "未找到构造函数"
        exit 1
    }

    echo "正在修改 $SMALI_FILE 文件..."
    sed -i -e "/\.method public constructor <init>()V/,/\.end method/{" \
           -e "/\.locals 0/a\    invoke-static {}, Lcom/android/support/Main;->Start()V" \
           -e "}" "$SMALI_FILE" || {
        echo "错误：添加smali代码失败，请检查文件路径、权限或文件内容格式。"
        exit 1
    }
    echo "smali代码添加成功！"

    echo "正在修改 AndroidManifest.xml 文件..."
    local MANIFEST_FILE="$DOWNLOAD_DIR/DECODE_Output/AndroidManifest.xml" 
    sed -i 's#</application>#    <service android:name="com.android.support.Launcher" android:enabled="true" android:exported="false" android:stopWithTask="true"/>\n    </application>\n    <uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW"/>#' "$MANIFEST_FILE" || {
        echo "错误：修改 AndroidManifest.xml 文件失败，请检查文件路径、权限或文件内容格式。"
        exit 1
    }
    echo "修改成功！"
    echo "补丁完成。"
}

# 打包APK
BUILD_APK() {
	echo "正在重新构建已打补丁的 APK 文件..."
	java -jar "$DOWNLOAD_DIR/apktool.jar" b -f "$DOWNLOAD_DIR/DECODE_Output" -o "$DOWNLOAD_DIR/patched.apk"
	if [ $? -ne 0 ]; then
		echo "错误: APK 构建失败！"
		exit 1
	fi
	echo "APK 构建成功"
}

# 优化并签名APK
OPTIMIZE_AND_SIGN_APK() {
	local KEY_DIR="$DOWNLOAD_DIR/key/"
	local PRIVATE_KEY="${KEY_DIR}testkey.pk8"
	local CERTIFICATE="${KEY_DIR}testkey.x509.pem"
    local UNSIGNED_APK="patched.unsigned.apk"
    local INPUT_APK="$DOWNLOAD_DIR/patched.apk"
    local OUTPUT_APK="$DOWNLOAD_DIR/$UNSIGNED_APK"
    local FINAL_APK="$INPUT_APK"

    if [ ! -f "$INPUT_APK" ]; then
        echo "错误：找不到输入APK文件: $INPUT_APK"
        exit 1
    fi

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

	echo "正在优化"
	if zipalign -f 4 "$INPUT_APK" "$OUTPUT_APK"; then
		echo "优化成功"
		rm "$INPUT_APK"

		echo "正在签名"
		if apksigner sign --key "$PRIVATE_KEY" --cert "$CERTIFICATE" "$OUTPUT_APK"; then
			echo "签名成功"
            mv "$OUTPUT_APK" "$FINAL_APK"
		else
			echo "签名失败"
			exit 1
		fi
	else
		echo "优化失败"
		exit 1
	fi
}

# 重命名APK并传回游戏版本
RENAME_APK_AND_GET_GAME_VERSION() {
    if [ -f "$DOWNLOAD_DIR/patched.apk" ]; then
        if [ -f "$AAPT_PATH" ]; then
            GAME_VERSION=$("$AAPT_PATH" dump badging "$DOWNLOAD_DIR/patched.apk" | grep "versionName" | sed "s/.*versionName='\([^']*\)'.*/\1/" | head -1)
            PACKAGE_NAME=$("$AAPT_PATH" dump badging "$DOWNLOAD_DIR/patched.apk" | grep "package: name=" | cut -d"'" -f2 | head -1)
            if [ -z "$GAME_VERSION" ] || [ "$GAME_VERSION" = "''" ]; then
                GAME_VERSION="未知"
                echo "警告：无法从APK提取版本信息"
            fi
            
            if [ -z "$PACKAGE_NAME" ] || [ "$PACKAGE_NAME" = "''" ]; then
                PACKAGE_NAME="未知"
                echo "警告：无法从APK提取包名"
            fi
            mv "$DOWNLOAD_DIR/patched.apk" "$DOWNLOAD_DIR/$PACKAGE_NAME.apk" 
            echo "重命名成功 [$PACKAGE_NAME.apk]"
        else
            echo "错误：找不到aapt工具: $AAPT_PATH"
        fi
    else
        echo "错误：APK文件不存在: $DOWNLOAD_DIR/patched.apk"
    fi

    echo "VERSION=$GAME_VERSION" >> "$GITHUB_ENV"
}

# 生成7z分卷压缩包
CREATE_SPLIT_ARCHIVES() {
    local FINAL_APK="$DOWNLOAD_DIR/$PACKAGE_NAME.apk"
    if [ ! -f "$FINAL_APK" ]; then
        echo "错误: 最终 APK 文件未找到: $FINAL_APK"
        exit 1
    fi
    echo "正在压缩 $FINAL_APK"
    7z a -v800M "$GAME_SERVER-V.$GAME_VERSION.7z" "$FINAL_APK" || {
        echo "错误: 7z 压缩失败！"
        exit 1
    }
}

# 总执行阶段
CHECK_PARAM
DOWNLOAD_APKTOOL
DOWNLOAD_MOD_MENU
DOWNLOAD_APK
VERIFY_APK
DECODE_APK
DELETE_ORGINAL_APK
PATCH_APK
BUILD_APK
RENAME_APK_AND_GET_GAME_VERSION
CREATE_SPLIT_ARCHIVES