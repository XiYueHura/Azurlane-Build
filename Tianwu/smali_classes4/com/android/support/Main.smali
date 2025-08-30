.class public Lcom/android/support/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "UE4"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native CheckOverlayPermission(Landroid/content/Context;)V
.end method

.method public static Start(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/support/CrashHandler;->init(Landroid/content/Context;Z)V

    .line 47
    const-string v0, "Saber"

    invoke-static {p0, v0}, Lcom/android/support/Main;->copyAssetsToCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcom/android/support/Main;->CheckOverlayPermission(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public static StartWithoutPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/support/CrashHandler;->init(Landroid/content/Context;Z)V

    .line 33
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/support/Menu;

    invoke-direct {v0, p0}, Lcom/android/support/Menu;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "menu":Lcom/android/support/Menu;
    invoke-virtual {v0}, Lcom/android/support/Menu;->SetWindowManagerActivity()V

    .line 37
    invoke-virtual {v0}, Lcom/android/support/Menu;->ShowMenu()V

    .line 38
    .end local v0    # "menu":Lcom/android/support/Menu;
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p0}, Lcom/android/support/Main;->CheckOverlayPermission(Landroid/content/Context;)V

    .line 42
    :goto_0
    return-void
.end method

.method public static copyAssetsToCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v0, "outFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 60
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 61
    .local v2, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 62
    .local v3, "out":Ljava/io/OutputStream;
    invoke-static {v2, v3}, Lcom/android/support/Main;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 63
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 64
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 65
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 66
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 75
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 76
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method
