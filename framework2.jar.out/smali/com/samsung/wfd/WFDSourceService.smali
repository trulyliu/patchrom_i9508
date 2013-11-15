.class public Lcom/samsung/wfd/WFDSourceService;
.super Landroid/app/Service;
.source "WFDSourceService.java"

# interfaces
.implements Lcom/samsung/wfd/WFDNative$WfdActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WFDSourceService$2;,
        Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EXTRA_CONNECTED_SESSION_ID:Ljava/lang/String; = "connectedSessionID"

.field private static final HALF_SEC:I = 0x1f4

.field private static final NOTIFICATION_ID:I = 0x64

.field private static final OPERATION_TIMEOUT:I = 0x2710

.field private static PLAYBACK_MODE:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode; = null

.field private static final StaticLock:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "WFDSourceService"

.field private static final TIMEOUT_TRY:I = 0xa

.field private static bStandbyMode:Z

.field private static mContext:Landroid/content/Context;

.field private static m_bAlive:Z


# instance fields
.field private IS_HDCP_ENABLED:Z

.field private IS_RTP_TRANSPORT_NEGOTIATED:Z

.field private final WDTS_PAUSE:I

.field private final WDTS_PLAY:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private mBlockedRemoteEvents:Z

.field mCountdown:Landroid/os/CountDownTimer;

.field private mCpuBooster:Landroid/os/DVFSHelper;

.field private mCpuLockEnabled:Z

.field private mFrequency:I

.field private mIsEnabled:Z

.field private mMyDevice:Lcom/samsung/wfd/WfdDevice;

.field private mPauseMode:Z

.field private mPeerDevice:Lcom/samsung/wfd/WfdDevice;

.field private mPhoneCall:Z

.field private mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;

.field private mPrivateEventsMode:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenLock:Z

.field private mSessionId:I

.field private mState:Lcom/samsung/wfd/WfdEnums$SessionState;

.field private mUpdateURL:Ljava/lang/String;

.field private mWFDManager:Lcom/samsung/wfd/WfdManager;

.field private final mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

.field private mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;

.field private mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private noError:Z

.field private preventCounter:I

.field private tcpJustSwitched:Z

.field private teardownFromApp:Z

.field private uibcEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    .line 81
    sput-boolean v1, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    .line 133
    sget-object v0, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->AUDIO_VIDEO:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    sput-object v0, Lcom/samsung/wfd/WFDSourceService;->PLAYBACK_MODE:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    .line 135
    sput-boolean v1, Lcom/samsung/wfd/WFDSourceService;->bStandbyMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    sget-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->INVALID:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    .line 79
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mIsEnabled:Z

    .line 84
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->WDTS_PLAY:I

    .line 85
    iput v3, p0, Lcom/samsung/wfd/WFDSourceService;->WDTS_PAUSE:I

    .line 90
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    .line 92
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 95
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mBlockedRemoteEvents:Z

    .line 96
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPrivateEventsMode:Z

    .line 97
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mScreenLock:Z

    .line 98
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPhoneCall:Z

    .line 99
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPauseMode:Z

    .line 105
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mUpdateURL:Ljava/lang/String;

    .line 107
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z

    .line 109
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 110
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 112
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->IS_HDCP_ENABLED:Z

    .line 117
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->IS_RTP_TRANSPORT_NEGOTIATED:Z

    .line 119
    const/16 v0, 0x780

    iput v0, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioMode:I

    .line 121
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mCountdown:Landroid/os/CountDownTimer;

    .line 124
    sget-object v0, Lcom/samsung/wfd/WfdEnums$ConnectionType;->UDP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    iput-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    .line 125
    iput-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->noError:Z

    .line 127
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    .line 129
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/wfd/WFDSourceService;->preventCounter:I

    .line 137
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->tcpJustSwitched:Z

    .line 139
    new-instance v0, Lcom/samsung/wfd/WFDSourceService$1;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WFDSourceService$1;-><init>(Lcom/samsung/wfd/WFDSourceService;)V

    iput-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

    .line 377
    return-void
.end method

