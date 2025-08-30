.class Lcom/android/support/Menu$7;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/support/Menu;->onTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final collapsedView:Landroid/view/View;

.field final expandedView:Landroid/view/View;

.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lcom/android/support/Menu;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/support/Menu;

    .line 417
    iput-object p1, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iget-object v0, p1, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/support/Menu$7;->collapsedView:Landroid/view/View;

    .line 419
    iget-object v0, p1, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/support/Menu$7;->expandedView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 425
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 470
    return v1

    .line 461
    :pswitch_0
    iget-object v0, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 462
    iget-object v0, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 464
    iget-object v0, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/support/Menu$7;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/support/Menu$7;->initialTouchX:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 465
    iget-object v0, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/support/Menu$7;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/android/support/Menu$7;->initialTouchY:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 467
    iget-object v0, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    iget-object v1, v1, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    iget-object v3, v3, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    return v2

    .line 434
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/android/support/Menu$7;->initialTouchX:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 435
    .local v0, "rawX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/android/support/Menu$7;->initialTouchY:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 436
    .local v3, "rawY":I
    iget-object v4, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    iget-object v4, v4, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 437
    iget-object v4, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    iget-object v4, v4, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 440
    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    invoke-static {v4}, Lcom/android/support/Menu;->access$300(Lcom/android/support/Menu;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    :try_start_0
    iget-object v4, p0, Lcom/android/support/Menu$7;->collapsedView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v4, p0, Lcom/android/support/Menu$7;->expandedView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    goto :goto_0

    .line 447
    :catch_0
    move-exception v4

    .line 453
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    sget-object v5, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const-string v5, "MyPrefs"

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 454
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 455
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string v6, "lastX"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 456
    iget-object v5, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    iget-object v5, v5, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v6, "lastY"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 459
    return v2

    .line 428
    .end local v0    # "rawX":I
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v3    # "rawY":I
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_2
    iget-object v0, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/android/support/Menu$7;->initialX:I

    .line 429
    iget-object v0, p0, Lcom/android/support/Menu$7;->this$0:Lcom/android/support/Menu;

    iget-object v0, v0, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/support/Menu$7;->initialY:I

    .line 430
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/support/Menu$7;->initialTouchX:F

    .line 431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/support/Menu$7;->initialTouchY:F

    .line 432
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
