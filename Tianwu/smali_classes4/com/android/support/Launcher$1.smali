.class Lcom/android/support/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Launcher;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/Launcher;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/support/Launcher;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/Launcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/android/support/Launcher$1;->this$0:Lcom/android/support/Launcher;

    iput-object p2, p0, Lcom/android/support/Launcher$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/android/support/Launcher$1;->this$0:Lcom/android/support/Launcher;

    invoke-static {v0}, Lcom/android/support/Launcher;->access$000(Lcom/android/support/Launcher;)V

    .line 28
    iget-object v0, p0, Lcom/android/support/Launcher$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    return-void
.end method
