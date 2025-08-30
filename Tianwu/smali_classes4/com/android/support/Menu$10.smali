.class Lcom/android/support/Menu$10;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu;->Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/Menu;

.field final synthetic val$featName:Ljava/lang/String;

.field final synthetic val$featNum:I


# direct methods
.method constructor <init>(Lcom/android/support/Menu;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 659
    iput-object p1, p0, Lcom/android/support/Menu$10;->this$0:Lcom/android/support/Menu;

    iput p2, p0, Lcom/android/support/Menu$10;->val$featNum:I

    iput-object p3, p0, Lcom/android/support/Menu$10;->val$featName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 661
    iget v0, p0, Lcom/android/support/Menu$10;->val$featNum:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 664
    :sswitch_0
    iget-object v0, p0, Lcom/android/support/Menu$10;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/support/Menu$10;->this$0:Lcom/android/support/Menu;

    iget-object v1, v1, Lcom/android/support/Menu;->mSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 665
    iget-object v0, p0, Lcom/android/support/Menu$10;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/support/Menu$10;->this$0:Lcom/android/support/Menu;

    iget-object v1, v1, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 666
    goto :goto_0

    .line 668
    :sswitch_1
    iget-object v0, p0, Lcom/android/support/Menu$10;->this$0:Lcom/android/support/Menu;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/support/Menu;->stopChecking:Z

    .line 671
    :goto_0
    iget-object v0, p0, Lcom/android/support/Menu$10;->val$featName:Ljava/lang/String;

    iget v1, p0, Lcom/android/support/Menu$10;->val$featNum:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    .line 672
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        -0x6 -> :sswitch_0
    .end sparse-switch
.end method
