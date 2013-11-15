.class Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderImpl;
.super Ljava/lang/Object;
.source "GbaServiceClassLoaderImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;


# instance fields
.field private final classLoaderHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2
    .parameter "classLoader"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "classLoader must be not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderImpl;->classLoaderHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    return-void
.end method


# virtual methods
.method public getPlatformClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderImpl;->classLoaderHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 54
    .local v0, classLoader:Ljava/lang/ClassLoader;
    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
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
    .line 35
    const/4 v0, 0x0

    .line 38
    .local v0, classRef:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderImpl;->classLoaderHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    return-object v0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v2, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
