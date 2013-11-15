.class public Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;
.super Ljava/lang/Object;
.source "CipherSuiteMapperDefault.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public getCipherSuiteCodeByAndroidName(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;
    .locals 4
    .parameter "androidNameOfCipherSuite"

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, cipherSuiteCode:Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 37
    :cond_0
    sget-object v0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuites;->DEFAULT_CODE:Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;

    .line 56
    :goto_0
    return-object v0

    .line 43
    :cond_1
    invoke-static {p1}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuites;->getByNameUniversal(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuites;

    move-result-object v1

    .line 46
    .local v1, cipherSuiteMapping:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuites;
    if-nez v1, :cond_2

    .line 47
    sget-object v0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuites;->DEFAULT_CODE:Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuites;->getCipherSuiteCode()Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnabledAndroidCipherSuitesAfterFiltering([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "supportedCipherSuites"

    .prologue
    .line 107
    return-object p1
.end method

.method public getUaSecurityProtocolId4Http()Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->HTTP_DEFAULT_PROTOCOL_ID:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    .line 98
    .local v0, uaSecurityProtocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    return-object v0
.end method

.method public getUaSecurityProtocolIdByAndroidName(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    .locals 5
    .parameter "androidNameOfCipherSuite"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, uaSecurityProtocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;->getCipherSuiteCodeByAndroidName(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;

    move-result-object v0

    .line 73
    .local v0, cipherSuiteCode:Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;
    if-nez v0, :cond_0

    .line 75
    sget-object v1, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->HTTP_DEFAULT_PROTOCOL_ID:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    .line 88
    :goto_0
    return-object v1

    .line 79
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    .end local v1           #uaSecurityProtocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    const/4 v2, 0x5

    new-array v2, v2, [B

    aput-byte v4, v2, v3

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->getFirstOctet()B

    move-result v4

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/protocol/CipherSuiteCode;->getSecondOctet()B

    move-result v4

    aput-byte v4, v2, v3

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;-><init>([B)V

    .restart local v1       #uaSecurityProtocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    goto :goto_0
.end method
