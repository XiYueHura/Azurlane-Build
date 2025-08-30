.class public Lcom/android/support/Launcher;
.super Landroid/app/Service;
.source "Launcher.java"


# instance fields
.field menu:Lcom/android/support/Menu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private Thread()V
    .locals 0

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/support/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/support/Launcher;

    .line 10
    invoke-direct {p0}, Lcom/android/support/Launcher;->Thread()V

    return-void
.end method

.method private isNotInGame()Z
    .locals 3

    .line 40
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 41
    .local v0, "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 42
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 17
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 19
    new-instance v0, Lcom/android/support/Menu;

    invoke-direct {v0, p0}, Lcom/android/support/Menu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/support/Launcher;->menu:Lcom/android/support/Menu;

    .line 20
    invoke-virtual {v0}, Lcom/android/support/Menu;->SetWindowManagerWindowService()V

    .line 21
    iget-object v0, p0, Lcom/android/support/Launcher;->menu:Lcom/android/support/Menu;

    invoke-virtual {v0}, Lcom/android/support/Menu;->ShowMenu()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 25
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/support/Launcher$1;

    invoke-direct {v1, p0, v0}, Lcom/android/support/Launcher$1;-><init>(Lcom/android/support/Launcher;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 51
    iget-object v0, p0, Lcom/android/support/Launcher;->menu:Lcom/android/support/Menu;

    invoke-virtual {v0}, Lcom/android/support/Menu;->onDestroy()V

    .line 52
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .line 67
    const/4 v0, 0x2

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 56
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 58
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 62
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-virtual {p0}, Lcom/android/support/Launcher;->stopSelf()V

    .line 63
    return-void
.end method
