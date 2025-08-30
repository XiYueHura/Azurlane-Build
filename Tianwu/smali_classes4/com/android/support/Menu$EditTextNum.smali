.class Lcom/android/support/Menu$EditTextNum;
.super Ljava/lang/Object;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextNum"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/support/Menu;

.field private val:I


# direct methods
.method private constructor <init>(Lcom/android/support/Menu;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/android/support/Menu$EditTextNum;->this$0:Lcom/android/support/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/support/Menu;Lcom/android/support/Menu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/support/Menu;
    .param p2, "x1"    # Lcom/android/support/Menu$1;

    .line 787
    invoke-direct {p0, p1}, Lcom/android/support/Menu$EditTextNum;-><init>(Lcom/android/support/Menu;)V

    return-void
.end method


# virtual methods
.method public getNum()I
    .locals 1

    .line 795
    iget v0, p0, Lcom/android/support/Menu$EditTextNum;->val:I

    return v0
.end method

.method public setNum(I)V
    .locals 0
    .param p1, "i"    # I

    .line 791
    iput p1, p0, Lcom/android/support/Menu$EditTextNum;->val:I

    .line 792
    return-void
.end method
