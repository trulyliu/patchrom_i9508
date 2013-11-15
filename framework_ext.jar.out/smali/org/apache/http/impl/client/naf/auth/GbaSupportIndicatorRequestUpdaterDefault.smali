.class public Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterDefault;
.super Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;
.source "GbaSupportIndicatorRequestUpdaterDefault.java"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "userHeaderPredefined"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterDefault;->log:Lorg/apache/commons/logging/Log;

    .line 23
    return-void
.end method


# virtual methods
.method protected getContent(Lorg/apache/http/impl/client/naf/gba/GbaType;)Ljava/lang/String;
    .locals 2
    .parameter "gbaType"

    .prologue
    .line 36
    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_ME_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/gba/GbaType;->getUserAgentIndicator()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, userAgentIndicator:Ljava/lang/String;
    return-object v0
.end method
