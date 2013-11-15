.class public final enum Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
.super Ljava/lang/Enum;
.source "NafRealmGbaTypeMarker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

.field public static final enum GBA_ME_REALM_MARKER:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

.field public static final enum GBA_U_REALM_MARKER:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;


# instance fields
.field private final gbaType:Lorg/apache/http/impl/client/naf/gba/GbaType;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    const-string v1, "GBA_ME_REALM_MARKER"

    const-string v2, "3GPP-bootstrapping"

    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_ME_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/http/impl/client/naf/gba/GbaType;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->GBA_ME_REALM_MARKER:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    new-instance v0, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    const-string v1, "GBA_U_REALM_MARKER"

    const-string v2, "3GPP-bootstrapping-uicc"

    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_U_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/http/impl/client/naf/gba/GbaType;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->GBA_U_REALM_MARKER:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    sget-object v1, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->GBA_ME_REALM_MARKER:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->GBA_U_REALM_MARKER:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->$VALUES:[Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/http/impl/client/naf/gba/GbaType;)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "gbaType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/impl/client/naf/gba/GbaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->name:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->gbaType:Lorg/apache/http/impl/client/naf/gba/GbaType;

    .line 23
    return-void
.end method

.method public static getTypeByGbaType(Lorg/apache/http/impl/client/naf/gba/GbaType;)Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    .locals 7
    .parameter "initiatedGbaType"

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "initiatedGbaType parameter must be not null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 95
    :cond_0
    const/4 v4, 0x0

    .line 97
    .local v4, result:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    invoke-static {}, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->values()[Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    move-result-object v0

    .local v0, arr$:[Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 98
    .local v2, item:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->getGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-result-object v5

    invoke-virtual {v5, p0}, Lorg/apache/http/impl/client/naf/gba/GbaType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    move-object v4, v2

    .line 104
    .end local v2           #item:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    :cond_1
    return-object v4

    .line 97
    .restart local v2       #item:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getTypeByName(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    .locals 7
    .parameter "markerName"

    .prologue
    .line 68
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 69
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "markerName parameter must be not empty or null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 72
    :cond_1
    const/4 v4, 0x0

    .line 74
    .local v4, result:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    invoke-static {}, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->values()[Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    move-result-object v0

    .local v0, arr$:[Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 75
    .local v2, item:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    move-object v4, v2

    .line 81
    .end local v2           #item:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    :cond_2
    return-object v4

    .line 74
    .restart local v2       #item:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    .locals 1
    .parameter "name"

    .prologue
    .line 12
    const-class v0, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    return-object v0
.end method

.method public static values()[Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->$VALUES:[Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    invoke-virtual {v0}, [Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    return-object v0
.end method


# virtual methods
.method public getGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->gbaType:Lorg/apache/http/impl/client/naf/gba/GbaType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->name:Ljava/lang/String;

    return-object v0
.end method

.method public is(Ljava/lang/String;)Z
    .locals 2
    .parameter "markerName"

    .prologue
    .line 46
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 47
    .local v0, result:Z
    return v0
.end method

.method public is(Lorg/apache/http/impl/client/naf/gba/GbaType;)Z
    .locals 2
    .parameter "initiatedGbaType"

    .prologue
    .line 57
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->gbaType:Lorg/apache/http/impl/client/naf/gba/GbaType;

    invoke-virtual {v1, p1}, Lorg/apache/http/impl/client/naf/gba/GbaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 58
    .local v0, result:Z
    return v0
.end method
