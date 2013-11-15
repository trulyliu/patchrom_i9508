.class public final Lcom/android/server/ssrm/Monitor;
.super Ljava/lang/Thread;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/Monitor$BoostedURLHandler;,
        Lcom/android/server/ssrm/Monitor$SysfsTable;,
        Lcom/android/server/ssrm/Monitor$TMUObserver;,
        Lcom/android/server/ssrm/Monitor$TmuState;,
        Lcom/android/server/ssrm/Monitor$SIPStatusInfo;,
        Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JA;,
        Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JF;,
        Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;,
        Lcom/android/server/ssrm/Monitor$SIOPLevel;,
        Lcom/android/server/ssrm/Monitor$AclObserver;,
        Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;,
        Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;,
        Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;
    }
.end annotation


# static fields
.field public static final ACTION_CP_SIOP_LEVEL:Ljava/lang/String; = "android.intent.action.CP_SIOP_LEVEL"

.field public static final ACTION_MAX_BRIGHTNESS_CHANGED:Ljava/lang/String; = "android.intent.action.MAX_BRIGHTNESS_CHANGED"

.field public static final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.SIOP_LEVEL_CHANGED"

.field private static final APP_STATUS_ADD_TRIGGER:I = 0x3

.field private static final APP_STATUS_REMOVE_TRIGGER:I = 0x4

.field private static final APP_STATUS_TRIGGER:I = 0x2

.field private static final BASE_MODEL:Ljava/lang/String; = "jf"

.field private static final BRIGHTNESS_LIMIT_VALUE:I = 0xe6

.field private static final BRIGHTNESS_NORMAL_VALUE:I = -0x1

.field private static final CREATE_SIOP_LEVEL:I = 0x6

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final EXTRA_CP_SIOP_LEVEL:Ljava/lang/String; = "cp_siop_level"

.field public static final EXTRA_MAX_BRIGHTNESS:Ljava/lang/String; = "max_brightness"

.field private static final FOREGROUND_TRIGGER:I = 0x1

.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field public static final LCD_FPS_HIGH:I = 0x0

.field public static final LCD_FPS_IDLE:I = 0x2

.field public static final LCD_FPS_LOW:I = 0x1

.field public static final LCD_FPS_NONE:I = 0x3

.field private static final NA:I = -0x1

.field private static final PROCESS_STATE_BACKGROUND:Ljava/lang/String; = "BACKGROUND"

.field private static final PROCESS_STATE_FOREGROUND:Ljava/lang/String; = "FOREGROUND"

.field private static final READ_POLICY_XML:I = 0x5

.field private static final REMOVE_BOOST_REQUEST:I = 0x0

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SIOPFileName:Ljava/lang/String; = "siop_jf_att"

.field private static final SIOP_TYPE_AP:I = 0x6f

.field private static final SIOP_TYPE_CP:I = 0x70

.field private static final SSRM_NOTIFICATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

.field private static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field private static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_REQUEST"

.field private static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"

.field public static final SystemIntentReceiver:Landroid/content/BroadcastReceiver; = null

.field private static TAG:Ljava/lang/String; = null

.field private static THERMISTOR_TIMER_DURATION:J = 0x0L

.field private static final THERMISTOR_TIMER_DURATION_DEFAULT_VALUE:J = 0x2710L

.field private static final THERMISTOR_TIMER_DURATION_MIN_VALUE:J = 0x3e8L

.field private static final TMU_UEVENT_MATCH:Ljava/lang/String; = "TMUSTATE"

.field private static final UPDATE_TO_LATEST_SIOP_LEVEL:I = 0x7

.field static isBootCompleted:Z

.field private static mAclEnabled:Z

.field private static mAclObserver:Lcom/android/server/ssrm/Monitor$AclObserver;

.field private static mActivityManager:Landroid/app/IActivityManager;

.field static mAirplanemode:Z

.field private static mAutoBrightnessEnabled:Z

.field private static mAutoBrightnessObserver:Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

.field static mBatteryCharging:Z

.field static mBatteryFull:Z

.field static mBatteyRemaining:I

.field static mBluetoothConnected:Z

.field static mBluetoothEnabled:Z

.field private static mBootMaxFreqHelper:Landroid/os/DVFSHelper;

.field private static mBootMinFreqHelper:Landroid/os/DVFSHelper;

.field private static mBrightnessAdjustedForBrowser:Z

.field static mBrowserIntentLowFps:Z

.field static mBrowserLowFps:Z

.field private static mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

.field private static mContext:Landroid/content/Context;

.field private static volatile mCurrentCPTemp:I

.field private static mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static volatile mCurrentThermistorTemp:I

.field private static mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

.field private static mDisableCPUControl:Z

.field static mDynamicFpsPackage:Z

.field private static mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

.field private static mFilter:Landroid/content/IntentFilter;

.field static mForceSIOPUpdate:Z

.field static mFpsFullScreenMode:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mInit:Z

.field private static mIntCurrentSIOPLevelAP:I

.field private static mIntCurrentSIOPLevelCP:I

.field private static mIntentMaxBrightnessChanged:Landroid/content/Intent;

.field private static mIntentSIOPLevelChanged:Landroid/content/Intent;

.field private static mLastBrightnessBySIOP:I

.field private static volatile mLastCPTemp:I

.field private static mLastCameraDualRecording:Z

.field private static mLastCameraRecording:Z

.field private static mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static volatile mLastThermistorTemp:I

.field private static mLatestMaxBrightness:I

.field private static mLimitCameraFlash:Z

.field private static mLimitCameraFlash_:Z

.field private static mLimitCameraRecording:Z

.field private static mLimitCameraRecording_:Z

.field private static mMonitor:Lcom/android/server/ssrm/Monitor;

.field static mMultiWindowRunning:Z

.field private static mPMS:Lcom/android/server/power/PowerManagerService;

.field static mPermanentAppPID:I

.field private static mPkgAddedFilter:Landroid/content/IntentFilter;

.field static mPowerConnected:Z

.field public static mPowerSavingMode:Z

.field static mPrevBrowserLowFps:Z

.field static mPrevFpsFullScreen:Z

.field static mPrevFpsPackage:Z

.field private static mSIOPControlForCameraShooting:Z

.field private static volatile mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static volatile mSIOPObjectsCP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static volatile mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

.field private static mSSRMStatusFilter:Landroid/content/IntentFilter;

.field static mScreenOn:Z

.field private static mSupportedCpuCoreNum:[I

.field private static mSupportedCpuFreq:[I

.field private static mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

.field private static mTMapOn:Z

.field private static mURLHandler:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

.field static mUsbConnected:Z

.field static mWifiConnected:Z

.field private static mXmlRetryCount:I

.field static thermistorDataSetListAP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;",
            ">;"
        }
    .end annotation
.end field

.field static thermistorDataSetListCP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;",
            ">;"
        }
    .end annotation
.end field

.field static wifiEnabled:Z

.field private static xmlPolicyCreator:Lcom/android/server/ssrm/PolicyCreator;


# instance fields
.field private final THERMISTOR_TIMER_START:J

