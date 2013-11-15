.class public Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;
.super Ljava/lang/Object;
.source "GbaAuthProviderKeeper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;


# static fields
.field private static instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static syncObj:Ljava/lang/Object;


# instance fields
.field private final delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

.field private final supportedGbaTypeHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/gba/GbaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;)V
    .locals 2
    .parameter "gbaAuthProvider"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->supportedGbaTypeHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate must be not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    .line 34
    return-void
.end method

.method public static clear()V
    .locals 4

    .prologue
    .line 134
    sget-object v2, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_0
    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    .line 136
    .local v0, gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->releaseForced()V

    .line 139
    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 140
    monitor-exit v2

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static instance()Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    .locals 6

    .prologue
    .line 40
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    .line 41
    .local v1, instance:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    if-nez v1, :cond_1

    .line 42
    sget-object v4, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v4

    .line 43
    :try_start_0
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    move-object v1, v0

    .line 44
    if-nez v1, :cond_0

    .line 45
    new-instance v2, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;

    new-instance v3, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;

    invoke-direct {v5}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;-><init>()V

    invoke-direct {v3, v5}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;-><init>(Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;)V

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;-><init>(Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v1           #instance:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    .local v2, instance:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    :try_start_1
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 49
    .end local v2           #instance:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    .restart local v1       #instance:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    :cond_0
    :try_start_2
    monitor-exit v4

    .line 51
    :cond_1
    return-object v1

    .line 49
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1           #instance:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    .restart local v2       #instance:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #instance:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    .restart local v1       #instance:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    goto :goto_0
.end method


# virtual methods
.method public getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->supportedGbaTypeHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/gba/GbaType;

    .line 62
    .local v1, supportedGbaType:Lorg/apache/http/impl/client/naf/gba/GbaType;
    if-nez v1, :cond_1

    .line 64
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 66
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->supportedGbaTypeHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-object v1, v0

    .line 67
    if-nez v1, :cond_0

    .line 69
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v2}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->supportedGbaTypeHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 72
    :cond_0
    monitor-exit v3

    .line 75
    :cond_1
    return-object v1

    .line 72
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isKeyExpired(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Z
    .locals 3
    .parameter "gbaType"
    .parameter "nafFqdn"
    .parameter "nafSecurityProtocol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x1

    .line 86
    .local v0, bIsKeyExpired:Z
    sget-object v2, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->isKeyExpired(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Z

    move-result v0

    .line 88
    monitor-exit v2

    .line 90
    return v0

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public promiseToReleaseInNearTime()V
    .locals 2

    .prologue
    .line 128
    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->promiseToReleaseInNearTime()V

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public provideAuth(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .locals 3
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
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, gbaAuthData:Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    sget-object v2, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->provideAuth(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;

    move-result-object v0

    .line 105
    monitor-exit v2

    .line 106
    return-object v0

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseForced()V
    .locals 2

    .prologue
    .line 114
    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->releaseForced()V

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