.method private StartRTSP()V
    .locals 2

    .prologue
    .line 636
    const-string v0, "WFDSourceService"

    const-string v1, "StartRTSP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    .line 638
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->startForegroundCompat()V

    .line 639
    const-string v0, "com.samsung.wfd.WFD_SERVICE_STARTED"

    invoke-static {v0}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$SessionState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/wfd/WFDSourceService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/wfd/WFDSourceService;->noError:Z

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1302(Lcom/samsung/wfd/WFDSourceService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/wfd/WFDSourceService;->tcpJustSwitched:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/wfd/WFDSourceService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/samsung/wfd/WFDSourceService;->setResolution(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/wfd/WFDSourceService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WFDSourceService;->setBitrate(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/wfd/WFDSourceService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->preventCounter:I

    return v0
.end method

.method static synthetic access$1606(Lcom/samsung/wfd/WFDSourceService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->preventCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/wfd/WFDSourceService;->preventCounter:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/wfd/WFDSourceService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/wfd/WFDSourceService;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WFDSourceService;->internalPause(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/wfd/WFDSourceService;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WFDSourceService;->internalPlay(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/wfd/WFDSourceService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mPeerDevice:Lcom/samsung/wfd/WfdDevice;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WfdDevice;)Lcom/samsung/wfd/WfdDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService;->mPeerDevice:Lcom/samsung/wfd/WfdDevice;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mMyDevice:Lcom/samsung/wfd/WfdDevice;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WfdDevice;)Lcom/samsung/wfd/WfdDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService;->mMyDevice:Lcom/samsung/wfd/WfdDevice;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WfdEnums$ConnectionType;)Lcom/samsung/wfd/WfdEnums$ConnectionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private aquireResources()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 184
    :try_start_0
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WAKE_LOCK"

    const-string v4, "WFDSourceService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :try_start_1
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WAKE_LOCK"

    const-string v4, "WfdService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "WFDSourceService"

    const-string v3, "catch Exception aquireResources"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 196
    .restart local v0       #e:Ljava/lang/SecurityException;
    const-string v2, "WFDSourceService"

    const-string v3, "catch Exception aquireResources"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private internalPause(Z)I
    .locals 6
    .parameter "secureFlag"

    .prologue
    .line 1137
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1139
    :try_start_0
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 1141
    .local v0, beforeState:Lcom/samsung/wfd/WfdEnums$SessionState;
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v4, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v2, v4, :cond_1

    .line 1142
    invoke-virtual {p0, p1}, Lcom/samsung/wfd/WFDSourceService;->pause(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    :try_start_1
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 1145
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v2, v0, :cond_0

    .line 1146
    const-string v2, "WFDSourceService"

    const-string v4, "ERROR: pause not set. time out happened"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->OPERATION_TIMED_OUT:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :try_start_2
    monitor-exit v3

    .line 1157
    :goto_0
    return v2

    .line 1149
    :catch_0
    move-exception v1

    .line 1150
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v2, "WFDSourceService"

    const-string v4, "Wait for PAUSE interrupted"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1151
    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 1159
    .end local v0           #beforeState:Lcom/samsung/wfd/WfdEnums$SessionState;
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1154
    .restart local v0       #beforeState:Lcom/samsung/wfd/WfdEnums$SessionState;
    :cond_0
    const/4 v2, 0x0

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 1156
    :cond_1
    const-string v2, "WFDSourceService"

    const-string v4, "WfdEnums.Session state is not PLAY"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->INCORRECT_STATE_FOR_OPERATION:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private internalPlay(Z)I
    .locals 6
    .parameter "secureFlag"

    .prologue
    .line 1113
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1115
    :try_start_0
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 1116
    .local v0, beforeState:Lcom/samsung/wfd/WfdEnums$SessionState;
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v4, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v4, Lcom/samsung/wfd/WfdEnums$SessionState;->PAUSE:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v2, v4, :cond_2

    .line 1117
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/wfd/WFDSourceService;->play(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    :try_start_1
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 1120
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v2, v0, :cond_1

    .line 1121
    const-string v2, "WFDSourceService"

    const-string v4, "ERROR: play not set. time out happened"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->OPERATION_TIMED_OUT:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :try_start_2
    monitor-exit v3

    .line 1131
    :goto_0
    return v2

    .line 1124
    :catch_0
    move-exception v1

    .line 1125
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v2, "WFDSourceService"

    const-string v4, "Wait for PLAY interrupted"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1126
    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 1133
    .end local v0           #beforeState:Lcom/samsung/wfd/WfdEnums$SessionState;
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1128
    .restart local v0       #beforeState:Lcom/samsung/wfd/WfdEnums$SessionState;
    :cond_1
    const/4 v2, 0x0

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 1130
    :cond_2
    const-string v2, "WFDSourceService"

    const-string v4, "WfdEnums.Session state is not ESTABLISHED or PAUSE"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->INCORRECT_STATE_FOR_OPERATION:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static isAlive()Z
    .locals 2

    .prologue
    .line 663
    const-string v0, "WFDSourceService"

    const-string v1, "isAlive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    sget-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    return v0
.end method

.method private static sendBroadcastIntent(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 900
    const-string v1, "WFDSourceService"

    const-string v2, "sendBroadcastIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 902
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 903
    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 904
    :cond_0
    return-void
.end method

.method private static sendBroadcastIntent(Ljava/lang/String;I)V
    .locals 3
    .parameter "msg"
    .parameter "flag"

    .prologue
    .line 907
    const-string v1, "WFDSourceService"

    const-string v2, "sendBroadcastIntent(Flag)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 909
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 910
    const-string v1, "CONNECTION_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 911
    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 912
    :cond_0
    return-void
.end method

.method private setBitrate(I)I
    .locals 1
    .parameter "bitrate"

    .prologue
    .line 1072
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->setBitrate(I)V

    .line 1073
    const/4 v0, 0x0

    return v0
.end method

.method private setResolution(II)I
    .locals 7
    .parameter "formatType"
    .parameter "value"

    .prologue
    .line 1029
    sget-object v4, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1030
    const/4 v2, 0x0

    .line 1031
    .local v2, ret:I
    :try_start_0
    invoke-static {}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->values()[Lcom/samsung/wfd/WfdEnums$CapabilityType;

    move-result-object v3

    aget-object v1, v3, p1

    .line 1032
    .local v1, resolutionType:Lcom/samsung/wfd/WfdEnums$CapabilityType;
    sget-object v3, Lcom/samsung/wfd/WFDSourceService$2;->$SwitchMap$com$samsung$wfd$WfdEnums$CapabilityType:[I

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 1049
    sget-object v3, Lcom/samsung/wfd/WfdEnums$ErrorType;->INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v3

    monitor-exit v4

    .line 1066
    :goto_0
    return v3

    .line 1034
    :pswitch_0
    invoke-static {p2}, Lcom/samsung/wfd/WfdEnums;->isCeaResolution(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1035
    sget-object v3, Lcom/samsung/wfd/WfdEnums$ErrorType;->INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v3

    monitor-exit v4

    goto :goto_0

    .line 1067
    .end local v1           #resolutionType:Lcom/samsung/wfd/WfdEnums$CapabilityType;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1039
    .restart local v1       #resolutionType:Lcom/samsung/wfd/WfdEnums$CapabilityType;
    :pswitch_1
    :try_start_1
    invoke-static {p2}, Lcom/samsung/wfd/WfdEnums;->isHhResolution(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1040
    sget-object v3, Lcom/samsung/wfd/WfdEnums$ErrorType;->INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v3

    monitor-exit v4

    goto :goto_0

    .line 1044
    :pswitch_2
    invoke-static {p2}, Lcom/samsung/wfd/WfdEnums;->isVesaResolution(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1045
    sget-object v3, Lcom/samsung/wfd/WfdEnums$ErrorType;->INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v3

    monitor-exit v4

    goto :goto_0

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 1052
    .local v0, beforeResChangeState:Lcom/samsung/wfd/WfdEnums$SessionState;
    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v0, v3, :cond_1

    .line 1054
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/wfd/WFDSourceService;->internalPause(Z)I

    move-result v2

    .line 1055
    const-string v3, "WFDSourceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internalPause ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", continuing setResolution"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    if-eqz v2, :cond_1

    .line 1057
    sget-object v3, Lcom/samsung/wfd/WfdEnums$ErrorType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v3

    monitor-exit v4

    goto :goto_0

    .line 1060
    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/wfd/WFDNative;->setResolution(II)V

    .line 1061
    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v0, v3, :cond_2

    .line 1063
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/wfd/WFDSourceService;->internalPlay(Z)I

    move-result v2

    .line 1064
    const-string v3, "WFDSourceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internalPlay ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_2
    const/4 v3, 0x0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startForegroundCompat()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1010
    const-string v3, "WFDSourceService"

    const-string v4, "startForegroundCompat"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1013
    .local v2, notification:Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.wfd.WFDSourceService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1015
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1016
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1017
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1019
    const/16 v3, 0x64

    invoke-virtual {p0, v3, v2}, Lcom/samsung/wfd/WFDSourceService;->startForeground(ILandroid/app/Notification;)V

    .line 1020
    return-void
.end method

.method private stopForegroundCompat()V
    .locals 2

    .prologue
    .line 1024
    const-string v0, "WFDSourceService"

    const-string v1, "stopForegroundCompat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WFDSourceService;->stopForeground(Z)V

    .line 1026
    return-void
.end method


# virtual methods
.method public notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V
    .locals 6
    .parameter "event"
    .parameter "sessionId"

    .prologue
    .line 686
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyEvent() Session id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v3

    .line 689
    :try_start_0
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->UIBC_ENABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_2

    .line 690
    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;

    iget v4, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v2, v4}, Lcom/samsung/wfd/WFDUibcManager;->start(I)Z

    .line 691
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z

    .line 796
    :cond_1
    :goto_0
    monitor-exit v3

    .line 797
    return-void

    .line 692
    :cond_2
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->UIBC_DISABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_4

    .line 693
    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;

    iget v4, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v2, v4}, Lcom/samsung/wfd/WFDUibcManager;->stop(I)Z

    .line 694
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z

    goto :goto_0

    .line 796
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 695
    :cond_4
    :try_start_1
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WFD_SERVICE_ENABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_5

    .line 696
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->mIsEnabled:Z

    .line 697
    const-string v2, "com.samsung.wfd.WFD_SESSION_ENABLED"

    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;)V

    .line 698
    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->ENABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 699
    const-string v2, "WFDSourceService"

    const-string v4, "WFD ENABLED broadcast sent"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 700
    :cond_5
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WFD_SERVICE_DISABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_7

    .line 701
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->mIsEnabled:Z

    .line 702
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    .line 703
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v4, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v2, v4, :cond_6

    .line 704
    const-string v2, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;)V

    .line 705
    sget-object v2, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 706
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 708
    :cond_6
    const-string v2, "WFDSourceService"

    const-string v4, "WFD  TERMINATED broadcast sent"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 709
    :cond_7
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_CONNECT_SUCCESS:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_8

    .line 710
    const-string v2, "WFDSourceService"

    const-string v4, "HDCP Connect Success"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->IS_HDCP_ENABLED:Z

    goto :goto_0

    .line 712
    :cond_8
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_CONNECT_FAIL:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_b

    .line 713
    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    if-nez v2, :cond_a

    .line 714
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    .local v0, intent_error_param:Landroid/content/Intent;
    const/high16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 716
    const-string v2, "cause"

    const-string v4, "HDCP_FAIL"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 718
    :cond_9
    const-string v2, "WFDSourceService"

    const-string v4, "HDCP Connect Fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    .line 721
    .end local v0           #intent_error_param:Landroid/content/Intent;
    :cond_a
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->noError:Z

    .line 722
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->IS_HDCP_ENABLED:Z

    .line 723
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_0

    .line 724
    :cond_b
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->VIDEO_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-eq p1, v2, :cond_c

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIO_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-eq p1, v2, :cond_c

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->VIDEO_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-eq p1, v2, :cond_c

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-eq p1, v2, :cond_c

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIO_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-eq p1, v2, :cond_c

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->NETWORK_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-eq p1, v2, :cond_c

    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->NETWORK_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne p1, v2, :cond_e

    .line 731
    :cond_c
    const-string v2, "WFDSourceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error event received:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    if-nez v2, :cond_1

    .line 734
    const-string v2, "WFDSourceService"

    const-string v4, "TEARDOWN from native. Send Error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    .restart local v0       #intent_error_param:Landroid/content/Intent;
    const/high16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 737
    const-string v2, "cause"

    const-string v4, "Runtime Error"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 739
    :cond_d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    goto/16 :goto_0

    .line 741
    .end local v0           #intent_error_param:Landroid/content/Intent;
    :cond_e
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->MM_RTP_EVENT_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_11

    .line 742
    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    if-nez v2, :cond_10

    .line 743
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .restart local v0       #intent_error_param:Landroid/content/Intent;
    const/high16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 745
    const-string v2, "cause"

    const-string v4, "MM_RTP_EVENT_FAILURE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_f

    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 747
    :cond_f
    const-string v2, "WFDSourceService"

    const-string v4, "MM_RTP_EVENT Fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    .line 750
    .end local v0           #intent_error_param:Landroid/content/Intent;
    :cond_10
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->noError:Z

    .line 751
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_0

    .line 752
    :cond_11
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->RTP_TRANSPORT_NEGOTIATED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_12

    .line 753
    const-string v2, "WFDSourceService"

    const-string v4, "RTP transport is changed successfully"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->IS_RTP_TRANSPORT_NEGOTIATED:Z

    .line 755
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_0

    .line 756
    :cond_12
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->PAUSE_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_13

    .line 757
    const-string v2, "WFDSourceService"

    const-string v4, "PAUSE start"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 758
    :cond_13
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->PLAY_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_14

    .line 759
    const-string v2, "WFDSourceService"

    const-string v4, "PLAY start"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 760
    :cond_14
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->STANDBY_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_15

    .line 761
    const-string v2, "WFDSourceService"

    const-string v4, "STANDBY_START start"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 762
    :cond_15
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIOPROXY_CLOSED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_16

    .line 763
    const-string v2, "WFDSourceService"

    const-string v4, "AUDIOPROXY_CLOSED received"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 765
    :cond_16
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->TEARDOWN_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_19

    .line 766
    const-string v2, "WFDSourceService"

    const-string v4, "TEARDOWN start"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    if-nez v2, :cond_18

    .line 769
    const-string v2, "WFDSourceService"

    const-string v4, "TEARDOWN from native. Send Error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    .restart local v0       #intent_error_param:Landroid/content/Intent;
    const/high16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 772
    const-string v2, "cause"

    const-string v4, "TEARDOWN_FROM_DONGLE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_17

    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 774
    :cond_17
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    .line 776
    .end local v0           #intent_error_param:Landroid/content/Intent;
    :cond_18
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->noError:Z

    goto/16 :goto_0

    .line 777
    :cond_19
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_1c

    .line 778
    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    if-nez v2, :cond_1b

    .line 780
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 781
    .restart local v0       #intent_error_param:Landroid/content/Intent;
    const/high16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 782
    const-string v2, "cause"

    const-string v4, "WFD Command fail"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 784
    :cond_1a
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    .line 786
    .end local v0           #intent_error_param:Landroid/content/Intent;
    :cond_1b
    const-string v2, "WFDSourceService"

    const-string v4, "Error received. Send WIFIDISPLAY_NOTI_ERROR_FROM_NATIVE"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->noError:Z

    .line 788
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_0

    .line 790
    :cond_1c
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WEAK_NETWORK:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne v2, p1, :cond_1

    .line 791
    const-string v2, "WFDSourceService"

    const-string v4, "WFD noti to App - weak network connection.."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    .local v1, intent_weak_network:Landroid/content/Intent;
    const/high16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 794
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6
    .parameter "arg0"

    .prologue
    .line 206
    const-string v3, "WFDSourceService"

    const-string v4, "Bind!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 211
    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 212
    .local v1, context:Landroid/content/Context;
    sput-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    .line 214
    const-string v3, "freq"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    .line 215
    const-string v3, "WFDSourceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    .line 245
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->aquireResources()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/samsung/wfd/WFDSourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 248
    .local v0, WifiMgr:Landroid/net/wifi/WifiManager;
    const-string v3, "WFDSourceService"

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 249
    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 250
    const-string v3, "WFDSourceService"

    const-string v4, "wifi lock acquire!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v0           #WifiMgr:Landroid/net/wifi/WifiManager;
    :cond_0
    sput-object p0, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    .line 262
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    .local v2, filter:Landroid/content/IntentFilter;
    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 264
    const-string v3, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v3, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v3, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v3, "com.samsung.wfd.WFD_SESSION_TEARDOWN"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v3, "com.samsung.wfd.WFD_SESSION_START"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v3, "com.samsung.wfd.WFD_SESSION_STOP"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v3, "com.samsung.wfd.WFD_SESSION_PAUSE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v3, "com.samsung.wfd.WFD_SESSION_RESUME"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v3, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v3, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v3, "android.intent.action.WIFI_DISPLAY_RESOLUTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v3, "android.intent.action.WIFI_DISPLAY_BITRATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v3, "android.intent.action.WIFI_DISPLAY_BUFFERING_DO"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v3, "android.intent.action.WIFI_DISPLAY_BUFFERING_DONE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v3, "android.intent.action.SECURE_START"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v3, "android.intent.action.SECURE_START_DONE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v3, "android.intent.action.SECURE_END"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v3, "android.intent.action.SECURE_END_DONE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v3, "android.intent.action.WIFI_DISPLAY_TCP_PLAYBACK_CONTROL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v3, "android.intent.action.WIFI_DISPLAY_PLAYBACK_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    new-instance v3, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;-><init>(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WFDSourceService$1;)V

    iput-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 291
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 294
    new-instance v3, Lcom/samsung/wfd/WFDUibcManager;

    sget-object v4, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/wfd/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;

    .line 295
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->StartRTSP()V

    .line 297
    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

    return-object v3
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 358
    const-string v0, "WFDSourceService"

    const-string v1, "OnCreate thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCreate thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 644
    const-string v0, "WFDSourceService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 621
    const-string v0, "WFDSourceService"

    const-string v1, "onLowMemory!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 623
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 624
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 628
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 632
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, -0x1

    .line 303
    const-string v1, "WFDSourceService"

    const-string v2, "unBind!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 307
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 323
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 324
    :try_start_0
    iget v1, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    if-eq v1, v3, :cond_0

    .line 325
    iget v1, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-static {v1}, Lcom/samsung/wfd/WFDNative;->stopWfdSession(I)V

    .line 326
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    .line 329
    :cond_0
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->disableWfd()Z

    .line 331
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v1, v3, :cond_1

    .line 332
    const-string v1, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-static {v1}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;)V

    .line 333
    sget-object v1, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 335
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 340
    :cond_2
    const-string v1, "WFDSourceService"

    const-string v2, "wifi lock release!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 349
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->stopForegroundCompat()V

    .line 351
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v1

    return v1

    .line 335
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public pause(Z)I
    .locals 3
    .parameter "isSecure"

    .prologue
    .line 921
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling Pause for sid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is Secure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-static {v0, p1}, Lcom/samsung/wfd/WFDNative;->pause(IZ)V

    .line 923
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public play(Z)I
    .locals 3
    .parameter "isSecure"

    .prologue
    .line 915
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling play()  for sid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is Secure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-static {v0, p1}, Lcom/samsung/wfd/WFDNative;->play(IZ)V

    .line 917
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAvPlaybackMode(I)I
    .locals 10
    .parameter "mode"

    .prologue
    .line 1181
    const-string v6, "WFDSourceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAvPlaybackMode mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    sget-object v7, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1183
    :try_start_0
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v8, Lcom/samsung/wfd/WfdEnums$SessionState;->INVALID:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v6, v8, :cond_0

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v8, Lcom/samsung/wfd/WfdEnums$SessionState;->INITIALIZED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v6, v8, :cond_5

    .line 1184
    :cond_0
    const/4 v5, 0x0

    .line 1185
    .local v5, valid:Z
    sget-object v4, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->AUDIO_VIDEO:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    .line 1186
    .local v4, m:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    invoke-static {}, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->values()[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    move-result-object v0

    .local v0, arr$:[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1187
    .local v1, e:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    invoke-virtual {v1}, Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;->ordinal()I

    move-result v6

    if-ne p1, v6, :cond_2

    .line 1188
    move-object v4, v1

    .line 1189
    const/4 v5, 0x1

    .line 1193
    .end local v1           #e:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    :cond_1
    if-nez v5, :cond_3

    .line 1194
    const-string v6, "WFDSourceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid AV playback mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    sget-object v6, Lcom/samsung/wfd/WfdEnums$ErrorType;->INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v6}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v6

    monitor-exit v7

    .line 1205
    .end local v0           #arr$:[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #m:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .end local v5           #valid:Z
    :goto_1
    return v6

    .line 1186
    .restart local v0       #arr$:[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .restart local v1       #e:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #m:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .restart local v5       #valid:Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1197
    .end local v1           #e:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    :cond_3
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->setAvPlaybackMode(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1198
    sput-object v4, Lcom/samsung/wfd/WFDSourceService;->PLAYBACK_MODE:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;

    .line 1199
    const/4 v6, 0x0

    monitor-exit v7

    goto :goto_1

    .line 1207
    .end local v0           #arr$:[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #m:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .end local v5           #valid:Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1201
    .restart local v0       #arr$:[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #m:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .restart local v5       #valid:Z
    :cond_4
    :try_start_1
    sget-object v6, Lcom/samsung/wfd/WfdEnums$ErrorType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v6}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v6

    monitor-exit v7

    goto :goto_1

    .line 1204
    .end local v0           #arr$:[Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #m:Lcom/samsung/wfd/WfdEnums$AVPlaybackMode;
    .end local v5           #valid:Z
    :cond_5
    const-string v6, "WFDSourceService"

    const-string v8, "Session state is not INVALID or INITIALIZED"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    sget-object v6, Lcom/samsung/wfd/WfdEnums$ErrorType;->INCORRECT_STATE_FOR_OPERATION:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v6}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setBufferingMode(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 1102
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1103
    const/4 v0, 0x0

    .line 1105
    .local v0, ret:I
    :try_start_0
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->setBuffering(I)V

    .line 1108
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 1109
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRtpTransport(IIIZ)I
    .locals 6
    .parameter "transportType"
    .parameter "bufferLengthMs"
    .parameter "port"
    .parameter "framerate"

    .prologue
    const/4 v1, 0x0

    .line 1077
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1078
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->IS_RTP_TRANSPORT_NEGOTIATED:Z

    .line 1079
    invoke-static {p1, p2, p3}, Lcom/samsung/wfd/WFDNative;->negotiateRtpTransport(III)V

    .line 1080
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->pauseMuxer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    :try_start_1
    const-string v3, "WFDSourceService"

    const-string v4, "Wait for RTSP negotiation for new RTP transport"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1090
    :try_start_2
    iget-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->IS_RTP_TRANSPORT_NEGOTIATED:Z

    if-nez v3, :cond_0

    .line 1091
    const-string v1, "WFDSourceService"

    const-string v3, "NEGOTIATION failed. Call Play to continue"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->resumeMuxer()V

    .line 1093
    sget-object v1, Lcom/samsung/wfd/WfdEnums$ErrorType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v1

    monitor-exit v2

    .line 1097
    :goto_0
    return v1

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "WFDSourceService"

    const-string v3, "setRtpTransport interrupted"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1086
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->resumeMuxer()V

    .line 1087
    sget-object v1, Lcom/samsung/wfd/WfdEnums$ErrorType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1098
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1095
    :cond_0
    :try_start_3
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->setRtpTransport(I)V

    .line 1097
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setSurface(Landroid/view/Surface;)I
    .locals 2
    .parameter "surface"

    .prologue
    .line 1211
    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1212
    :try_start_0
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->setVideoSurface(Landroid/view/Surface;)V

    .line 1213
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 1214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sinkResponse(Lcom/samsung/wfd/WfdEnums$WfdEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "event"
    .parameter "url"
    .parameter "version"

    .prologue
    .line 669
    const-string v1, "WFDSourceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sinkResponse() url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    sget-object v2, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 672
    :try_start_0
    iput-object p2, p0, Lcom/samsung/wfd/WFDSourceService;->mUpdateURL:Ljava/lang/String;

    .line 674
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v0, intent_url_param:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 676
    const-string v1, "URL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 678
    const-string v1, "WFDSourceService"

    const-string v3, "WFD noti to App - Dongle update URL"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    monitor-exit v2

    .line 680
    return-void

    .line 679
    .end local v0           #intent_url_param:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public standby()I
    .locals 2

    .prologue
    .line 937
    const-string v0, "WFDSourceService"

    const-string v1, "standby"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-static {v0}, Lcom/samsung/wfd/WFDNative;->standby(I)V

    .line 939
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stop()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 927
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop called for session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    if-eq v0, v3, :cond_0

    .line 929
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-static {v0}, Lcom/samsung/wfd/WFDNative;->stopWfdSession(I)V

    .line 930
    iput v3, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    .line 932
    :cond_0
    sget-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->STOPPED:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 933
    const/4 v0, 0x0

    return v0
.end method

.method public tcpPlaybackControl(II)I
    .locals 9
    .parameter "cmdType"
    .parameter "volume"

    .prologue
    .line 1163
    sget-object v6, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1164
    const/4 v4, 0x0

    .line 1165
    .local v4, valid:Z
    :try_start_0
    invoke-static {}, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->values()[Lcom/samsung/wfd/WfdEnums$ControlCmdType;

    move-result-object v0

    .local v0, arr$:[Lcom/samsung/wfd/WfdEnums$ControlCmdType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1166
    .local v1, e:Lcom/samsung/wfd/WfdEnums$ControlCmdType;
    invoke-virtual {v1}, Lcom/samsung/wfd/WfdEnums$ControlCmdType;->ordinal()I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 1167
    const/4 v4, 0x1

    .line 1171
    .end local v1           #e:Lcom/samsung/wfd/WfdEnums$ControlCmdType;
    :cond_0
    if-nez v4, :cond_2

    .line 1172
    const-string v5, "WFDSourceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid control cmd type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    sget-object v5, Lcom/samsung/wfd/WfdEnums$ErrorType;->INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v5}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I

    move-result v5

    monitor-exit v6

    .line 1176
    :goto_1
    return v5

    .line 1165
    .restart local v1       #e:Lcom/samsung/wfd/WfdEnums$ControlCmdType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1175
    .end local v1           #e:Lcom/samsung/wfd/WfdEnums$ControlCmdType;
    :cond_2
    invoke-static {p1, p2}, Lcom/samsung/wfd/WFDNative;->tcpPlaybackControl(II)V

    .line 1176
    const/4 v5, 0x0

    monitor-exit v6

    goto :goto_1

    .line 1177
    .end local v0           #arr$:[Lcom/samsung/wfd/WfdEnums$ControlCmdType;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public teardown()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 943
    const-string v5, "WFDSourceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "teardown()  for sid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    sget-object v5, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v5

    .line 945
    :try_start_0
    iget-boolean v6, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;

    iget v7, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v6, v7}, Lcom/samsung/wfd/WFDUibcManager;->stop(I)Z

    .line 946
    :cond_0
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->PAUSE:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHING:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v6, v7, :cond_4

    .line 951
    :cond_1
    iget v6, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/samsung/wfd/WFDNative;->teardown(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    :try_start_1
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 954
    .local v0, beforeState:Lcom/samsung/wfd/WfdEnums$SessionState;
    const/16 v1, 0xa

    .local v1, counter:I
    move v2, v1

    .line 955
    .end local v1           #counter:I
    .local v2, counter:I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2           #counter:I
    .restart local v1       #counter:I
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v6, v0, :cond_2

    .line 957
    sget-object v6, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V

    move v2, v1

    .end local v1           #counter:I
    .restart local v2       #counter:I
    goto :goto_0

    .line 959
    .end local v2           #counter:I
    .restart local v1       #counter:I
    :cond_2
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v6, v0, :cond_3

    .line 960
    const-string v6, "WFDSourceService"

    const-string v7, "Teardown timed out, trying local teardown"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget v6, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/wfd/WFDNative;->teardown(IZ)V

    .line 962
    sget-object v6, Lcom/samsung/wfd/WfdEnums$ErrorType;->OPERATION_TIMED_OUT:Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v6}, Lcom/samsung/wfd/WfdEnums$ErrorType;->getCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    :try_start_2
    monitor-exit v5

    .line 981
    .end local v0           #beforeState:Lcom/samsung/wfd/WfdEnums$SessionState;
    .end local v1           #counter:I
    :goto_1
    return v4

    .line 964
    :catch_0
    move-exception v3

    .line 965
    .local v3, e:Ljava/lang/InterruptedException;
    const-string v6, "WFDSourceService"

    const-string v7, "Teardown wait interrupted"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_3
    :goto_2
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 968
    :cond_4
    :try_start_3
    iget v6, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    .line 969
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->INVALID:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v6, v7, :cond_5

    .line 970
    const-string v6, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-static {v6}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;)V

    .line 971
    sget-object v6, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    goto :goto_2

    .line 972
    :cond_5
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->ENABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v6, v7, :cond_3

    .line 973
    iget v6, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/wfd/WFDNative;->teardown(IZ)V

    goto :goto_2

    .line 975
    :cond_6
    iget-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v7, Lcom/samsung/wfd/WfdEnums$SessionState;->TEARDOWN:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v6, v7, :cond_3

    .line 976
    iget v6, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/wfd/WFDNative;->teardown(IZ)V

    .line 977
    sget-object v6, Lcom/samsung/wfd/WfdEnums$SessionState;->TEARDOWN:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v6, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method teardownForAudioOut()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 984
    const-string v5, "WFDSourceService"

    const-string v6, "teardownForAudioOut"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    sget-object v6, Lcom/samsung/wfd/WfdEnums$ConnectionType;->TCP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    if-ne v5, v6, :cond_0

    .line 987
    const/4 v4, 0x0

    .line 988
    .local v4, transportType:I
    const/4 v0, 0x0

    .line 989
    .local v0, bufferLengthMs:I
    const/16 v2, 0x4a38

    .line 990
    .local v2, port:I
    invoke-virtual {p0, v4, v0, v2, v8}, Lcom/samsung/wfd/WFDSourceService;->setRtpTransport(IIIZ)I

    move-result v3

    .line 991
    .local v3, ret:I
    const-string v5, "WFDSourceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "teardownForAudioOut, setRtpTransport returned: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    if-ltz v3, :cond_0

    .line 994
    sget-object v5, Lcom/samsung/wfd/WfdEnums$ConnectionType;->UDP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    iput-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    .line 995
    const-string v5, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-static {v5, v8}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;I)V

    .line 999
    .end local v0           #bufferLengthMs:I
    .end local v2           #port:I
    .end local v3           #ret:I
    .end local v4           #transportType:I
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v1, intent:Landroid/content/Intent;
    const/high16 v5, 0x800

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1001
    sget-object v5, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1003
    :cond_1
    iget-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mCountdown:Landroid/os/CountDownTimer;

    if-eqz v5, :cond_2

    .line 1004
    iget-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mCountdown:Landroid/os/CountDownTimer;

    invoke-virtual {v5}, Landroid/os/CountDownTimer;->cancel()V

    .line 1005
    :cond_2
    return-void
.end method

.method public updateEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "event"
    .parameter "timestamp"
    .parameter "length"

    .prologue
    .line 879
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEvent   = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    sget-object v2, Lcom/samsung/wfd/WfdEnums$WfdEvent;->TCP_PLAYBACK_CONTROL:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    if-ne p1, v2, :cond_1

    .line 881
    const-string v2, "Play"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->tcpJustSwitched:Z

    if-eqz v2, :cond_1

    .line 882
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/wfd/WFDSourceService;->tcpJustSwitched:Z

    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, mStreamVol:I
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    .line 886
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 888
    :cond_0
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get native STREAM_MUSIC volume :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0}, Lcom/samsung/wfd/WFDSourceService;->tcpPlaybackControl(II)I

    move-result v1

    .line 891
    .local v1, ret:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk [B3] tcpPlaybackControl for initial volume control returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    .end local v0           #mStreamVol:I
    .end local v1           #ret:I
    :cond_1
    return-void
.end method

.method public updateState(Lcom/samsung/wfd/WfdEnums$SessionState;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "state"
    .parameter "sessionId"
    .parameter "audiomode"
    .parameter "version"
    .parameter "ipaddr"

    .prologue
    const/4 v7, -0x1

    .line 801
    const-string v3, "WFDSourceService"

    const-string v4, "updateState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    sget-object v4, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    monitor-enter v4

    .line 803
    :try_start_0
    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne p1, v3, :cond_0

    iget v3, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    if-ne p2, v3, :cond_0

    .line 804
    const-string v3, "WFDSourceService"

    const-string v5, "Nothing has changed. Ignoring updateState"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    monitor-exit v4

    .line 874
    :goto_0
    return-void

    .line 807
    :cond_0
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    .line 808
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->StaticLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 809
    iget v3, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    if-eq p2, v3, :cond_2

    .line 810
    const-string v3, "WFDSourceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session id changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :goto_1
    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->PAUSE:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne p1, v3, :cond_3

    .line 817
    const-string v3, "WFDSourceService"

    const-string v5, "PAUSE done"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_1
    :goto_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 812
    :cond_2
    :try_start_1
    const-string v3, "WFDSourceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 818
    :cond_3
    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne p1, v3, :cond_4

    .line 819
    const-string v3, "WFDSourceService"

    const-string v5, "PLAY done"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 820
    :cond_4
    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHING:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne p1, v3, :cond_5

    .line 821
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.WFD_SESSION_ESTABLISHING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v2, intent_est:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 823
    const-string v3, "connectedSessionID"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 824
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 825
    iput p2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    .line 826
    const-string v3, "WFDSourceService"

    const-string v5, "WFD ESTABLISHING process"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 827
    .end local v2           #intent_est:Landroid/content/Intent;
    :cond_5
    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->TEARDOWN:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne p1, v3, :cond_a

    .line 828
    const-string v3, "WFDSourceService"

    const-string v5, "WFD TEARDOWN completed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    if-nez v3, :cond_7

    .line 831
    const-string v3, "WFDSourceService"

    const-string v5, "TEARDOWN from native. Send Error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 833
    .local v1, intent_error_param:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 834
    const-string v3, "cause"

    const-string v5, "TEARDOWN_FROM_DONGLE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_6

    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 836
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z

    .line 837
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->noError:Z

    .line 839
    .end local v1           #intent_error_param:Landroid/content/Intent;
    :cond_7
    if-eq p2, v7, :cond_9

    .line 840
    iget v3, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    if-ne p2, v3, :cond_8

    .line 841
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    .line 843
    :cond_8
    invoke-static {p2}, Lcom/samsung/wfd/WFDNative;->stopWfdSession(I)V

    .line 845
    :cond_9
    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    sget-object v5, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-eq v3, v5, :cond_1

    .line 846
    const-string v3, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-static {v3}, Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;)V

    .line 847
    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->DISABLED:Lcom/samsung/wfd/WfdEnums$SessionState;

    iput-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;

    goto/16 :goto_2

    .line 850
    :cond_a
    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHED:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne p1, v3, :cond_1

    .line 851
    iput p2, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    .line 852
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 853
    .local v0, intent_connected:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 854
    const-string v3, "connectedSessionID"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 855
    const-string v3, "count"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 856
    iput p3, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioMode:I

    .line 857
    if-eqz p4, :cond_b

    .line 858
    const-string v3, "VER"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    :cond_b
    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mUpdateURL:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 861
    const-string v3, "URL"

    iget-object v5, p0, Lcom/samsung/wfd/WFDSourceService;->mUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mUpdateURL:Ljava/lang/String;

    .line 864
    :cond_c
    if-eqz p5, :cond_d

    .line 865
    const-string v3, "IP"

    invoke-virtual {v0, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    :cond_d
    const-string v3, "HDCP"

    iget-boolean v5, p0, Lcom/samsung/wfd/WFDSourceService;->IS_HDCP_ENABLED:Z

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 868
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_e

    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 869
    :cond_e
    const-string v3, "WFDSourceService"

    const-string v5, "WFD ESTABLISHED broadcast sent"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;

    iget v5, p0, Lcom/samsung/wfd/WFDSourceService;->mSessionId:I

    invoke-virtual {v3, v5}, Lcom/samsung/wfd/WFDUibcManager;->start(I)Z

    .line 871
    :cond_f
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/wfd/WFDSourceService;->uibcEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method
