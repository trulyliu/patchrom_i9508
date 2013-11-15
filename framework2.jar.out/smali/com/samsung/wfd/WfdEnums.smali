.class public Lcom/samsung/wfd/WfdEnums;
.super Ljava/lang/Object;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdEnums$ConnectionType;,
        Lcom/samsung/wfd/WfdEnums$ErrorType;,
        Lcom/samsung/wfd/WfdEnums$CoupledSinkStatus;,
        Lcom/samsung/wfd/WfdEnums$RuntimecmdType;,
        Lcom/samsung/wfd/WfdEnums$ControlCmdType;,
        Lcom/samsung/wfd/WfdEnums$RtpTransportType;,
        Lcom/samsung/wfd/WfdEnums$PreferredConnectivity;,
        Lcom/samsung/wfd/WfdEnums$WfdEvent;,
        Lcom/samsung/wfd/WfdEnums$SessionState;,
        Lcom/samsung/wfd/WfdEnums$VideoFormat;,
        Lcom/samsung/wfd/WfdEnums$AudioCodec;,
        Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;,
        Lcom/samsung/wfd/WfdEnums$CapabilityType;,
        Lcom/samsung/wfd/WfdEnums$WFDDeviceType;
    }
.end annotation


# static fields
.field public static final ACTION_SECURE_END:Ljava/lang/String; = "android.intent.action.SECURE_END"

.field public static final ACTION_SECURE_END_DONE:Ljava/lang/String; = "android.intent.action.SECURE_END_DONE"

.field public static final ACTION_SECURE_START:Ljava/lang/String; = "android.intent.action.SECURE_START"

.field public static final ACTION_SECURE_START_DONE:Ljava/lang/String; = "android.intent.action.SECURE_START_DONE"

.field public static final ACTION_WIFI_DISPLAY:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field public static final ACTION_WIFI_DISPLAY_BITRATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_BITRATE"

.field public static final ACTION_WIFI_DISPLAY_PLAYBACK_MODE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_PLAYBACK_MODE"

.field public static final ACTION_WIFI_DISPLAY_RESOLUTION:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RESOLUTION"

.field public static final ACTION_WIFI_DISPLAY_RTP_TRANSPORT:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RTP_TRANSPORT"

.field public static final ACTION_WIFI_DISPLAY_TCP_PLAYBACK_CONTROL:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_TCP_PLAYBACK_CONTROL"

.field public static final ACTION_WIFI_DISPLAY_VIDEO:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_VIDEO"

.field static final BIT0:I = 0x1

.field static final BIT1:I = 0x2

.field static final BIT10:I = 0x400

.field static final BIT11:I = 0x800

.field static final BIT12:I = 0x1000

.field static final BIT13:I = 0x2000

.field static final BIT14:I = 0x4000

.field static final BIT15:I = 0x8000

.field static final BIT16:I = 0x10000

.field static final BIT17:I = 0x20000

.field static final BIT18:I = 0x40000

.field static final BIT19:I = 0x80000

.field static final BIT2:I = 0x4

.field static final BIT20:I = 0x100000

.field static final BIT21:I = 0x200000

.field static final BIT22:I = 0x400000

.field static final BIT23:I = 0x800000

.field static final BIT24:I = 0x1000000

.field static final BIT25:I = 0x2000000

.field static final BIT26:I = 0x4000000

.field static final BIT27:I = 0x8000000

.field static final BIT28:I = 0x10000000

.field static final BIT29:I = 0x20000000

.field static final BIT3:I = 0x8

.field static final BIT30:I = 0x40000000

.field static final BIT31:I = -0x80000000

.field static final BIT4:I = 0x10

.field static final BIT5:I = 0x20

.field static final BIT6:I = 0x40

.field static final BIT7:I = 0x80

.field static final BIT8:I = 0x100

.field static final BIT9:I = 0x200

.field public static final H264_CEA_1280x720p24:I = 0x8000

.field public static final H264_CEA_1280x720p25:I = 0x400

.field public static final H264_CEA_1280x720p30:I = 0x20

.field public static final H264_CEA_1280x720p50:I = 0x800

.field public static final H264_CEA_1280x720p60:I = 0x40

.field public static final H264_CEA_1920x1080i50:I = 0x4000

.field public static final H264_CEA_1920x1080i60:I = 0x200

