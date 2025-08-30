.class Lcom/android/support/Menu$5;
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

    .line 311
    iput-object p1, p0, Lcom/android/support/Menu$5;->this$0:Lcom/android/support/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 313
    iget-object v0, p0, Lcom/android/support/Menu$5;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/android/support/Menu$5;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/support/Menu$5;->this$0:Lcom/android/support/Menu;

    iget v1, v1, Lcom/android/support/Menu;->ICON_ALPHA:F

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 315
    iget-object v0, p0, Lcom/android/support/Menu$5;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    return-void
.end method
