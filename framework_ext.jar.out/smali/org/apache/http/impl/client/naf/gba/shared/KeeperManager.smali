.class public Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;
.super Ljava/lang/Object;
.source "KeeperManager.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/shared/SharedResources;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;
    }
.end annotation


# static fields
.field private static instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;",
            ">;"
        }
    .end annotation
.end field

.field private static syncObj:Ljava/lang/Object;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final sharedReferencesHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->log:Lorg/apache/commons/logging/Log;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->sharedReferencesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    return-void
.end method

.method public static instance()Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;
    .locals 5

    .prologue
    .line 40
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;

    .line 41
    .local v1, instance:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;
    if-nez v1, :cond_1

    .line 43
    sget-object v4, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->syncObj:Ljava/lang/Object;

    monitor-enter v4

    .line 44
    :try_start_0
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;

    move-object v1, v0

    .line 45
    if-nez v1, :cond_0

    .line 47
    new-instance v2, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;

    invoke-direct {v2}, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v1           #instance:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;
    .local v2, instance:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;
    :try_start_1
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 50
    .end local v2           #instance:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;
    .restart local v1       #instance:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;
    :cond_0
    :try_start_2
    monitor-exit v4

    .line 53
    :cond_1
    return-object v1

    .line 50
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1           #instance:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;
    .restart local v2       #instance:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #instance:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;
    .restart local v1       #instance:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->sharedReferencesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;

    .line 85
    .local v0, sharedReferences:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "RELEASING of shared resources"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 87
    invoke-static {}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->clear()V

    .line 88
    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->clear()V

    .line 89
    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->clear()V

    .line 90
    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->clear()V

    .line 92
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->sharedReferencesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    .end local v0           #sharedReferences:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized init()V
    .locals 7

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->sharedReferencesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;

    .line 63
    .local v0, sharedReferences:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;
    if-nez v0, :cond_0

    .line 64
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "INITIALIZATION of shared resources"

    invoke-interface {v1, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;->getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v2

    .line 67
    .local v2, androidContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->instance()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    move-result-object v3

    .line 68
    .local v3, gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->instance(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    move-result-object v4

    .line 70
    .local v4, gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    move-result-object v5

    .line 72
    .local v5, gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    new-instance v0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;

    .end local v0           #sharedReferences:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;-><init>(Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;)V

    .line 74
    .restart local v0       #sharedReferences:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->sharedReferencesHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v2           #androidContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    .end local v3           #gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;
    .end local v4           #gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    .end local v5           #gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    :cond_0
    monitor-exit p0

    return-void

    .line 62
    .end local v0           #sharedReferences:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reload()V
    .locals 2

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->clear()V

    .line 103
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->init()V

    .line 104
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "RELOADING of shared resources has been completed."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
