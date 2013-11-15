.class public Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;
.super Ljava/lang/Object;
.source "AuthInfoResponseValidatorDefault.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/AuthInfoResponseValidator;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private calculateLocalRspauth(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;)Ljava/lang/String;
    .locals 4
    .parameter "nafResponseResult"
    .parameter "akaDigestCalculator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    move-result-object v2

    .line 157
    .local v2, requestDigestCalculationContext:Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getResponse()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, response:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getEntityBody()Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v0

    .line 160
    .local v0, entityBody:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    invoke-interface {p2, v2, v3, v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;->calculateResponseDigest(Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, localRspauth:Ljava/lang/String;
    return-object v1
.end method

.method private validateCnonce(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;)V
    .locals 3
    .parameter "nafResponseResult"
    .parameter "authenticationInfoHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/AuthInfoException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getCnonce()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getCnonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CNONCE validation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getCnonce()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not equal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getCnonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, errMsg:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/client/naf/AuthInfoException;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/naf/AuthInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    .end local v0           #errMsg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private validateNc(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;)V
    .locals 3
    .parameter "nafResponseResult"
    .parameter "authenticationInfoHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/AuthInfoException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonceCount()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getNonceCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NC validation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonceCount()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not equal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getNonceCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, errMsg:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/client/naf/AuthInfoException;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/naf/AuthInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    .end local v0           #errMsg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private validateQop(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;)V
    .locals 3
    .parameter "nafResponseResult"
    .parameter "authenticationInfoHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/AuthInfoException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getQop()Lorg/apache/http/impl/client/naf/wrapper/Qop;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getQop()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QOP validation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/NafResponseResult;->getRequestDigestCalculationContext()Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getQop()Lorg/apache/http/impl/client/naf/wrapper/Qop;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not equal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getQop()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, errMsg:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/client/naf/AuthInfoException;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/naf/AuthInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    .end local v0           #errMsg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private validateRspauth(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;)V
    .locals 4
    .parameter "nafResponseResult"
    .parameter "authenticationInfoHeader"
    .parameter "akaDigestCalculator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;,
            Lorg/apache/http/impl/client/naf/AuthInfoException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1, p3}, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->calculateLocalRspauth(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, localRspauth:Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getRspauth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSPAUTH validation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not equal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;->getRspauth()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, errMsg:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/impl/client/naf/AuthInfoException;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/naf/AuthInfoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    .end local v0           #errMsg:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public validate(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;)V
    .locals 0
    .parameter "nafResponseResult"
    .parameter "authenticationInfoHeader"
    .parameter "akaDigestCalculator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;,
            Lorg/apache/http/impl/client/naf/AuthInfoException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->validateQop(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->validateCnonce(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;)V

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->validateNc(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;)V

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/client/naf/AuthInfoResponseValidatorDefault;->validateRspauth(Lorg/apache/http/impl/client/naf/NafResponseResult;Lorg/apache/http/impl/client/naf/header/AuthenticationInfoHeader;Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;)V

    .line 58
    return-void
.end method
