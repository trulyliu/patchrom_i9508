.class Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;
.super Ljava/lang/Object;
.source "NonceCount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NonceCountGenerator"
.end annotation


# static fields
.field private static final MAX_IN_POS:B = 0xft

.field private static final PATTERN:Ljava/lang/String; = "0123456789abcdef"


# instance fields
.field private current:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->reInit()V

    .line 89
    return-void
.end method

.method private calculateNext()V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->current:[B

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 152
    .local v0, curIndex:I
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->current:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 154
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->recalculate(I)V

    .line 155
    return-void
.end method

.method private getStringRepresentation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->current:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 141
    const-string v2, "0123456789abcdef"

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->current:[B

    aget-byte v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private reInit()V
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->current:[B

    .line 98
    return-void

    .line 95
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private recalculate(I)V
    .locals 3
    .parameter "curIndex"

    .prologue
    .line 163
    if-lez p1, :cond_1

    .line 164
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->current:[B

    aget-byte v0, v0, p1

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->current:[B

    const/4 v1, 0x0

    aput-byte v1, v0, p1

    .line 166
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->current:[B

    add-int/lit8 v1, p1, -0x1

    aget-byte v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 167
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->recalculate(I)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->reInit()V

    goto :goto_0
.end method


# virtual methods
.method public getNextNc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->calculateNext()V

    .line 107
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->getStringRepresentation()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, res:Ljava/lang/String;
    return-object v0
.end method

.method public getNextNc(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "currentNc"

    .prologue
    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->current:[B

    array-length v3, v3

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^[0-9abcdef]{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->current:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Something wrong with value of currentNc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->current:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 125
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->current:[B

    const-string v3, "0123456789abcdef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_2
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->calculateNext()V

    .line 130
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->getStringRepresentation()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, res:Ljava/lang/String;
    return-object v1
.end method
