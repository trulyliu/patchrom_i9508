.class public Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;
.super Ljava/lang/Object;
.source "CurrentCipherSuiteExtractorFromDefaultRequestDirector.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final requestDirector:Lorg/apache/http/client/RequestDirector;


# direct methods
.method private constructor <init>(Lorg/apache/http/client/RequestDirector;)V
    .locals 1
    .parameter "director"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    .line 34
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->requestDirector:Lorg/apache/http/client/RequestDirector;

    .line 35
    return-void
.end method

.method static createDefault(Lorg/apache/http/client/RequestDirector;)Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;
    .locals 1
    .parameter "requestDirector"

    .prologue
    .line 135
    new-instance v0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;-><init>(Lorg/apache/http/client/RequestDirector;)V

    .line 137
    .local v0, extractor:Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;
    return-object v0
.end method


# virtual methods
.method public extractCurrentCipherSuiteName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 47
    .local v1, usedCipherSuiteAndroidName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->obtainUnsafe()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/SecurityException;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 50
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/NoSuchFieldException;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 52
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 55
    .local v0, e:Ljava/lang/IllegalAccessException;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method obtainUnsafe()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v6, 0x0

    .line 75
    .local v6, usedCipherSuiteAndroidName:Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->requestDirector:Lorg/apache/http/client/RequestDirector;

    if-eqz v7, :cond_0

    .line 76
    iget-object v7, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->requestDirector:Lorg/apache/http/client/RequestDirector;

    instance-of v7, v7, Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-eqz v7, :cond_0

    .line 78
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromDefaultRequestDirector;->requestDirector:Lorg/apache/http/client/RequestDirector;

    check-cast v0, Lorg/apache/http/impl/client/DefaultRequestDirector;

    .line 80
    .local v0, defaultRequestDirector:Lorg/apache/http/impl/client/DefaultRequestDirector;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 83
    .local v1, defaultRequestDirectorClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/apache/http/impl/client/DefaultRequestDirector;>;"
    const-string v7, "managedConn"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 85
    .local v3, managedConnField:Ljava/lang/reflect/Field;
    if-eqz v3, :cond_0

    .line 86
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 90
    .local v4, managedConnFieldValue:Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 92
    instance-of v7, v4, Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v7, :cond_0

    move-object v2, v4

    .line 94
    check-cast v2, Lorg/apache/http/conn/ManagedClientConnection;

    .line 95
    .local v2, managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    .line 96
    .local v5, sslSession:Ljavax/net/ssl/SSLSession;
    if-eqz v5, :cond_0

    .line 97
    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v6

    .line 125
    .end local v0           #defaultRequestDirector:Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local v1           #defaultRequestDirectorClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/apache/http/impl/client/DefaultRequestDirector;>;"
    .end local v2           #managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    .end local v3           #managedConnField:Ljava/lang/reflect/Field;
    .end local v4           #managedConnFieldValue:Ljava/lang/Object;
    .end local v5           #sslSession:Ljavax/net/ssl/SSLSession;
    :cond_0
    return-object v6
.end method
