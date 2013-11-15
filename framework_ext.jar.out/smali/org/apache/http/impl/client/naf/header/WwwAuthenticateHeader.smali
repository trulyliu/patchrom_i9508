.class public Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;
.super Ljava/lang/Object;
.source "WwwAuthenticateHeader.java"


# static fields
.field public static final HEADER_NAME:Ljava/lang/String; = "WWW-Authenticate"

.field public static final QOP_AUTH:Ljava/lang/String; = "auth"

.field public static final QOP_AUTH_INT:Ljava/lang/String; = "auth-int"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private opaque:Ljava/lang/String;

.field private qop:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private stale:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "type"
    .parameter "realm"
    .parameter "nonce"
    .parameter "algorithm"
    .parameter "qop"
    .parameter "opaque"
    .parameter "stale"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->type:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->realm:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->nonce:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->qop:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->opaque:Ljava/lang/String;

    .line 43
    iput-boolean p7, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->stale:Z

    .line 44
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->opaque:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->qop:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isStale()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->stale:Z

    return v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0
    .parameter "algorithm"

    .prologue
    .line 103
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setAlgorithm(Lorg/apache/http/impl/client/naf/header/parser/Algorithm;)V
    .locals 2
    .parameter "algorithm"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Algorithm cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;->stringValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .parameter "nonce"

    .prologue
    .line 89
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->nonce:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 0
    .parameter "opaque"

    .prologue
    .line 140
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->opaque:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 0
    .parameter "qop"

    .prologue
    .line 126
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->qop:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .parameter "realm"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->realm:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setStale(Z)V
    .locals 0
    .parameter "stale"

    .prologue
    .line 154
    iput-boolean p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->stale:Z

    .line 155
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 61
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->type:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WwwAuthenticateHeader [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", realm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->qop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->opaque:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/http/impl/client/naf/header/WwwAuthenticateHeader;->stale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
