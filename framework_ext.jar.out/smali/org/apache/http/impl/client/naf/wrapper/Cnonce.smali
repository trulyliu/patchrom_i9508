.class public Lorg/apache/http/impl/client/naf/wrapper/Cnonce;
.super Ljava/lang/Object;
.source "Cnonce.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->value:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static create()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, dataStr:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/impl/client/naf/aka/Md5CalculatorImpl;

    invoke-direct {v3}, Lorg/apache/http/impl/client/naf/aka/Md5CalculatorImpl;-><init>()V

    .line 49
    .local v3, md5Calculator:Lorg/apache/http/impl/client/naf/aka/Md5Calculator;
    invoke-interface {v3, v1}, Lorg/apache/http/impl/client/naf/aka/Md5Calculator;->calculate(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/aka/Md5Result;

    move-result-object v4

    .line 51
    .local v4, md5Result:Lorg/apache/http/impl/client/naf/aka/Md5Result;
    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/aka/Md5Result;->getHexRepresentation()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, hexVal:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, cnonce:Lorg/apache/http/impl/client/naf/wrapper/Cnonce;
    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/Cnonce;
    .locals 1
    .parameter "val"

    .prologue
    .line 64
    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, cnonce:Lorg/apache/http/impl/client/naf/wrapper/Cnonce;
    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cnonce [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
