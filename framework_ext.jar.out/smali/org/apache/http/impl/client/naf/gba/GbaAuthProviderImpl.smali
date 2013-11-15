.class Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;
.super Ljava/lang/Object;
.source "GbaAuthProviderImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_BYPASS_CACHE:Z = true

.field private static final DEFAULT_SECONDS_FOR_ATTEMPT:I = 0x3c


# instance fields
.field private final androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

.field private final gbaAuthManagerHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;",
            ">;"
        }
    .end annotation
.end field

.field private final gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

.field private final gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaAuthManagerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->getAndroidContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    .line 60
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It is impossible to use GBA service without an instance of Android context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->getGbaServiceClassLoader()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    .line 66
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It is impossible to use GBA service without an instance of GBA class loader."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->getGbaServiceConnector()Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    .line 72
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    if-nez v0, :cond_2

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It is impossible to use GBA service without an instance of GBA service connector."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_2
    return-void
.end method

.method private doGbaAuthUnsafe(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .locals 5
    .parameter "gbaType"
    .parameter "nafFqdn"
    .parameter "uaSecurityProtocolId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;,
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;,
            Lorg/apache/http/impl/client/naf/remote/RemoteException;,
            Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, gbaAuthData:Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    invoke-static {v3}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderFactory;->newInstsance(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;

    move-result-object v1

    .line 268
    .local v1, iExceptionHolder:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->getGbaAuthManagerInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;

    move-result-object v2

    .line 270
    .local v2, iGbaAuthManager:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl$1;->$SwitchMap$org$apache$http$impl$client$naf$gba$GbaType:[I

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/gba/GbaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 286
    new-instance v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    const-string v4, "Unknown GBA type! It is impossible to get auth data."

    invoke-direct {v3, v4}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 272
    :pswitch_0
    new-instance v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    const-string v4, "GBA is not supported. It is impossible to get auth data."

    invoke-direct {v3, v4}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 276
    :pswitch_1
    invoke-virtual {p0, p2, p3, v1, v2}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->doGbaMe(Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;

    move-result-object v0

    .line 295
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->extractException(Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;)V

    .line 299
    return-object v0

    .line 281
    :pswitch_2
    invoke-virtual {p0, p2, p3, v1, v2}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->doGbaU(Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;

    move-result-object v0

    .line 283
    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private enableResourceLeakIndication()V
    .locals 2

    .prologue
    .line 415
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 416
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was an attempt to connect to GBA service, a resource leak is possible, the method release() must be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, resLeakIndicationException:Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 424
    .end local v0           #resLeakIndicationException:Ljava/lang/IllegalStateException;
    :cond_0
    return-void
.end method


# virtual methods
.method doGbaMe(Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .locals 10
    .parameter "nafFqdn"
    .parameter "uaSecurityProtocolId"
    .parameter "iExceptionHolder"
    .parameter "iGbaAuthManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;,
            Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 386
    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->getIdContent()[B

    move-result-object v3

    const/16 v4, 0x3c

    move-object v0, p4

    move-object v2, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;->performGbaMeAuthentication(ZLjava/lang/String;[BILorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;)Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParams;

    move-result-object v9

    .line 390
    .local v9, paramsMe:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParams;
    if-nez v9, :cond_0

    .line 391
    new-instance v0, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;

    const-string v1, "Obtained GBA authentication parameters are empty."

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    invoke-interface {v9}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParams;->getBTid()Ljava/lang/String;

    move-result-object v6

    .line 395
    .local v6, bTid:Ljava/lang/String;
    invoke-interface {v9}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParams;->getKsNaf()[B

    move-result-object v8

    .line 397
    .local v8, ksNaf:[B
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_1

    if-eqz v8, :cond_1

    array-length v0, v8

    if-ge v0, v1, :cond_2

    .line 398
    :cond_1
    new-instance v0, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;

    const-string v1, "B-TID or keys were missed."

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_2
    new-instance v7, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;

    invoke-direct {v7, v6, v8}, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;-><init>(Ljava/lang/String;[B)V

    .line 405
    .local v7, gbaAuthData:Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    return-object v7
.end method

.method doGbaU(Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .locals 10
    .parameter "nafFqdn"
    .parameter "uaSecurityProtocolId"
    .parameter "iExceptionHolder"
    .parameter "iGbaAuthManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;,
            Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 348
    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->getIdContent()[B

    move-result-object v3

    const/16 v4, 0x3c

    move-object v0, p4

    move-object v2, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;->performGbaUAuthentication(ZLjava/lang/String;[BILorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;)Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParams;

    move-result-object v9

    .line 352
    .local v9, paramsU:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParams;
    if-nez v9, :cond_0

    .line 353
    new-instance v0, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;

    const-string v1, "Obtained GBA authentication parameters are empty."

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    invoke-interface {v9}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParams;->getBTid()Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, bTid:Ljava/lang/String;
    invoke-interface {v9}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParams;->getKsExtNaf()[B

    move-result-object v8

    .line 359
    .local v8, ksExtNaf:[B
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_1

    if-eqz v8, :cond_1

    array-length v0, v8

    if-ge v0, v1, :cond_2

    .line 360
    :cond_1
    new-instance v0, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;

    const-string v1, "B-TID or keys were missed."

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_2
    new-instance v7, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;

    invoke-direct {v7, v6, v8}, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;-><init>(Ljava/lang/String;[B)V

    .line 367
    .local v7, gbaAuthData:Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    return-object v7
.end method

.method extractException(Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;)V
    .locals 6
    .parameter "iExceptionHolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;,
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-interface {p1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;->getException()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;

    move-result-object v2

    .line 316
    .local v2, iException:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;
    if-eqz v2, :cond_0

    .line 318
    invoke-interface {v2}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, errorMsg:Ljava/lang/String;
    invoke-interface {v2}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;->getErrorStackTrace()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, errorStackTrace:Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------ iException.getErrorMsg() === "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 323
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------ iException.getErrorStackTrace() === "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 325
    new-instance v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-direct {v3, v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 330
    .end local v0           #errorMsg:Ljava/lang/String;
    .end local v1           #errorStackTrace:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 432
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 434
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    .line 435
    .local v0, runtimeException:Ljava/lang/RuntimeException;
    if-eqz v0, :cond_0

    .line 436
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "A resource leak was detected"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 438
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 440
    :cond_0
    return-void
.end method

.method getAndroidContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;->getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v0

    .line 86
    .local v0, context:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    return-object v0
.end method

.method getGbaAuthManagerInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;,
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaAuthManagerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;

    .line 164
    .local v0, iGbaAuthManager:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;
    if-nez v0, :cond_0

    .line 165
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    invoke-interface {v2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;->getIGbaServiceInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;

    move-result-object v1

    .line 168
    .local v1, iGbaServiceInstance:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    if-eqz v1, :cond_0

    .line 169
    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;->getGbaAuthManager()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaAuthManagerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 179
    .end local v1           #iGbaServiceInstance:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    :cond_0
    return-object v0
.end method

.method getGbaServiceClassLoader()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->instance()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    move-result-object v0

    .line 96
    .local v0, classLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;
    return-object v0
.end method

.method getGbaServiceConnector()Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    invoke-static {v1, v2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->instance(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    move-result-object v0

    .line 107
    .local v0, conectorReference:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    return-object v0
.end method

.method public getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->enableResourceLeakIndication()V

    .line 122
    sget-object v2, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    .line 125
    .local v2, resGbaType:Lorg/apache/http/impl/client/naf/gba/GbaType;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->getGbaAuthManagerInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;

    move-result-object v1

    .line 127
    .local v1, gbaAuthManagerInstance:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;
    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;->isGbaSupported()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 129
    .local v3, typeIdResult:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lorg/apache/http/impl/client/naf/gba/GbaType;->parse(I)Lorg/apache/http/impl/client/naf/gba/GbaType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 147
    return-object v2

    .line 133
    .end local v1           #gbaAuthManagerInstance:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;
    .end local v3           #typeIdResult:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public isKeyExpired(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Z
    .locals 6
    .parameter "gbaType"
    .parameter "nafFqdn"
    .parameter "nafSecurityProtocol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 463
    const/4 v0, 0x1

    .line 465
    .local v0, bIsKeyExpired:Z
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->getGbaAuthManagerInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;

    move-result-object v2

    .line 467
    .local v2, iGbaAuthManager:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl$1;->$SwitchMap$org$apache$http$impl$client$naf$gba$GbaType:[I

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/gba/GbaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 481
    new-instance v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    const-string v4, "Unknown GBA type! It is impossible to get auth data."

    invoke-direct {v3, v4}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v2           #iGbaAuthManager:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;
    :catch_0
    move-exception v1

    .line 487
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 469
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #iGbaAuthManager:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;
    :pswitch_0
    :try_start_1
    new-instance v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    const-string v4, "GBA is not supported. It is impossible to get isKeyExpired."

    invoke-direct {v3, v4}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 473
    :pswitch_1
    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->getIdContent()[B

    move-result-object v3

    invoke-interface {v2, p2, v3}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;->isGbaMeKeyExpired(Ljava/lang/String;[B)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 490
    :goto_0
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKeyExpired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 495
    return v0

    .line 477
    :pswitch_2
    :try_start_2
    invoke-virtual {p3}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->getIdContent()[B

    move-result-object v3

    invoke-interface {v2, p2, v3}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;->isGbaUKeyExpired(Ljava/lang/String;[B)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 478
    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public promiseToReleaseInNearTime()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public provideAuth(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .locals 7
    .parameter "gbaType"
    .parameter "nafFqdn"
    .parameter "nafSecurityProtocol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;,
            Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->enableResourceLeakIndication()V

    .line 220
    const/4 v3, 0x0

    .line 223
    .local v3, gbaAuthData:Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->doGbaAuthUnsafe(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 239
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->releaseForced()V

    .line 242
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "provideAuth()#completed   gbaAuthData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 243
    return-object v3

    .line 225
    :catch_0
    move-exception v1

    .line 229
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    instance-of v4, v1, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;

    if-eqz v4, :cond_0

    .line 230
    move-object v0, v1

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;

    move-object v2, v0

    .line 231
    .local v2, exNoKeys:Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #exNoKeys:Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->releaseForced()V

    throw v4

    .line 234
    .restart local v1       #e:Ljava/lang/Exception;
    :cond_0
    :try_start_2
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaAuthManagerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 235
    new-instance v4, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public releaseForced()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 204
    :cond_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    .end local v0           #e:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v1
.end method