.field private final VAL_FOR_LATEST_TEMPERATURE:I

.field mBatteryStatus:I

.field private mPM:Landroid/os/PowerManager;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private thermistorObeserver:Ljava/util/Timer;

.field private thermistorObeserverTask:Ljava/util/TimerTask;

.field private xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    .line 100
    sput-object v3, Lcom/android/server/ssrm/Monitor;->xmlPolicyCreator:Lcom/android/server/ssrm/PolicyCreator;

    .line 101
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    .line 103
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    .line 104
    const-string v0, "Monitor"

    sput-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    .line 120
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Z

    .line 122
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    .line 125
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    .line 126
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    .line 127
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    .line 128
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    .line 129
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mPrevBrowserLowFps:Z

    .line 130
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mPrevFpsFullScreen:Z

    .line 131
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mPrevFpsPackage:Z

    .line 133
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    .line 138
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    .line 143
    sput v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    .line 144
    sput v2, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    .line 145
    sput v2, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    .line 146
    sput v2, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    .line 147
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 148
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 149
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 150
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 151
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 152
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 153
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 154
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 155
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mDisableCPUControl:Z

    .line 163
    sput v4, Lcom/android/server/ssrm/Monitor;->mLastBrightnessBySIOP:I

    .line 184
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    .line 194
    sput v4, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    .line 217
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    .line 218
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    .line 219
    sput v2, Lcom/android/server/ssrm/Monitor;->mXmlRetryCount:I

    .line 221
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mURLHandler:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    .line 225
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessEnabled:Z

    .line 226
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mBrightnessAdjustedForBrowser:Z

    .line 227
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mSIOPControlForCameraShooting:Z

    .line 228
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessObserver:Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

    .line 446
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mAclEnabled:Z

    .line 447
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mAclObserver:Lcom/android/server/ssrm/Monitor$AclObserver;

    .line 466
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mInit:Z

    .line 659
    sput v4, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    .line 660
    sput v4, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    .line 1015
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    .line 1016
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    .line 1037
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    .line 1047
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    .line 1058
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    .line 1060
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash_:Z

    .line 1061
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording_:Z

    .line 1222
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    .line 1223
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    .line 1224
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSSRMStatusFilter:Landroid/content/IntentFilter;

    .line 1265
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mTMapOn:Z

    .line 1267
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mBootMinFreqHelper:Landroid/os/DVFSHelper;

    .line 1268
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mBootMaxFreqHelper:Landroid/os/DVFSHelper;

    .line 1269
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLastCameraRecording:Z

    .line 1270
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLastCameraDualRecording:Z

    .line 1271
    new-instance v0, Lcom/android/server/ssrm/Monitor$3;

    invoke-direct {v0}, Lcom/android/server/ssrm/Monitor$3;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1873
    const-string v0, "1"

    const-string v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->mMultiWindowRunning:Z

    .line 2025
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    .line 2140
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Landroid/app/IActivityManager;)V
    .locals 8
    .parameter "ctxt"
    .parameter "pms"
    .parameter "activityManager"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 358
    const-string v1, "Monitor"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 99
    iput-object v7, p0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    .line 140
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_START:J

    .line 141
    new-instance v1, Ljava/util/Timer;

    const-string v2, "Thermistor timer"

    invoke-direct {v1, v2, v6}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->thermistorObeserver:Ljava/util/Timer;

    .line 142
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/ssrm/Monitor;->VAL_FOR_LATEST_TEMPERATURE:I

    .line 188
    iput-object v7, p0, Lcom/android/server/ssrm/Monitor;->mPM:Landroid/os/PowerManager;

    .line 505
    new-instance v1, Lcom/android/server/ssrm/Monitor$2;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/Monitor$2;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->thermistorObeserverTask:Ljava/util/TimerTask;

    .line 1981
    new-instance v1, Lcom/android/server/ssrm/Monitor$4;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/Monitor$4;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 359
    sput-object p1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    .line 360
    sput-object p2, Lcom/android/server/ssrm/Monitor;->mPMS:Lcom/android/server/power/PowerManagerService;

    .line 361
    sput-object p3, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/IActivityManager;

    .line 362
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->createDynamicLCDFPS()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    .line 364
    new-instance v1, Lcom/android/server/ssrm/Monitor$SysfsTable;

    const-string v2, "/sys/devices/platform/sec-thermistor/temperature"

    const-string v3, "/sys/class/sensors/temphumidity_sensor/cp_temperature"

    const-string v4, "/sys/class/power_supply/battery/siop_level"

    const-string v5, "/sys/class/lcd/panel/siop_enable"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/ssrm/Monitor$SysfsTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    .line 370
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    invoke-static {}, Lcom/android/server/ssrm/Monitor$SysfsTable;->checkCpSysfsAccesible()V

    .line 372
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->initFeatureAndParameter()V

    .line 374
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    if-eqz v1, :cond_0

    .line 375
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    invoke-virtual {v1}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->initialize()V

    .line 378
    :cond_0
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 379
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "In Monitor:: Constructor"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->initHandler()V

    .line 385
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/Controller;->setContext(Landroid/content/Context;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->registerIntentFilters()V

    .line 391
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mPM:Landroid/os/PowerManager;

    if-nez v1, :cond_2

    .line 392
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mPM:Landroid/os/PowerManager;

    .line 396
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->start()V

    .line 399
    invoke-static {}, Lcom/android/server/ssrm/PolicyReader;->getInstance()Lcom/android/server/ssrm/PolicyReader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    .line 400
    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->getInstance()Lcom/android/server/ssrm/PolicyCreator;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/Monitor;->xmlPolicyCreator:Lcom/android/server/ssrm/PolicyCreator;

    .line 404
    :try_start_0
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_3
    :goto_0
    new-instance v1, Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;-><init>(Lcom/android/server/ssrm/Monitor;)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessObserver:Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

    .line 412
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessObserver:Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 415
    new-instance v1, Lcom/android/server/ssrm/Monitor$AclObserver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/Monitor$AclObserver;-><init>(Lcom/android/server/ssrm/Monitor;)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mAclObserver:Lcom/android/server/ssrm/Monitor$AclObserver;

    .line 416
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_saving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mAclObserver:Lcom/android/server/ssrm/Monitor$AclObserver;

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 419
    new-instance v1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v2, v7}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/ssrm/Monitor$1;)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mURLHandler:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    .line 420
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 407
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/android/server/ssrm/PolicyCreator;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Monitor;->xmlPolicyCreator:Lcom/android/server/ssrm/PolicyCreator;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/android/server/ssrm/Monitor;->mXmlRetryCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/ssrm/Monitor;Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->checkException(Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$108()I
    .locals 2

    .prologue
    .line 63
    sget v0, Lcom/android/server/ssrm/Monitor;->mXmlRetryCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/ssrm/Monitor;->mXmlRetryCount:I

    return v0
.end method

.method static synthetic access$1100()Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessEnabled:Z

    return p0
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mBrightnessAdjustedForBrowser:Z

    return v0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mBrightnessAdjustedForBrowser:Z

    return p0
.end method

.method static synthetic access$1800(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V

    return-void
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mAclEnabled:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mAclEnabled:Z

    return p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ssrm/Monitor;)Lcom/android/server/ssrm/PolicyReader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    return-object v0
.end method

.method static synthetic access$3100()Landroid/os/DVFSHelper;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mBootMinFreqHelper:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$3102(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-object p0, Lcom/android/server/ssrm/Monitor;->mBootMinFreqHelper:Landroid/os/DVFSHelper;

    return-object p0
.end method

.method static synthetic access$3200()Landroid/os/DVFSHelper;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mBootMaxFreqHelper:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$3202(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-object p0, Lcom/android/server/ssrm/Monitor;->mBootMaxFreqHelper:Landroid/os/DVFSHelper;

    return-object p0
.end method

.method static synthetic access$3300()[I
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    return-object v0
.end method

.method static synthetic access$3302([I)[I
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-object p0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    return-object p0
.end method

.method static synthetic access$3400(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->onPowerSavingModeChanged(Z)V

    return-void
.end method

.method static synthetic access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    return-object v0
.end method

.method static synthetic access$3600(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->limitChargingCurrent(I)V

    return-void
.end method

.method static synthetic access$3700()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mSIOPControlForCameraShooting:Z

    return v0
.end method

.method static synthetic access$3702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mSIOPControlForCameraShooting:Z

    return p0
.end method

.method static synthetic access$3802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mTMapOn:Z

    return p0
.end method

.method static synthetic access$3900()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mLastCameraDualRecording:Z

    return v0
.end method

.method static synthetic access$3902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mLastCameraDualRecording:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/ssrm/Monitor;)Ljava/util/TimerTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->thermistorObeserverTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$4000()Lcom/android/server/ssrm/Monitor$BoostedURLHandler;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mURLHandler:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    return-object v0
.end method

.method static synthetic access$4100(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->limitCPUFreq(I)V

    return-void
.end method

.method static synthetic access$4202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mDisableCPUControl:Z

    return p0
.end method

.method static synthetic access$4300()Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->onSIPIntentReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4500(I)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->isFPSValid(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/server/ssrm/Monitor$SIPStatusInfo;)Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-object p0, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    return-object p0
.end method

.method static synthetic access$4800()Lcom/android/server/ssrm/Monitor$SysfsTable;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ssrm/Monitor;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->thermistorObeserver:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$600()[Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ssrm/Monitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->createSIOPLevels()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ssrm/Monitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->readThermistorFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/ssrm/Monitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->setCurrentLevelfromTemp()V

    return-void
.end method

.method private final aclOn(Z)V
    .locals 2
    .parameter "bOn"

    .prologue
    .line 1105
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-boolean v0, v0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isAclOnOffValid:Z

    if-eqz v0, :cond_0

    .line 1106
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-object v1, v0, Lcom/android/server/ssrm/Monitor$SysfsTable;->aclOnOffPath:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    .line 1108
    :cond_0
    return-void

    .line 1106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized boostRequestfromAMS(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    .line 1761
    const-class v3, Lcom/android/server/ssrm/Monitor;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1762
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "In Monitor:: boostRequestfromAMS"

    invoke-static {v2, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    :cond_0
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1766
    .local v1, msg1:Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1767
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1769
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1770
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1771
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1772
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1774
    monitor-exit v3

    return-void

    .line 1761
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #msg1:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private checkException(Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z
    .locals 8
    .parameter "attr"

    .prologue
    .line 1795
    const/4 v2, 0x1

    .line 1796
    .local v2, doBoost:Z
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package Name in Check Exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCommonExceptionList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1798
    .local v1, commonExceptionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;>;"
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1804
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v6, "attr.getCommonExceptionList()!= null : "

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    .line 1807
    .local v0, attrException:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;
    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1808
    .local v4, packageName:Ljava/lang/String;
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception Name is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    const-string v5, "USB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1810
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUsbConnected : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->getStatusName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IsConnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->isValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1812
    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    if-eqz v5, :cond_1

    .line 1813
    and-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1815
    :cond_1
    and-int/lit8 v2, v2, 0x0

    goto :goto_0

    .line 1818
    :cond_2
    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1819
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiConnected : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/ssrm/Monitor;->mWifiConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->getStatusName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IsConnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->isValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1821
    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mWifiConnected:Z

    if-eqz v5, :cond_3

    .line 1822
    and-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1824
    :cond_3
    and-int/lit8 v2, v2, 0x0

    goto/16 :goto_0

    .line 1826
    :cond_4
    const-string v5, "AIRPLANE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1827
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAirplanemode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->getStatusName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IsConnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->isValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1829
    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    if-eqz v5, :cond_5

    .line 1830
    and-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1832
    :cond_5
    and-int/lit8 v2, v2, 0x0

    goto/16 :goto_0

    .line 1837
    .end local v0           #attrException:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #packageName:Ljava/lang/String;
    :cond_6
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception List is Empty for package Name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const/4 v2, 0x0

    .line 1840
    :cond_7
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with doBoost : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    return v2
.end method

.method private createDynamicLCDFPS()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;
    .locals 2

    .prologue
    .line 1960
    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "m0"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "t03g"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "t0lte"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1964
    :cond_0
    new-instance v0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JA;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JA;-><init>(Lcom/android/server/ssrm/Monitor;)V

    .line 1968
    :goto_0
    return-object v0

    .line 1965
    :cond_1
    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1966
    new-instance v0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JF;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JF;-><init>(Lcom/android/server/ssrm/Monitor;)V

    goto :goto_0

    .line 1968
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createSIOPLevels()V
    .locals 17

    .prologue
    .line 587
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 589
    const-string v1, "siop_jf_att"

    const-string v2, "j6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v16, 0x0

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v3, "CamLevel-1"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0xc8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v16

    .line 591
    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v16, 0x1

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v3, "CamLevel-2"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0xa0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v16

    .line 592
    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v16, 0x2

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v3, "CamLevel-2"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x78

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v16

    .line 599
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    invoke-virtual {v1}, Lcom/android/server/ssrm/PolicyReader;->getThermistorDataListAP()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    .line 601
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 625
    :cond_0
    return-void

    .line 594
    :cond_1
    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v16, 0x0

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v3, "CamLevel-1"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0xf9

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v16

    .line 595
    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v16, 0x1

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v3, "CamLevel-2"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0xc8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v16

    .line 596
    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v16, 0x2

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v3, "CamLevel-2"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x96

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v16

    goto :goto_0

    .line 605
    :cond_2
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thermistorDataSetListAP  size is = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 607
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_3

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, strTag:Ljava/lang/String;
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    .line 610
    .local v14, tempDataSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v4, -0x1

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getArmFreq()I

    move-result v5

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getArmCore()I

    move-result v6

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getChargeCurrent()I

    move-result v7

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getLcdBrightness()I

    move-result v8

    const/4 v9, -0x1

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getFlashState()Z

    move-result v10

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getAclState()Z

    move-result v11

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->isRecordingStop()Z

    move-result v12

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v13

    .line 607
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 613
    .end local v3           #strTag:Ljava/lang/String;
    .end local v14           #tempDataSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    invoke-virtual {v1}, Lcom/android/server/ssrm/PolicyReader;->getThermistorDataListCP()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    .line 614
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 617
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thermistorDataSetListCP  size is = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 619
    const/4 v13, 0x0

    :goto_2
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_0

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 621
    .restart local v3       #strTag:Ljava/lang/String;
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    .line 622
    .restart local v14       #tempDataSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    sget-object v15, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v4, -0x1

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getArmFreq()I

    move-result v5

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getArmCore()I

    move-result v6

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getChargeCurrent()I

    move-result v7

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getLcdBrightness()I

    move-result v8

    const/4 v9, -0x1

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getFlashState()Z

    move-result v10

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getAclState()Z

    move-result v11

    invoke-virtual {v14}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->isRecordingStop()Z

    move-result v12

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    aput-object v1, v15, v13

    .line 619
    add-int/lit8 v13, v13, 0x1

    goto :goto_2
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .locals 7
    .parameter "filePath"
    .parameter "value"

    .prologue
    .line 1184
    const/4 v2, 0x0

    .line 1186
    .local v2, out:Ljava/io/FileOutputStream;
    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1197
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1198
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 1210
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v5, "fileWriteInt : file not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1199
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1200
    .local v0, e:Ljava/io/IOException;
    :goto_1
    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1201
    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is failed. IOException occured."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1205
    :catch_2
    move-exception v1

    .line 1206
    .local v1, err:Ljava/io/IOException;
    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1207
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1199
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private generateMergedSIOPLevel()Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .locals 22

    .prologue
    .line 815
    const/16 v19, 0x0

    .line 819
    .local v19, tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    sget v20, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    move/from16 v0, v20

    if-gt v3, v0, :cond_0

    .line 820
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    const/16 v20, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v17

    .line 821
    .local v17, prevSIOPLevelAP:I
    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    const/16 v20, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v15

    .line 828
    .local v15, nextSIOPLevelAP:I
    :goto_0
    move/from16 v0, v17

    if-le v0, v15, :cond_1

    .line 829
    add-int/lit8 v3, v15, 0x1

    sput v3, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    .line 836
    :goto_1
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    sget v20, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    move/from16 v0, v20

    if-gt v3, v0, :cond_2

    .line 837
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    const/16 v20, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v18

    .line 838
    .local v18, prevSIOPLevelCP:I
    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    const/16 v20, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v16

    .line 845
    .local v16, nextSIOPLevelCP:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v16

    if-le v0, v1, :cond_3

    .line 846
    add-int/lit8 v3, v16, 0x1

    sput v3, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    .line 850
    :goto_3
    move/from16 v0, v17

    if-ne v0, v15, :cond_4

    move/from16 v0, v18

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 851
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v20, "No change in Both AP and CP SIOP Level, will Return!!!"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setCurrentLevelfromTemp:: current AP temp = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", last AP temp = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", AP SIOP level = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setCurrentLevelfromTemp:: current CP temp = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", last CP temp = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", CP SIOP level = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v19

    .line 929
    .end local v19           #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    :goto_4
    return-object v19

    .line 823
    .end local v15           #nextSIOPLevelAP:I
    .end local v16           #nextSIOPLevelCP:I
    .end local v17           #prevSIOPLevelAP:I
    .end local v18           #prevSIOPLevelCP:I
    .restart local v19       #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    :cond_0
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    const/16 v20, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v17

    .line 824
    .restart local v17       #prevSIOPLevelAP:I
    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    add-int/lit8 v3, v3, -0x1

    const/16 v20, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v15

    .restart local v15       #nextSIOPLevelAP:I
    goto/16 :goto_0

    .line 831
    :cond_1
    sput v15, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    goto/16 :goto_1

    .line 840
    :cond_2
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    const/16 v20, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v18

    .line 841
    .restart local v18       #prevSIOPLevelCP:I
    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    add-int/lit8 v3, v3, -0x1

    const/16 v20, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v16

    .restart local v16       #nextSIOPLevelCP:I
    goto/16 :goto_2

    .line 848
    :cond_3
    sput v16, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    goto/16 :goto_3

    .line 865
    :cond_4
    :try_start_0
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v20, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v3, v3, v20

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 866
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v20, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    aget-object v3, v3, v20

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 869
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v4

    .line 870
    .local v4, name:Ljava/lang/String;
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v20, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_d

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    .line 872
    .local v5, temperatureThreshold:I
    :goto_5
    const/4 v6, -0x1

    .line 873
    .local v6, lockFrequency:I
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_f

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_f

    .line 874
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v20, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_e

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    .line 881
    :cond_5
    :goto_6
    const/4 v7, -0x1

    .line 882
    .local v7, cpuMaxCore:I
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_12

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_12

    .line 883
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v20, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_11

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    .line 891
    :cond_6
    :goto_7
    const/4 v8, -0x1

    .line 892
    .local v8, limitChargingCurrent:I
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_15

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_15

    .line 893
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v20, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_14

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    .line 900
    :cond_7
    :goto_8
    const/4 v10, -0x1

    .line 901
    .local v10, LcdFPS:I
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_18

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_18

    .line 902
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v20, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_17

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v10

    .line 909
    :cond_8
    :goto_9
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_9
    const/4 v11, 0x1

    .line 911
    .local v11, flashLedDisable:Z
    :goto_a
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_a
    const/4 v12, 0x1

    .line 913
    .local v12, aclOn:Z
    :goto_b
    const/4 v9, -0x1

    .line 914
    .local v9, displayBrightness:I
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_1d

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_1d

    .line 915
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v20, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v20

    move/from16 v0, v20

    if-ge v3, v0, :cond_1c

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    .line 922
    :cond_b
    :goto_c
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_c
    const/4 v13, 0x1

    .line 924
    .local v13, recordingStop:Z
    :goto_d
    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    .end local v4           #name:Ljava/lang/String;
    .end local v5           #temperatureThreshold:I
    .end local v6           #lockFrequency:I
    .end local v7           #cpuMaxCore:I
    .end local v8           #limitChargingCurrent:I
    .end local v9           #displayBrightness:I
    .end local v10           #LcdFPS:I
    .end local v11           #flashLedDisable:Z
    .end local v12           #aclOn:Z
    .end local v13           #recordingStop:Z
    .end local v19           #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .local v2, tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    :goto_e
    move-object/from16 v19, v2

    .line 929
    .end local v2           #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .restart local v19       #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    goto/16 :goto_4

    .line 870
    .restart local v4       #name:Ljava/lang/String;
    :cond_d
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    goto/16 :goto_5

    .line 874
    .restart local v5       #temperatureThreshold:I
    .restart local v6       #lockFrequency:I
    :cond_e
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    goto/16 :goto_6

    .line 875
    :cond_f
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_10

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_10

    .line 876
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    goto/16 :goto_6

    .line 877
    :cond_10
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_5

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_5

    .line 878
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    goto/16 :goto_6

    .line 883
    .restart local v7       #cpuMaxCore:I
    :cond_11
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    goto/16 :goto_7

    .line 884
    :cond_12
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_13

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_13

    .line 885
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    goto/16 :goto_7

    .line 886
    :cond_13
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_6

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_6

    .line 887
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    goto/16 :goto_7

    .line 893
    .restart local v8       #limitChargingCurrent:I
    :cond_14
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    goto/16 :goto_8

    .line 894
    :cond_15
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_16

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_16

    .line 895
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    goto/16 :goto_8

    .line 896
    :cond_16
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_7

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_7

    .line 897
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    goto/16 :goto_8

    .line 902
    .restart local v10       #LcdFPS:I
    :cond_17
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v10

    goto/16 :goto_9

    .line 903
    :cond_18
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_19

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_19

    .line 904
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v10

    goto/16 :goto_9

    .line 905
    :cond_19
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_8

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_8

    .line 906
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v10

    goto/16 :goto_9

    .line 909
    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 911
    .restart local v11       #flashLedDisable:Z
    :cond_1b
    const/4 v12, 0x0

    goto/16 :goto_b

    .line 915
    .restart local v9       #displayBrightness:I
    .restart local v12       #aclOn:Z
    :cond_1c
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    goto/16 :goto_c

    .line 916
    :cond_1d
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_1e

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_1e

    .line 917
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    goto/16 :goto_c

    .line 918
    :cond_1e
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_b

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_b

    .line 919
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto/16 :goto_c

    .line 922
    :cond_1f
    const/4 v13, 0x0

    goto/16 :goto_d

    .line 925
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #temperatureThreshold:I
    .end local v6           #lockFrequency:I
    .end local v7           #cpuMaxCore:I
    .end local v8           #limitChargingCurrent:I
    .end local v9           #displayBrightness:I
    .end local v10           #LcdFPS:I
    .end local v11           #flashLedDisable:Z
    .end local v12           #aclOn:Z
    :catch_0
    move-exception v14

    .line 926
    .local v14, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception in setCurrentLevelfromTemp ::"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v19

    .end local v19           #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .restart local v2       #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    goto/16 :goto_e
.end method

.method public static getMonitorInstance()Lcom/android/server/ssrm/Monitor;
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    return-object v0
.end method

.method public static getMonitorInstance(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Landroid/app/IActivityManager;)Lcom/android/server/ssrm/Monitor;
    .locals 1
    .parameter "ctx"
    .parameter "pms"
    .parameter "activityManager"

    .prologue
    .line 483
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Lcom/android/server/ssrm/Monitor;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ssrm/Monitor;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Landroid/app/IActivityManager;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    .line 486
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    return-object v0
.end method

.method public static getThermistorTimerDuration()J
    .locals 2

    .prologue
    .line 1858
    sget-wide v0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    return-wide v0
.end method

.method private static initFeatureAndParameter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 78
    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CAMERA_DRAMA_SHOT:Z

    .line 80
    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CAMERA_DUAL_RECORD:Z

    .line 81
    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_BROWSER_BRIGHTNESS:Z

    .line 82
    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    .line 83
    const/16 v0, 0xf9

    sput v0, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    .line 84
    const-string v0, "siop_jf_att"

    if-eqz v0, :cond_1

    const-string v0, "siop_jf_att"

    const-string v1, "j6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const/16 v0, 0xc8

    sput v0, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    .line 88
    :cond_1
    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_BROWSER_BOOSTER:Z

    .line 91
    :cond_2
    return-void
.end method

.method private static isFPSValid(I)Z
    .locals 1
    .parameter "fps"

    .prologue
    .line 1972
    packed-switch p0, :pswitch_data_0

    .line 1978
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1976
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1972
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final limitBrightness(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 1085
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mPMS:Lcom/android/server/power/PowerManagerService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/power/PowerManagerService;->setMasterBrightnessLimit(II)V

    .line 1089
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    if-eqz v0, :cond_0

    .line 1090
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/ssrm/Monitor;->notifyLimitBrightness(IZ)V

    .line 1092
    :cond_0
    return-void
.end method

.method private final limitCPUCore(I)V
    .locals 6
    .parameter "activeCore"

    .prologue
    .line 1018
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 1019
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_CORE_NUM_MAX"

    const/16 v3, 0xf

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    .line 1020
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    .line 1021
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    if-eqz v0, :cond_3

    .line 1022
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCPUCore:: mSupportedCpuCoreNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 1028
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 1029
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1035
    :cond_2
    :goto_1
    return-void

    .line 1024
    :cond_3
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "limitCPUCore:: mSupportedCpuCoreNum = null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1031
    :cond_4
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1032
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_1
.end method

.method private static limitCPUFreq(I)V
    .locals 8
    .parameter "freq"

    .prologue
    .line 964
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCPUFreq:: freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mDisableCPUControl:Z

    if-eqz v0, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 972
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_ARM_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    .line 973
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    .line 975
    :cond_2
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    if-eqz v0, :cond_0

    .line 979
    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    .line 980
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "limitCPUFreq:: SIOP CPU freq max lock is released."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    .line 985
    :cond_3
    const/4 v6, 0x0

    .line 986
    .local v6, curFreq:I
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    array-length v7, v0

    .line 987
    .local v7, length:I
    :goto_1
    if-lez v7, :cond_4

    .line 988
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    add-int/lit8 v1, v7, -0x1

    aget v0, v0, v1

    if-lt v0, p0, :cond_5

    .line 989
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    add-int/lit8 v1, v7, -0x1

    aget v6, v0, v1

    .line 995
    :cond_4
    if-eqz v6, :cond_0

    .line 996
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    .line 997
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 998
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0

    .line 992
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_1
.end method

.method private static limitChargingCurrent(I)V
    .locals 3
    .parameter "currentLevel"

    .prologue
    .line 1003
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitChargingCurrent : currentLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 1005
    const/16 p0, 0x64

    .line 1007
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-boolean v0, v0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isChargingCurrentValid:Z

    if-eqz v0, :cond_1

    .line 1008
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor$SysfsTable;->chargingCurrentPath:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    .line 1010
    :cond_1
    return-void
.end method

.method private final limitFlashLed(Z)V
    .locals 3
    .parameter "bLimit"

    .prologue
    .line 1039
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    if-nez v0, :cond_0

    .line 1045
    :goto_0
    return-void

    .line 1042
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitFlashLed:: bLimit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    sput-boolean p1, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    goto :goto_0
.end method

.method private final limitRecording(Z)V
    .locals 3
    .parameter "recordingStop"

    .prologue
    .line 1049
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    if-nez v0, :cond_0

    .line 1055
    :goto_0
    return-void

    .line 1052
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitRecording:: recordingStop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    sput-boolean p1, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    goto :goto_0
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 1862
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 1866
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1867
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_0
    return-void
.end method

.method private static final notifyLimitBrightness(IZ)V
    .locals 3
    .parameter "brightness"
    .parameter "bForce"

    .prologue
    .line 1095
    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    if-ne v0, p0, :cond_0

    if-eqz p1, :cond_1

    .line 1096
    :cond_0
    sput p0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    .line 1098
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyLimitBrightness() : brightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isBootCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v1, "max_brightness"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1100
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1102
    :cond_1
    return-void
.end method

.method private static onCameraDualRecording(Z)V
    .locals 3
    .parameter "statusValue"

    .prologue
    const/4 v2, 0x0

    .line 1736
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1737
    :cond_0
    if-eqz p0, :cond_4

    .line 1738
    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    aget-object v1, v1, v2

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v1

    if-gt v0, v1, :cond_1

    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1739
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    aget-object v0, v0, v2

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    .line 1747
    :cond_2
    :goto_0
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1748
    if-eqz p0, :cond_5

    .line 1749
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    const/16 v1, 0x15e

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    .line 1754
    :cond_3
    :goto_1
    return-void

    .line 1743
    :cond_4
    sget v0, Lcom/android/server/ssrm/Monitor;->mLastBrightnessBySIOP:I

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    goto :goto_0

    .line 1751
    :cond_5
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private static onCameraRecording(Z)V
    .locals 3
    .parameter "statusValue"

    .prologue
    const/4 v2, 0x0

    .line 1723
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1724
    :cond_0
    if-eqz p0, :cond_3

    .line 1725
    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    aget-object v1, v1, v2

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v1

    if-gt v0, v1, :cond_1

    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1726
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    aget-object v0, v0, v2

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    .line 1733
    :cond_2
    :goto_0
    return-void

    .line 1730
    :cond_3
    sget v0, Lcom/android/server/ssrm/Monitor;->mLastBrightnessBySIOP:I

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    goto :goto_0
.end method

.method private static onPowerSavingModeChanged(Z)V
    .locals 5
    .parameter "powerSavingMode"

    .prologue
    .line 2004
    const-string v0, "/sys/class/power_supply/battery/test_charge_current"

    .line 2005
    .local v0, CHARGING_CURRENT_PATH:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/test_charge_current"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2006
    .local v1, ccpFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 2008
    .local v2, charingCurrentPathExist:Z
    :goto_0
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Z

    .line 2010
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 2011
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Z

    if-eqz v3, :cond_3

    .line 2012
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "POWERSAVING_CHANGED:: test_charge_current = 530"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    const-string v3, "/sys/class/power_supply/battery/test_charge_current"

    const/16 v4, 0x212

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    .line 2020
    :cond_0
    :goto_1
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    if-eqz v3, :cond_1

    .line 2021
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    invoke-virtual {v3}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 2023
    :cond_1
    return-void

    .line 2006
    .end local v2           #charingCurrentPathExist:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 2015
    .restart local v2       #charingCurrentPathExist:Z
    :cond_3
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "POWERSAVING_CHANGED:: test_charge_current = 460"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    const-string v3, "/sys/class/power_supply/battery/test_charge_current"

    const/16 v4, 0x1cc

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private static onSIPIntentReceived(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 2046
    invoke-static {}, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->getInstance()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    move-result-object v0

    .line 2047
    .local v0, sipStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    if-nez v0, :cond_0

    .line 2094
    :goto_0
    return-void

    .line 2051
    :cond_0
    monitor-enter v0

    .line 2052
    :try_start_0
    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    .line 2053
    const-string v1, "PID"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPPidReport:I

    .line 2055
    iget-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    if-eqz v1, :cond_1

    .line 2056
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "onSIPIntentReceived:: SIP visility was updated more than two times in 100ms."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2058
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    .line 2059
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/ssrm/Monitor$5;

    invoke-direct {v2}, Lcom/android/server/ssrm/Monitor$5;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized readThermistorFile()Z
    .locals 11

    .prologue
    .line 1116
    monitor-enter p0

    const/4 v5, 0x0

    .line 1117
    .local v5, mAPTempUpdated:Z
    const/4 v6, 0x0

    .line 1119
    .local v6, mCPTempUpdated:Z
    :try_start_0
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-boolean v8, v8, Lcom/android/server/ssrm/Monitor$SysfsTable;->isApTemperatureValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 1120
    const/4 v0, 0x0

    .line 1123
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-object v9, v9, Lcom/android/server/ssrm/Monitor$SysfsTable;->apTemperaturePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1124
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 1125
    .local v7, strTemp:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1126
    sget v8, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    sput v8, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    .line 1127
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    .line 1128
    sget v8, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    sget v9, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    if-eq v8, v9, :cond_0

    .line 1129
    const/4 v5, 0x1

    .line 1136
    :cond_0
    if-eqz v1, :cond_1

    .line 1137
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 1144
    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v7           #strTemp:Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_4
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-boolean v8, v8, Lcom/android/server/ssrm/Monitor$SysfsTable;->isCpTemperatureValid:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_3

    .line 1145
    const/4 v2, 0x0

    .line 1148
    .local v2, bufCP:Ljava/io/BufferedReader;
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-object v9, v9, Lcom/android/server/ssrm/Monitor$SysfsTable;->cpTemperaturePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1149
    .end local v2           #bufCP:Ljava/io/BufferedReader;
    .local v3, bufCP:Ljava/io/BufferedReader;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 1150
    .restart local v7       #strTemp:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 1151
    sget v8, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    sput v8, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    .line 1152
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    .line 1153
    sget v8, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    sget v9, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    if-eq v8, v9, :cond_2

    .line 1154
    const/4 v6, 0x1

    .line 1161
    :cond_2
    if-eqz v3, :cond_3

    .line 1162
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1170
    .end local v3           #bufCP:Ljava/io/BufferedReader;
    .end local v7           #strTemp:Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_8
    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIOP:: Current AP = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", CP = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1172
    if-nez v5, :cond_4

    if-eqz v6, :cond_7

    .line 1173
    :cond_4
    const/4 v8, 0x1

    .line 1175
    :goto_2
    monitor-exit p0

    return v8

    .line 1132
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 1133
    .local v4, e:Ljava/io/IOException;
    :goto_3
    :try_start_9
    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading current temperature : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1136
    if-eqz v0, :cond_1

    .line 1137
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 1139
    :catch_1
    move-exception v4

    .line 1140
    :try_start_b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 1116
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1135
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    .line 1136
    :goto_4
    if-eqz v0, :cond_5

    .line 1137
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 1135
    :cond_5
    :goto_5
    :try_start_d
    throw v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1157
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v2       #bufCP:Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    .line 1158
    .restart local v4       #e:Ljava/io/IOException;
    :goto_6
    :try_start_e
    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading current temperature : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1161
    if-eqz v2, :cond_3

    .line 1162
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_1

    .line 1164
    :catch_3
    move-exception v4

    .line 1165
    :try_start_10
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_1

    .line 1160
    .end local v4           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v8

    .line 1161
    :goto_7
    if-eqz v2, :cond_6

    .line 1162
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 1160
    :cond_6
    :goto_8
    :try_start_12
    throw v8

    .line 1175
    .end local v2           #bufCP:Ljava/io/BufferedReader;
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 1139
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    .line 1140
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1164
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #bufCP:Ljava/io/BufferedReader;
    :catch_5
    move-exception v4

    .line 1165
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1164
    .end local v2           #bufCP:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #bufCP:Ljava/io/BufferedReader;
    .restart local v7       #strTemp:Ljava/lang/String;
    :catch_6
    move-exception v4

    .line 1165
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1139
    .end local v3           #bufCP:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_7
    move-exception v4

    .line 1140
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    .line 1160
    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #strTemp:Ljava/lang/String;
    .restart local v3       #bufCP:Ljava/io/BufferedReader;
    :catchall_3
    move-exception v8

    move-object v2, v3

    .end local v3           #bufCP:Ljava/io/BufferedReader;
    .restart local v2       #bufCP:Ljava/io/BufferedReader;
    goto :goto_7

    .line 1157
    .end local v2           #bufCP:Ljava/io/BufferedReader;
    .restart local v3       #bufCP:Ljava/io/BufferedReader;
    :catch_8
    move-exception v4

    move-object v2, v3

    .end local v3           #bufCP:Ljava/io/BufferedReader;
    .restart local v2       #bufCP:Ljava/io/BufferedReader;
    goto :goto_6

    .line 1135
    .end local v2           #bufCP:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_4
    move-exception v8

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 1132
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_9
    move-exception v4

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public static declared-synchronized removeboostRequestfromAMS(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1786
    const-class v2, Lcom/android/server/ssrm/Monitor;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1787
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1788
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1789
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    monitor-exit v2

    return-void

    .line 1786
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static sendSIOPChangedStickyIntent()V
    .locals 5

    .prologue
    .line 1064
    const-string v1, "flash_led_disable"

    .line 1065
    .local v1, EXTRA_FLASH_LED_DISABLE:Ljava/lang/String;
    const-string v0, "camera_recording_disable"

    .line 1067
    .local v0, EXTRA_CAMERA_RECORDING_DISABLE:Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash_:Z

    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    if-ne v2, v3, :cond_0

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording_:Z

    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    if-ne v2, v3, :cond_0

    .line 1082
    :goto_0
    return-void

    .line 1072
    :cond_0
    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash_:Z

    .line 1073
    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording_:Z

    .line 1075
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSIOPChangedStickyIntent:: EXTRA_FLASH_LED_DISABLE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", EXTRA_CAMERA_RECORDING_DISABLE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    const-string v3, "flash_led_disable"

    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1079
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    const-string v3, "camera_recording_disable"

    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1081
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static sendSIOPUpdateMessage(Z)V
    .locals 2
    .parameter "forceUpdate"

    .prologue
    .line 2221
    if-eqz p0, :cond_0

    .line 2222
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    .line 2224
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2225
    .local v0, msg1:Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2226
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2227
    return-void
.end method

.method private declared-synchronized setCurrentLevelfromTemp()V
    .locals 18

    .prologue
    .line 663
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    invoke-virtual {v2}, Lcom/android/server/ssrm/PolicyReader;->getThermistorDataListAP()Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    .line 664
    sget-object v2, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_1

    .line 812
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 668
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-nez v2, :cond_2

    .line 669
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/Monitor;->createSIOPLevels()V

    .line 672
    :cond_2
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-eqz v2, :cond_f

    .line 673
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/Monitor;->generateMergedSIOPLevel()Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-result-object v2

    sput-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 713
    :goto_1
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-eqz v2, :cond_0

    .line 717
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    sput v2, Lcom/android/server/ssrm/Monitor;->mLastBrightnessBySIOP:I

    .line 721
    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mLastCameraDualRecording:Z

    if-eqz v2, :cond_8

    .line 722
    const-string v2, "ja"

    const-string v3, "jf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "jf"

    const-string v3, "jf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 723
    :cond_3
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "Camera Dual Recording running!!!"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const/16 v16, 0x0

    .line 725
    .local v16, tempOne:I
    const/16 v17, 0x0

    .line 726
    .local v17, tempTwo:I
    const-string v2, "ja"

    const-string v3, "jf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 727
    const/16 v16, 0x1b8

    .line 728
    const/16 v17, 0x1e0

    .line 738
    :cond_4
    :goto_2
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempOne :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , tempTwo :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    sget v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    move/from16 v0, v16

    if-ge v2, v0, :cond_15

    .line 740
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sput-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 749
    :cond_5
    :goto_3
    const/4 v8, -0x1

    .line 750
    .local v8, tempBrightness:I
    const/4 v11, 0x0

    .line 752
    .local v11, tempAcl:Z
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-eqz v2, :cond_8

    .line 753
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    .line 754
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    if-ge v2, v3, :cond_17

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    .line 761
    :cond_6
    :goto_4
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_7
    const/4 v11, 0x1

    .line 763
    :goto_5
    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v10

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v12

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    .line 764
    .local v1, tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    sput-object v1, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 765
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "Modified mCurrentSIOPObject\'s brightness and ACL as per camera\'s SIOP level"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .end local v1           #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .end local v8           #tempBrightness:I
    .end local v11           #tempAcl:Z
    .end local v16           #tempOne:I
    .end local v17           #tempTwo:I
    :cond_8
    const/16 v13, 0x4b

    .line 772
    .local v13, TMAP_CHARGING_MAX:I
    const-string v2, "ja"

    const-string v3, "jf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "KOR"

    const-string v3, "CHN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mTMapOn:Z

    if-eqz v2, :cond_a

    .line 775
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    const/16 v3, 0x4b

    if-le v2, v3, :cond_a

    .line 777
    :cond_9
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v3, 0x4b

    #setter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2402(Lcom/android/server/ssrm/Monitor$SIOPLevel;I)I

    .line 781
    :cond_a
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Merged SIOPLevel Object :: Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ArmFreq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->realOPFreq:I
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ArmCoreNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ChargeCurrent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", LCDBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Flash = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ACL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Temp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", recordingStop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    sget-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_BROWSER_BRIGHTNESS:Z

    if-eqz v2, :cond_c

    sget v2, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    .line 793
    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mBrightnessAdjustedForBrowser:Z

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessEnabled:Z

    if-nez v2, :cond_c

    .line 794
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    sget v3, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    if-gt v2, v3, :cond_b

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    .line 796
    :cond_b
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "setCurrentLevelfromTemp:: displayBrightness = 250cd"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v3, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    #setter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2502(Lcom/android/server/ssrm/Monitor$SIOPLevel;I)I

    .line 802
    :cond_c
    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    if-eqz v2, :cond_d

    .line 803
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/ssrm/Monitor;->limitChargingCurrent(I)V

    .line 806
    :cond_d
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    invoke-virtual {v2, v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 807
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ssrm/Monitor;->changeState(Lcom/android/server/ssrm/Monitor$SIOPLevel;Lcom/android/server/ssrm/Monitor$SIOPLevel;)V

    .line 808
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v2, Lcom/android/server/ssrm/Monitor;->mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 811
    :cond_e
    const-string v2, "sys.siop.curlevel"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 663
    .end local v13           #TMAP_CHARGING_MAX:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 677
    :cond_f
    :try_start_2
    sget v2, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    if-gt v2, v3, :cond_11

    .line 678
    sget v2, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    const/16 v3, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v15

    .line 679
    .local v15, prevSIOPLevelAP:I
    sget v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    const/16 v3, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v14

    .line 686
    .local v14, nextSIOPLevelAP:I
    :goto_6
    if-le v15, v14, :cond_12

    .line 687
    add-int/lit8 v2, v14, 0x1

    sput v2, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    .line 693
    :goto_7
    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mSIOPControlForCameraShooting:Z

    if-eqz v2, :cond_10

    .line 694
    sget v2, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_10

    sget v2, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    const/4 v3, 0x7

    if-ge v2, v3, :cond_10

    .line 695
    const/4 v2, 0x3

    sput v2, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    .line 696
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "SIOPControlForCameraShooting:: mIntCurrentSIOPLevelAP = 3"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_10
    new-instance v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v3, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v3

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v4, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v4

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v5, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v5

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v6, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v6

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v7, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v7

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v9, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v9

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v9, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v9

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v10, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v10

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v10

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v12, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v12

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v11

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsAP:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v12, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    aget-object v2, v2, v12

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v12

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    goto/16 :goto_1

    .line 681
    .end local v14           #nextSIOPLevelAP:I
    .end local v15           #prevSIOPLevelAP:I
    :cond_11
    sget v2, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    const/16 v3, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v15

    .line 682
    .restart local v15       #prevSIOPLevelAP:I
    sget v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v14

    .restart local v14       #nextSIOPLevelAP:I
    goto/16 :goto_6

    .line 689
    :cond_12
    sput v14, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    goto/16 :goto_7

    .line 729
    .end local v14           #nextSIOPLevelAP:I
    .end local v15           #prevSIOPLevelAP:I
    .restart local v16       #tempOne:I
    .restart local v17       #tempTwo:I
    :cond_13
    const-string v2, "jf"

    const-string v3, "jf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 730
    const-string v2, "siop_jf_att"

    const-string v3, "j6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 731
    const/16 v16, 0x1b8

    .line 732
    const/16 v17, 0x1e0

    goto/16 :goto_2

    .line 734
    :cond_14
    const/16 v16, 0x1fe

    .line 735
    const/16 v17, 0x226

    goto/16 :goto_2

    .line 741
    :cond_15
    sget v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    move/from16 v0, v16

    if-lt v2, v0, :cond_16

    sget v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    move/from16 v0, v17

    if-ge v2, v0, :cond_16

    .line 742
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sput-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 743
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "mCurrentSIOPObjectCamera :: index 1"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 744
    :cond_16
    sget v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    move/from16 v0, v17

    if-lt v2, v0, :cond_5

    .line 745
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sput-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 746
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "mCurrentSIOPObjectCamera :: index 2"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 754
    .restart local v8       #tempBrightness:I
    .restart local v11       #tempAcl:Z
    :cond_17
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    goto/16 :goto_4

    .line 755
    :cond_18
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    .line 756
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    goto/16 :goto_4

    .line 757
    :cond_19
    const/4 v2, -0x1

    if-ne v8, v2, :cond_6

    .line 758
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    goto/16 :goto_4

    .line 761
    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_5
.end method

.method public static setThermistorTimerDuration(J)V
    .locals 4
    .parameter "duration"

    .prologue
    const-wide/16 v2, 0x3e8

    .line 1848
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1849
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    .line 1855
    :goto_0
    return-void

    .line 1850
    :cond_0
    cmp-long v0, p0, v2

    if-lez v0, :cond_1

    .line 1851
    sput-wide p0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    goto :goto_0

    .line 1853
    :cond_1
    sput-wide v2, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    goto :goto_0
.end method


# virtual methods
.method changeState(Lcom/android/server/ssrm/Monitor$SIOPLevel;Lcom/android/server/ssrm/Monitor$SIOPLevel;)V
    .locals 3
    .parameter "currLevel"
    .parameter "lastLevel"

    .prologue
    .line 938
    if-nez p1, :cond_0

    .line 939
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState : currLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  lastLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :goto_0
    return-void

    .line 943
    :cond_0
    if-eqz p2, :cond_1

    .line 944
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState : Name :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState :  freq : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_1
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitCPUFreq(I)V

    .line 949
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/Monitor;->limitCPUCore(I)V

    .line 951
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    if-eqz v0, :cond_2

    .line 952
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitChargingCurrent(I)V

    .line 955
    :cond_2
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/Monitor;->limitFlashLed(Z)V

    .line 956
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/Monitor;->limitRecording(Z)V

    .line 957
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    .line 958
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/Monitor;->aclOn(Z)V

    .line 960
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->sendSIOPChangedStickyIntent()V

    goto/16 :goto_0
.end method

.method getSIOPLevelByTemp(II)I
    .locals 2
    .parameter "temp"
    .parameter "type"

    .prologue
    .line 630
    packed-switch p2, :pswitch_data_0

    .line 653
    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    .line 632
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 633
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-virtual {v1}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getSurfaceTemp()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 634
    if-eqz v0, :cond_0

    .line 637
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 632
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 640
    :cond_2
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListAP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 642
    .end local v0           #i:I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 643
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-virtual {v1}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getSurfaceTemp()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 644
    if-eqz v0, :cond_0

    .line 647
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 642
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 650
    :cond_4
    sget-object v1, Lcom/android/server/ssrm/Monitor;->thermistorDataSetListCP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 3

    .prologue
    .line 468
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mInit:Z

    if-eqz v1, :cond_0

    .line 480
    :goto_0
    return-void

    .line 471
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/ssrm/Monitor;->mInit:Z

    .line 474
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->initHandler()V

    .line 476
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "init:: let\'s read SSRM policy XML"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 478
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 479
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public initHandler()V
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v0, Lcom/android/server/ssrm/Monitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/Monitor$1;-><init>(Lcom/android/server/ssrm/Monitor;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public registerIntentFilters()V
    .locals 5

    .prologue
    .line 1228
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    .line 1229
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1230
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1231
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1232
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1233
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1234
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1235
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CP_SIOP_LEVEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1236
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1237
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1238
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.intent.action.DVFS_FG_PROCESS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1239
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1240
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1241
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1242
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1243
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1244
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1245
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1246
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1247
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SECURE_PLAYBACK_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1248
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SECURE_PLAYBACK_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1249
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1251
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    .line 1252
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1253
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1254
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1256
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mSSRMStatusFilter:Landroid/content/IntentFilter;

    .line 1257
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSSRMStatusFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1258
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1259
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSSRMStatusFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1263
    :goto_0
    return-void

    .line 1261
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSSRMStatusFilter:Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 497
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 498
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "In Monitor:: Thread"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->initHandler()V

    .line 502
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 503
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 2097
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "Startng TMU Observer"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    new-instance v0, Lcom/android/server/ssrm/Monitor$TMUObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/Monitor$TMUObserver;-><init>(Lcom/android/server/ssrm/Monitor$1;)V

    .line 2099
    .local v0, tmuObserv:Lcom/android/server/ssrm/Monitor$TMUObserver;
    const-string v1, "TMUSTATE"

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/Monitor$TMUObserver;->startObserving(Ljava/lang/String;)V

    .line 2100
    return-void
.end method
