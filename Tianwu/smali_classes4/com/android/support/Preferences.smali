.class public Lcom/android/support/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static final DEFAULT_BOOLEAN_VALUE:Z = false

.field private static final DEFAULT_DOUBLE_VALUE:D = 0.0

.field private static final DEFAULT_FLOAT_VALUE:F = 0.0f

.field private static final DEFAULT_INT_VALUE:I = 0x0

.field private static final DEFAULT_LONG_VALUE:J = 0x0L

.field private static final DEFAULT_STRING_VALUE:Ljava/lang/String; = ""

.field private static final LENGTH:Ljava/lang/String; = "_length"

.field public static context:Landroid/content/Context;

.field public static isExpanded:Z

.field public static loadPref:Z

.field private static prefsInstance:Lcom/android/support/Preferences;

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferencesName"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 88
    return-void
.end method

.method public static native Changes(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;)V
.end method

.method public static changeFeatureBool(Ljava/lang/String;IZ)V
    .locals 7
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "featureNum"    # I
    .param p2, "bool"    # Z

    .line 38
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/support/Preferences;->writeBoolean(IZ)V

    .line 39
    sget-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p0

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;)V

    .line 40
    return-void
.end method

.method public static changeFeatureInt(Ljava/lang/String;II)V
    .locals 7
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "featureNum"    # I
    .param p2, "value"    # I

    .line 28
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/support/Preferences;->writeInt(II)V

    .line 29
    sget-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p0

    move v4, p2

    invoke-static/range {v1 .. v6}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;)V

    .line 30
    return-void
.end method

.method public static changeFeatureString(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "featureNum"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/support/Preferences;->writeString(ILjava/lang/String;)V

    .line 34
    sget-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;)V

    .line 35
    return-void
.end method

.method public static loadPrefBool(Ljava/lang/String;IZ)Z
    .locals 7
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "featureNum"    # I
    .param p2, "bDef"    # Z

    .line 52
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/support/Preferences;->readBoolean(IZ)Z

    move-result v0

    .line 53
    .local v0, "bool":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 54
    sput-boolean v0, Lcom/android/support/Preferences;->loadPref:Z

    .line 56
    :cond_0
    const/4 v1, -0x3

    if-ne p1, v1, :cond_1

    .line 57
    sput-boolean v0, Lcom/android/support/Preferences;->isExpanded:Z

    .line 59
    :cond_1
    sget-boolean v1, Lcom/android/support/Preferences;->loadPref:Z

    if-nez v1, :cond_2

    if-gez p1, :cond_3

    .line 60
    :cond_2
    move p2, v0

    .line 63
    :cond_3
    sget-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p0

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;)V

    .line 64
    return p2
.end method

.method public static loadPrefInt(Ljava/lang/String;I)I
    .locals 7
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "featureNum"    # I

    .line 43
    sget-boolean v0, Lcom/android/support/Preferences;->loadPref:Z

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/support/Preferences;->readInt(I)I

    move-result v0

    .line 45
    .local v0, "i":I
    sget-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p0

    move v4, v0

    invoke-static/range {v1 .. v6}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;)V

    .line 46
    return v0

    .line 48
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static loadPrefString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "featureNum"    # I

    .line 68
    sget-boolean v0, Lcom/android/support/Preferences;->loadPref:Z

    if-nez v0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    const-string v0, ""

    return-object v0

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/support/Preferences;->with(Landroid/content/Context;)Lcom/android/support/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/support/Preferences;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p0

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/support/Preferences;->Changes(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;)V

    .line 71
    return-object v0
.end method

.method public static with(Landroid/content/Context;)Lcom/android/support/Preferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    sget-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/support/Preferences;

    invoke-direct {v0, p0}, Lcom/android/support/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    .line 98
    :cond_0
    sget-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    return-object v0
.end method

.method public static with(Landroid/content/Context;Ljava/lang/String;)Lcom/android/support/Preferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferencesName"    # Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/android/support/Preferences;

    invoke-direct {v0, p0, p1}, Lcom/android/support/Preferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    .line 122
    :cond_0
    sget-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    return-object v0
.end method

