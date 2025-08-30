.class Lcom/android/support/Menu$15;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu;->InputText(Landroid/widget/LinearLayout;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/Menu;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$featName:Ljava/lang/String;

.field final synthetic val$featNum:I


# direct methods
.method constructor <init>(Lcom/android/support/Menu;Landroid/widget/Button;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 954
    iput-object p1, p0, Lcom/android/support/Menu$15;->this$0:Lcom/android/support/Menu;

    iput-object p2, p0, Lcom/android/support/Menu$15;->val$button:Landroid/widget/Button;

    iput-object p3, p0, Lcom/android/support/Menu$15;->val$featName:Ljava/lang/String;

    iput p4, p0, Lcom/android/support/Menu$15;->val$featNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 957
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/support/Menu$15;->this$0:Lcom/android/support/Menu;

    iget-object v1, v1, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 959
    .local v0, "alertName":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/support/Menu$15;->this$0:Lcom/android/support/Menu;

    iget-object v2, v2, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 960
    .local v1, "editText":Landroid/widget/EditText;
    new-instance v2, Lcom/android/support/Menu$15$1;

    invoke-direct {v2, p0}, Lcom/android/support/Menu$15$1;-><init>(Lcom/android/support/Menu$15;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 971
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 973
    const-string v2, "Input text"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 974
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 975
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/support/Menu$15;->this$0:Lcom/android/support/Menu;

    iget-object v3, v3, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 976
    .local v2, "layoutName":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 977
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 978
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 980
    new-instance v3, Lcom/android/support/Menu$15$2;

    invoke-direct {v3, p0, v1}, Lcom/android/support/Menu$15$2;-><init>(Lcom/android/support/Menu$15;Landroid/widget/EditText;)V

    const-string v4, "OK"

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 989
    new-instance v3, Lcom/android/support/Menu$15$3;

    invoke-direct {v3, p0}, Lcom/android/support/Menu$15$3;-><init>(Lcom/android/support/Menu$15;)V

    const-string v4, "Cancel"

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 998
    iget-object v3, p0, Lcom/android/support/Menu$15;->this$0:Lcom/android/support/Menu;

    iget-boolean v3, v3, Lcom/android/support/Menu;->overlayRequired:Z

    if-eqz v3, :cond_1

    .line 999
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1000
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_0

    const/16 v5, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v5, 0x7d2

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1001
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1002
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    goto :goto_1

    .line 1003
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1005
    :goto_1
    return-void
.end method
