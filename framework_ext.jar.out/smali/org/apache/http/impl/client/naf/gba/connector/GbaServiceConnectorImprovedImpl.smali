.class Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;
.super Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;
.source "GbaServiceConnectorImprovedImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImproved;


# static fields
.field public static final MAX_RECONNECT_ATTEMPTS:I = 0x3


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V
    .locals 1
    .parameter "androidApplicationContext"
    .parameter "gbaServiceClassLoader"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;-><init>(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->log:Lorg/apache/commons/logging/Log;

    .line 33
    return-void
.end method


# virtual methods
.method public getIGbaServiceInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, numberOfCurrentAttempt:I
    const/4 v2, 0x0

    .line 100
    .local v2, iGbaServiceInstance:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 105
    const/4 v1, 0x0

    .line 107
    .local v1, gbaServiceOnline:Z
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->isGbaServiceOnline()Z
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 113
    :goto_0
    if-eqz v1, :cond_1

    .line 114
    invoke-super {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->getIGbaServiceInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;

    move-result-object v2

    .line 124
    :goto_1
    return-object v2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 117
    .end local v0           #e:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->release()V

    .line 119
    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    goto :goto_1
.end method

.method public isGbaServiceOnline()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v2, 0x0

    .line 46
    .local v2, gbaServiceOnline:Z
    invoke-super {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->getIGbaServiceInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;

    move-result-object v3

    .line 47
    .local v3, iGbaServiceInstance:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    if-eqz v3, :cond_0

    .line 50
    :try_start_0
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    long-to-int v6, v6

    rem-int/lit16 v4, v6, 0x2710

    .line 51
    .local v4, incrementBase:I
    add-int/lit8 v1, v4, 0x1

    .line 53
    .local v1, expectedResult:I
    invoke-interface {v3, v4}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;->checkIfServiceIsOnline(I)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    .line 56
    .local v5, serviceResponse:I
    if-ne v1, v5, :cond_0

    .line 59
    const/4 v2, 0x1

    .line 81
    .end local v1           #expectedResult:I
    .end local v4           #incrementBase:I
    .end local v5           #serviceResponse:I
    :cond_0
    return v2

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/SecurityException;
    new-instance v6, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 68
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v6, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 70
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 71
    .local v0, e:Lorg/apache/http/impl/client/naf/remote/RemoteException;
    new-instance v6, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/remote/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method
