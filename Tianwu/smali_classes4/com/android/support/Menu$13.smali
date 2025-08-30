.class Lcom/android/support/Menu$13;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu;->Spinner(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/Menu;

.field final synthetic val$featNum:I

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;Landroid/widget/Spinner;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 760
    iput-object p1, p0, Lcom/android/support/Menu$13;->this$0:Lcom/android/support/Menu;

    iput-object p2, p0, Lcom/android/support/Menu$13;->val$spinner:Landroid/widget/Spinner;

    iput p3, p0, Lcom/android/support/Menu$13;->val$featNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "selectedItemView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 763
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/support/Menu$13;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/support/Menu$13;->val$featNum:I

    invoke-static {v0, v1, p3}, Lcom/android/support/Preferences;->changeFeatureInt(Ljava/lang/String;II)V

    .line 764
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/support/Menu$13;->this$0:Lcom/android/support/Menu;

    iget v1, v1, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 765
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 769
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
