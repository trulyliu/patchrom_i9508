.class public Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerFactory;
.super Ljava/lang/Object;
.source "RemoteGbaServiceConnectionListenerFactory.java"


# static fields
.field private static final gbaServiceConnectionImplClassRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerFactory;->gbaServiceConnectionImplClassRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getOriginalClassRef(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Ljava/lang/Class;
    .locals 5
    .parameter "gbaServiceClassLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;
        }
    .end annotation

    .prologue
    .line 38
    const-class v3, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerFactory;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 39
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "gbaServiceClassLoader must be not null!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 42
    :cond_0
    :try_start_1
    sget-object v2, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerFactory;->gbaServiceConnectionImplClassRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 43
    const-class v2, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerFactory;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    .line 44
    .local v1, log:Lorg/apache/commons/logging/Log;
    const-string v2, "javax.microedition.gba.naf.GbaServiceConnectionImpl"

    invoke-interface {p0, v2}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, gbaServiceConnectionImplClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "javax.microedition.gba.naf.GbaServiceConnectionImpl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Wrong class was loaded by gbaServiceClassLoader!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_1
    sget-object v2, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerFactory;->gbaServiceConnectionImplClassRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 57
    .end local v0           #gbaServiceConnectionImplClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #log:Lorg/apache/commons/logging/Log;
    :cond_2
    sget-object v2, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerFactory;->gbaServiceConnectionImplClassRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2
.end method

.method public static newInstsance(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;
    .locals 6
    .parameter "gbaServiceClassLoader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v2, 0x0

    .line 120
    .local v2, ref:Ljava/lang/Object;
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerFactory;->getOriginalClassRef(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 122
    .local v1, gbaServiceConnectionImplClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerFactory;->newInstsanceUnsafe(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    .line 138
    if-nez v2, :cond_0

    .line 139
    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    const-string v5, "New instance hasn\'t been created."

    invoke-direct {v4, v5}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    .end local v1           #gbaServiceConnectionImplClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/SecurityException;
    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 126
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 128
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 130
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 132
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 134
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 142
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v1       #gbaServiceConnectionImplClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const/4 v3, 0x0

    .line 144
    .local v3, remoteGbaServiceConnectionListener:Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;
    :try_start_1
    new-instance v3, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerImpl;

    .end local v3           #remoteGbaServiceConnectionListener:Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;
    invoke-direct {v3, v2, p0}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerImpl;-><init>(Ljava/lang/Object;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_7

    .line 152
    .restart local v3       #remoteGbaServiceConnectionListener:Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;
    return-object v3

    .line 146
    .end local v3           #remoteGbaServiceConnectionListener:Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;
    :catch_6
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/SecurityException;
    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 148
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_7
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v4, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static newInstsanceUnsafe(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .parameter "gbaServiceClassLoader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .local p1, gbaServiceConnectionImplClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    const-class v4, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerFactory;

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    .line 81
    .local v3, log:Lorg/apache/commons/logging/Log;
    const/4 v0, 0x0

    .line 83
    .local v0, gbaServiceConnectionImpl:Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 84
    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v4, v6

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 90
    .local v1, gbaServiceConnectionImplConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    if-eqz v1, :cond_0

    .line 92
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    long-to-int v4, v4

    rem-int/lit16 v4, v4, 0x2710

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 96
    .local v2, id:Ljava/lang/Integer;
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    .end local v0           #gbaServiceConnectionImpl:Ljava/lang/Object;
    .end local v1           #gbaServiceConnectionImplConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v2           #id:Ljava/lang/Integer;
    :cond_0
    return-object v0
.end method
