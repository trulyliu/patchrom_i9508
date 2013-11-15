.class public Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;
.super Ljava/lang/Object;
.source "UaSecurityProtocolIdCalculatorDefault.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculator;


# instance fields
.field private final lastUsedCipherSuiteNameHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field private final mapper:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;

.field private final predefindeUaSecurityProtocolId:[B


# direct methods
.method public constructor <init>([BLorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;)V
    .locals 2
    .parameter "predefindeUaSecurityProtocolId"
    .parameter "mapper"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->log:Lorg/apache/commons/logging/Log;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->lastUsedCipherSuiteNameHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->predefindeUaSecurityProtocolId:[B

    .line 42
    iput-object p2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->mapper:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;

    .line 43
    return-void
.end method


# virtual methods
.method public getUaSecurityProtocolId()Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, resUaSecurityProtocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->predefindeUaSecurityProtocolId:[B

    if-eqz v1, :cond_0

    .line 61
    new-instance v0, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    .end local v0           #resUaSecurityProtocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->predefindeUaSecurityProtocolId:[B

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;-><init>([B)V

    .line 79
    .restart local v0       #resUaSecurityProtocolId:Lorg/apache/http/impl/client/naf/protocol/ProtocolId;
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->lastUsedCipherSuiteNameHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->lastUsedCipherSuiteNameHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 67
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->mapper:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;->getUaSecurityProtocolId4Http()Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->mapper:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->lastUsedCipherSuiteNameHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;->getUaSecurityProtocolIdByAndroidName(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/protocol/ProtocolId;

    move-result-object v0

    goto :goto_0
.end method

.method public setLastUsedCipherSuiteName(Ljava/lang/String;)V
    .locals 1
    .parameter "lastUsedCipherSuiteName"

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/UaSecurityProtocolIdCalculatorDefault;->lastUsedCipherSuiteNameHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 95
    return-void
.end method
