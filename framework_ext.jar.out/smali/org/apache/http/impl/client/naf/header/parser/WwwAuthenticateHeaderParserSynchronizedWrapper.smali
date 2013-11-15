.class public Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParserSynchronizedWrapper;
.super Ljava/lang/Object;
.source "WwwAuthenticateHeaderParserSynchronizedWrapper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParser;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final unprotectedParser:Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParser;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParser;)V
    .locals 2
    .parameter "unprotectedParser"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParserSynchronizedWrapper;->log:Lorg/apache/commons/logging/Log;

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unprotectedParser parameter must be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParserSynchronizedWrapper;->unprotectedParser:Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParser;

    .line 33
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/header/parser/HeaderParserException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, result:Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;
    sget-object v2, Lorg/apache/http/impl/client/naf/header/parser/SynchronizedHeaderParserFactory;->wwwAuthenticateHeaderParserSynchronizer:Ljava/lang/Object;

    monitor-enter v2

    .line 49
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParserSynchronizedWrapper;->unprotectedParser:Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParser;

    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParser;->parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;

    move-result-object v0

    .line 50
    monitor-exit v2

    .line 54
    return-object v0

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
