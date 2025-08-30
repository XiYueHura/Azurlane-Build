.class Lcom/android/support/Menu$8;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu;->Switch(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/Menu;

.field final synthetic val$featName:Ljava/lang/String;

.field final synthetic val$featNum:I

.field final synthetic val$switchR:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;Ljava/lang/String;ILandroid/widget/Switch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 591
    iput-object p1, p0, Lcom/android/support/Menu$8;->this$0:Lcom/android/support/Menu;

    iput-object p2, p0, Lcom/android/support/Menu$8;->val$featName:Ljava/lang/String;

    iput p3, p0, Lcom/android/support/Menu$8;->val$featNum:I

    iput-object p4, p0, Lcom/android/support/Menu$8;->val$switchR:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "bool"    # Z

    .line 593
    iget-object v0, p0, Lcom/android/support/Menu$8;->val$featName:Ljava/lang/String;

    iget v1, p0, Lcom/android/support/Menu$8;->val$featNum:I

    invoke-static {v0, v1, p2}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    .line 594
    iget v0, p0, Lcom/android/support/Menu$8;->val$featNum:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 596
    :pswitch_1
    iget-object v0, p0, Lcom/android/support/Menu$8;->val$switchR:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/support/Preferences;->writeBoolean(IZ)V

    .line 597
    if-nez p2, :cond_1

    .line 598
    iget-object v0, p0, Lcom/android/support/Menu$8;->val$switchR:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/support/Preferences;->clear()V

    goto :goto_1

    .line 601
    :pswitch_2
    sput-boolean p2, Lcom/android/support/Preferences;->isExpanded:Z

    .line 602
    iget-object v0, p0, Lcom/android/support/Menu$8;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/support/Menu$8;->this$0:Lcom/android/support/Menu;

    if-eqz p2, :cond_0

    iget-object v1, v1, Lcom/android/support/Menu;->scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/support/Menu;->scrlLL:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
