.class Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;
.super Ljava/lang/Object;
.source "GbaAuthProviderReleaseWatcher.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
.implements Ljava/lang/Runnable;


# static fields
.field public static final SLEEP_TIME:J = 0x3L


# instance fields
.field private final delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

.field private final lastKnownAccessTimeHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private final methodIsInUsageNowHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final shutdownWatcherHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final stopMe:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;)V
    .locals 2
    .parameter "authProvider"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->lastKnownAccessTimeHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->methodIsInUsageNowHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->shutdownWatcherHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->stopMe:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authProvider must be not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    .line 39
    return-void
.end method


# virtual methods
.method public getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->markUsage(Z)V

    .line 45
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-result-object v0

    .line 47
    .local v0, supportedGbaType:Lorg/apache/http/impl/client/naf/gba/GbaType;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->markUsage(Z)V

    .line 49
    return-object v0
.end method

.method public isKeyExpired(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Z
    .locals 2
    .parameter "gbaType"
    .parameter "nafFqdn"
    .parameter "nafSecurityProtocol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->markUsage(Z)V

    .line 56
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->isKeyExpired(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Z

    move-result v0

    .line 58
    .local v0, bIsKeyExpired:Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->markUsage(Z)V

    .line 60
    return v0
.end method

.method markUsage(Z)V
    .locals 2
    .parameter "isInUsage"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->methodIsInUsageNowHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->stopMe:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->lastKnownAccessTimeHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public promiseToReleaseInNearTime()V
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->stopMe:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->shutdownWatcherHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    .local v0, watcherThread:Ljava/lang/Thread;
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->shutdownWatcherHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    .end local v0           #watcherThread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public provideAuth(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .locals 2
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
    .line 86
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->markUsage(Z)V

    .line 88
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->provideAuth(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;

    move-result-object v0

    .line 90
    .local v0, authData:Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->markUsage(Z)V

    .line 92
    return-object v0
.end method

.method public releaseForced()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->markUsage(Z)V

    .line 99
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->releaseForced()V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->markUsage(Z)V

    .line 102
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 107
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 109
    .local v0, curTime:Ljava/util/Date;
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->methodIsInUsageNowHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->lastKnownAccessTimeHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    .line 111
    .local v2, lastKnownAccessTime:Ljava/util/Date;
    if-eqz v2, :cond_2

    .line 112
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3a98

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 113
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->stopAndClean()V

    .line 134
    .end local v2           #lastKnownAccessTime:Ljava/util/Date;
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->stopMe:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->stopMe:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->stopAndClean()V

    goto :goto_0
.end method

.method stopAndClean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->delegate:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->releaseForced()V

    .line 139
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->lastKnownAccessTimeHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->methodIsInUsageNowHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->shutdownWatcherHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderReleaseWatcher;->stopMe:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    return-void
.end method
