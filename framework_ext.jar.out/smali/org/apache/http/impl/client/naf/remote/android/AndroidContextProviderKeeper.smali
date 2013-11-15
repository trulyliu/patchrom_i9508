.class public Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;
.super Ljava/lang/Object;
.source "AndroidContextProviderKeeper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;


# static fields
.field private static instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static syncObj:Ljava/lang/Object;


# instance fields
.field private final delegate:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;)V
    .locals 2
    .parameter "delegate"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->log:Lorg/apache/commons/logging/Log;

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate must be not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    .line 40
    return-void
.end method

.method public static clear()V
    .locals 3

    .prologue
    .line 83
    sget-object v1, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static instance()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    .locals 6

    .prologue
    .line 68
    sget-object v4, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    .line 69
    .local v2, instance:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    if-nez v2, :cond_1

    .line 70
    sget-object v5, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 71
    :try_start_0
    sget-object v4, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-object v2, v0

    .line 72
    if-nez v2, :cond_0

    .line 73
    new-instance v1, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;

    invoke-direct {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;-><init>()V

    .line 74
    .local v1, androidContextProvider:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    new-instance v3, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;

    invoke-direct {v3, v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;-><init>(Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v2           #instance:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    .local v3, instance:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    :try_start_1
    sget-object v4, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 77
    .end local v1           #androidContextProvider:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    .end local v3           #instance:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    .restart local v2       #instance:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    :cond_0
    :try_start_2
    monitor-exit v5

    .line 79
    :cond_1
    return-object v2

    .line 77
    :catchall_0
    move-exception v4

    :goto_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v2           #instance:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    .restart local v1       #androidContextProvider:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    .restart local v3       #instance:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #instance:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    .restart local v2       #instance:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    goto :goto_0
.end method


# virtual methods
.method public getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, context:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    sget-object v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 53
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;->getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v0

    .line 54
    monitor-exit v2

    .line 58
    return-object v0

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
