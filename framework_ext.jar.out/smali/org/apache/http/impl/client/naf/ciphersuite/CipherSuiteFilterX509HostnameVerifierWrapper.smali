.class public Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;
.super Ljava/lang/Object;
.source "CipherSuiteFilterX509HostnameVerifierWrapper.java"

# interfaces
.implements Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final ENABLED_CIPHER_SUITES:[Ljava/lang/String;

.field private final log:Lorg/apache/commons/logging/Log;

.field private mapper:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;

.field private originalVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 3
    .parameter "originalVerifier"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->log:Lorg/apache/commons/logging/Log;

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DES-CBC3-SHA"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->ENABLED_CIPHER_SUITES:[Ljava/lang/String;

    .line 36
    new-instance v0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;

    invoke-direct {v0}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->mapper:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "originalVerifier must be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->originalVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 44
    return-void
.end method


# virtual methods
.method filterEnabledCipherSuites(Ljavax/net/ssl/SSLSocket;)V
    .locals 3
    .parameter "sslSocket"

    .prologue
    .line 84
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, supportedCipherSuites:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 87
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->mapper:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;

    invoke-interface {v2, v1}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;->getEnabledAndroidCipherSuitesAfterFiltering([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, enabledAndroidCipherSuitesAfterFiltering:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 97
    .end local v0           #enabledAndroidCipherSuitesAfterFiltering:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .parameter "host"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->originalVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 63
    return-void
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 1
    .parameter "host"
    .parameter "ssl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->filterEnabledCipherSuites(Ljavax/net/ssl/SSLSocket;)V

    .line 58
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->originalVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 59
    return-void
.end method

.method public verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "cns"
    .parameter "subjectAlts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->originalVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2
    .parameter "host"
    .parameter "session"

    .prologue
    .line 47
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->originalVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p1, p2}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    .line 48
    .local v0, result:Z
    return v0
.end method
