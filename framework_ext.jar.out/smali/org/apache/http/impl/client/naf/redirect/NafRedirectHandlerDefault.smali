.class public Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;
.super Ljava/lang/Object;
.source "NafRedirectHandlerDefault.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandler;


# static fields
.field private static final DEFAULT_MAXIMUM_REDIRECTIONS_COUNT:Ljava/lang/Integer;


# instance fields
.field private final authorizationHeaderUpdater:Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;

.field private final currentAmountOfRedirections:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final nafRequestExecutor:Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->DEFAULT_MAXIMUM_REDIRECTIONS_COUNT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;)V
    .locals 2
    .parameter "nafRequestExecutor"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->log:Lorg/apache/commons/logging/Log;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->currentAmountOfRedirections:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nafRequestExecutor must be not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->nafRequestExecutor:Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;

    .line 55
    new-instance v0, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;

    invoke-direct {v0}, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->authorizationHeaderUpdater:Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;

    .line 56
    return-void
.end method


# virtual methods
.method protected doSend(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    .locals 2
    .parameter "nafRequestWrapper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->nafRequestExecutor:Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;

    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;->executeRequestSending(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v0

    .line 225
    .local v0, responseWrapper:Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    return-object v0
.end method

.method public executeWithRedirectionHandling(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    .locals 5
    .parameter "nafRequestWrapper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, lastResponse:Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    const/4 v2, 0x0

    .line 90
    .local v2, response4Redirrection:Z
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->updateLastRequestWithNewLocation(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;)V

    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->doSend(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v0

    .line 93
    if-nez v0, :cond_1

    .line 94
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "lastResponse must be not null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 98
    .local v1, lastResponseHttp:Lorg/apache/http/HttpResponse;
    if-nez v1, :cond_2

    .line 99
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "lastResponseHttp must be not null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->isResponse4Redirrection(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->currentAmountOfRedirections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 109
    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->currentAmountOfRedirections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->getMaximumRedirectionsAmount()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 113
    :cond_4
    return-object v0
.end method

.method protected getLocationHeaderValue(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 2
    .parameter "httpResponse"

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, locationHeaderValue:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->searchLocationHeader(Lorg/apache/http/HttpResponse;)Lorg/apache/http/Header;

    move-result-object v0

    .line 195
    .local v0, locationHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 203
    .end local v0           #locationHeader:Lorg/apache/http/Header;
    :cond_0
    return-object v1
.end method

.method public getMaximumRedirectionsAmount()I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->DEFAULT_MAXIMUM_REDIRECTIONS_COUNT:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected isResponse4Redirrection(Lorg/apache/http/HttpResponse;)Z
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, isRedirectionResponse:Z
    if-eqz p1, :cond_0

    .line 238
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 239
    .local v3, statusLine:Lorg/apache/http/StatusLine;
    if-eqz v3, :cond_0

    .line 240
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 241
    .local v2, statusCode:I
    const/16 v4, 0x12c

    if-lt v2, v4, :cond_0

    const/16 v4, 0x18f

    if-gt v2, v4, :cond_0

    .line 243
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->searchLocationHeader(Lorg/apache/http/HttpResponse;)Lorg/apache/http/Header;

    move-result-object v1

    .line 244
    .local v1, locationHeader:Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 254
    .end local v1           #locationHeader:Lorg/apache/http/Header;
    .end local v2           #statusCode:I
    .end local v3           #statusLine:Lorg/apache/http/StatusLine;
    :cond_0
    return v0
.end method

.method protected searchLocationHeader(Lorg/apache/http/HttpResponse;)Lorg/apache/http/Header;
    .locals 10
    .parameter "httpResponse"

    .prologue
    .line 264
    const/4 v7, 0x0

    .line 266
    .local v7, locationHeader:Lorg/apache/http/Header;
    if-nez p1, :cond_0

    .line 267
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "httpResponse must be not null!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 270
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 271
    .local v0, allHeaders:[Lorg/apache/http/Header;
    if-eqz v0, :cond_1

    .line 272
    move-object v1, v0

    .local v1, arr$:[Lorg/apache/http/Header;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v1, v5

    .line 273
    .local v2, curHeader:Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, curHeaderName:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 275
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, curHeaderNameTrimLower:Ljava/lang/String;
    const-string v8, "location"

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 277
    move-object v7, v2

    .line 284
    .end local v1           #arr$:[Lorg/apache/http/Header;
    .end local v2           #curHeader:Lorg/apache/http/Header;
    .end local v3           #curHeaderName:Ljava/lang/String;
    .end local v4           #curHeaderNameTrimLower:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_1
    return-object v7

    .line 272
    .restart local v1       #arr$:[Lorg/apache/http/Header;
    .restart local v2       #curHeader:Lorg/apache/http/Header;
    .restart local v3       #curHeaderName:Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected updateLastRequestWithNewLocation(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;)V
    .locals 10
    .parameter "nafRequestWrapper"
    .parameter "lastHttpResponseWrapper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 129
    if-eqz p2, :cond_1

    .line 131
    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 133
    .local v2, lastHttpResponse:Lorg/apache/http/HttpResponse;
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->getLocationHeaderValue(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, locationHeaderValue:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v0

    .line 138
    .local v0, currentHttpRequest:Lorg/apache/http/HttpRequest;
    instance-of v9, v0, Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v9, :cond_1

    move-object v1, v0

    .line 139
    check-cast v1, Lorg/apache/http/client/methods/HttpRequestBase;

    .line 140
    .local v1, httpRequestBase:Lorg/apache/http/client/methods/HttpRequestBase;
    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 141
    .local v8, uri:Ljava/net/URI;
    invoke-virtual {v1, v8}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 143
    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, newHostname:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, newScheme:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/net/URI;->getPort()I

    move-result v6

    .line 146
    .local v6, newPort:I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_0

    .line 147
    const-string v9, "https"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 148
    const/16 v6, 0x1bb

    .line 154
    :cond_0
    :goto_0
    new-instance v5, Lorg/apache/http/HttpHost;

    invoke-direct {v5, v4, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 155
    .local v5, newHttpHost:Lorg/apache/http/HttpHost;
    invoke-virtual {p1, v5}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->setCurrentHttpHost(Lorg/apache/http/HttpHost;)V

    .line 157
    iget-object v9, p0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;->authorizationHeaderUpdater:Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;

    invoke-interface {v9, p1}, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;->updateRequestWithCachedAuthorizationHeader(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)V

    .line 182
    .end local v0           #currentHttpRequest:Lorg/apache/http/HttpRequest;
    .end local v1           #httpRequestBase:Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v2           #lastHttpResponse:Lorg/apache/http/HttpResponse;
    .end local v3           #locationHeaderValue:Ljava/lang/String;
    .end local v4           #newHostname:Ljava/lang/String;
    .end local v5           #newHttpHost:Lorg/apache/http/HttpHost;
    .end local v6           #newPort:I
    .end local v7           #newScheme:Ljava/lang/String;
    .end local v8           #uri:Ljava/net/URI;
    :cond_1
    return-void

    .line 149
    .restart local v0       #currentHttpRequest:Lorg/apache/http/HttpRequest;
    .restart local v1       #httpRequestBase:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v2       #lastHttpResponse:Lorg/apache/http/HttpResponse;
    .restart local v3       #locationHeaderValue:Ljava/lang/String;
    .restart local v4       #newHostname:Ljava/lang/String;
    .restart local v6       #newPort:I
    .restart local v7       #newScheme:Ljava/lang/String;
    .restart local v8       #uri:Ljava/net/URI;
    :cond_2
    const-string v9, "http"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 150
    const/16 v6, 0x50

    goto :goto_0
.end method
