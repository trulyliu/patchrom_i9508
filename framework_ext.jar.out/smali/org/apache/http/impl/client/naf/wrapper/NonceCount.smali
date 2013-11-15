.class public Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
.super Ljava/lang/Object;
.source "NonceCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->value:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
    .locals 1
    .parameter "val"

    .prologue
    .line 33
    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, nextNc:Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
    return-object v0
.end method

.method public static createNext()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;

    invoke-direct {v0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;-><init>()V

    .line 43
    .local v0, ncGenerator:Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->getNextNc()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, value:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, nextNc:Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
    return-object v1
.end method

.method public static createNext(Lorg/apache/http/impl/client/naf/wrapper/NonceCount;)Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
    .locals 4
    .parameter "nc"

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    invoke-static {}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->createNext()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    .line 58
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;

    invoke-direct {v0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;-><init>()V

    .line 60
    .local v0, ncGenerator:Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->getNextNc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, value:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, nextNc:Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NonceCount [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
