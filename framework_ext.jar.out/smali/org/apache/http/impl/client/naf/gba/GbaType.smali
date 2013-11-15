.class public final enum Lorg/apache/http/impl/client/naf/gba/GbaType;
.super Ljava/lang/Enum;
.source "GbaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/impl/client/naf/gba/GbaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/client/naf/gba/GbaType;

.field public static final enum GBA_ME_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

.field public static final enum GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

.field public static final enum GBA_U_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;


# instance fields
.field private final typeId:I

.field private final userAgentIndicator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lorg/apache/http/impl/client/naf/gba/GbaType;

    const-string v1, "GBA_NOT_SUPPORTED"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/apache/http/impl/client/naf/gba/GbaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    .line 12
    new-instance v0, Lorg/apache/http/impl/client/naf/gba/GbaType;

    const-string v1, "GBA_ME_SUPPORTED"

    const-string v2, "3gpp-gba"

    invoke-direct {v0, v1, v4, v4, v2}, Lorg/apache/http/impl/client/naf/gba/GbaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_ME_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    .line 13
    new-instance v0, Lorg/apache/http/impl/client/naf/gba/GbaType;

    const-string v1, "GBA_U_SUPPORTED"

    const-string v2, "3gpp-gba-uicc"

    invoke-direct {v0, v1, v5, v5, v2}, Lorg/apache/http/impl/client/naf/gba/GbaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_U_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/impl/client/naf/gba/GbaType;

    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_ME_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_U_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/GbaType;->$VALUES:[Lorg/apache/http/impl/client/naf/gba/GbaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "typeId"
    .parameter "userAgentIndicator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lorg/apache/http/impl/client/naf/gba/GbaType;->typeId:I

    .line 20
    iput-object p4, p0, Lorg/apache/http/impl/client/naf/gba/GbaType;->userAgentIndicator:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static parse(I)Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 6
    .parameter "typeId"

    .prologue
    .line 44
    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    .line 46
    .local v3, resGbaType:Lorg/apache/http/impl/client/naf/gba/GbaType;
    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/GbaType;->values()[Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-result-object v0

    .local v0, arr$:[Lorg/apache/http/impl/client/naf/gba/GbaType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 47
    .local v4, value:Lorg/apache/http/impl/client/naf/gba/GbaType;
    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/gba/GbaType;->getTypeId()I

    move-result v5

    if-ne v5, p0, :cond_1

    .line 48
    move-object v3, v4

    .line 53
    .end local v4           #value:Lorg/apache/http/impl/client/naf/gba/GbaType;
    :cond_0
    return-object v3

    .line 46
    .restart local v4       #value:Lorg/apache/http/impl/client/naf/gba/GbaType;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    const-class v0, Lorg/apache/http/impl/client/naf/gba/GbaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/GbaType;

    return-object v0
.end method

.method public static values()[Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lorg/apache/http/impl/client/naf/gba/GbaType;->$VALUES:[Lorg/apache/http/impl/client/naf/gba/GbaType;

    invoke-virtual {v0}, [Lorg/apache/http/impl/client/naf/gba/GbaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/client/naf/gba/GbaType;

    return-object v0
.end method


# virtual methods
.method public getTypeId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaType;->typeId:I

    return v0
.end method

.method public getUserAgentIndicator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaType;->userAgentIndicator:Ljava/lang/String;

    return-object v0
.end method
