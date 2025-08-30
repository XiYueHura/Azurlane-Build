.class Lcom/android/support/Menu$4;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/Menu;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/Menu;

    .line 293
    iput-object p1, p0, Lcom/android/support/Menu$4;->this$0:Lcom/android/support/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60ac\u6d6e\u7a97\u5df2\u5173\u95ed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 296
    iget-object v0, p0, Lcom/android/support/Menu$4;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/support/Menu$4;->this$0:Lcom/android/support/Menu;

    iget-object v1, v1, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 297
    iget-object v0, p0, Lcom/android/support/Menu$4;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/support/Menu$4;->this$0:Lcom/android/support/Menu;

    iget-object v1, v1, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 298
    const/4 v0, 0x0

    return v0
.end method
