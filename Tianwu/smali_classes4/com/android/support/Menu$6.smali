.class Lcom/android/support/Menu$6;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu;->ShowMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/Menu;

.field final synthetic val$handler:Landroid/os/Handler;

.field viewLoaded:Z


# direct methods
.method constructor <init>(Lcom/android/support/Menu;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 344
    iput-object p1, p0, Lcom/android/support/Menu$6;->this$0:Lcom/android/support/Menu;

    iput-object p2, p0, Lcom/android/support/Menu$6;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/support/Menu$6;->viewLoaded:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 351
    sget-boolean v0, Lcom/android/support/Preferences;->loadPref:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/support/Menu$6;->this$0:Lcom/android/support/Menu;

    invoke-virtual {v0}, Lcom/android/support/Menu;->IsGameLibLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/support/Menu$6;->this$0:Lcom/android/support/Menu;

    iget-boolean v0, v0, Lcom/android/support/Menu;->stopChecking:Z

    if-nez v0, :cond_1

    .line 352
    iget-boolean v0, p0, Lcom/android/support/Menu$6;->viewLoaded:Z

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/support/Menu$6;->this$0:Lcom/android/support/Menu;

    iget-object v1, v0, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    const-string v2, "\u5df2\u542f\u7528\u4fdd\u5b58\u83dc\u5355\u8bbe\u7f6e, \u6b63\u5728\u7b49\u5f85\u6e38\u620f\u52a0\u8f7d...\n\n\u5f3a\u5236\u52a0\u8f7d\u83dc\u5355\u53ef\u80fd\u4e0d\u4f1a\u4f7f\u529f\u80fd\u7acb\u523b\u751f\u6548,\u60a8\u9700\u8981\u518d\u6b21\u542f\u52a8\u5b83\u4eec"

    invoke-static {v0, v1, v2}, Lcom/android/support/Menu;->access$000(Lcom/android/support/Menu;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/support/Menu$6;->this$0:Lcom/android/support/Menu;

    iget-object v1, v0, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    const/16 v2, -0x64

    const-string v3, "\u5f3a\u5236\u52a0\u8f7d\u83dc\u5355"

    invoke-static {v0, v1, v2, v3}, Lcom/android/support/Menu;->access$100(Lcom/android/support/Menu;Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/support/Menu$6;->viewLoaded:Z

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/support/Menu$6;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/support/Menu$6;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 360
    iget-object v0, p0, Lcom/android/support/Menu$6;->this$0:Lcom/android/support/Menu;

    invoke-virtual {v0}, Lcom/android/support/Menu;->GetFeatureList()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/support/Menu$6;->this$0:Lcom/android/support/Menu;

    iget-object v2, v2, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lcom/android/support/Menu;->access$200(Lcom/android/support/Menu;[Ljava/lang/String;Landroid/widget/LinearLayout;)V

    .line 362
    :goto_0
    return-void
.end method