.field public static final H264_CEA_1920x1080p24:I = 0x10000

.field public static final H264_CEA_1920x1080p25:I = 0x1000

.field public static final H264_CEA_1920x1080p30:I = 0x80

.field public static final H264_CEA_1920x1080p50:I = 0x2000

.field public static final H264_CEA_1920x1080p60:I = 0x100

.field public static final H264_CEA_640x480p60:I = 0x1

.field public static final H264_CEA_720x480i60:I = 0x4

.field public static final H264_CEA_720x480p60:I = 0x2

.field public static final H264_CEA_720x576i50:I = 0x10

.field public static final H264_CEA_720x576p50:I = 0x8

.field public static final H264_HH_640x360p30:I = 0x40

.field public static final H264_HH_640x360p60:I = 0x80

.field public static final H264_HH_800x480p30:I = 0x1

.field public static final H264_HH_800x480p60:I = 0x2

.field public static final H264_HH_848x480p30:I = 0x400

.field public static final H264_HH_848x480p60:I = 0x800

.field public static final H264_HH_854x480p30:I = 0x4

.field public static final H264_HH_854x480p60:I = 0x8

.field public static final H264_HH_864x480p30:I = 0x10

.field public static final H264_HH_864x480p60:I = 0x20

.field public static final H264_HH_960x540p30:I = 0x100

.field public static final H264_VESA_1024x768p30:I = 0x4

.field public static final H264_VESA_1024x768p60:I = 0x8

.field public static final H264_VESA_1152x864p30:I = 0x10

.field public static final H264_VESA_1152x864p60:I = 0x20

.field public static final H264_VESA_1280x1024p30:I = 0x4000

.field public static final H264_VESA_1280x1024p60:I = 0x8000

.field public static final H264_VESA_1280x768p30:I = 0x40

.field public static final H264_VESA_1280x768p60:I = 0x80

.field public static final H264_VESA_1280x800p30:I = 0x100

.field public static final H264_VESA_1280x800p60:I = 0x200

.field public static final H264_VESA_1360x768p30:I = 0x400

.field public static final H264_VESA_1360x768p60:I = 0x800

.field public static final H264_VESA_1366x768p30:I = 0x1000

.field public static final H264_VESA_1366x768p60:I = 0x2000

.field public static final H264_VESA_1400x1050p30:I = 0x10000

.field public static final H264_VESA_1400x1050p60:I = 0x20000

.field public static final H264_VESA_1440x900p30:I = 0x40000

.field public static final H264_VESA_1440x900p60:I = 0x80000

.field public static final H264_VESA_1600x1200p30:I = 0x400000

.field public static final H264_VESA_1600x1200p60:I = 0x800000

.field public static final H264_VESA_1600x900p30:I = 0x100000

.field public static final H264_VESA_1600x900p60:I = 0x200000

.field public static final H264_VESA_1680x1024p30:I = 0x1000000

.field public static final H264_VESA_1680x1024p60:I = 0x2000000

.field public static final H264_VESA_1680x1050p30:I = 0x4000000

.field public static final H264_VESA_1680x1050p60:I = 0x8000000

.field public static final H264_VESA_1920x1200p30:I = 0x10000000

.field public static final H264_VESA_1920x1200p60:I = 0x20000000

.field public static final H264_VESA_800x600p30:I = 0x1

.field public static final H264_VESA_800x600p60:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 429
    return-void
.end method

.method public static final isCeaResolution(I)Z
    .locals 1
    .parameter "resolution"

    .prologue
    .line 88
    sparse-switch p0, :sswitch_data_0

    .line 108
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 106
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final isHhResolution(I)Z
    .locals 1
    .parameter "resolution"

    .prologue
    .line 195
    sparse-switch p0, :sswitch_data_0

    .line 207
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 205
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final isVesaResolution(I)Z
    .locals 1
    .parameter "resolution"

    .prologue
    .line 145
    sparse-switch p0, :sswitch_data_0

    .line 178
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 176
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
        0x100000 -> :sswitch_0
        0x200000 -> :sswitch_0
        0x400000 -> :sswitch_0
        0x800000 -> :sswitch_0
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_0
        0x4000000 -> :sswitch_0
        0x8000000 -> :sswitch_0
        0x10000000 -> :sswitch_0
        0x20000000 -> :sswitch_0
    .end sparse-switch
.end method
