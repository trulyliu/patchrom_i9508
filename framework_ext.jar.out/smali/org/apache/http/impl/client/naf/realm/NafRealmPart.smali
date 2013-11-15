.class public Lorg/apache/http/impl/client/naf/realm/NafRealmPart;
.super Ljava/lang/Object;
.source "NafRealmPart.java"


# instance fields
.field private final gbaTypeMarker:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final nafFqdn:Ljava/lang/String;

.field private final wholeContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;Ljava/lang/String;)V
    .locals 2
    .parameter "wholeContent"
    .parameter "gbaTypeMarker"
    .parameter "nafFqdn"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;->log:Lorg/apache/commons/logging/Log;

    .line 37
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All params must be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Gba type marker doesn\'t match the content!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NAF FQDN doesn\'t match the content!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_3
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;->wholeContent:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;->gbaTypeMarker:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    .line 49
    iput-object p3, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;->nafFqdn:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public getGbaTypeMarker()Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;->gbaTypeMarker:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    return-object v0
.end method

.method public getNafFqdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;->nafFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getWholeContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;->wholeContent:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NafRealmPart [wholeContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;->wholeContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gbaTypeMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;->gbaTypeMarker:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nafFqdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;->nafFqdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
