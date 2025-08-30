.class public final Lcom/android/support/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"


# static fields
.field public static final DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/android/support/CrashHandler;->DEFAULT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "app"    # Landroid/content/Context;
    .param p1, "overlayRequired"    # Z

    .line 51
    new-instance v0, Lcom/android/support/CrashHandler$1;

    invoke-direct {v0, p0}, Lcom/android/support/CrashHandler$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 142
    return-void
.end method
