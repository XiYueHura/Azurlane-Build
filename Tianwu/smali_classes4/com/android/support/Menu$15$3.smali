.class Lcom/android/support/Menu$15$3;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/support/Menu$15;


# direct methods
.method constructor <init>(Lcom/android/support/Menu$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/support/Menu$15;

    .line 989
    iput-object p1, p0, Lcom/android/support/Menu$15$3;->this$1:Lcom/android/support/Menu$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 992
    iget-object v0, p0, Lcom/android/support/Menu$15$3;->this$1:Lcom/android/support/Menu$15;

    iget-object v0, v0, Lcom/android/support/Menu$15;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/support/Menu$15$3;->this$1:Lcom/android/support/Menu$15;

    iget-object v1, v1, Lcom/android/support/Menu$15;->this$0:Lcom/android/support/Menu;

    iget-object v1, v1, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 993
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 994
    return-void
.end method
