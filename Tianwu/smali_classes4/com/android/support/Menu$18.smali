.class Lcom/android/support/Menu$18;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu;->Collapse(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isChecked:Z

.field final synthetic this$0:Lcom/android/support/Menu;

.field final synthetic val$collapseSub:Landroid/widget/LinearLayout;

.field final synthetic val$expanded:Z

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;ZLandroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1101
    iput-object p1, p0, Lcom/android/support/Menu$18;->this$0:Lcom/android/support/Menu;

    iput-boolean p2, p0, Lcom/android/support/Menu$18;->val$expanded:Z

    iput-object p3, p0, Lcom/android/support/Menu$18;->val$collapseSub:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/android/support/Menu$18;->val$textView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/support/Menu$18;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    iput-boolean p2, p0, Lcom/android/support/Menu$18;->isChecked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1107
    iget-boolean v0, p0, Lcom/android/support/Menu$18;->isChecked:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1108
    .local v0, "z":Z
    iput-boolean v0, p0, Lcom/android/support/Menu$18;->isChecked:Z

    .line 1109
    if-eqz v0, :cond_0

    .line 1110
    iget-object v1, p0, Lcom/android/support/Menu$18;->val$collapseSub:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1111
    iget-object v1, p0, Lcom/android/support/Menu$18;->val$textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u25b3 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/support/Menu$18;->val$text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u25b3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    return-void

    .line 1114
    :cond_0
    iget-object v1, p0, Lcom/android/support/Menu$18;->val$collapseSub:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1115
    iget-object v1, p0, Lcom/android/support/Menu$18;->val$textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u25bd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/support/Menu$18;->val$text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u25bd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    return-void
.end method
