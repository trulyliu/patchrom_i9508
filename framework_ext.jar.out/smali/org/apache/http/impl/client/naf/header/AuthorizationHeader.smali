.class public Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;
.super Ljava/lang/Object;
.source "AuthorizationHeader.java"


# static fields
.field public static final HEADER_NAME:Ljava/lang/String; = "Authorization"

.field private static final HEADER_VALUE_FORMAT:Ljava/lang/String; = "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", qop=\"%s\", nc=%s, cnonce=\"%s\", response=\"%s\", opaque=\"%s\", algorithm=\"%s\""


# instance fields
.field private algorithm:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private gbaType:Lorg/apache/http/impl/client/naf/gba/GbaType;

.field private nafFqdn:Ljava/lang/String;

.field private nc:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private opaque:Ljava/lang/String;

.field private qop:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private uaSecurityProtocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

.field private uri:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public buildHttpHeaderValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 250
    const-string v1, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", qop=\"%s\", nc=%s, cnonce=\"%s\", response=\"%s\", opaque=\"%s\", algorithm=\"%s\""

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->username:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->realm:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nonce:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->uri:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->qop:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nc:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->cnonce:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->response:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->opaque:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->algorithm:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCnonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->gbaType:Lorg/apache/http/impl/client/naf/gba/GbaType;

    return-object v0
.end method

.method public getNafFqdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nafFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getNc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nc:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method getNotNullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "input"

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 240
    const-string p1, ""

    .line 242
    .end local p1
    :cond_0
    return-object p1
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->opaque:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->qop:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getUaSecurityProtocolId()Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->uaSecurityProtocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0
    .parameter "algorithm"

    .prologue
    .line 189
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->algorithm:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setCnonce(Ljava/lang/String;)V
    .locals 0
    .parameter "cnonce"

    .prologue
    .line 161
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->cnonce:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setGbaType(Lorg/apache/http/impl/client/naf/gba/GbaType;)V
    .locals 0
    .parameter "gbaType"

    .prologue
    .line 231
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->gbaType:Lorg/apache/http/impl/client/naf/gba/GbaType;

    .line 232
    return-void
.end method

.method public setNafFqdn(Ljava/lang/String;)V
    .locals 0
    .parameter "nafFqdn"

    .prologue
    .line 203
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nafFqdn:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setNc(Ljava/lang/String;)V
    .locals 0
    .parameter "nc"

    .prologue
    .line 147
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nc:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .parameter "nonce"

    .prologue
    .line 91
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nonce:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 0
    .parameter "opaque"

    .prologue
    .line 175
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->opaque:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 0
    .parameter "qop"

    .prologue
    .line 133
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->qop:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .parameter "realm"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->realm:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 119
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->response:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setUaSecurityProtocolId(Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)V
    .locals 0
    .parameter "uaSecurityProtocolId"

    .prologue
    .line 217
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->uaSecurityProtocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    .line 218
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 105
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->uri:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 63
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->username:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorizationHeader [username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", realm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->qop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->nc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cnonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->cnonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->opaque:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthorizationHeader;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
