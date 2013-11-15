.class public Lorg/apache/http/impl/client/naf/hex/UaSecurityProtocolIdHexRepresentation;
.super Lorg/apache/http/impl/client/naf/hex/HexRepresentation;
.source "UaSecurityProtocolIdHexRepresentation.java"


# static fields
.field public static final AMOUNT_OF_OCTETS_IN_UA_SECURITY_PROTOCOL_ID:Ljava/lang/Integer;

.field public static final LENGTH_OF_UA_SECURITY_PROTOCOL_ID_IN_HEX:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/naf/hex/UaSecurityProtocolIdHexRepresentation;->AMOUNT_OF_OCTETS_IN_UA_SECURITY_PROTOCOL_ID:Ljava/lang/Integer;

    .line 16
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/naf/hex/UaSecurityProtocolIdHexRepresentation;->LENGTH_OF_UA_SECURITY_PROTOCOL_ID_IN_HEX:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)V
    .locals 1
    .parameter "protocolId"

    .prologue
    .line 22
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->getIdContent()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;-><init>([B)V

    .line 23
    return-void
.end method


# virtual methods
.method public getRepresentation()Ljava/lang/String;
    .locals 7

    .prologue
    .line 33
    invoke-super {p0}, Lorg/apache/http/impl/client/naf/hex/HexRepresentation;->getRepresentation()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, representation:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v6, Lorg/apache/http/impl/client/naf/hex/UaSecurityProtocolIdHexRepresentation;->LENGTH_OF_UA_SECURITY_PROTOCOL_ID_IN_HEX:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_1

    :cond_0
    move-object v4, v3

    .line 56
    :goto_0
    return-object v4

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v5, Lorg/apache/http/impl/client/naf/hex/UaSecurityProtocolIdHexRepresentation;->AMOUNT_OF_OCTETS_IN_UA_SECURITY_PROTOCOL_ID:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 44
    if-nez v2, :cond_2

    .line 45
    const-string v5, "0x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    :goto_2
    mul-int/lit8 v5, v2, 0x2

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, curOctetInHex:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 47
    .end local v1           #curOctetInHex:Ljava/lang/String;
    :cond_2
    const-string v5, ", 0x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 53
    :cond_3
    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, result:Ljava/lang/String;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UaSecurityProtocolIdHexRepresentation [representation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/hex/UaSecurityProtocolIdHexRepresentation;->getRepresentation()Ljava/lang/String;

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
