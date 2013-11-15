.class public Lorg/apache/http/impl/client/naf/aka/Md5CalculatorImpl;
.super Ljava/lang/Object;
.source "Md5CalculatorImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/aka/Md5Calculator;


# static fields
.field private static final ALGORITHM_MD5:Ljava/lang/String; = "MD5"


# instance fields
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/aka/Md5CalculatorImpl;->messageDigest:Ljava/security/MessageDigest;

    .line 22
    return-void
.end method


# virtual methods
.method public calculate(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/aka/Md5Result;
    .locals 2
    .parameter "dataStr"

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 34
    .local v0, data:[B
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/aka/Md5CalculatorImpl;->calculate([B)Lorg/apache/http/impl/client/naf/aka/Md5Result;

    move-result-object v1

    .line 35
    .local v1, md5Result:Lorg/apache/http/impl/client/naf/aka/Md5Result;
    return-object v1
.end method

.method public calculate([B)Lorg/apache/http/impl/client/naf/aka/Md5Result;
    .locals 3
    .parameter "data"

    .prologue
    .line 44
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/Md5CalculatorImpl;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 46
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/aka/Md5CalculatorImpl;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 48
    .local v0, digestRes:[B
    new-instance v1, Lorg/apache/http/impl/client/naf/aka/Md5Result;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/naf/aka/Md5Result;-><init>([B)V

    .line 49
    .local v1, md5Result:Lorg/apache/http/impl/client/naf/aka/Md5Result;
    return-object v1
.end method
