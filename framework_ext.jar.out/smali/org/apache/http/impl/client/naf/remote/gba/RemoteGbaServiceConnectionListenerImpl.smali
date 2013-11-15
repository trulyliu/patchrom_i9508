.class Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerImpl;
.super Lorg/apache/http/impl/client/naf/remote/gba/RemoteAbstractGbaClass;
.source "RemoteGbaServiceConnectionListenerImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;


# instance fields
.field private final getServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V
    .locals 3
    .parameter "obj"
    .parameter "gbaClassLoader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteAbstractGbaClass;-><init>(Ljava/lang/Object;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerImpl;->log:Lorg/apache/commons/logging/Log;

    .line 33
    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "getService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerImpl;->getServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 34
    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    const-string v0, "javax.microedition.gba.naf.GbaServiceConnectionImpl"

    .line 42
    .local v0, fullName:Ljava/lang/String;
    const-string v1, "javax.microedition.gba.naf.GbaServiceConnectionImpl"

    return-object v1
.end method

.method public getService()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 54
    .local v2, iGbaService:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerImpl;->getServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, getServiceMethodResult:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteAbstractGbaClass;->gbaClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    invoke-direct {v3, v1, v4}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;-><init>(Ljava/lang/Object;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #iGbaService:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    .local v3, iGbaService:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    move-object v2, v3

    .line 68
    .end local v3           #iGbaService:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    .restart local v2       #iGbaService:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    :cond_0
    :goto_0
    return-object v2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerImpl;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerImpl;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
