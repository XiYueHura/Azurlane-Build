.class Lcom/android/support/Menu$14$3;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/support/Menu$14;

.field final synthetic val$alert:Landroid/app/AlertDialog;

.field final synthetic val$edittext:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/support/Menu$14;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/support/Menu$14;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 880
    iput-object p1, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iput-object p2, p0, Lcom/android/support/Menu$14$3;->val$edittext:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/support/Menu$14$3;->val$alert:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 883
    iget-object v0, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget-boolean v0, v0, Lcom/android/support/Menu$14;->val$numOnly:Z

    const-string v1, "</font>"

    const-string v2, "\'>"

    const-string v3, ": <font color=\'"

    if-eqz v0, :cond_2

    .line 886
    :try_start_0
    iget-object v0, p0, Lcom/android/support/Menu$14$3;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/support/Menu$14$3;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 887
    .local v0, "num":I
    iget-object v4, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget v4, v4, Lcom/android/support/Menu$14;->val$maxValue:I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget v4, v4, Lcom/android/support/Menu$14;->val$maxValue:I

    if-lt v0, v4, :cond_1

    .line 888
    iget-object v4, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget v4, v4, Lcom/android/support/Menu$14;->val$maxValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 891
    :cond_1
    goto :goto_1

    .line 889
    .end local v0    # "num":I
    :catch_0
    move-exception v0

    .line 890
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const v4, 0x7ffffff8

    move v0, v4

    .line 892
    .local v0, "num":I
    :goto_1
    iget-object v4, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget-object v4, v4, Lcom/android/support/Menu$14;->val$edittextnum:Lcom/android/support/Menu$EditTextNum;

    invoke-virtual {v4, v0}, Lcom/android/support/Menu$EditTextNum;->setNum(I)V

    .line 893
    iget-object v4, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget-object v4, v4, Lcom/android/support/Menu$14;->val$button:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget-object v6, v6, Lcom/android/support/Menu$14;->val$featName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget-object v3, v3, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget-object v3, v3, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 894
    iget-object v1, p0, Lcom/android/support/Menu$14$3;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 895
    iget-object v1, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget-object v1, v1, Lcom/android/support/Menu$14;->val$featName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget v2, v2, Lcom/android/support/Menu$14;->val$featNum:I

    invoke-static {v1, v2, v0}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    .line 896
    .end local v0    # "num":I
    goto :goto_2

    .line 897
    :cond_2
    iget-object v0, p0, Lcom/android/support/Menu$14$3;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget-object v4, v4, Lcom/android/support/Menu$14;->val$edittextstring:Lcom/android/support/Menu$EditTextString;

    iget-object v5, p0, Lcom/android/support/Menu$14$3;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/support/Menu$EditTextString;->setString(Ljava/lang/String;)V

    .line 899
    iget-object v4, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget-object v4, v4, Lcom/android/support/Menu$14;->val$button:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget-object v6, v6, Lcom/android/support/Menu$14;->val$featName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget-object v3, v3, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget-object v3, v3, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v1, p0, Lcom/android/support/Menu$14$3;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 901
    iget-object v1, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget-object v1, v1, Lcom/android/support/Menu$14;->val$featName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/support/Menu$14$3;->this$1:Lcom/android/support/Menu$14;

    iget v2, v2, Lcom/android/support/Menu$14;->val$featNum:I

    invoke-static {v1, v2, v0}, Lcom/android/support/Preferences;->changeFeatureString(Ljava/lang/String;ILjava/lang/String;)V

    .line 903
    .end local v0    # "str":Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/android/support/Menu$14$3;->val$edittext:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 904
    return-void
.end method
