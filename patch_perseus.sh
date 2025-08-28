#!/bin/bash

# Check if bundle id is provided
if [ -z "$1" ]
then
    echo "No bundle id provided. Usage: ./patch_perseus.sh bundle.id.com.xy"
    exit 1
fi

# Set bundle id
bundle_id=$1

# Fixed download URL for CN version (APK format)
cn_download_url="https://pkg.biligame.com/games/blhx_9.6.11_0814_1_20250819_110937_2a0c3.apk"

# Download apkeep
get_artifact_download_url () {
    # Usage: get_download_url <repo_name> <artifact_name> <file_type>
    local api_url="https://api.github.com/repos/$1/releases/latest"
    local result=$(curl -s $api_url | jq ".assets[] | select(.name | contains(\"$2\") and contains(\"$3\") and (contains(\".sig\") | not)) | .browser_download_url")
    echo ${result:1:-1}
}

# Artifacts associative array aka dictionary
declare -A artifacts

artifacts["apkeep"]="EFForg/apkeep apkeep-x86_64-unknown-linux-gnu"
artifacts["apktool.jar"]="iBotPeaches/Apktool apktool .jar"

# Fetch all the dependencies
for artifact in "${!artifacts[@]}"; do
    if [ ! -f $artifact ]; then
        echo "Downloading $artifact"
        curl -L -o $artifact $(get_artifact_download_url ${artifacts[$artifact]})
    fi
done

chmod +x apkeep

# Download Azur Lane
download_azurlane () {
    # Check if downloading CN version (APK format)
    if [ "$bundle_id" = "com.bilibili.azurlane" ]; then
        echo "Downloading CN version APK from fixed URL"
        # 直接下载到正确的文件名
        curl -o "${bundle_id}.apk" "$cn_download_url"
        # wget -U "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36" "$cn_download_url" -O "${bundle_id}.apk"
        if [ $? -eq 0 ] && [ -f "${bundle_id}.apk" ]; then
            echo "CN APK downloaded successfully!"
        else
            echo "ERROR: Failed to download CN APK"
            exit 1
        fi
    else
        # Use original apkeep method for other versions (XAPK format)
        if [ ! -f "${bundle_id}.xapk" ]; then
            ./apkeep -a ${bundle_id} .
        fi
    fi
}

# 统一处理所有版本
if [ ! -f "${bundle_id}.apk" ]; then
    echo "Getting Azur Lane apk for ${bundle_id}"
    download_azurlane
    
    # 对于非CN版本，需要从xapk中提取apk
    if [ "$bundle_id" != "com.bilibili.azurlane" ]; then
        echo "Extracting APK from XAPK for ${bundle_id}"
        if [ -f "${bundle_id}.xapk" ]; then
            unzip -o ${bundle_id}.xapk ${bundle_id}.apk
            # 创建目录并复制manifest用于版本检测
            mkdir -p AzurLane
            unzip -o ${bundle_id}.xapk manifest.json -d AzurLane/
        else
            echo "ERROR: XAPK file not found for ${bundle_id}"
            exit 1
        fi
    fi
fi

# 验证APK文件完整性
echo "Verifying APK file integrity..."
if ! unzip -t "${bundle_id}.apk" >/dev/null 2>&1; then
    echo "ERROR: APK file is corrupted or invalid!"
    echo "Please check the download source and try again."
    exit 1
fi

echo "Decompile Azur Lane apk"
java -jar apktool.jar d -f ${bundle_id}.apk
if [ $? -ne 0 ]; then
    echo "Decompile failed!"
    exit 1
fi

echo "Copy Perseus libs"
# 确保目标目录存在
if [ ! -d "${bundle_id}/lib/" ]; then
    echo "ERROR: Directory ${bundle_id}/lib/ does not exist!"
    exit 1
fi
cp -r Perseus/src/libs/. ${bundle_id}/lib/
if [ $? -ne 0 ]; then
    echo "Copy libs failed!"
    exit 1
fi

echo "Patching Azur Lane with Perseus"
# 确保smali文件存在
if [ ! -f "${bundle_id}/smali_classes2/com/unity3d/player/UnityPlayerActivity.smali" ]; then
    echo "ERROR: UnityPlayerActivity.smali not found!"
    exit 1
fi

oncreate=$(grep -n -m 1 'onCreate' ${bundle_id}/smali_classes2/com/unity3d/player/UnityPlayerActivity.smali | sed  's/[0-9]*\:\(.*\)/\1/')
if [ -z "$oncreate" ]; then
    echo "ERROR: onCreate method not found!"
    exit 1
fi

sed -ir "s#\($oncreate\)#.method private static native init(Landroid/content/Context;)V\n.end method\n\n\1#" ${bundle_id}/smali_classes2/com/unity3d/player/UnityPlayerActivity.smali
sed -ir "s#\($oncreate\)#\1\n    const-string v0, \"Perseus\"\n\n    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V\n\n    invoke-static {p0}, Lcom/unity3d/player/UnityPlayerActivity;->init(Landroid/content/Context;)V\n#" ${bundle_id}/smali_classes2/com/unity3d/player/UnityPlayerActivity.smali

echo "Build Patched Azur Lane apk"
# 确保build目录存在
mkdir -p build
java -jar apktool.jar b -f ${bundle_id} -o build/${bundle_id}.patched.apk
if [ $? -ne 0 ]; then
    echo "Build failed!"
    exit 1
fi

echo "Set Github Release version"
# For CN version, use fixed version or extract from filename
if [ "$bundle_id" = "com.bilibili.azurlane" ]; then
    # 从文件名中提取版本号，或者使用固定版本
    version="9.6.11"
    echo "PERSEUS_VERSION=$version" >> $GITHUB_ENV
    echo "VERSION=$version" >> $GITHUB_ENV
else
    if [ -f "AzurLane/manifest.json" ]; then
        version=$(jq -r '.version_name' AzurLane/manifest.json)
        echo "PERSEUS_VERSION=$version" >> $GITHUB_ENV
        echo "VERSION=$version" >> $GITHUB_ENV
    else
        echo "PERSEUS_VERSION=unknown" >> $GITHUB_ENV
        echo "VERSION=unknown" >> $GITHUB_ENV
    fi
fi

echo "Build completed successfully for $bundle_id"