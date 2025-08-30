.class Lcom/android/support/CrashHandler$1;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/CrashHandler;->init(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/android/support/CrashHandler$1;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private tryUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 17
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 68
    move-object/from16 v1, p0

    const-string v2, "AppCrash"

    const-string v0, "Try saving log"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy_MM_dd-HH_mm_ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "time":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mod_menu_crash_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".txt"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "fileName":Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v0, v5, :cond_0

    .line 75
    const-string v0, "/storage/emulated/0/Documents/"

    move-object v5, v0

    .local v0, "dirName":Ljava/lang/String;
    goto :goto_0

    .line 77
    .end local v0    # "dirName":Ljava/lang/String;
    :cond_0
    iget-object v0, v1, Lcom/android/support/CrashHandler$1;->val$app:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 80
    .local v5, "dirName":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    .line 82
    .local v6, "crashFile":Ljava/io/File;
    const-string v7, "unknown"

    .line 83
    .local v7, "versionName":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 85
    .local v8, "versionCode":J
    :try_start_0
    iget-object v0, v1, Lcom/android/support/CrashHandler$1;->val$app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v10, v1, Lcom/android/support/CrashHandler$1;->val$app:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 86
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v7, v10

    .line 87
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1c

    if-lt v10, v11, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    goto :goto_1

    .line 88
    :cond_1
    iget v10, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v10, v10

    :goto_1
    move-wide v8, v10

    .line 90
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_2

    .line 89
    :catch_0
    move-exception v0

    .line 94
    :goto_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 95
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 96
    .local v10, "pw":Ljava/io/PrintWriter;
    move-object/from16 v11, p2

    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v12

    .line 98
    .local v12, "fullStackTrace":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    .line 101
    .end local v0    # "sw":Ljava/io/StringWriter;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    .line 102
    .local v10, "devInfo":Ljava/lang/StringBuilder;
    const-string v0, "************* Crash Head ****************\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v13, "Time Of Crash      : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v14, "Device Manufacturer: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v14, "Device Model       : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v14, "Android Version    : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v14, "Android SDK        : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v14, "App VersionName    : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v14, "App VersionCode    : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 116
    .local v13, "errorLog":Ljava/lang/String;
    :try_start_1
    invoke-direct {v1, v6, v13}, Lcom/android/support/CrashHandler$1;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    goto :goto_3

    .line 117
    :catch_1
    move-exception v0

    .line 120
    :goto_3
    iget-object v0, v1, Lcom/android/support/CrashHandler$1;->val$app:Landroid/content/Context;

    const-string v14, "Game has crashed unexpectedly"

    const/4 v15, 0x1

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 121
    iget-object v0, v1, Lcom/android/support/CrashHandler$1;->val$app:Landroid/content/Context;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Log saved to: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "/storage/emulated/0/"

    move-object/from16 v16, v3

    .end local v3    # "time":Ljava/lang/String;
    .local v16, "time":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v15, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    const-string v0, "Done"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 126
    return-void
.end method

.method private writeFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 130
    .local v0, "parentFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 134
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 135
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 137
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 138
    :catch_0
    move-exception v2

    .line 140
    :goto_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 55
    const-string v0, "AppCrash"

    const-string v1, "Error just lunched "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/support/CrashHandler$1;->tryUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    sget-object v1, Lcom/android/support/CrashHandler;->DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Lcom/android/support/CrashHandler;->DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 65
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
