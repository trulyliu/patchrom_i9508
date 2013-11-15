.class public Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;
.super Ljava/lang/Object;
.source "CurrentCipherSuiteExtractorFromHttpContext.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;


# instance fields
.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method private constructor <init>(Lorg/apache/http/protocol/HttpContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->log:Lorg/apache/commons/logging/Log;

    .line 31
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 32
    return-void
.end method

.method static createDefault(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;
    .locals 1
    .parameter "httpContext"

    .prologue
    .line 84
    new-instance v0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    .line 86
    .local v0, extractor:Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;
    return-object v0
.end method


# virtual methods
.method public extractCurrentCipherSuiteName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 41
    const/4 v3, 0x0

    .line 43
    .local v3, usedCipherSuiteAndroidName:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->httpContext:Lorg/apache/http/protocol/HttpContext;

    if-eqz v4, :cond_1

    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v5, "http.connection"

    invoke-interface {v4, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, connection:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 50
    instance-of v4, v0, Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 51
    check-cast v1, Lorg/apache/http/conn/ManagedClientConnection;

    .line 53
    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 54
    .local v2, sslSession:Ljavax/net/ssl/SSLSession;
    if-eqz v2, :cond_0

    .line 55
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v3

    .line 74
    .end local v0           #connection:Ljava/lang/Object;
    .end local v1           #managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    .end local v2           #sslSession:Ljavax/net/ssl/SSLSession;
    :cond_0
    :goto_0
    return-object v3

    .line 71
    :cond_1
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "httpContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorFromHttpContext;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method
