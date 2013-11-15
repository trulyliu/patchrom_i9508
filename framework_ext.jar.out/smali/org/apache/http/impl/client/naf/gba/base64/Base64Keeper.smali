.class public Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;
.super Ljava/lang/Object;
.source "Base64Keeper.java"


# static fields
.field private static final instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static syncObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 8
    .parameter "data"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;
        }
    .end annotation

    .prologue
    .line 23
    sget-object v5, Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;

    .line 24
    .local v1, base64Provider:Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;
    if-nez v1, :cond_1

    .line 25
    sget-object v6, Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;->syncObj:Ljava/lang/Object;

    monitor-enter v6

    .line 26
    :try_start_0
    sget-object v5, Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-nez v1, :cond_0

    .line 29
    :try_start_1
    new-instance v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidBase64;

    invoke-direct {v2}, Lorg/apache/http/impl/client/naf/remote/android/AndroidBase64;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    .end local v1           #base64Provider:Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;
    .local v2, base64Provider:Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;
    :try_start_2
    sget-object v5, Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    .line 35
    .end local v2           #base64Provider:Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;
    .restart local v1       #base64Provider:Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;
    :cond_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    :cond_1
    const/4 v4, 0x0

    .line 39
    .local v4, result:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 40
    invoke-interface {v1, p0, p1}, Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 42
    :cond_2
    return-object v4

    .line 30
    .end local v4           #result:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 31
    .local v3, e:Ljava/lang/ClassNotFoundException;
    :try_start_4
    new-instance v5, Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v3}, Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 35
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v5

    :goto_0
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v1           #base64Provider:Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;
    .restart local v2       #base64Provider:Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #base64Provider:Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;
    .restart local v1       #base64Provider:Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;
    goto :goto_0
.end method
