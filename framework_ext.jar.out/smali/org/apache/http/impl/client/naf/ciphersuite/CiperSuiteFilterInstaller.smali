.class public Lorg/apache/http/impl/client/naf/ciphersuite/CiperSuiteFilterInstaller;
.super Ljava/lang/Object;
.source "CiperSuiteFilterInstaller.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CiperSuiteFilterInstaller;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public setUpFilterWrapper(Lorg/apache/http/conn/ClientConnectionManager;)V
    .locals 8
    .parameter "connectionManager"

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "connectionManager can\'t be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 40
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    .line 41
    .local v3, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    if-nez v3, :cond_1

    .line 42
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "schemeRegistry can\'t be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 45
    :cond_1
    const-string v6, "https"

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    .line 46
    .local v2, httpsScheme:Lorg/apache/http/conn/scheme/Scheme;
    if-nez v2, :cond_2

    .line 47
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "httpsScheme can\'t be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 50
    :cond_2
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v4

    .line 51
    .local v4, socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;
    if-nez v4, :cond_3

    .line 52
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "socketFactory can\'t be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 55
    :cond_3
    instance-of v6, v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-eqz v6, :cond_6

    move-object v5, v4

    .line 56
    check-cast v5, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 58
    .local v5, sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    invoke-virtual {v5}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v0

    .line 59
    .local v0, hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    if-nez v0, :cond_4

    .line 60
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "hostnameVerifier can\'t be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 63
    :cond_4
    instance-of v6, v0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;

    if-nez v6, :cond_5

    .line 65
    new-instance v1, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;-><init>(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 67
    .local v1, hostnameVerifierWrapped:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;
    invoke-virtual {v5, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 83
    .end local v1           #hostnameVerifierWrapped:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;
    :cond_5
    return-void

    .line 77
    .end local v0           #hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .end local v5           #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_6
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "We have incompatible type of SocketFactory for TLS, it should be SSLSocketFactory compatible."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
