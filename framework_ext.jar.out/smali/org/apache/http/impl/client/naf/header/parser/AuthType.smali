.class public final enum Lorg/apache/http/impl/client/naf/header/parser/AuthType;
.super Ljava/lang/Enum;
.source "AuthType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/impl/client/naf/header/parser/AuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/client/naf/header/parser/AuthType;

.field public static final enum AKA:Lorg/apache/http/impl/client/naf/header/parser/AuthType;

.field public static final enum AUTH:Lorg/apache/http/impl/client/naf/header/parser/AuthType;

.field public static final enum AUTH_INT:Lorg/apache/http/impl/client/naf/header/parser/AuthType;

.field public static final enum BASIC:Lorg/apache/http/impl/client/naf/header/parser/AuthType;

.field public static final enum DIGEST:Lorg/apache/http/impl/client/naf/header/parser/AuthType;


# instance fields
.field private final stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    const-string v1, "DIGEST"

    const-string v2, "Digest"

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/http/impl/client/naf/header/parser/AuthType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->DIGEST:Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    new-instance v0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    const-string v1, "BASIC"

    const-string v2, "basic"

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/http/impl/client/naf/header/parser/AuthType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->BASIC:Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    new-instance v0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    const-string v1, "AUTH"

    const-string v2, "auth"

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/http/impl/client/naf/header/parser/AuthType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->AUTH:Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    new-instance v0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    const-string v1, "AUTH_INT"

    const-string v2, "auth-int"

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/http/impl/client/naf/header/parser/AuthType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->AUTH_INT:Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    new-instance v0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    const-string v1, "AKA"

    const-string v2, "aka"

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/http/impl/client/naf/header/parser/AuthType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->AKA:Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    sget-object v1, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->DIGEST:Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->BASIC:Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->AUTH:Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->AUTH_INT:Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->AKA:Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    aput-object v1, v0, v7

    sput-object v0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->$VALUES:[Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "stringValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->stringValue:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/header/parser/AuthType;
    .locals 6
    .parameter "data"

    .prologue
    .line 29
    const/4 v2, 0x0

    .line 31
    .local v2, authTypeResult:Lorg/apache/http/impl/client/naf/header/parser/AuthType;
    if-eqz p0, :cond_0

    .line 33
    invoke-static {}, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->values()[Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    move-result-object v0

    .local v0, arr$:[Lorg/apache/http/impl/client/naf/header/parser/AuthType;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 35
    .local v1, authTypeItem:Lorg/apache/http/impl/client/naf/header/parser/AuthType;
    iget-object v5, v1, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->stringValue:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 36
    move-object v2, v1

    .line 42
    .end local v0           #arr$:[Lorg/apache/http/impl/client/naf/header/parser/AuthType;
    .end local v1           #authTypeItem:Lorg/apache/http/impl/client/naf/header/parser/AuthType;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-object v2

    .line 33
    .restart local v0       #arr$:[Lorg/apache/http/impl/client/naf/header/parser/AuthType;
    .restart local v1       #authTypeItem:Lorg/apache/http/impl/client/naf/header/parser/AuthType;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/header/parser/AuthType;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    return-object v0
.end method

.method public static values()[Lorg/apache/http/impl/client/naf/header/parser/AuthType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->$VALUES:[Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    invoke-virtual {v0}, [Lorg/apache/http/impl/client/naf/header/parser/AuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/client/naf/header/parser/AuthType;

    return-object v0
.end method


# virtual methods
.method public stringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/parser/AuthType;->stringValue:Ljava/lang/String;

    return-object v0
.end method
