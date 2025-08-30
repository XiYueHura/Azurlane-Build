.class Lcom/android/support/Menu$16;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu;->CheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/Menu;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$featName:Ljava/lang/String;

.field final synthetic val$featNum:I


# direct methods
.method constructor <init>(Lcom/android/support/Menu;Landroid/widget/CheckBox;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1019
    iput-object p1, p0, Lcom/android/support/Menu$16;->this$0:Lcom/android/support/Menu;

    iput-object p2, p0, Lcom/android/support/Menu$16;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/support/Menu$16;->val$featName:Ljava/lang/String;

    iput p4, p0, Lcom/android/support/Menu$16;->val$featNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 1022
    iget-object v0, p0, Lcom/android/support/Menu$16;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/android/support/Menu$16;->val$featName:Ljava/lang/String;

    iget v1, p0, Lcom/android/support/Menu$16;->val$featNum:I

    invoke-static {v0, v1, p2}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/android/support/Menu$16;->val$featName:Ljava/lang/String;

    iget v1, p0, Lcom/android/support/Menu$16;->val$featNum:I

    invoke-static {v0, v1, p2}, Lcom/android/support/Preferences;->changeFeatureBool(Ljava/lang/String;IZ)V

    .line 1027
    :goto_0
    return-void
.end method
