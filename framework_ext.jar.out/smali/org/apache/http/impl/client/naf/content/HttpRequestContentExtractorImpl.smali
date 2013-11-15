.class public Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;
.super Lorg/apache/http/impl/client/naf/content/HttpContentExtractorAbstract;
.source "HttpRequestContentExtractorImpl.java"


# instance fields
.field private final httpRequest:Lorg/apache/http/HttpRequest;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpRequest;)V
    .locals 0
    .parameter "httpRequest"

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/content/HttpContentExtractorAbstract;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;->httpRequest:Lorg/apache/http/HttpRequest;

    .line 24
    return-void
.end method


# virtual methods
.method public extractContent()Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    sget-object v1, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->EMPTY:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    .line 35
    .local v1, httpRequestContent:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;->httpRequest:Lorg/apache/http/HttpRequest;

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;->httpRequest:Lorg/apache/http/HttpRequest;

    instance-of v2, v2, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;->getEntityReplaceTypeIfNecessary()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 41
    .local v0, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;->getHttpContent(Lorg/apache/http/HttpEntity;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v1

    .line 46
    .end local v0           #httpEntity:Lorg/apache/http/HttpEntity;
    :cond_0
    return-object v1
.end method

.method protected getEntityReplaceTypeIfNecessary()Lorg/apache/http/HttpEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/content/HttpRequestContentExtractorImpl;->httpRequest:Lorg/apache/http/HttpRequest;

    check-cast v1, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 58
    .local v1, enclosingRequestBase:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 60
    .local v2, httpEntity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 61
    instance-of v3, v2, Lorg/apache/http/entity/BufferedHttpEntity;

    if-nez v3, :cond_0

    .line 63
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v2}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 65
    .local v0, bufferedHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 67
    move-object v2, v0

    .line 71
    .end local v0           #bufferedHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    :cond_0
    return-object v2
.end method
