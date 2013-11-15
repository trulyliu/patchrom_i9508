.class public Lorg/apache/http/impl/client/naf/aka/Md5Result;
.super Ljava/lang/Object;
.source "Md5Result.java"


# static fields
.field private static final DEFAULT_DIGEST_LEN:I = 0x10


# instance fields
.field private final digestBytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 2
    .parameter "digestBytes"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "digestBytes must be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of digestBytes must be 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/aka/Md5Result;->digestBytes:[B

    .line 37
    return-void
.end method


# virtual methods
.method public getBytesRepresentation()[B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/aka/Md5Result;->digestBytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getHexRepresentation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/Md5Result;->digestBytes:[B

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;-><init>([B)V

    .line 51
    .local v0, hexRepresentation:Lorg/apache/http/impl/client/naf/hex/HexRepresentation;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;->getRepresentation()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, result:Ljava/lang/String;
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Md5Result [digestBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/aka/Md5Result;->digestBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n getHexRepresentation()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/aka/Md5Result;->getHexRepresentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
