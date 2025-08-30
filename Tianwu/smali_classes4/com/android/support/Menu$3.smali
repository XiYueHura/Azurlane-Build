.class Lcom/android/support/Menu$3;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 285
    iput-object p1, p0, Lcom/android/support/Menu$3;->this$0:Lcom/android/support/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 287
    iget-object v0, p0, Lcom/android/support/Menu$3;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/support/Menu$3;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 289
    iget-object v0, p0, Lcom/android/support/Menu$3;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60ac\u6d6e\u7a97\u5df2\u9690\u85cf"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 291
    return-void
.end method
