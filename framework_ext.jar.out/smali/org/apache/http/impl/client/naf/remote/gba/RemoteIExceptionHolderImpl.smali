.class Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;
.super Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.source "RemoteIExceptionHolderImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;


# instance fields
.field private final getExceptionMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;-><init>(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;->log:Lorg/apache/commons/logging/Log;

    .line 26
    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "getException"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;->getExceptionMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 27
    return-void
.end method


# virtual methods
.method public getException()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v2, 0x0

    .line 38
    .local v2, remoteIException:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;->getExceptionMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    .local v1, getExceptionMethodResult:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 45
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionImpl;

    invoke-direct {v3, v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionImpl;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #remoteIException:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;
    .local v3, remoteIException:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;
    move-object v2, v3

    .line 53
    .end local v3           #remoteIException:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;
    .restart local v2       #remoteIException:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;
    :cond_0
    :goto_0
    return-object v2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 48
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    const-string v0, "javax.microedition.gba.android.IExceptionHolder"

    .line 62
    .local v0, gbaServiceIexceptionHolderName:Ljava/lang/String;
    const-string v1, "javax.microedition.gba.android.IExceptionHolder"

    return-object v1
.end method
