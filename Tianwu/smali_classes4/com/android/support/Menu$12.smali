.class Lcom/android/support/Menu$12;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu;->ButtonOnOff(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isOn:Z

.field final synthetic this$0:Lcom/android/support/Menu;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$featNum:I

.field final synthetic val$finalIsOn:Z

.field final synthetic val$finalfeatName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;ZLjava/lang/String;ILandroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 718
    iput-object p1, p0, Lcom/android/support/Menu$12;->this$0:Lcom/android/support/Menu;

    iput-boolean p2, p0, Lcom/android/support/Menu$12;->val$finalIsOn:Z

    iput-object p3, p0, Lcom/android/support/Menu$12;->val$finalfeatName:Ljava/lang/String;

    iput p4, p0, Lcom/android/support/Menu$12;->val$featNum:I

    iput-object p5, p0, Lcom/android/support/Menu$12;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-boolean p2, p0, Lcom/android/support/Menu$12;->isOn:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 722
    iget-object v0, p0, Lcom/android/support/Menu$12;->val$finalfeatName:Ljava/lang/String;

    iget v1, p0, Lcom/android/support/Menu$12;->val$featNum:I

    iget-boolean v2, p0, Lcom/android/support/Menu$12;->isOn:Z

    invoke-static {v0, v1, v2}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    .line 724
    iget-boolean v0, p0, Lcom/android/support/Menu$12;->isOn:Z

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/support/Menu$12;->val$button:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/support/Menu$12;->val$finalfeatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": ON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v0, p0, Lcom/android/support/Menu$12;->val$button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/Menu$12;->this$0:Lcom/android/support/Menu;

    iget v1, v1, Lcom/android/support/Menu;->BtnON:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/support/Menu$12;->isOn:Z

    goto :goto_0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/support/Menu$12;->val$button:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/support/Menu$12;->val$finalfeatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": OFF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p0, Lcom/android/support/Menu$12;->val$button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/Menu$12;->this$0:Lcom/android/support/Menu;

    iget v1, v1, Lcom/android/support/Menu;->BtnOFF:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/support/Menu$12;->isOn:Z

    .line 733
    :goto_0
    return-void
.end method
