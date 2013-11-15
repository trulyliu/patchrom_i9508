.class public Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;
.super Ljava/lang/Object;
.source "GbaServiceConnectorSynchronizedSingleton.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;


# static fields
.field private static instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;",
            ">;"
        }
    .end annotation
.end field

.field private static syncObj:Ljava/lang/Object;


# instance fields
.field private final delegate:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;)V
    .locals 2
    .parameter "delegate"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate must be not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->delegate:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    .line 32
    return-void
.end method

.method public static clear()V
    .locals 3

    .prologue
    .line 98
    sget-object v1, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static instance(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    .locals 5
    .parameter "androidApplicationContext"
    .parameter "gbaServiceClassLoader"

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "androidApplicationContext must be not null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_0
    if-nez p1, :cond_1

    .line 79
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "gbaServiceClassLoader must be not null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_1
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    .line 83
    .local v1, instance:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    if-nez v1, :cond_3

    .line 84
    sget-object v4, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->syncObj:Ljava/lang/Object;

    monitor-enter v4

    .line 85
    :try_start_0
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    move-object v1, v0

    .line 86
    if-nez v1, :cond_2

    .line 87
    new-instance v2, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;

    new-instance v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;

    invoke-direct {v3, p0, p1}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;-><init>(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;-><init>(Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v1           #instance:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    .local v2, instance:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    :try_start_1
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 92
    .end local v2           #instance:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    .restart local v1       #instance:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    :cond_2
    :try_start_2
    monitor-exit v4

    .line 94
    :cond_3
    return-object v1

    .line 92
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1           #instance:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    .restart local v2       #instance:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #instance:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    .restart local v1       #instance:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    goto :goto_0
.end method


# virtual methods
.method public getConnectorState()Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->delegate:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;->getConnectorState()Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    move-result-object v0

    return-object v0
.end method

.method public getIGbaServiceInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 40
    sget-object v1, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->delegate:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;->getIGbaServiceInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 52
    sget-object v1, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->delegate:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;->release()V

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
