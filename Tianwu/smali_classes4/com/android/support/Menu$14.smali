.class Lcom/android/support/Menu$14;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu;->InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/Menu;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$edittextnum:Lcom/android/support/Menu$EditTextNum;

.field final synthetic val$edittextstring:Lcom/android/support/Menu$EditTextString;

.field final synthetic val$featName:Ljava/lang/String;

.field final synthetic val$featNum:I

.field final synthetic val$maxValue:I

.field final synthetic val$numOnly:Z


# direct methods
.method constructor <init>(Lcom/android/support/Menu;IZLcom/android/support/Menu$EditTextString;Lcom/android/support/Menu$EditTextNum;Landroid/widget/Button;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/support/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 821
    iput-object p1, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iput p2, p0, Lcom/android/support/Menu$14;->val$maxValue:I

    iput-boolean p3, p0, Lcom/android/support/Menu$14;->val$numOnly:Z

    iput-object p4, p0, Lcom/android/support/Menu$14;->val$edittextstring:Lcom/android/support/Menu$EditTextString;

    iput-object p5, p0, Lcom/android/support/Menu$14;->val$edittextnum:Lcom/android/support/Menu$EditTextNum;

    iput-object p6, p0, Lcom/android/support/Menu$14;->val$button:Landroid/widget/Button;

    iput-object p7, p0, Lcom/android/support/Menu$14;->val$featName:Ljava/lang/String;

    iput p8, p0, Lcom/android/support/Menu$14;->val$featNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .line 824
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget-object v1, v1, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 825
    .local v0, "alert":Landroid/app/AlertDialog;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_1

    .line 826
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/view/Window;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    const/16 v3, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v3, 0x7d2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 828
    :cond_1
    new-instance v1, Lcom/android/support/Menu$14$1;

    invoke-direct {v1, p0}, Lcom/android/support/Menu$14$1;-><init>(Lcom/android/support/Menu$14;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 836
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget-object v3, v3, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 837
    .local v1, "linearLayout1":Landroid/widget/LinearLayout;
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 838
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 839
    iget-object v4, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget v4, v4, Lcom/android/support/Menu;->MENU_FEATURE_BG_COLOR:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 842
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 843
    .local v4, "TextViewNote":Landroid/widget/TextView;
    const-string v5, "\u8f93\u5165\u500d\u6570"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    iget v5, p0, Lcom/android/support/Menu$14;->val$maxValue:I

    if-eqz v5, :cond_2

    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8f93\u5165\u500d\u6570\n\u6700\u9ad8\u500d\u6570\u4e3a : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/support/Menu$14;->val$maxValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    :cond_2
    iget-object v5, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget v5, v5, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 849
    new-instance v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget-object v6, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 850
    .local v5, "edittext":Landroid/widget/EditText;
    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 851
    iget-object v6, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    const/16 v7, 0x12c

    invoke-static {v6, v7}, Lcom/android/support/Menu;->access$600(Lcom/android/support/Menu;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setWidth(I)V

    .line 852
    iget-object v6, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget v6, v6, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 853
    iget-boolean v6, p0, Lcom/android/support/Menu$14;->val$numOnly:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    .line 854
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 855
    const-string v6, "0123456789-"

    invoke-static {v6}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 856
    new-array v6, v3, [Landroid/text/InputFilter;

    .line 857
    .local v6, "FilterArray":[Landroid/text/InputFilter;
    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v6, v7

    .line 858
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 859
    .end local v6    # "FilterArray":[Landroid/text/InputFilter;
    goto :goto_1

    .line 860
    :cond_3
    iget-object v6, p0, Lcom/android/support/Menu$14;->val$edittextstring:Lcom/android/support/Menu$EditTextString;

    invoke-virtual {v6}, Lcom/android/support/Menu$EditTextString;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 862
    :goto_1
    new-instance v6, Lcom/android/support/Menu$14$2;

    invoke-direct {v6, p0}, Lcom/android/support/Menu$14$2;-><init>(Lcom/android/support/Menu$14;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 873
    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 876
    new-instance v6, Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget-object v8, v8, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 877
    .local v6, "btndialog":Landroid/widget/Button;
    iget-object v8, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget v8, v8, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 878
    iget-object v8, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget v8, v8, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 879
    const-string v8, "OK"

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 880
    new-instance v8, Lcom/android/support/Menu$14$3;

    invoke-direct {v8, p0, v5, v0}, Lcom/android/support/Menu$14$3;-><init>(Lcom/android/support/Menu$14;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 908
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 909
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 910
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 911
    .local v8, "DAJHEFD":Landroid/graphics/drawable/GradientDrawable;
    iget-object v9, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget v9, v9, Lcom/android/support/Menu;->trans:I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 912
    const/4 v9, 0x3

    const v10, -0xff0001

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 913
    const/16 v9, 0x8

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 914
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 915
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .local v9, "HGFDACI":Landroid/graphics/drawable/GradientDrawable;
    const/16 v10, 0xff

    invoke-static {v10, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 916
    const/high16 v10, 0x42c80000    # 100.0f

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 917
    const-string v10, "#0000ffff"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 918
    const-string v10, "GREEN"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v2, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 919
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    new-instance v10, Landroid/content/res/ColorStateList;

    new-array v11, v3, [[I

    new-array v12, v7, [I

    aput-object v12, v11, v7

    new-array v3, v3, [I

    iget-object v12, p0, Lcom/android/support/Menu$14;->this$0:Lcom/android/support/Menu;

    iget v12, v12, Lcom/android/support/Menu;->trans:I

    aput v12, v3, v7

    invoke-direct {v10, v11, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v2, v10, v9, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 921
    .local v2, "HGFDACI_RE":Landroid/graphics/drawable/RippleDrawable;
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 923
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 924
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 925
    return-void

    :array_0
    .array-data 4
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
    .end array-data
.end method