.method public static with(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/support/Preferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferencesName"    # Ljava/lang/String;
    .param p2, "forceInstantiation"    # Z

    .line 133
    if-eqz p2, :cond_0

    .line 134
    new-instance v0, Lcom/android/support/Preferences;

    invoke-direct {v0, p0, p1}, Lcom/android/support/Preferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    .line 136
    :cond_0
    sget-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    return-object v0
.end method

.method public static with(Landroid/content/Context;Z)Lcom/android/support/Preferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceInstantiation"    # Z

    .line 107
    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Lcom/android/support/Preferences;

    invoke-direct {v0, p0}, Lcom/android/support/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    .line 110
    :cond_0
    sget-object v0, Lcom/android/support/Preferences;->prefsInstance:Lcom/android/support/Preferences;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 482
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 483
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 475
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getOrderedStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 438
    .local p2, "defValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_length"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/support/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 440
    .local v0, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/support/Preferences;->readInt(Ljava/lang/String;)I

    move-result v1

    .line 441
    .local v1, "stringSetLength":I
    if-ltz v1, :cond_0

    .line 442
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/support/Preferences;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    .end local v2    # "i":I
    :cond_0
    return-object v0

    .line 448
    .end local v0    # "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .end local v1    # "stringSetLength":I
    :cond_1
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 424
    .local p2, "defValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 425
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 428
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/support/Preferences;->getOrderedStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putOrderedStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 401
    .local v0, "stringSetLength":I
    sget-object v1, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/support/Preferences;->readInt(Ljava/lang/String;)I

    move-result v0

    .line 405
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/support/Preferences;->writeInt(Ljava/lang/String;I)V

    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "]"

    const-string v5, "["

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 408
    .local v3, "aValue":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/support/Preferences;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    nop

    .end local v3    # "aValue":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 410
    goto :goto_0

    .line 411
    :cond_1
    :goto_1
    if-ge v1, v0, :cond_2

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/support/Preferences;->remove(Ljava/lang/String;)V

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 415
    :cond_2
    return-void
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 387
    .local p2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 388
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/support/Preferences;->putOrderedStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 393
    :goto_0
    return-void
.end method

.method public readBoolean(I)Z
    .locals 3
    .param p1, "what"    # I

    .line 334
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readBoolean(IZ)Z
    .locals 2
    .param p1, "what"    # I
    .param p2, "defaultBoolean"    # Z

    .line 357
    :try_start_0
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "ex":Ljava/lang/ClassCastException;
    return p2
.end method

.method public readBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 326
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultBoolean"    # Z

    .line 345
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/support/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    const-wide/16 v0, 0x0

    return-wide v0

    .line 243
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/support/Preferences;->readLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultDouble"    # D

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/support/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    return-wide p2

    .line 254
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/support/Preferences;->readLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 272
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public readFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultFloat"    # F

    .line 281
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public readInt(I)I
    .locals 3
    .param p1, "what"    # I

    .line 203
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public readInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 193
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultInt"    # I

    .line 215
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public readLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "what"    # Ljava/lang/String;

    .line 299
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultLong"    # J

    .line 308
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString(I)Ljava/lang/String;
    .locals 3
    .param p1, "what"    # I

    .line 155
    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "ex":Ljava/lang/ClassCastException;
    return-object v0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "defaultString"    # Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_length"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/support/Preferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/support/Preferences;->readInt(Ljava/lang/String;)I

    move-result v0

    .line 460
    .local v0, "stringSetLength":I
    if-ltz v0, :cond_0

    .line 461
    sget-object v2, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 462
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 463
    sget-object v2, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "stringSetLength":I
    .end local v1    # "i":I
    :cond_0
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 468
    return-void
.end method

.method public writeBoolean(IZ)V
    .locals 2
    .param p1, "where"    # I
    .param p2, "what"    # Z

    .line 376
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 377
    return-void
.end method

.method public writeBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # Z

    .line 368
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 369
    return-void
.end method

.method public writeDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # D

    .line 262
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/support/Preferences;->writeLong(Ljava/lang/String;J)V

    .line 263
    return-void
.end method

.method public writeFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # F

    .line 289
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    return-void
.end method

.method public writeInt(II)V
    .locals 2
    .param p1, "where"    # I
    .param p2, "what"    # I

    .line 231
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 232
    return-void
.end method

.method public writeInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # I

    .line 223
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 224
    return-void
.end method

.method public writeLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # J

    .line 316
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 2
    .param p1, "where"    # I
    .param p2, "what"    # Ljava/lang/String;

    .line 183
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    .line 175
    sget-object v0, Lcom/android/support/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    return-void
.end method
