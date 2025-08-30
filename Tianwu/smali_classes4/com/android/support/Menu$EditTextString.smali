.class Lcom/android/support/Menu$EditTextString;
.super Ljava/lang/Object;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextString"
.end annotation


# instance fields
.field private text:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/support/Menu;


# direct methods
.method private constructor <init>(Lcom/android/support/Menu;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/android/support/Menu$EditTextString;->this$0:Lcom/android/support/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/support/Menu;Lcom/android/support/Menu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/support/Menu;
    .param p2, "x1"    # Lcom/android/support/Menu$1;

    .line 775
    invoke-direct {p0, p1}, Lcom/android/support/Menu$EditTextString;-><init>(Lcom/android/support/Menu;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/android/support/Menu$EditTextString;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 779
    iput-object p1, p0, Lcom/android/support/Menu$EditTextString;->text:Ljava/lang/String;

    .line 780
    return-void
.end method
