.class public final enum Lcom/samsung/wfd/WfdEnums$WfdEvent;
.super Ljava/lang/Enum;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WfdEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wfd/WfdEnums$WfdEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum AUDIOPROXY_CLOSED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum AUDIOPROXY_OPENED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum AUDIO_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum AUDIO_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum BUFFER_UPDATE_EVENT:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum HDCP_CONNECT_FAIL:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum HDCP_CONNECT_SUCCESS:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum HDCP_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum MM_RTP_EVENT_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum NETWORK_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum NETWORK_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum PAUSE_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum PLAY_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum RTP_TRANSPORT_NEGOTIATED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum SINK_RESPOND:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum STANDBY_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum TCP_PLAYBACK_CONTROL:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum TEARDOWN_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum UIBC_DISABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum UIBC_ENABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum VIDEO_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum VIDEO_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum WEAK_NETWORK:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum WFD_SERVICE_DISABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

.field public static final enum WFD_SERVICE_ENABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 316
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "WFD_SERVICE_ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WFD_SERVICE_ENABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 317
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "WFD_SERVICE_DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WFD_SERVICE_DISABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 318
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "UIBC_ENABLED"

    invoke-direct {v0, v1, v5}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->UIBC_ENABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 319
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "UIBC_DISABLED"

    invoke-direct {v0, v1, v6}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->UIBC_DISABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 320
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "PLAY_START"

    invoke-direct {v0, v1, v7}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->PLAY_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 321
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "PAUSE_START"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->PAUSE_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 322
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "AUDIOPROXY_CLOSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIOPROXY_CLOSED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 323
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "AUDIOPROXY_OPENED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIOPROXY_OPENED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 324
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "TEARDOWN_START"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->TEARDOWN_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 325
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 326
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "SINK_RESPOND"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->SINK_RESPOND:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 327
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "HDCP_CONNECT_SUCCESS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_CONNECT_SUCCESS:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 328
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "HDCP_CONNECT_FAIL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_CONNECT_FAIL:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 329
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "VIDEO_RUNTIME_ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->VIDEO_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 330
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "VIDEO_CONFIGURE_FAILURE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->VIDEO_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 331
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "AUDIO_RUNTIME_ERROR"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIO_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 332
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "HDCP_RUNTIME_ERROR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 333
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "AUDIO_CONFIGURE_FAILURE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIO_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 334
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "MM_RTP_EVENT_FAILURE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->MM_RTP_EVENT_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 335
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "NETWORK_RUNTIME_ERROR"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->NETWORK_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 336
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "NETWORK_CONFIGURE_FAILURE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->NETWORK_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 337
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "RTP_TRANSPORT_NEGOTIATED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->RTP_TRANSPORT_NEGOTIATED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 338
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "BUFFER_UPDATE_EVENT"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->BUFFER_UPDATE_EVENT:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 340
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "WEAK_NETWORK"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WEAK_NETWORK:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 341
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "TCP_PLAYBACK_CONTROL"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->TCP_PLAYBACK_CONTROL:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 342
    new-instance v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const-string v1, "STANDBY_START"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/samsung/wfd/WfdEnums$WfdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->STANDBY_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    .line 315
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/samsung/wfd/WfdEnums$WfdEvent;

    sget-object v1, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WFD_SERVICE_ENABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WFD_SERVICE_DISABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/wfd/WfdEnums$WfdEvent;->UIBC_ENABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/wfd/WfdEnums$WfdEvent;->UIBC_DISABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/wfd/WfdEnums$WfdEvent;->PLAY_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->PAUSE_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIOPROXY_CLOSED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIOPROXY_OPENED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->TEARDOWN_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->SINK_RESPOND:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_CONNECT_SUCCESS:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_CONNECT_FAIL:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->VIDEO_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->VIDEO_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIO_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIO_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->MM_RTP_EVENT_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->NETWORK_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->NETWORK_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->RTP_TRANSPORT_NEGOTIATED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->BUFFER_UPDATE_EVENT:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WEAK_NETWORK:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->TCP_PLAYBACK_CONTROL:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->STANDBY_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->$VALUES:[Lcom/samsung/wfd/WfdEnums$WfdEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wfd/WfdEnums$WfdEvent;
    .locals 1
    .parameter "name"

    .prologue
    .line 315
    const-class v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wfd/WfdEnums$WfdEvent;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/samsung/wfd/WfdEnums$WfdEvent;->$VALUES:[Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-virtual {v0}, [Lcom/samsung/wfd/WfdEnums$WfdEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wfd/WfdEnums$WfdEvent;

    return-object v0
.end method
