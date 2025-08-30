.class Lcom/android/support/Menu$17;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu;->RadioButton(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/Menu;

.field final synthetic val$Radioo:Landroid/widget/RadioButton;

.field final synthetic val$featNum:I

.field final synthetic val$finalfeatName:Ljava/lang/String;

.field final synthetic val$radioGroup:Landroid/widget/RadioGroup;

.field final synthetic val$radioName:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RadioGroup;Landroid/widget/RadioButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1048
    iput-object p1, p0, Lcom/android/support/Menu$17;->this$0:Lcom/android/support/Menu;

    iput-object p2, p0, Lcom/android/support/Menu$17;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/support/Menu$17;->val$finalfeatName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/support/Menu$17;->val$radioName:Ljava/lang/String;

    iput p5, p0, Lcom/android/support/Menu$17;->val$featNum:I

    iput-object p6, p0, Lcom/android/support/Menu$17;->val$radioGroup:Landroid/widget/RadioGroup;

    iput-object p7, p0, Lcom/android/support/Menu$17;->val$Radioo:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1050
    iget-object v0, p0, Lcom/android/support/Menu$17;->val$textView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/support/Menu$17;->val$finalfeatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <font color=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/support/Menu$17;->this$0:Lcom/android/support/Menu;

    iget-object v2, v2, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/support/Menu$17;->val$radioName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v0, p0, Lcom/android/support/Menu$17;->val$finalfeatName:Ljava/lang/String;

    iget v1, p0, Lcom/android/support/Menu$17;->val$featNum:I

    iget-object v2, p0, Lcom/android/support/Menu$17;->val$radioGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/android/support/Menu$17;->val$Radioo:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    .line 1052
    return-void
.end method
