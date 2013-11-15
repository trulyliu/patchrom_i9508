.class public Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;
.super Lorg/apache/http/impl/client/naf/content/HttpContentExtractorAbstract;
.source "HttpResponseContentExtractorImpl.java"


# instance fields
.field private final httpResponse:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .parameter "httpResponse"

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/content/HttpContentExtractorAbstract;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 23
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
    .line 32
    sget-object v1, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->EMPTY:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    .line 34
    .local v1, httpResponseContent:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;->httpResponse:Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;->getEntityReplaceTypeIfNecessary()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 38
    .local v0, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;->getHttpContent(Lorg/apache/http/HttpEntity;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v1

    .line 41
    .end local v0           #httpEntity:Lorg/apache/http/HttpEntity;
    :cond_0
    return-object v1
.end method

.method protected getEntityReplaceTypeIfNecessary()Lorg/apache/http/HttpEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;->httpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 53
    .local v1, httpEntity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 54
    instance-of v2, v1, Lorg/apache/http/entity/BufferedHttpEntity;

    if-nez v2, :cond_0

    .line 56
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 58
    .local v0, bufferedHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/content/HttpResponseContentExtractorImpl;->httpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v2, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 60
    move-object v1, v0

    .line 64
    .end local v0           #bufferedHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    :cond_0
    return-object v1
.end method
