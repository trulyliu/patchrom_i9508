.class public Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;
.super Ljava/lang/Object;
.source "NafRequestExecutorWrapperRedirectionHandler.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final nafRequestExecutor:Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;

.field private final redirectHandler:Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandler;

.field private useRedirectionHandling:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;)V
    .locals 1
    .parameter "nafRequestExecutor"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->log:Lorg/apache/commons/logging/Log;

    .line 37
    new-instance v0, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandlerDefault;-><init>(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->redirectHandler:Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandler;

    .line 38
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->nafRequestExecutor:Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->useRedirectionHandling:Z

    .line 40
    return-void
.end method


# virtual methods
.method public enableRedirectionHandlingForGba()V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->useRedirectionHandling:Z

    .line 50
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "   GBA redirection handling is enabled now."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public executeRequestSending(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    .locals 3
    .parameter "nafRequestWrapper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, responseWrapper:Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    iget-boolean v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->useRedirectionHandling:Z

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "   It is GBA flow, redirection responses are handled."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->executeRequestSendingWithRedirection(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 71
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "   It isn\'t GBA flow, redirection responses are not handled."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->executeRequestSendingUsual(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public executeRequestSendingUsual(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
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
    .line 96
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->nafRequestExecutor:Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;

    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;->executeRequestSending(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v0

    .line 101
    .local v0, responseWrapper:Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    return-object v0
.end method

.method public executeRequestSendingWithRedirection(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
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
    .line 120
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/redirect/NafRequestExecutorWrapperRedirectionHandler;->redirectHandler:Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandler;

    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandler;->executeWithRedirectionHandling(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-result-object v0

    .line 126
    .local v0, responseWrapper:Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    return-object v0
.end method
