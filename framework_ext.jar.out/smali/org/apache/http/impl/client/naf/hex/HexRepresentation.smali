.class public Lorg/apache/http/impl/client/naf/hex/HexRepresentation;
.super Ljava/lang/Object;
.source "HexRepresentation.java"


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;->data:[B

    .line 23
    return-void
.end method


# virtual methods
.method public getHexRep()Ljava/lang/String;
    .locals 7

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;->data:[B

    if-eqz v5, :cond_1

    .line 38
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v5, p0, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;->data:[B

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 40
    iget-object v5, p0, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;->data:[B

    aget-byte v1, v5, v4

    .line 41
    .local v1, curDigit:B
    and-int/lit16 v5, v1, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, curHexPair:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 51
    .end local v1           #curDigit:B
    .end local v2           #curHexPair:Ljava/lang/String;
    .end local v4           #i:I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, hexRepresentation:Ljava/lang/String;
    return-object v3
.end method

.method public getRepresentation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;->data:[B

    invoke-static {v1}, Lorg/apache/http/impl/client/naf/hex/FastHex;->toStrLo([B)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, hexRepresentation:Ljava/lang/String;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HexRepresentation [data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", representation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;->getRepresentation()Ljava/lang/String;

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
