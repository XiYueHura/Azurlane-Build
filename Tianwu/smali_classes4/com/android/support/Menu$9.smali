.class Lcom/android/support/Menu$9;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu;->SeekBar(Landroid/widget/LinearLayout;ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/Menu;

.field final synthetic val$featName:Ljava/lang/String;

.field final synthetic val$featNum:I

.field final synthetic val$min:I

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;ILjava/lang/String;ILandroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 630
    iput-object p1, p0, Lcom/android/support/Menu$9;->this$0:Lcom/android/support/Menu;

    iput p2, p0, Lcom/android/support/Menu$9;->val$min:I

    iput-object p3, p0, Lcom/android/support/Menu$9;->val$featName:Ljava/lang/String;

    iput p4, p0, Lcom/android/support/Menu$9;->val$featNum:I

    iput-object p5, p0, Lcom/android/support/Menu$9;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "i"    # I
    .param p3, "z"    # Z

    .line 639
    iget v0, p0, Lcom/android/support/Menu$9;->val$min:I

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 640
    iget-object v0, p0, Lcom/android/support/Menu$9;->val$featName:Ljava/lang/String;

    iget v1, p0, Lcom/android/support/Menu$9;->val$featNum:I

    iget v2, p0, Lcom/android/support/Menu$9;->val$min:I

    if-ge p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    .line 641
    iget-object v0, p0, Lcom/android/support/Menu$9;->val$textView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/support/Menu$9;->val$featName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <font color=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/support/Menu$9;->this$0:Lcom/android/support/Menu;

    iget-object v2, v2, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/support/Menu$9;->val$min:I

    if-ge p2, v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, p2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 632
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 635
    return-void
.end method
