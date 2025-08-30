.class public Lcom/android/support/Menu;
.super Ljava/lang/Object;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/support/Menu$EditTextString;,
        Lcom/android/support/Menu$EditTextNum;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Mod_Menu"


# instance fields
.field BTN_COLOR:I

.field BtnOFF:I

.field BtnON:I

.field CategoryBG:I

.field CheckBoxColor:I

.field ICON_ALPHA:F

.field ICON_SIZE:I

.field MENU_BG_COLOR:I

.field MENU_CORNER:F

.field MENU_FEATURE_BG_COLOR:I

.field MENU_HEIGHT:I

.field MENU_WIDTH:I

.field NumberTxtColor:Ljava/lang/String;

.field POS_X:I

.field POS_Y:I

.field RadioColor:I

.field SeekBarColor:I

.field SeekBarProgressColor:I

.field TEXT_COLOR:I

.field TEXT_COLOR_2:I

.field ToggleOFF:I

.field ToggleON:I

.field getContext:Landroid/content/Context;

.field mCollapse:Landroid/widget/LinearLayout;

.field mCollapsed:Landroid/widget/RelativeLayout;

.field mExpanded:Landroid/widget/LinearLayout;

.field mRootContainer:Landroid/widget/RelativeLayout;

.field mSettings:Landroid/widget/LinearLayout;

.field mWindowManager:Landroid/view/WindowManager;

.field mods:Landroid/widget/LinearLayout;

.field overlayRequired:Z

.field rootFrame:Landroid/widget/FrameLayout;

.field scrlLL:Landroid/widget/LinearLayout$LayoutParams;

.field scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

.field scrollView:Landroid/widget/ScrollView;

.field startimage:Landroid/widget/ImageView;

.field stopChecking:Z

.field trans:I

