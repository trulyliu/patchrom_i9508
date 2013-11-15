.class Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;
.super Ljava/lang/Object;
.source "AuthorizationHeaderCacheKey.java"


# instance fields
.field private final hostName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)V
    .locals 7
    .parameter "nafRequestWrapper"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v2, 0x0

    .line 27
    .local v2, hostNameVal:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v1

    .line 29
    .local v1, currentHttpRequest:Lorg/apache/http/HttpRequest;
    if-eqz v1, :cond_0

    .line 30
    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    .line 31
    .local v3, requestLine:Lorg/apache/http/RequestLine;
    if-eqz v3, :cond_0

    .line 32
    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, uri:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 36
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 37
    .local v5, uriObj:Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 44
    .end local v3           #requestLine:Lorg/apache/http/RequestLine;
    .end local v4           #uri:Ljava/lang/String;
    .end local v5           #uriObj:Ljava/net/URI;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 45
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 46
    .local v0, currentHttpHost:Lorg/apache/http/HttpHost;
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 51
    .end local v0           #currentHttpHost:Lorg/apache/http/HttpHost;
    .end local v1           #currentHttpRequest:Lorg/apache/http/HttpRequest;
    :cond_1
    iput-object v2, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    .line 52
    return-void

    .line 38
    .restart local v1       #currentHttpRequest:Lorg/apache/http/HttpRequest;
    .restart local v3       #requestLine:Lorg/apache/http/RequestLine;
    .restart local v4       #uri:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    if-ne p0, p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 79
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 80
    check-cast v0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;

    .line 81
    .local v0, other:Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 82
    iget-object v3, v0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 85
    goto :goto_0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 66
    const/16 v0, 0x1f

    .line 67
    .local v0, prime:I
    const/4 v1, 0x1

    .line 68
    .local v1, result:I
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 69
    return v1

    .line 68
    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isValidKey()Z
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, result:Z
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorizationHeaderCacheKey [hostName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKey;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
