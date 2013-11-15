.class Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderWrapper;
.super Ljava/lang/Object;
.source "GbaServiceClassLoaderWrapper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderReinitializable;


# instance fields
.field private delegate:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V
    .locals 0
    .parameter "gbaServiceClassLoader"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderWrapper;->delegate:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized getPlatformClassLoader()Ljava/lang/ClassLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;
        }
    .end annotation

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderWrapper;->delegate:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;->getPlatformClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 43
    .local v0, platformClassLoader:Ljava/lang/ClassLoader;
    monitor-exit p0

    return-object v0

    .line 42
    .end local v0           #platformClassLoader:Ljava/lang/ClassLoader;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderWrapper;->delegate:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 32
    .local v0, classRef:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    monitor-exit p0

    return-object v0

    .line 31
    .end local v0           #classRef:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized replacePlatformClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "classLoader"

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderImpl;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderImpl;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderWrapper;->delegate:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
