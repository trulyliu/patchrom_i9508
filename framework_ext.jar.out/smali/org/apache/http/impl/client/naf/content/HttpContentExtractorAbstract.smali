.class abstract Lorg/apache/http/impl/client/naf/content/HttpContentExtractorAbstract;
.super Ljava/lang/Object;
.source "HttpContentExtractorAbstract.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/content/HttpContentExtractor;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getEntityReplaceTypeIfNecessary()Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getHttpContent(Lorg/apache/http/HttpEntity;)Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    .locals 4
    .parameter "httpEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    .local v0, byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_0

    .line 29
    invoke-interface {p1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 35
    new-instance v1, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;-><init>([BLjava/lang/String;)V

    .line 37
    .local v1, httpContent:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    return-object v1
.end method
