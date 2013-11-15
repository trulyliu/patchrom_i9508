.class public Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;
.super Ljava/lang/Object;
.source "AuthenticationInfoHeader.java"


# static fields
.field public static final HEADER_NAME:Ljava/lang/String; = "Authentication-Info"


# instance fields
.field private cnonce:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private nonceCount:Ljava/lang/String;

.field private opaque:Ljava/lang/String;

.field private qop:Ljava/lang/String;

.field private rspauth:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "qop"
    .parameter "rspauth"
    .parameter "cnonce"
    .parameter "nonceCount"
    .parameter "opaque"
    .parameter "nonce"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->qop:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->rspauth:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->cnonce:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->nonceCount:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->opaque:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->nonce:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getCnonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNonceCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->nonceCount:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->opaque:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->qop:Ljava/lang/String;

    return-object v0
.end method

.method public getRspauth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->rspauth:Ljava/lang/String;

    return-object v0
.end method

.method public setCnonce(Ljava/lang/String;)V
    .locals 0
    .parameter "cnonce"

    .prologue
    .line 80
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->cnonce:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .parameter "nonce"

    .prologue
    .line 122
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->nonce:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setNonceCount(Ljava/lang/String;)V
    .locals 0
    .parameter "nonceCount"

    .prologue
    .line 94
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->nonceCount:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 0
    .parameter "opaque"

    .prologue
    .line 108
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->opaque:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 0
    .parameter "qop"

    .prologue
    .line 52
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->qop:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setRspauth(Ljava/lang/String;)V
    .locals 0
    .parameter "rspauth"

    .prologue
    .line 66
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->rspauth:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthenticationInfoHeader [qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->qop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rspauth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->rspauth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cnonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->cnonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonceCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->nonceCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->opaque:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
