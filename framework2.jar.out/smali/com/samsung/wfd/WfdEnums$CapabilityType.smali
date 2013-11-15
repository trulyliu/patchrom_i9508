.class public final enum Lcom/samsung/wfd/WfdEnums$CapabilityType;
.super Ljava/lang/Enum;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CapabilityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wfd/WfdEnums$CapabilityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_3D_VIDEO_FORMATS:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_AUDIO_CODECS:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_CEA_RESOLUTIONS_BITMAP:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_CONTENT_PROTECTION_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_COUPLED_SINK:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_COUPLED_SINK_SUPPORTED_BY_SINK:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_COUPLED_SINK_SUPPORTED_BY_SOURCE:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_DISPLAY_EDID:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_HH_RESOLUTIONS_BITMAP:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_I2C:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_SERVICE_DISCOVERY_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_STANDBY_RESUME_CAPABILITY:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_TIME_SYNC_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_UIBC_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_VESA_RESOLUTIONS_BITMAP:Lcom/samsung/wfd/WfdEnums$CapabilityType;

.field public static final enum WFD_VIDEO_FORMATS:Lcom/samsung/wfd/WfdEnums$CapabilityType;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 238
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_AUDIO_CODECS"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_AUDIO_CODECS:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 239
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_VIDEO_FORMATS"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_VIDEO_FORMATS:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 240
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_3D_VIDEO_FORMATS"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_3D_VIDEO_FORMATS:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 241
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_CEA_RESOLUTIONS_BITMAP"

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_CEA_RESOLUTIONS_BITMAP:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 242
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_VESA_RESOLUTIONS_BITMAP"

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_VESA_RESOLUTIONS_BITMAP:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 243
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_HH_RESOLUTIONS_BITMAP"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_HH_RESOLUTIONS_BITMAP:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 244
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_DISPLAY_EDID"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_DISPLAY_EDID:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 245
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_COUPLED_SINK"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_COUPLED_SINK:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 246
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_I2C"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_I2C:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 247
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_UIBC_SUPPORTED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_UIBC_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 248
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_STANDBY_RESUME_CAPABILITY"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_STANDBY_RESUME_CAPABILITY:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 249
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_COUPLED_SINK_SUPPORTED_BY_SOURCE"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_COUPLED_SINK_SUPPORTED_BY_SOURCE:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 250
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_COUPLED_SINK_SUPPORTED_BY_SINK"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_COUPLED_SINK_SUPPORTED_BY_SINK:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 251
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_SERVICE_DISCOVERY_SUPPORTED"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_SERVICE_DISCOVERY_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 252
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_CONTENT_PROTECTION_SUPPORTED"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_CONTENT_PROTECTION_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 253
    new-instance v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    const-string v1, "WFD_TIME_SYNC_SUPPORTED"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$CapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_TIME_SYNC_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    .line 237
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/samsung/wfd/WfdEnums$CapabilityType;

    sget-object v1, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_AUDIO_CODECS:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_VIDEO_FORMATS:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_3D_VIDEO_FORMATS:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_CEA_RESOLUTIONS_BITMAP:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_VESA_RESOLUTIONS_BITMAP:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_HH_RESOLUTIONS_BITMAP:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_DISPLAY_EDID:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_COUPLED_SINK:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_I2C:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_UIBC_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_STANDBY_RESUME_CAPABILITY:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_COUPLED_SINK_SUPPORTED_BY_SOURCE:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_COUPLED_SINK_SUPPORTED_BY_SINK:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_SERVICE_DISCOVERY_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_CONTENT_PROTECTION_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_TIME_SYNC_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->$VALUES:[Lcom/samsung/wfd/WfdEnums$CapabilityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 258
    iput p3, p0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->type:I

    .line 259
    return-void
.end method

.method public static getValue(I)Lcom/samsung/wfd/WfdEnums$CapabilityType;
    .locals 5
    .parameter "c"

    .prologue
    .line 266
    invoke-static {}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->values()[Lcom/samsung/wfd/WfdEnums$CapabilityType;

    move-result-object v0

    .local v0, arr$:[Lcom/samsung/wfd/WfdEnums$CapabilityType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 267
    .local v1, e:Lcom/samsung/wfd/WfdEnums$CapabilityType;
    iget v4, v1, Lcom/samsung/wfd/WfdEnums$CapabilityType;->type:I

    if-ne v4, p0, :cond_0

    .line 270
    .end local v1           #e:Lcom/samsung/wfd/WfdEnums$CapabilityType;
    :goto_1
    return-object v1

    .line 266
    .restart local v1       #e:Lcom/samsung/wfd/WfdEnums$CapabilityType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v1           #e:Lcom/samsung/wfd/WfdEnums$CapabilityType;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wfd/WfdEnums$CapabilityType;
    .locals 1
    .parameter "name"

    .prologue
    .line 237
    const-class v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wfd/WfdEnums$CapabilityType;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->$VALUES:[Lcom/samsung/wfd/WfdEnums$CapabilityType;

    invoke-virtual {v0}, [Lcom/samsung/wfd/WfdEnums$CapabilityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wfd/WfdEnums$CapabilityType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/samsung/wfd/WfdEnums$CapabilityType;->type:I

    return v0
.end method
