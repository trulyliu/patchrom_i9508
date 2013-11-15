.class public Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterSpecific;
.super Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;
.source "GbaSupportIndicatorRequestUpdaterSpecific.java"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "userHeaderPredefined"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterSpecific;->log:Lorg/apache/commons/logging/Log;

    .line 22
    return-void
.end method


# virtual methods
.method protected getContent(Lorg/apache/http/impl/client/naf/gba/GbaType;)Ljava/lang/String;
    .locals 2
    .parameter "gbaType"

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, userAgentIndicator:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/gba/GbaType;->getUserAgentIndicator()Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 39
    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/gba/GbaType;->getUserAgentIndicator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
