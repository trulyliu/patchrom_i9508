.class Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfoWrapper;
.super Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.source "AndroidApplicationInfoWrapper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;


# static fields
.field public static final FLAG_SYSTEM:I = 0x1


# instance fields
.field private final flagsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

.field private final sourceDirField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "androidApplicationInfoRef"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;-><init>(Ljava/lang/Object;)V

    .line 25
    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    const-string v1, "sourceDir"

    invoke-direct {v0, p0, v1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfoWrapper;->sourceDirField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    .line 26
    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    const-string v1, "flags"

    invoke-direct {v0, p0, v1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfoWrapper;->flagsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    .line 27
    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "android.content.pm.ApplicationInfo"

    .line 69
    .local v0, applicationInfo:Ljava/lang/String;
    return-object v0
.end method

.method public getSourceDir()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfoWrapper;->sourceDirField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, sourceDir:Ljava/lang/String;
    return-object v0
.end method

.method public isSystemsOne()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, sysApp:Z
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfoWrapper;->flagsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 44
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v0, v2

    .line 45
    check-cast v0, Ljava/lang/Integer;

    .line 46
    .local v0, flagsValue:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 48
    .end local v0           #flagsValue:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return v1

    .line 46
    .restart local v0       #flagsValue:Ljava/lang/Integer;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public validateClass(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-void
.end method