.field vmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "#8BACC0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/support/Menu;->TEXT_COLOR:I

    .line 79
    const-string v0, "#314570"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    .line 80
    const-string v0, "#848395"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/support/Menu;->BTN_COLOR:I

    .line 81
    const-string v3, "#D7E5E9"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/support/Menu;->MENU_BG_COLOR:I

    .line 82
    const-string v3, "#DD141C22"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/support/Menu;->MENU_FEATURE_BG_COLOR:I

    .line 83
    const/16 v3, 0x122

    iput v3, v1, Lcom/android/support/Menu;->MENU_WIDTH:I

    .line 84
    const/16 v3, 0xd2

    iput v3, v1, Lcom/android/support/Menu;->MENU_HEIGHT:I

    .line 85
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/support/Menu;->POS_X:I

    .line 86
    const/16 v4, 0x64

    iput v4, v1, Lcom/android/support/Menu;->POS_Y:I

    .line 89
    iput v3, v1, Lcom/android/support/Menu;->trans:I

    .line 94
    const/high16 v4, 0x40800000    # 4.0f

    iput v4, v1, Lcom/android/support/Menu;->MENU_CORNER:F

    .line 95
    const/16 v4, 0x2d

    iput v4, v1, Lcom/android/support/Menu;->ICON_SIZE:I

    .line 96
    const v4, 0x3f333333    # 0.7f

    iput v4, v1, Lcom/android/support/Menu;->ICON_ALPHA:F

    .line 97
    const-string v4, "#E1CB90"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/support/Menu;->ToggleON:I

    .line 98
    const-string v4, "#93a6ae"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/support/Menu;->ToggleOFF:I

    .line 99
    const-string v4, "#1b5e20"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/support/Menu;->BtnON:I

    .line 100
    const-string v4, "#7f0000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/support/Menu;->BtnOFF:I

    .line 101
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/support/Menu;->CategoryBG:I

    .line 102
    const-string v0, "#80CBC4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/support/Menu;->SeekBarColor:I

    .line 103
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/support/Menu;->SeekBarProgressColor:I

    .line 104
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/support/Menu;->CheckBoxColor:I

    .line 105
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/support/Menu;->RadioColor:I

    .line 106
    const-string v0, "#41c300"

    iput-object v0, v1, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    .line 137
    iput-object v2, v1, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    .line 138
    sput-object v2, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    .line 139
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    .line 140
    invoke-direct/range {p0 .. p0}, Lcom/android/support/Menu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    .line 142
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    .line 143
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    iget-object v0, v1, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    iget v4, v1, Lcom/android/support/Menu;->ICON_ALPHA:F

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 148
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    .line 149
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object v0, v1, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    iget v4, v1, Lcom/android/support/Menu;->MENU_BG_COLOR:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 151
    iget-object v0, v1, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    iget-object v0, v1, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v1, Lcom/android/support/Menu;->MENU_WIDTH:I

    invoke-direct {v1, v6}, Lcom/android/support/Menu;->dp(I)I

    move-result v6

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v5, v0

    .line 156
    .local v5, "gdMenuBody":Landroid/graphics/drawable/GradientDrawable;
    iget v0, v1, Lcom/android/support/Menu;->MENU_CORNER:F

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 157
    iget v0, v1, Lcom/android/support/Menu;->MENU_BG_COLOR:I

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 158
    const-string v0, "#32cb00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 162
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    .line 163
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget v0, v1, Lcom/android/support/Menu;->ICON_SIZE:I

    int-to-float v0, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v0, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v6, v0

    .line 165
    .local v6, "applyDimension":I
    iget-object v0, v1, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 166
    iget-object v0, v1, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 168
    iget-object v0, v1, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/support/Menu;->Icon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 170
    .local v8, "decode":[B
    iget-object v0, v1, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    array-length v9, v8

    invoke-static {v8, v3, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    iget-object v0, v1, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v9, 0xa

    invoke-direct {v1, v9}, Lcom/android/support/Menu;->convertDipToPixels(I)I

    move-result v10

    iput v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 173
    iget-object v0, v1, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Lcom/android/support/Menu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object v0, v1, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    new-instance v10, Lcom/android/support/Menu$1;

    invoke-direct {v10, v1}, Lcom/android/support/Menu$1;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 183
    .local v10, "wView":Landroid/webkit/WebView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget v0, v1, Lcom/android/support/Menu;->ICON_SIZE:I

    int-to-float v0, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v4, v0, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v11, v0

    .line 185
    .local v11, "applyDimension2":I
    invoke-virtual {v10}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    invoke-virtual {v10}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<html><head></head><body style=\"margin: 0; padding: 0\"><img src=\""

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/support/Menu;->IconWebViewData()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\" width=\""

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/support/Menu;->ICON_SIZE:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\" height=\""

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/support/Menu;->ICON_SIZE:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\" ></body></html>"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    const-string v12, "text/html"

    const-string v13, "utf-8"

    invoke-virtual {v10, v0, v12, v13}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v10, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 194
    iget v0, v1, Lcom/android/support/Menu;->ICON_ALPHA:F

    invoke-virtual {v10, v0}, Landroid/webkit/WebView;->setAlpha(F)V

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/android/support/Menu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    .line 200
    .local v12, "settings":Landroid/widget/TextView;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v0, v13, :cond_0

    const-string v0, "\u2699"

    goto :goto_0

    :cond_0
    const-string v0, "\ud83d\udd27"

    :goto_0
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget v0, v1, Lcom/android/support/Menu;->TEXT_COLOR:I

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 203
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 204
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v13, v0

    .line 205
    .local v13, "rlsettings":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xb

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 206
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v0, Lcom/android/support/Menu$2;

    invoke-direct {v0, v1}, Lcom/android/support/Menu$2;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/support/Menu;->mSettings:Landroid/widget/LinearLayout;

    .line 229
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/support/Menu;->SettingsList()[Ljava/lang/String;

    move-result-object v0

    iget-object v15, v1, Lcom/android/support/Menu;->mSettings:Landroid/widget/LinearLayout;

    invoke-direct {v1, v0, v15}, Lcom/android/support/Menu;->featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V

    .line 233
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    .line 234
    .local v15, "titleText":Landroid/widget/RelativeLayout;
    const/4 v0, 0x5

    invoke-virtual {v15, v9, v0, v9, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 235
    const/16 v14, 0x10

    invoke-virtual {v15, v14}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 237
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 238
    .local v14, "title":Landroid/widget/TextView;
    iget v9, v1, Lcom/android/support/Menu;->TEXT_COLOR:I

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 240
    const/16 v9, 0x11

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 241
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v19, v0

    .line 242
    .local v19, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    move-object/from16 v7, v19

    .end local v19    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    .local v7, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v19, v0

    .line 247
    .local v19, "subTitle":Landroid/widget/TextView;
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v3, v19

    .end local v19    # "subTitle":Landroid/widget/TextView;
    .local v3, "subTitle":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 248
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 249
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 250
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 251
    iget v4, v1, Lcom/android/support/Menu;->TEXT_COLOR:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 253
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 254
    const/4 v4, 0x5

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9, v9, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 257
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    .line 259
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, v1, Lcom/android/support/Menu;->MENU_HEIGHT:I

    invoke-direct {v1, v9}, Lcom/android/support/Menu;->dp(I)I

    move-result v9

    invoke-direct {v4, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, v1, Lcom/android/support/Menu;->scrlLL:Landroid/widget/LinearLayout$LayoutParams;

    .line 260
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, v1, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, v1, Lcom/android/support/Menu;->scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

    .line 261
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 262
    iget-object v0, v1, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    sget-boolean v4, Lcom/android/support/Preferences;->isExpanded:Z

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/support/Menu;->scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    :cond_1
    iget-object v4, v1, Lcom/android/support/Menu;->scrlLL:Landroid/widget/LinearLayout$LayoutParams;

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v4, "cs.png"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 266
    .local v0, "openn":Ljava/io/InputStream;
    iget-object v4, v1, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/ScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "openn":Ljava/io/InputStream;
    goto :goto_2

    :catch_0
    move-exception v0

    .line 268
    :goto_2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    .line 269
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 272
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 273
    .local v0, "relativeLayout":Landroid/widget/RelativeLayout;
    const/4 v4, 0x3

    const/16 v9, 0xa

    invoke-virtual {v0, v9, v4, v9, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 274
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 277
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 278
    .local v4, "lParamsHideBtn":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0x9

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 280
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 281
    .local v9, "hideBtn":Landroid/widget/Button;
    invoke-virtual {v9, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "lParamsHideBtn":Landroid/widget/RelativeLayout$LayoutParams;
    .local v17, "lParamsHideBtn":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v9, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 283
    const-string v4, "\u9690\u85cf/\u5173\u95ed (\u957f\u6309)"

    invoke-virtual {v9, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget v4, v1, Lcom/android/support/Menu;->TEXT_COLOR:I

    invoke-virtual {v9, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 285
    new-instance v4, Lcom/android/support/Menu$3;

    invoke-direct {v4, v1}, Lcom/android/support/Menu$3;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v9, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    new-instance v4, Lcom/android/support/Menu$4;

    invoke-direct {v4, v1}, Lcom/android/support/Menu$4;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v9, v4}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 303
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v18, v5

    const/4 v5, -0x2

    .end local v5    # "gdMenuBody":Landroid/graphics/drawable/GradientDrawable;
    .local v18, "gdMenuBody":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 304
    .local v4, "lParamsCloseBtn":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 306
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 307
    .local v5, "closeBtn":Landroid/widget/Button;
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    move-object/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "lParamsCloseBtn":Landroid/widget/RelativeLayout$LayoutParams;
    .local v16, "lParamsCloseBtn":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 309
    const-string v4, "\u7f29\u5c0f"

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget v4, v1, Lcom/android/support/Menu;->TEXT_COLOR:I

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 311
    new-instance v4, Lcom/android/support/Menu$5;

    invoke-direct {v4, v1}, Lcom/android/support/Menu$5;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v4, v1, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    move/from16 v19, v6

    .end local v6    # "applyDimension":I
    .local v19, "applyDimension":I
    iget-object v6, v1, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 321
    iget-object v4, v1, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    iget-object v6, v1, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/support/Menu;->IconWebViewData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 323
    iget-object v4, v1, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 325
    :cond_2
    iget-object v4, v1, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    iget-object v6, v1, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 327
    :goto_3
    invoke-virtual {v15, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 328
    invoke-virtual {v15, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 329
    iget-object v4, v1, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    iget-object v4, v1, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    iget-object v4, v1, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    iget-object v6, v1, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 332
    iget-object v4, v1, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    iget-object v6, v1, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 334
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 335
    iget-object v4, v1, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    invoke-virtual {v1, v2, v14, v3}, Lcom/android/support/Menu;->Init(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 338
    return-void
.end method

.method private Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 4
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;

    .line 651
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 652
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 653
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 654
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    iget v2, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 656
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 657
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iget v2, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 659
    new-instance v2, Lcom/android/support/Menu$10;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/support/Menu$10;-><init>(Lcom/android/support/Menu;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 676
    return-void
.end method

.method private ButtonLink(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featName"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .line 679
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 680
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 681
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 682
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 684
    iget v2, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 685
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget v2, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 687
    new-instance v2, Lcom/android/support/Menu$11;

    invoke-direct {v2, p0, p3}, Lcom/android/support/Menu$11;-><init>(Lcom/android/support/Menu;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 696
    return-void
.end method

.method private ButtonOnOff(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .locals 11
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "switchedOn"    # Z

    .line 699
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 700
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 701
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 702
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    iget v2, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 704
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 706
    const-string v2, "OnOff_"

    const-string v3, ""

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 707
    .local v8, "finalfeatName":Ljava/lang/String;
    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result v2

    .line 708
    .local v2, "isOn":Z
    if-eqz v2, :cond_0

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": ON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget v3, p0, Lcom/android/support/Menu;->BtnON:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 711
    const/4 v2, 0x0

    move v9, v2

    goto :goto_0

    .line 713
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": OFF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 714
    iget v3, p0, Lcom/android/support/Menu;->BtnOFF:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 715
    const/4 v2, 0x1

    move v9, v2

    .line 717
    .end local v2    # "isOn":Z
    .local v9, "isOn":Z
    :goto_0
    move v4, v9

    .line 718
    .local v4, "finalIsOn":Z
    new-instance v10, Lcom/android/support/Menu$12;

    move-object v2, v10

    move-object v3, p0

    move-object v5, v8

    move v6, p2

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/support/Menu$12;-><init>(Lcom/android/support/Menu;ZLjava/lang/String;ILandroid/widget/Button;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 736
    return-void
.end method

.method private Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "text"    # Ljava/lang/String;

    .line 1124
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1125
    .local v0, "textView":Landroid/widget/TextView;
    iget v1, p0, Lcom/android/support/Menu;->CategoryBG:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1126
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1128
    iget v1, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1129
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1130
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1131
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1132
    return-void
.end method

.method private CheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .locals 3
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "switchedOn"    # Z

    .line 1013
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1014
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    iget v1, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1016
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1017
    iget v1, p0, Lcom/android/support/Menu;->CheckBoxColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 1018
    :cond_0
    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1019
    new-instance v1, Lcom/android/support/Menu$16;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/android/support/Menu$16;-><init>(Lcom/android/support/Menu;Landroid/widget/CheckBox;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1029
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1030
    return-void
.end method

.method private Collapse(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V
    .locals 13
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "expanded"    # Z

    .line 1072
    move-object v6, p0

    move-object v7, p2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v8, v0

    .line 1073
    .local v8, "layoutParamsLL":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {v8, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1075
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v9, v2

    .line 1076
    .local v9, "collapse":Landroid/widget/LinearLayout;
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    const/16 v2, 0x10

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 1078
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1080
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v10, v4

    .line 1081
    .local v10, "collapseSub":Landroid/widget/LinearLayout;
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 1082
    invoke-virtual {v10, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1083
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1084
    const-string v1, "#222D38"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1085
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1086
    iput-object v10, v6, Lcom/android/support/Menu;->mCollapse:Landroid/widget/LinearLayout;

    .line 1088
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v11, v1

    .line 1089
    .local v11, "textView":Landroid/widget/TextView;
    iget v1, v6, Lcom/android/support/Menu;->CategoryBG:I

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u25bd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u25bd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    const/16 v1, 0x11

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1092
    iget v1, v6, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1093
    const/4 v1, 0x0

    invoke-virtual {v11, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1094
    const/16 v1, 0x14

    invoke-virtual {v11, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1096
    if-eqz p3, :cond_0

    .line 1097
    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u25b3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u25b3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    :cond_0
    new-instance v12, Lcom/android/support/Menu$18;

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p3

    move-object v3, v10

    move-object v4, v11

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/support/Menu$18;-><init>(Lcom/android/support/Menu;ZLandroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1118
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1119
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1120
    move-object v0, p1

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1121
    return-void
.end method

.method private InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;ZI)V
    .locals 17
    .param p1, "linlayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "numOnly"    # Z
    .param p5, "maxValue"    # I

    .line 801
    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object/from16 v11, p3

    new-instance v0, Lcom/android/support/Menu$EditTextString;

    const/4 v12, 0x0

    invoke-direct {v0, v9, v12}, Lcom/android/support/Menu$EditTextString;-><init>(Lcom/android/support/Menu;Lcom/android/support/Menu$1;)V

    move-object v13, v0

    .line 802
    .local v13, "edittextstring":Lcom/android/support/Menu$EditTextString;
    new-instance v0, Lcom/android/support/Menu$EditTextNum;

    invoke-direct {v0, v9, v12}, Lcom/android/support/Menu$EditTextNum;-><init>(Lcom/android/support/Menu;Lcom/android/support/Menu$1;)V

    move-object v14, v0

    .line 803
    .local v14, "edittextnum":Lcom/android/support/Menu$EditTextNum;
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v9, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    .line 804
    .local v15, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v8, v0

    .line 805
    .local v8, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x7

    const/4 v1, 0x5

    invoke-virtual {v8, v0, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 807
    new-instance v0, Landroid/widget/Button;

    iget-object v1, v9, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v7, v0

    .line 808
    .local v7, "button":Landroid/widget/Button;
    const-string v0, "</font>"

    const-string v1, "\'>"

    const-string v2, ": <font color=\'"

    const/4 v6, 0x1

    if-eqz p4, :cond_2

    .line 809
    invoke-static {v11, v10}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v3

    .line 810
    .local v3, "num":I
    if-nez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v14, v4}, Lcom/android/support/Menu$EditTextNum;->setNum(I)V

    .line 811
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 812
    .end local v3    # "num":I
    goto :goto_3

    .line 813
    :cond_2
    invoke-static {v11, v10}, Lcom/android/support/Preferences;->loadPrefString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 814
    .local v3, "string":Ljava/lang/String;
    const-string v4, ""

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    invoke-virtual {v13, v4}, Lcom/android/support/Menu$EditTextString;->setString(Ljava/lang/String;)V

    .line 815
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 817
    .end local v3    # "string":Ljava/lang/String;
    :goto_3
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 818
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    iget v0, v9, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 820
    iget v0, v9, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 821
    new-instance v4, Lcom/android/support/Menu$14;

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p4

    move-object v12, v4

    move-object v4, v13

    const/4 v10, 0x0

    move-object v5, v14

    const/4 v10, 0x1

    move-object v6, v7

    move-object v10, v7

    .end local v7    # "button":Landroid/widget/Button;
    .local v10, "button":Landroid/widget/Button;
    move-object/from16 v7, p3

    move-object/from16 v16, v8

    .end local v8    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v16, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/support/Menu$14;-><init>(Lcom/android/support/Menu;IZLcom/android/support/Menu$EditTextString;Lcom/android/support/Menu$EditTextNum;Landroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 928
    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 929
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .local v0, "HGFDACI":Landroid/graphics/drawable/GradientDrawable;
    const/16 v1, 0xff

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 930
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 931
    const-string v1, "#0000ffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 932
    const/4 v1, 0x2

    const-string v2, "GREEN"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 933
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    new-array v4, v3, [[I

    const/4 v5, 0x0

    new-array v6, v5, [I

    aput-object v6, v4, v5

    new-array v3, v3, [I

    iget v6, v9, Lcom/android/support/Menu;->trans:I

    aput v6, v3, v5

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 935
    .local v1, "HGFDACI_RE":Landroid/graphics/drawable/RippleDrawable;
    invoke-virtual {v10, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 936
    move-object/from16 v2, p1

    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 938
    return-void
.end method

.method private InputText(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 6
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;

    .line 941
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 942
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 943
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 945
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 947
    .local v2, "button":Landroid/widget/Button;
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 948
    .local v3, "string":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": <font color=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 950
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 951
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 952
    iget v4, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 953
    iget v4, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 954
    new-instance v4, Lcom/android/support/Menu$15;

    invoke-direct {v4, p0, v2, p3, p2}, Lcom/android/support/Menu$15;-><init>(Lcom/android/support/Menu;Landroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1008
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1009
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1010
    return-void
.end method

.method private RadioButton(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "list"    # Ljava/lang/String;

    .line 1034
    move-object/from16 v8, p0

    move-object/from16 v9, p3

    new-instance v0, Ljava/util/LinkedList;

    const-string v1, ","

    move-object/from16 v10, p4

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object v11, v0

    .line 1036
    .local v11, "lists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, v8, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    .line 1037
    .local v12, "textView":Landroid/widget/TextView;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    iget v0, v8, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1040
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, v8, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    move-object v13, v0

    .line 1041
    .local v13, "radioGroup":Landroid/widget/RadioGroup;
    const/16 v0, 0xa

    const/4 v1, 0x5

    invoke-virtual {v13, v0, v1, v0, v1}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    .line 1042
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 1043
    invoke-virtual {v13, v12}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1045
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_1

    .line 1046
    new-instance v0, Landroid/widget/RadioButton;

    iget-object v1, v8, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    move-object v7, v0

    .line 1047
    .local v7, "Radioo":Landroid/widget/RadioButton;
    move-object/from16 v3, p3

    .local v3, "finalfeatName":Ljava/lang/String;
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 1048
    .local v16, "radioName":Ljava/lang/String;
    new-instance v17, Lcom/android/support/Menu$17;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v4, v16

    move/from16 v5, p2

    move-object v6, v13

    move-object/from16 v18, v7

    .end local v7    # "Radioo":Landroid/widget/RadioButton;
    .local v18, "Radioo":Landroid/widget/RadioButton;
    invoke-direct/range {v0 .. v7}, Lcom/android/support/Menu$17;-><init>(Lcom/android/support/Menu;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RadioGroup;Landroid/widget/RadioButton;)V

    .line 1054
    .local v0, "first_radio_listener":Landroid/view/View$OnClickListener;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1055
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    move-object/from16 v2, v18

    .end local v18    # "Radioo":Landroid/widget/RadioButton;
    .local v2, "Radioo":Landroid/widget/RadioButton;
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    const v1, -0x333334

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1057
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_0

    .line 1058
    iget v1, v8, Lcom/android/support/Menu;->RadioColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 1059
    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1060
    invoke-virtual {v13, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1045
    .end local v0    # "first_radio_listener":Landroid/view/View$OnClickListener;
    .end local v2    # "Radioo":Landroid/widget/RadioButton;
    .end local v3    # "finalfeatName":Ljava/lang/String;
    .end local v16    # "radioName":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1063
    .end local v15    # "i":I
    :cond_1
    move/from16 v0, p2

    invoke-static {v9, v0}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v1

    .line 1064
    .local v1, "index":I
    if-lez v1, :cond_2

    .line 1065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": <font color=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    invoke-virtual {v13, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2, v14}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1068
    :cond_2
    move-object/from16 v2, p1

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1069
    return-void
.end method

.method private SeekBar(Landroid/widget/LinearLayout;ILjava/lang/String;II)V
    .locals 16
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "min"    # I
    .param p5, "max"    # I

    .line 612
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move/from16 v8, p2

    invoke-static {v7, v8}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v9

    .line 613
    .local v9, "loadedProg":I
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 614
    .local v10, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v0, 0xa

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 615
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 616
    const/16 v1, 0x11

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 618
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v11, v1

    .line 619
    .local v11, "textView":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <font color=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v9, :cond_0

    move/from16 v2, p4

    goto :goto_0

    :cond_0
    move v2, v9

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget v1, v6, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 622
    new-instance v1, Landroid/widget/SeekBar;

    iget-object v2, v6, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    move-object v12, v1

    .line 623
    .local v12, "seekBar":Landroid/widget/SeekBar;
    const/16 v1, 0x19

    const/16 v2, 0x23

    invoke-virtual {v12, v1, v0, v2, v0}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 624
    move/from16 v13, p5

    invoke-virtual {v12, v13}, Landroid/widget/SeekBar;->setMax(I)V

    .line 625
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 626
    move/from16 v14, p4

    invoke-virtual {v12, v14}, Landroid/widget/SeekBar;->setMin(I)V

    goto :goto_1

    .line 625
    :cond_1
    move/from16 v14, p4

    .line 627
    :goto_1
    if-nez v9, :cond_2

    move v0, v14

    goto :goto_2

    :cond_2
    move v0, v9

    :goto_2
    invoke-virtual {v12, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 628
    invoke-virtual {v12}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, v6, Lcom/android/support/Menu;->SeekBarColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 629
    invoke-virtual {v12}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, v6, Lcom/android/support/Menu;->SeekBarProgressColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 630
    new-instance v15, Lcom/android/support/Menu$9;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p3

    move/from16 v4, p2

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/support/Menu$9;-><init>(Lcom/android/support/Menu;ILjava/lang/String;ILandroid/widget/TextView;)V

    invoke-virtual {v12, v15}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 644
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 645
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 647
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 648
    return-void
.end method

.method private Spinner(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "list"    # Ljava/lang/String;

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spinner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mod_Menu"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v0, Ljava/util/LinkedList;

    const-string v1, ","

    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 744
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 745
    .local v1, "linearLayout2":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 746
    .local v2, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x7

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 747
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 748
    iget v4, p0, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 749
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    new-instance v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 752
    .local v4, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    invoke-virtual {v4}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 755
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const v6, 0x1090009

    invoke-direct {v3, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 756
    .local v3, "aa":Landroid/widget/ArrayAdapter;
    invoke-virtual {v3, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 758
    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 759
    invoke-static {p3, p2}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 760
    new-instance v5, Lcom/android/support/Menu$13;

    invoke-direct {v5, p0, v4, p2}, Lcom/android/support/Menu$13;-><init>(Lcom/android/support/Menu;Landroid/widget/Spinner;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 771
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 772
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 773
    return-void
.end method

.method private Switch(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .locals 8
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "featNum"    # I
    .param p3, "featName"    # Ljava/lang/String;
    .param p4, "swiOn"    # Z

    .line 565
    new-instance v0, Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 566
    .local v0, "switchR":Landroid/widget/Switch;
    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v2, 0x3

    new-array v3, v2, [[I

    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, -0x101009e

    const/4 v7, 0x0

    aput v6, v5, v7

    aput-object v5, v3, v7

    new-array v5, v4, [I

    const v6, 0x10100a0

    aput v6, v5, v7

    aput-object v5, v3, v4

    new-array v5, v7, [I

    const/4 v6, 0x2

    aput-object v5, v3, v6

    new-array v2, v2, [I

    const v5, -0xffff01

    aput v5, v2, v7

    iget v5, p0, Lcom/android/support/Menu;->ToggleON:I

    aput v5, v2, v4

    iget v4, p0, Lcom/android/support/Menu;->ToggleOFF:I

    aput v4, v2, v6

    invoke-direct {v1, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 579
    .local v1, "buttonStates":Landroid/content/res/ColorStateList;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 581
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 582
    invoke-virtual {v0}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    goto :goto_0

    .line 583
    :catch_0
    move-exception v2

    .line 584
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Mod_Menu"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget v2, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setTextColor(I)V

    .line 589
    const/16 v2, 0xa

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3, v7, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 590
    invoke-static {p3, p2, p4}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 591
    new-instance v2, Lcom/android/support/Menu$8;

    invoke-direct {v2, p0, p3, p2, v0}, Lcom/android/support/Menu$8;-><init>(Lcom/android/support/Menu;Ljava/lang/String;ILandroid/widget/Switch;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 608
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 609
    return-void
.end method

.method private TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "text"    # Ljava/lang/String;

    .line 1135
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1136
    .local v0, "textView":Landroid/widget/TextView;
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    iget v1, p0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1138
    const/16 v1, 0xa

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1139
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1140
    return-void
.end method

.method private WebTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 3
    .param p1, "linLayout"    # Landroid/widget/LinearLayout;
    .param p2, "text"    # Ljava/lang/String;

    .line 1143
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1144
    .local v0, "wView":Landroid/webkit/WebView;
    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {v0, p2, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1146
    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 1148
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1149
    return-void
.end method

.method static synthetic access$000(Lcom/android/support/Menu;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/support/Menu;
    .param p1, "x1"    # Landroid/widget/LinearLayout;
    .param p2, "x2"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/support/Menu;->Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/support/Menu;Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/support/Menu;
    .param p1, "x1"    # Landroid/widget/LinearLayout;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/support/Menu;->Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/support/Menu;[Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/support/Menu;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/LinearLayout;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/support/Menu;->featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/support/Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/support/Menu;

    .line 72
    invoke-direct {p0}, Lcom/android/support/Menu;->isViewCollapsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/support/Menu;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/support/Menu;
    .param p1, "x1"    # I

    .line 72
    invoke-direct {p0, p1}, Lcom/android/support/Menu;->convertDipToPixels(I)I

    move-result v0

    return v0
.end method

.method private convertDipToPixels(I)I
    .locals 2
    .param p1, "i"    # I

    .line 1157
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private dp(I)I
    .locals 3
    .param p1, "i"    # I

    .line 1161
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 19
    .param p1, "listFT"    # [Ljava/lang/String;
    .param p2, "linearLayout"    # Landroid/widget/LinearLayout;

    .line 478
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v0, 0x0

    .line 479
    .local v0, "subFeat":I
    move-object/from16 v8, p2

    .line 481
    .local v8, "llBak":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    move v9, v1

    move v1, v0

    move-object/from16 v0, p2

    .end local p2    # "linearLayout":Landroid/widget/LinearLayout;
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    .local v1, "subFeat":I
    .local v9, "i":I
    :goto_0
    array-length v2, v7

    if-ge v9, v2, :cond_7

    .line 482
    const/4 v2, 0x0

    .line 484
    .local v2, "switchedOn":Z
    aget-object v3, v7, v9

    .line 485
    .local v3, "feature":Ljava/lang/String;
    const-string v4, "_True"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v10, ""

    if-eqz v5, :cond_0

    .line 486
    const/4 v2, 0x1

    .line 487
    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v11, v2

    goto :goto_1

    .line 485
    :cond_0
    move v11, v2

    .line 490
    .end local v2    # "switchedOn":Z
    .local v11, "switchedOn":Z
    :goto_1
    move-object v0, v8

    .line 491
    const-string v2, "CollapseAdd_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 493
    iget-object v0, v6, Lcom/android/support/Menu;->mCollapse:Landroid/widget/LinearLayout;

    .line 494
    invoke-virtual {v3, v2, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v12, v0

    goto :goto_2

    .line 491
    :cond_1
    move-object v12, v0

    .line 496
    .end local v0    # "linearLayout":Landroid/widget/LinearLayout;
    .local v12, "linearLayout":Landroid/widget/LinearLayout;
    :goto_2
    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 499
    .local v13, "str":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v4, v13, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    aget-object v4, v13, v2

    const-string v5, "-[0-9]*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 505
    :cond_2
    sub-int v4, v9, v1

    move v10, v1

    move-object v14, v3

    move v15, v4

    .local v4, "featNum":I
    goto :goto_4

    .line 500
    .end local v4    # "featNum":I
    :cond_3
    :goto_3
    aget-object v4, v13, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 501
    .restart local v4    # "featNum":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v13, v2

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 502
    add-int/lit8 v1, v1, 0x1

    move v10, v1

    move-object v14, v3

    move v15, v4

    .line 507
    .end local v1    # "subFeat":I
    .end local v3    # "feature":Ljava/lang/String;
    .end local v4    # "featNum":I
    .local v10, "subFeat":I
    .local v14, "feature":Ljava/lang/String;
    .local v15, "featNum":I
    :goto_4
    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 508
    .local v5, "strSplit":[Ljava/lang/String;
    aget-object v0, v5, v2

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/16 v16, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_4
    goto/16 :goto_5

    :sswitch_0
    const-string v2, "Button"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    goto/16 :goto_6

    :sswitch_1
    const-string v2, "CheckBox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x7

    goto/16 :goto_6

    :sswitch_2
    const-string v2, "RadioButton"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x8

    goto/16 :goto_6

    :sswitch_3
    const-string v2, "RichWebView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0xd

    goto/16 :goto_6

    :sswitch_4
    const-string v2, "Category"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0xb

    goto :goto_6

    :sswitch_5
    const-string v2, "RichTextView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0xc

    goto :goto_6

    :sswitch_6
    const-string v2, "ButtonOnOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    goto :goto_6

    :sswitch_7
    const-string v2, "Spinner"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    goto :goto_6

    :sswitch_8
    const-string v2, "Collapse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x9

    goto :goto_6

    :sswitch_9
    const-string v2, "InputText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x5

    goto :goto_6

    :sswitch_a
    const-string v2, "SeekBar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    goto :goto_6

    :sswitch_b
    const-string v2, "InputValue"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x6

    goto :goto_6

    :sswitch_c
    const-string v3, "Toggle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_6

    :sswitch_d
    const-string v2, "ButtonLink"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0xa

    goto :goto_6

    :goto_5
    const/4 v2, -0x1

    :goto_6
    packed-switch v2, :pswitch_data_0

    move-object v7, v5

    .end local v5    # "strSplit":[Ljava/lang/String;
    .local v7, "strSplit":[Ljava/lang/String;
    goto/16 :goto_8

    .line 557
    .end local v7    # "strSplit":[Ljava/lang/String;
    .restart local v5    # "strSplit":[Ljava/lang/String;
    :pswitch_0
    add-int/lit8 v10, v10, 0x1

    .line 558
    aget-object v0, v5, v16

    invoke-direct {v6, v12, v0}, Lcom/android/support/Menu;->WebTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    move v1, v10

    goto/16 :goto_9

    .line 553
    :pswitch_1
    add-int/lit8 v10, v10, 0x1

    .line 554
    aget-object v0, v5, v16

    invoke-direct {v6, v12, v0}, Lcom/android/support/Menu;->TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 555
    move v1, v10

    goto/16 :goto_9

    .line 549
    :pswitch_2
    add-int/lit8 v10, v10, 0x1

    .line 550
    aget-object v0, v5, v16

    invoke-direct {v6, v12, v0}, Lcom/android/support/Menu;->Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 551
    move v1, v10

    goto/16 :goto_9

    .line 545
    :pswitch_3
    add-int/lit8 v10, v10, 0x1

    .line 546
    aget-object v0, v5, v16

    aget-object v1, v5, v4

    invoke-direct {v6, v12, v0, v1}, Lcom/android/support/Menu;->ButtonLink(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    move v1, v10

    goto/16 :goto_9

    .line 541
    :pswitch_4
    aget-object v0, v5, v16

    invoke-direct {v6, v12, v0, v11}, Lcom/android/support/Menu;->Collapse(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 542
    add-int/lit8 v10, v10, 0x1

    .line 543
    move v1, v10

    goto/16 :goto_9

    .line 538
    :pswitch_5
    aget-object v0, v5, v16

    aget-object v1, v5, v4

    invoke-direct {v6, v12, v15, v0, v1}, Lcom/android/support/Menu;->RadioButton(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V

    .line 539
    goto/16 :goto_8

    .line 535
    :pswitch_6
    aget-object v0, v5, v16

    invoke-direct {v6, v12, v15, v0, v11}, Lcom/android/support/Menu;->CheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    .line 536
    goto/16 :goto_8

    .line 529
    :pswitch_7
    array-length v0, v5

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 530
    aget-object v3, v5, v4

    const/16 v17, 0x1

    aget-object v0, v5, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v15

    const/4 v7, 0x2

    move/from16 v4, v17

    move-object v7, v5

    .end local v5    # "strSplit":[Ljava/lang/String;
    .restart local v7    # "strSplit":[Ljava/lang/String;
    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/support/Menu;->InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;ZI)V

    goto :goto_7

    .line 529
    .end local v7    # "strSplit":[Ljava/lang/String;
    .restart local v5    # "strSplit":[Ljava/lang/String;
    :cond_5
    move-object v7, v5

    .line 531
    .end local v5    # "strSplit":[Ljava/lang/String;
    .restart local v7    # "strSplit":[Ljava/lang/String;
    :goto_7
    array-length v0, v7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 532
    aget-object v3, v7, v16

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/support/Menu;->InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;ZI)V

    goto :goto_8

    .line 526
    .end local v7    # "strSplit":[Ljava/lang/String;
    .restart local v5    # "strSplit":[Ljava/lang/String;
    :pswitch_8
    move-object v7, v5

    .end local v5    # "strSplit":[Ljava/lang/String;
    .restart local v7    # "strSplit":[Ljava/lang/String;
    aget-object v0, v7, v16

    invoke-direct {v6, v12, v15, v0}, Lcom/android/support/Menu;->InputText(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 527
    goto :goto_8

    .line 522
    .end local v7    # "strSplit":[Ljava/lang/String;
    .restart local v5    # "strSplit":[Ljava/lang/String;
    :pswitch_9
    move-object v7, v5

    .end local v5    # "strSplit":[Ljava/lang/String;
    .restart local v7    # "strSplit":[Ljava/lang/String;
    aget-object v0, v7, v16

    invoke-direct {v6, v12, v0}, Lcom/android/support/Menu;->TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 523
    aget-object v0, v7, v16

    const/4 v1, 0x2

    aget-object v1, v7, v1

    invoke-direct {v6, v12, v15, v0, v1}, Lcom/android/support/Menu;->Spinner(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V

    .line 524
    goto :goto_8

    .line 519
    .end local v7    # "strSplit":[Ljava/lang/String;
    .restart local v5    # "strSplit":[Ljava/lang/String;
    :pswitch_a
    move-object v7, v5

    .end local v5    # "strSplit":[Ljava/lang/String;
    .restart local v7    # "strSplit":[Ljava/lang/String;
    aget-object v0, v7, v16

    invoke-direct {v6, v12, v15, v0, v11}, Lcom/android/support/Menu;->ButtonOnOff(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    .line 520
    goto :goto_8

    .line 516
    .end local v7    # "strSplit":[Ljava/lang/String;
    .restart local v5    # "strSplit":[Ljava/lang/String;
    :pswitch_b
    move-object v7, v5

    .end local v5    # "strSplit":[Ljava/lang/String;
    .restart local v7    # "strSplit":[Ljava/lang/String;
    aget-object v0, v7, v16

    invoke-direct {v6, v12, v15, v0}, Lcom/android/support/Menu;->Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 517
    goto :goto_8

    .line 513
    .end local v7    # "strSplit":[Ljava/lang/String;
    .restart local v5    # "strSplit":[Ljava/lang/String;
    :pswitch_c
    move-object v7, v5

    .end local v5    # "strSplit":[Ljava/lang/String;
    .restart local v7    # "strSplit":[Ljava/lang/String;
    aget-object v3, v7, v16

    const/4 v0, 0x2

    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x3

    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/support/Menu;->SeekBar(Landroid/widget/LinearLayout;ILjava/lang/String;II)V

    .line 514
    goto :goto_8

    .line 510
    .end local v7    # "strSplit":[Ljava/lang/String;
    .restart local v5    # "strSplit":[Ljava/lang/String;
    :pswitch_d
    move-object v7, v5

    .end local v5    # "strSplit":[Ljava/lang/String;
    .restart local v7    # "strSplit":[Ljava/lang/String;
    aget-object v0, v7, v16

    invoke-direct {v6, v12, v15, v0, v11}, Lcom/android/support/Menu;->Switch(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    .line 511
    nop

    .line 481
    .end local v7    # "strSplit":[Ljava/lang/String;
    .end local v11    # "switchedOn":Z
    .end local v13    # "str":[Ljava/lang/String;
    .end local v14    # "feature":Ljava/lang/String;
    :cond_6
    :goto_8
    move v1, v10

    .end local v10    # "subFeat":I
    .restart local v1    # "subFeat":I
    :goto_9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, p1

    move-object v0, v12

    goto/16 :goto_0

    .line 562
    .end local v9    # "i":I
    .end local v12    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v15    # "featNum":I
    .restart local v0    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73d2c194 -> :sswitch_d
        -0x6a5c588c -> :sswitch_c
        -0x370e8c19 -> :sswitch_b
        -0x274065a5 -> :sswitch_a
        -0x22cfc409 -> :sswitch_9
        -0x21d27833 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        -0x6595922 -> :sswitch_6
        0x4f11a8e -> :sswitch_5
        0x6dd211e -> :sswitch_4
        0x1977177d -> :sswitch_3
        0x2e46a6ed -> :sswitch_2
        0x5f7507c3 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isViewCollapsed()Z
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 417
    new-instance v0, Lcom/android/support/Menu$7;

    invoke-direct {v0, p0}, Lcom/android/support/Menu$7;-><init>(Lcom/android/support/Menu;)V

    return-object v0
.end method


# virtual methods
.method native GetFeatureList()[Ljava/lang/String;
.end method

.method native Icon()Ljava/lang/String;
.end method

.method native IconWebViewData()Ljava/lang/String;
.end method

.method native Init(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end method

.method native IsGameLibLoaded()Z
.end method

.method public SetWindowManagerActivity()V
    .locals 9

    .line 396
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/support/Menu;->POS_X:I

    iget v4, p0, Lcom/android/support/Menu;->POS_Y:I

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v5, 0x2

    const v6, 0x2800108

    const/4 v7, -0x2

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v8, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    .line 408
    const/16 v0, 0x33

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 409
    iget-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/support/Menu;->POS_X:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 410
    iget-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/support/Menu;->POS_Y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 412
    iget-object v0, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    .line 413
    iget-object v1, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    return-void
.end method

.method public SetWindowManagerWindowService()V
    .locals 7

    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x7f6

    const/16 v4, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d2

    const/16 v4, 0x7d2

    .line 370
    .local v4, "iparams":I
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v5, 0x8

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    .line 372
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 374
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    sget-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "MyPrefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 376
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "lastX"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 377
    .local v1, "lastX":I
    const-string v3, "lastY"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 378
    .local v3, "lastY":I
    iget-object v5, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lcom/android/support/Menu;->POS_X:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 379
    iget-object v5, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lcom/android/support/Menu;->POS_Y:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 381
    if-eq v1, v2, :cond_1

    if-eq v3, v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 384
    iget-object v2, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 388
    :cond_1
    iget-object v2, p0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    .line 389
    iget-object v5, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/support/Menu;->overlayRequired:Z

    .line 392
    return-void
.end method

.method native SettingsList()[Ljava/lang/String;
.end method

.method public ShowMenu()V
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 343
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 344
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/support/Menu$6;

    invoke-direct {v1, p0, v0}, Lcom/android/support/Menu$6;-><init>(Lcom/android/support/Menu;Landroid/os/Handler;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1171
    iget-object v0, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1174
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "view"    # I

    .line 1165
    iget-object v0, p0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1166
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1168
    :cond_0
    return-void
.end method
