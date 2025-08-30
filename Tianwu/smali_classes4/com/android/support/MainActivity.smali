.class public Lcom/android/support/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field public GameActivity:Ljava/lang/String;

.field public hasLaunched:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    const-string v0, "com.sunborn.girlsfrontline.MainActivity"

    iput-object v0, p0, Lcom/android/support/MainActivity;->GameActivity:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/support/MainActivity;->hasLaunched:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iget-boolean v0, p0, Lcom/android/support/MainActivity;->hasLaunched:Z

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/support/MainActivity;->hasLaunched:Z

    .line 33
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/support/MainActivity;->GameActivity:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/support/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 34
    invoke-static {p0}, Lcom/android/support/Main;->Start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "Mod_menu"

    const-string v2, "Error. Game\'s main activity does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    invoke-static {p0}, Lcom/android/support/Main;->Start(Landroid/content/Context;)V

    .line 46
    return-void
.end method
