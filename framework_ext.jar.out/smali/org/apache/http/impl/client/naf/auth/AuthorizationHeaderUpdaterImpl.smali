.class public Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;
.super Ljava/lang/Object;
.source "AuthorizationHeaderUpdaterImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdater;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public updateRequestWithCachedAuthorizationHeader(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)V
    .locals 9
    .parameter "httpRequestWrapper"

    .prologue
    .line 31
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 32
    .local v2, currentHttpHost:Lorg/apache/http/HttpHost;
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v3

    .line 34
    .local v3, currentHttpRequest:Lorg/apache/http/HttpRequest;
    invoke-static {}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCacheKeeper;->instance()Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;

    move-result-object v6

    invoke-interface {v6, p1}, Lorg/apache/http/impl/client/naf/cache/AuthorizationHeaderCache;->getItem(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;

    move-result-object v0

    .line 37
    .local v0, authorizationHeader:Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;
    if-eqz v0, :cond_1

    .line 38
    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    move-result-object v5

    .line 41
    .local v5, gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNafFqdn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getUaSecurityProtocolId()Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;->isKeyExpired(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 42
    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->buildHttpHeaderValue()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, authorizationHeaderValue:Ljava/lang/String;
    const-string v6, "Authorization"

    invoke-interface {v3, v6, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "   current request has been updated with cached Authorization header."

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 57
    .end local v1           #authorizationHeaderValue:Ljava/lang/String;
    .end local v5           #gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    :goto_0
    return-void

    .line 47
    .restart local v5       #gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    :cond_0
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "   current request hasn\'t been updated with cached Authorization header, because the cache key is expired"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v4

    .line 51
    .local v4, e:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "During attempt to use GBA service (Type): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    .end local v4           #e:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
    .end local v5           #gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    :cond_1
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/auth/AuthorizationHeaderUpdaterImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "   current request hasn\'t been updated with cached Authorization header, because the cache doesn\'t contain appropriate records."

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method
