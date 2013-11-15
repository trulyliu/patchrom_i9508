.class Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParamsImpl;
.super Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.source "RemoteIGbaUUaSessionParamsImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParams;


# instance fields
.field private final getBTidMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final getKeyLifeTimeMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final getKsExtNafMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;-><init>(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParamsImpl;->log:Lorg/apache/commons/logging/Log;

    .line 29
    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "getBTid"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParamsImpl;->getBTidMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 30
    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "getKeyLifeTime"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParamsImpl;->getKeyLifeTimeMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 31
    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "getKsExtNaf"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParamsImpl;->getKsExtNafMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 32
    return-void
.end method


# virtual methods
.method public getBTid()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParamsImpl;->getBTidMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    .local v0, getBTidMethodResult:Ljava/lang/String;
    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    const-string v0, "javax.microedition.gba.android.IGbaUUaSessionParams"

    .line 36
    .local v0, fullName:Ljava/lang/String;
    const-string v1, "javax.microedition.gba.android.IGbaUUaSessionParams"

    return-object v1
.end method

.method public getKeyLifeTime()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParamsImpl;->getKeyLifeTimeMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, getKeyLifeTimeMethodResult:Ljava/lang/String;
    return-object v0
.end method

.method public getKsExtNaf()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, result:[B
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParamsImpl;->getKsExtNafMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, getKsExtNafMethodResult:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 84
    check-cast v0, [B

    .end local v0           #getKsExtNafMethodResult:Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, [B

    .line 87
    :cond_0
    return-object v1
.end method
