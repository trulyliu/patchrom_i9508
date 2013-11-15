.class public Lorg/apache/http/impl/client/naf/header/parser/SynchronizedHeaderParserFactory;
.super Ljava/lang/Object;
.source "SynchronizedHeaderParserFactory.java"


# static fields
.field static final authenticationInfoHeaderParserSynchronizer:Ljava/lang/Object;

.field static final wwwAuthenticateHeaderParserSynchronizer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/naf/header/parser/SynchronizedHeaderParserFactory;->wwwAuthenticateHeaderParserSynchronizer:Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/naf/header/parser/SynchronizedHeaderParserFactory;->authenticationInfoHeaderParserSynchronizer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSynchronizedAuthenticationInfoHeaderParser()Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParser;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lorg/apache/http/impl/client/naf/header/parser/AuthInfoParser;

    invoke-direct {v0}, Lorg/apache/http/impl/client/naf/header/parser/AuthInfoParser;-><init>()V

    .line 30
    .local v0, authenticationInfoHeaderParser:Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParser;
    new-instance v1, Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParserSynchronizedWrapper;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParserSynchronizedWrapper;-><init>(Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParser;)V

    .line 32
    .local v1, authenticationInfoHeaderParserSynchronizedWrapper:Lorg/apache/http/impl/client/naf/header/parser/AuthenticationInfoHeaderParserSynchronizedWrapper;
    return-object v1
.end method

.method public static createSynchronizedWwwAuthenticateHeaderParser()Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParser;
    .locals 2

    .prologue
    .line 19
    new-instance v1, Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateParser;

    invoke-direct {v1}, Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateParser;-><init>()V

    .line 20
    .local v1, wwwAuthenticateParser:Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateParser;
    new-instance v0, Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParserSynchronizedWrapper;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParserSynchronizedWrapper;-><init>(Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParser;)V

    .line 22
    .local v0, wwwAuthenticateHeaderParserSynchronizedWrapper:Lorg/apache/http/impl/client/naf/header/parser/WwwAuthenticateHeaderParserSynchronizedWrapper;
    return-object v0
.end method
