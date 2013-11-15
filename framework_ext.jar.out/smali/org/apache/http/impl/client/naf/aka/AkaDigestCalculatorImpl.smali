.class public Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;
.super Ljava/lang/Object;
.source "AkaDigestCalculatorImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculator;


# static fields
.field protected static final QUOTE:Ljava/lang/String; = "\""

.field protected static final SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->log:Lorg/apache/commons/logging/Log;

    .line 34
    return-void
.end method


# virtual methods
.method calculateA1(Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;)Ljava/lang/String;
    .locals 4
    .parameter "algorithm"
    .parameter "username"
    .parameter "realm"
    .parameter "passw"
    .parameter "nonce"
    .parameter "cnonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 294
    .local v0, a1Res:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->isUnspecified()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->isMd5()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    .line 300
    :cond_1
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->isMd5Sess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p5}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_2
    new-instance v1, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm value, algorithm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method calculateA2(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;
    .locals 4
    .parameter "qop"
    .parameter "method"
    .parameter "digestUriValue"
    .parameter "entityBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 338
    .local v0, a2Res:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->isUnspecified()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->isAuth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    .line 344
    :cond_1
    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->isAuthInt()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lorg/apache/http/impl/client/naf/content/HttpEntityContent;->getByteRepresentation()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateH([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 352
    :cond_2
    new-instance v1, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported qop value, qop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method calculateH(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "hInputString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateMd5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, hResultString:Ljava/lang/String;
    return-object v0
.end method

.method calculateH([B)Ljava/lang/String;
    .locals 1
    .parameter "hInputData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateMd5Hex([B)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, hResultString:Ljava/lang/String;
    return-object v0
.end method

.method calculateHA1(Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;)Ljava/lang/String;
    .locals 2
    .parameter "algorithm"
    .parameter "username"
    .parameter "realm"
    .parameter "passw"
    .parameter "nonce"
    .parameter "cnonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual/range {p0 .. p6}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateA1(Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, a1:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, ha1Result:Ljava/lang/String;
    return-object v1
.end method

.method calculateHA2(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;
    .locals 2
    .parameter "qop"
    .parameter "method"
    .parameter "digestUriValue"
    .parameter "entityBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateA2(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, a2:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, ha2Result:Ljava/lang/String;
    return-object v1
.end method

.method calculateKd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "secret"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, concatenatedData:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, kdResult:Ljava/lang/String;
    return-object v1
.end method

.method calculateMd5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "dataStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->getMd5Calc()Lorg/apache/http/impl/client/naf/aka/Md5Calculator;

    move-result-object v1

    .line 208
    .local v1, md5Calculator:Lorg/apache/http/impl/client/naf/aka/Md5Calculator;
    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/aka/Md5Calculator;->calculate(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/aka/Md5Result;

    move-result-object v2

    .line 210
    .local v2, md5Result:Lorg/apache/http/impl/client/naf/aka/Md5Result;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/aka/Md5Result;->getHexRepresentation()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, hexRes:Ljava/lang/String;
    return-object v0
.end method

.method calculateMd5Hex([B)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->getMd5Calc()Lorg/apache/http/impl/client/naf/aka/Md5Calculator;

    move-result-object v1

    .line 225
    .local v1, md5Calculator:Lorg/apache/http/impl/client/naf/aka/Md5Calculator;
    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/naf/aka/Md5Calculator;->calculate([B)Lorg/apache/http/impl/client/naf/aka/Md5Result;

    move-result-object v2

    .line 227
    .local v2, md5Result:Lorg/apache/http/impl/client/naf/aka/Md5Result;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/aka/Md5Result;->getHexRepresentation()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, hexRes:Ljava/lang/String;
    return-object v0
.end method

.method public calculateRequestDigest(Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;)Ljava/lang/String;
    .locals 19
    .parameter "requestContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getQop()Lorg/apache/http/impl/client/naf/wrapper/Qop;

    move-result-object v14

    .line 93
    .local v14, qop:Lorg/apache/http/impl/client/naf/wrapper/Qop;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getAlgorithm()Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    move-result-object v3

    .line 94
    .local v3, algorithm:Lorg/apache/http/impl/client/naf/wrapper/Algorithm;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, username:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getRealm()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, realm:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getPassw()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, passw:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonce()Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, nonce:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getCnonce()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    move-result-object v8

    .line 99
    .local v8, cnonce:Lorg/apache/http/impl/client/naf/wrapper/Cnonce;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getMethod()Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    move-result-object v12

    .line 100
    .local v12, method:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getDigestUriValue()Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, digestUriValue:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getEntityBody()Lorg/apache/http/impl/client/naf/content/HttpEntityContent;

    move-result-object v11

    .line 102
    .local v11, entityBody:Lorg/apache/http/impl/client/naf/content/HttpEntityContent;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonceCount()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    move-result-object v13

    .line 124
    .local v13, nonceCount:Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
    const/4 v15, 0x0

    .line 126
    .local v15, res:Ljava/lang/String;
    invoke-virtual {v14}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->isAuth()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v14}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->isAuthInt()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object/from16 v2, p0

    .line 131
    invoke-virtual/range {v2 .. v8}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateHA1(Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;)Ljava/lang/String;

    move-result-object v16

    .line 133
    .local v16, secret:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12, v10, v11}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateHA2(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, data:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateKd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 158
    :goto_0
    return-object v15

    .line 139
    .end local v9           #data:Ljava/lang/String;
    .end local v16           #secret:Ljava/lang/String;
    :cond_1
    invoke-virtual {v14}, Lorg/apache/http/impl/client/naf/wrapper/Qop;->isUnspecified()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, p0

    .line 143
    invoke-virtual/range {v2 .. v8}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateHA1(Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;)Ljava/lang/String;

    move-result-object v16

    .line 145
    .restart local v16       #secret:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->unq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12, v10, v11}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateHA2(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 148
    .restart local v9       #data:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateKd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 150
    goto :goto_0

    .line 151
    .end local v9           #data:Ljava/lang/String;
    .end local v16           #secret:Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unsupported qop value, qop="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public calculateResponseDigest(Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;)Ljava/lang/String;
    .locals 14
    .parameter "lastRequestContext"
    .parameter "res"
    .parameter "entityBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getQop()Lorg/apache/http/impl/client/naf/wrapper/Qop;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getAlgorithm()Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getPassw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonce()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getCnonce()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getNonceCount()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    move-result-object v8

    sget-object v9, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->NONE:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;->getDigestUriValue()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;->AKA_DIGEST_RESPONSE:Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    move-object/from16 v11, p3

    invoke-direct/range {v0 .. v12}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop;Lorg/apache/http/impl/client/naf/wrapper/Algorithm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Cnonce;Lorg/apache/http/impl/client/naf/wrapper/NonceCount;Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;Ljava/lang/String;Lorg/apache/http/impl/client/naf/content/HttpEntityContent;Lorg/apache/http/impl/client/naf/aka/AkaDigestType;)V

    .line 74
    .local v0, responseContext:Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculatorImpl;->calculateRequestDigest(Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationContext;)Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, responseDigest:Ljava/lang/String;
    return-object v13
.end method

.method getMd5Calc()Lorg/apache/http/impl/client/naf/aka/Md5Calculator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 242
    .local v1, md5Calculator:Lorg/apache/http/impl/client/naf/aka/Md5Calculator;
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/naf/aka/Md5CalculatorImpl;

    .end local v1           #md5Calculator:Lorg/apache/http/impl/client/naf/aka/Md5Calculator;
    invoke-direct {v1}, Lorg/apache/http/impl/client/naf/aka/Md5CalculatorImpl;-><init>()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .restart local v1       #md5Calculator:Lorg/apache/http/impl/client/naf/aka/Md5Calculator;
    return-object v1

    .line 244
    .end local v1           #md5Calculator:Lorg/apache/http/impl/client/naf/aka/Md5Calculator;
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/http/impl/client/naf/aka/AkaDigestCalculationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method unq(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "src"

    .prologue
    .line 416
    move-object v0, p1

    .line 417
    .local v0, unqRes:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 418
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 422
    :cond_0
    return-object v0
.end method
