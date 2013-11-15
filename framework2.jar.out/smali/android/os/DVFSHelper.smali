.class public Landroid/os/DVFSHelper;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DVFSHelper$PackageInfo;
    }
.end annotation


# static fields
.field public static final ACTION_AMS_RESUME:Ljava/lang/String; = "ActivityManager_resume"

.field public static final ACTION_GALLERY_TOUCH:Ljava/lang/String; = "Gallery_touch"

.field public static final ACTION_LAUNCHER_HOMEMENU:Ljava/lang/String; = "Launcher_homemenu"

.field public static final ACTION_LAUNCHER_TOUCH:Ljava/lang/String; = "Launcher_touch"

.field public static final ACTION_LISTVIEW_SCROLL:Ljava/lang/String; = "ListView_scroll"

.field public static final ACTION_PWM_ROTATION:Ljava/lang/String; = "PhoneWindowManager_rotation"

.field public static final ACTION_SHAREMUSIC_GROUPPLAY:Ljava/lang/String; = "ShareMusic_groupPlay"

.field private static final BASE_MODEL:Ljava/lang/String; = "jf"

.field private static final BOOST_PERMISSION:Ljava/lang/String; = "com.sec.android.app.twdvfs.DVFS_BOOSTER_PERMISSION"

.field public static final BOOST_TYPE_LCD_FRAME_RATE:I = 0x4

.field public static final BOOST_TYPE_TOUCH:I = 0x1

.field public static final BO_BUS_MAX:J = 0x8L

.field public static final BO_CPU_MAX:J = 0x2L

.field public static final BO_CUSTOM_VALUE:J = 0x20L

.field private static final CAMERA_BOOSTING_TIMEOUT:I = 0x7d0

.field private static final CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.camera.Camera"

.field public static LIST_SCROLL_BOOSTER_CORE_NUM:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "DVFSHelper"

.field public static final OPTION_BUS_MAX:J = 0x8L

.field public static final OPTION_CPU_CORE_NUM_MAX:J = 0x4L

.field public static final OPTION_CPU_MAX:J = 0x2L

.field public static final OPTION_NONE:J = 0x0L

.field public static final PACKAGES_FOR_BOOST_ALL_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo; = null

.field public static final PACKAGES_FOR_LCD_FRAME_RATE_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo; = null

.field private static final ROTATION_BOOSTING_TIMEOUT:I = 0x1f4

.field public static final TYPE_BUS_MAX:I = 0x14

.field public static final TYPE_BUS_MIN:I = 0x13

.field public static final TYPE_CPU_CORE_NUM_MAX:I = 0xf

.field public static final TYPE_CPU_CORE_NUM_MIN:I = 0xe

.field public static final TYPE_CPU_MAX:I = 0xd

.field public static final TYPE_CPU_MIN:I = 0xc

.field public static final TYPE_EMMC_BURST_MODE:I = 0x12

.field public static final TYPE_GPU_MAX:I = 0x11

.field public static final TYPE_GPU_MIN:I = 0x10

.field public static final TYPE_NONE:I = 0xb

.field private static final isEngBinary:Z

.field private static mCPUCoreTable:[I

.field private static mCPUFrequencyTable:[I

.field private static mCameraCPUBooster:Landroid/os/DVFSHelper;

.field private static mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field private static mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field private static mToken:I


# instance fields
.field busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private cpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private mContext:Landroid/content/Context;

.field private mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field private mCustomValue:I

.field private mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentExtra:Landroid/content/Intent;

.field private volatile mIsAcquired:Z

.field private mOption:J

.field private mPermissionGranted:Z

.field private mPkgName:Ljava/lang/String;

.field private mRandom:Ljava/util/Random;

.field private mSupportedBUSFrequency:[I

.field private mSupportedCPUCoreNum:[I

.field private mSupportedCPUFrequency:[I

.field private mSupportedGPUFrequency:[I

.field private mType:I

.field mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 49
    sput v4, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 54
    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sput v6, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 84
    :cond_0
    sput v4, Landroid/os/DVFSHelper;->mToken:I

    .line 88
    new-array v0, v4, [Landroid/os/DVFSHelper$PackageInfo;

    sput-object v0, Landroid/os/DVFSHelper;->PACKAGES_FOR_LCD_FRAME_RATE_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo;

    .line 584
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    .line 586
    const/16 v0, 0xf

    new-array v0, v0, [Landroid/os/DVFSHelper$PackageInfo;

    new-instance v1, Landroid/os/DVFSHelper$PackageInfo;

    const-string v2, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-direct {v1, v2, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/os/DVFSHelper$PackageInfo;

    const-string v2, "com.aurorasoftworks.quadrant.ui.professional"

    invoke-direct {v1, v2, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.redlicense.benchmark.sqlite"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.antutu.ABenchMark"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.greenecomputing.linpack"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.glbenchmark.glbenchmark25"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.glbenchmark.glbenchmark21"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "ca.primatelabs.geekbench2"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.eembc.coremark"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.flexycore.caffeinemark"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "eu.chainfire.cfbench"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "gr.androiddev.BenchmarkPi"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.smartbench.twelve"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.passmark.pt_mobile"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/DVFSHelper;->PACKAGES_FOR_BOOST_ALL_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo;

    .line 643
    sput-object v5, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    .line 644
    sput-object v5, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 646
    sput-object v5, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 647
    sput-object v5, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 712
    sput-object v5, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "type"

    .prologue
    .line 93
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 6
    .parameter "context"
    .parameter "type"
    .parameter "option"

    .prologue
    .line 97
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "type"
    .parameter "option"

    .prologue
    .line 102
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJI)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJI)V
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .parameter "type"
    .parameter "option"
    .parameter "customValue"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v2, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 60
    iput-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 62
    iput-object v2, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 63
    const/16 v0, 0xb

    iput v0, p0, Landroid/os/DVFSHelper;->mType:I

    .line 64
    iput v3, p0, Landroid/os/DVFSHelper;->mId:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    .line 67
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    .line 69
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 70
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 72
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 73
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 74
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 75
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 77
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 78
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 79
    iput-object v2, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 80
    iput-object v2, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 81
    iput-object v2, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 83
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    .line 86
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    .line 106
    if-nez p1, :cond_0

    .line 107
    const-string v0, "DVFSHelper"

    const-string v1, "DVFSHelper:: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-object p1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 112
    iget-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const-string v1, "CustomFrequencyManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 113
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_1

    .line 114
    const-string v0, "DVFSHelper"

    const-string v1, "DVFSHelper:: failed to load CFMS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_1
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DVFSHelper:: New instance is created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 121
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 122
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 123
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedSysBusFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    .line 133
    sget v0, Landroid/os/DVFSHelper;->mToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/DVFSHelper;->mToken:I

    .line 134
    if-eqz p2, :cond_2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 140
    :goto_1
    iput p3, p0, Landroid/os/DVFSHelper;->mType:I

    .line 141
    iput-wide p4, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 142
    invoke-direct {p0}, Landroid/os/DVFSHelper;->getRandomNum()I

    move-result v0

    iput v0, p0, Landroid/os/DVFSHelper;->mId:I

    .line 143
    iput p6, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    goto/16 :goto_0

    .line 137
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/os/DVFSHelper;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/os/DVFSHelper;->sendProxyBenchMarkStatusToSSRM(Z)V

    return-void
.end method

.method private getRandomNum()I
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 615
    sget-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    if-eqz v0, :cond_0

    .line 616
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    return-void
.end method

.method private sendProxyBenchMarkStatusToSSRM(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 703
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 704
    .local v0, benchmarkIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "BenchmarkBooster"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 707
    const-string v1, "PackageName"

    const-string v2, "com.sec.android.app.camera.Camera.DvfsHelperProxy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    iget-object v1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 709
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 224
    return-void
.end method

.method public acquire(I)V
    .locals 22
    .parameter "timeout"

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    if-nez v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const-string v1, "DVFSHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire:: timeout = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mIsAcquired = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v1, :cond_2

    .line 238
    const-string v1, "DVFSHelper"

    const-string v2, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/os/DVFSHelper;->release()V

    .line 243
    :cond_2
    const/16 v17, 0x0

    .line 244
    .local v17, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 248
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 380
    :pswitch_0
    const-string v1, "DVFSHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire:: the request type doesn\'t implemented yet. mType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/os/DVFSHelper;->mType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_5

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 387
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_6

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 390
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_7

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 394
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_8

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 397
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    goto/16 :goto_0

    .line 250
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v1, :cond_4

    .line 252
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v4, 0x4

    cmp-long v1, v1, v4

    if-nez v1, :cond_9

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 259
    .local v3, coreNum:I
    :goto_2
    const/4 v1, 0x2

    if-lt v3, v1, :cond_4

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v2, 0x4

    move/from16 v0, p1

    int-to-long v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto :goto_1

    .line 255
    .end local v3           #coreNum:I
    :cond_9
    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 256
    .local v21, stringCoreNum:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .restart local v3       #coreNum:I
    goto :goto_2

    .line 266
    .end local v3           #coreNum:I
    .end local v21           #stringCoreNum:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v1, :cond_4

    .line 267
    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 268
    .restart local v21       #stringCoreNum:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 270
    .restart local v3       #coreNum:I
    if-lez v3, :cond_4

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v2, 0x5

    move/from16 v0, p1

    int-to-long v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 277
    .end local v3           #coreNum:I
    .end local v21           #stringCoreNum:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v1, :cond_4

    .line 278
    const/4 v6, -0x1

    .line 279
    .local v6, freq:I
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v4, 0x2

    cmp-long v1, v1, v4

    if-nez v1, :cond_c

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v2, 0x0

    aget v6, v1, v2

    .line 289
    :cond_a
    :goto_3
    const-string v1, "ja"

    const-string v2, "jf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x186a00

    if-le v6, v1, :cond_b

    .line 290
    const v1, 0x186a00

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v6

    .line 293
    :cond_b
    const/4 v1, -0x1

    if-eq v6, v1, :cond_4

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v5, 0x6

    move/from16 v0, p1

    int-to-long v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 281
    :cond_c
    if-eqz v17, :cond_a

    .line 282
    const-string v1, "CPU"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 283
    .local v19, cpuOption:Ljava/lang/String;
    if-eqz v19, :cond_a

    .line 284
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 300
    .end local v6           #freq:I
    .end local v19           #cpuOption:Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v1, :cond_4

    .line 301
    const/4 v6, -0x1

    .line 302
    .restart local v6       #freq:I
    if-eqz v17, :cond_d

    .line 303
    const-string v1, "CPU"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 304
    .restart local v19       #cpuOption:Ljava/lang/String;
    if-eqz v19, :cond_d

    .line 305
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 309
    .end local v19           #cpuOption:Ljava/lang/String;
    :cond_d
    const/4 v1, -0x1

    if-eq v6, v1, :cond_4

    .line 310
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v5, 0x7

    move/from16 v0, p1

    int-to-long v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 316
    .end local v6           #freq:I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v1, :cond_4

    .line 317
    const/4 v6, -0x1

    .line 318
    .restart local v6       #freq:I
    if-eqz v17, :cond_e

    .line 319
    const-string v1, "GPU"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 320
    .local v20, gpuOption:Ljava/lang/String;
    if-eqz v20, :cond_e

    .line 321
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 325
    .end local v20           #gpuOption:Ljava/lang/String;
    :cond_e
    const/4 v1, -0x1

    if-eq v6, v1, :cond_4

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v5, 0x1

    move/from16 v0, p1

    int-to-long v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 332
    .end local v6           #freq:I
    :pswitch_6
    const/4 v6, -0x1

    .line 334
    .restart local v6       #freq:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_f

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 336
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 339
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v5, 0x8

    move/from16 v0, p1

    int-to-long v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_4

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    goto/16 :goto_1

    .line 348
    .end local v6           #freq:I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v1, :cond_4

    .line 349
    const/4 v9, -0x1

    .line 350
    .local v9, busMinfreq:I
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v4, 0x8

    cmp-long v1, v1, v4

    if-nez v1, :cond_11

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    const/4 v2, 0x0

    aget v9, v1, v2

    .line 358
    :cond_10
    :goto_4
    const/4 v1, -0x1

    if-eq v9, v1, :cond_4

    .line 359
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v8, 0xa

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 352
    :cond_11
    if-eqz v17, :cond_10

    .line 353
    const-string v1, "BUS"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 354
    .local v18, busOption:Ljava/lang/String;
    if-eqz v18, :cond_10

    .line 355
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_4

    .line 365
    .end local v9           #busMinfreq:I
    .end local v18           #busOption:Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v1, :cond_4

    .line 366
    const/4 v12, -0x1

    .line 367
    .local v12, busMaxfreq:I
    if-eqz v17, :cond_12

    .line 368
    const-string v1, "BUS"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 369
    .restart local v18       #busOption:Ljava/lang/String;
    if-eqz v18, :cond_12

    .line 370
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 373
    .end local v18           #busOption:Ljava/lang/String;
    :cond_12
    const/4 v1, -0x1

    if-eq v12, v1, :cond_4

    .line 374
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v11, 0xb

    move/from16 v0, p1

    int-to-long v13, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 2
    .parameter "actionName"

    .prologue
    .line 206
    if-nez p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v0, "Launcher_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    :cond_2
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0

    .line 213
    :cond_3
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0
.end method

.method public addExtraOption(Ljava/lang/String;J)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 456
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 459
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 449
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 452
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    return-void
.end method

.method public addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V
    .locals 13
    .parameter "actionName"

    .prologue
    const v12, 0xf4240

    const/16 v11, 0x10

    const/4 v10, 0x2

    const v9, 0x16e360

    const-wide/16 v7, 0x0

    .line 468
    const-string v5, "ActivityManager_resume"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 469
    iget v5, p0, Landroid/os/DVFSHelper;->mType:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_3

    .line 470
    const v0, 0xf4240

    .line 471
    .local v0, AMS_BOOST_MIN_FREQ:I
    const-wide v5, 0x3fe6666666666666L

    invoke-virtual {p0, v5, v6}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximum(D)I

    move-result v1

    .line 472
    .local v1, freq:I
    if-gtz v1, :cond_1

    .line 582
    .end local v0           #AMS_BOOST_MIN_FREQ:I
    .end local v1           #freq:I
    :cond_0
    :goto_0
    return-void

    .line 476
    .restart local v0       #AMS_BOOST_MIN_FREQ:I
    .restart local v1       #freq:I
    :cond_1
    if-le v1, v12, :cond_2

    .line 477
    const-string v5, "CPU"

    int-to-long v6, v1

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 479
    :cond_2
    invoke-virtual {p0, v12}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v1

    .line 480
    if-lez v1, :cond_0

    .line 481
    const-string v5, "CPU"

    int-to-long v6, v1

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 484
    .end local v0           #AMS_BOOST_MIN_FREQ:I
    .end local v1           #freq:I
    :cond_3
    iget v5, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v5, v11, :cond_0

    .line 485
    const-string v5, "ja"

    const-string v6, "jf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 486
    const/4 v3, -0x1

    .line 487
    .local v3, gpufreq:I
    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v5, :cond_0

    .line 491
    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v4, v5

    .line 492
    .local v4, length:I
    if-lez v4, :cond_0

    .line 496
    if-lt v4, v10, :cond_4

    .line 497
    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int/lit8 v6, v4, -0x2

    aget v3, v5, v6

    .line 500
    :cond_4
    if-ltz v3, :cond_0

    .line 504
    const-string v5, "GPU"

    int-to-long v6, v3

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 507
    .end local v3           #gpufreq:I
    .end local v4           #length:I
    :cond_5
    const-string v5, "Gallery_touch"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 508
    const-wide/16 v1, 0x0

    .line 509
    .local v1, freq:J
    const-string v5, "ja"

    const-string v6, "jf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 510
    const v5, 0x13d620

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    .line 516
    :goto_1
    cmp-long v5, v1, v7

    if-lez v5, :cond_0

    .line 517
    const-string v5, "CPU"

    invoke-virtual {p0, v5, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 511
    :cond_6
    const-string v5, "jf"

    const-string v6, "jf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 512
    const v5, 0x155cc0

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    goto :goto_1

    .line 514
    :cond_7
    invoke-virtual {p0, v9}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    goto :goto_1

    .line 519
    .end local v1           #freq:J
    :cond_8
    const-string v5, "Launcher_touch"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 520
    const-wide/16 v1, 0x0

    .line 521
    .restart local v1       #freq:J
    const-string v5, "ja"

    const-string v6, "jf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 522
    const v5, 0x13d620

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    .line 528
    :goto_2
    cmp-long v5, v1, v7

    if-lez v5, :cond_0

    .line 529
    const-string v5, "CPU"

    invoke-virtual {p0, v5, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 523
    :cond_9
    const-string v5, "jf"

    const-string v6, "jf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 524
    const v5, 0x155cc0

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    goto :goto_2

    .line 526
    :cond_a
    invoke-virtual {p0, v9}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    goto :goto_2

    .line 531
    .end local v1           #freq:J
    :cond_b
    const-string v5, "ListView_scroll"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 532
    const-wide/16 v1, 0x0

    .line 533
    .restart local v1       #freq:J
    const-string v5, "jf"

    const-string v6, "jf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 534
    invoke-virtual {p0, v9}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    .line 538
    :goto_3
    cmp-long v5, v1, v7

    if-lez v5, :cond_0

    .line 539
    const-string v5, "CPU"

    invoke-virtual {p0, v5, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 536
    :cond_c
    const v5, 0xc3500

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    goto :goto_3

    .line 541
    .end local v1           #freq:J
    :cond_d
    const-string v5, "PhoneWindowManager_rotation"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 542
    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v5, v5

    if-lez v5, :cond_0

    .line 543
    const-string v5, "CPU"

    iget-object v6, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 545
    :cond_e
    const-string v5, "Launcher_homemenu"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 546
    iget v5, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v5, v11, :cond_0

    .line 547
    const-string v5, "ja"

    const-string v6, "jf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 548
    const/4 v3, -0x1

    .line 549
    .restart local v3       #gpufreq:I
    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v5, :cond_0

    .line 553
    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v4, v5

    .line 554
    .restart local v4       #length:I
    if-lez v4, :cond_0

    .line 558
    if-lt v4, v10, :cond_f

    .line 559
    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int/lit8 v6, v4, -0x2

    aget v3, v5, v6

    .line 562
    :cond_f
    if-ltz v3, :cond_0

    .line 566
    const-string v5, "GPU"

    int-to-long v6, v3

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 569
    .end local v3           #gpufreq:I
    .end local v4           #length:I
    :cond_10
    const-string v5, "ShareMusic_groupPlay"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 570
    const-wide/16 v1, 0x0

    .line 571
    .restart local v1       #freq:J
    const-string v5, "ja"

    const-string v6, "jf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 572
    const v5, 0x927c0

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    .line 578
    :goto_4
    cmp-long v5, v1, v7

    if-lez v5, :cond_0

    .line 579
    const-string v5, "CPU"

    invoke-virtual {p0, v5, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 573
    :cond_11
    const-string v5, "jf"

    const-string v6, "jf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 574
    const v5, 0x124f80

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    goto :goto_4

    .line 576
    :cond_12
    const v5, 0x124f80

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    goto :goto_4
.end method

.method public cancelExtraOptions()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 464
    return-void
.end method

.method public getApproximateCPUFrequency(I)I
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v1, -0x1

    .line 154
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 157
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 158
    .local v0, length:I
    if-lez v0, :cond_0

    .line 162
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 163
    .local v1, realFreq:I
    :goto_1
    if-lez v0, :cond_0

    .line 164
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_2

    .line 165
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 166
    goto :goto_0

    .line 168
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximum(D)I
    .locals 3
    .parameter "percent"

    .prologue
    const/4 v1, -0x1

    .line 178
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 182
    .local v0, length:I
    if-lez v0, :cond_0

    .line 186
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSupportedBUSFrequency()[I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public isAquired()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    return v0
.end method

.method public onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v6, 0x7d0

    .line 650
    if-nez p2, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 656
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 657
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CPU"

    const/16 v3, 0xc

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    .line 658
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 659
    sget-object v0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_6

    .line 660
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    sget-object v2, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    const v3, 0x186a00

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 667
    :cond_2
    :goto_1
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_3

    .line 668
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CORE"

    const/16 v3, 0xe

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 669
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 670
    sget-object v0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_7

    .line 671
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget-object v2, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 677
    :cond_3
    :goto_2
    sget-object v0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_4

    .line 678
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 680
    :cond_4
    sget-object v0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_5

    .line 681
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 685
    :cond_5
    const-string v0, "KOR"

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.sec.android.app.camera.Camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/os/DVFSHelper$1;

    invoke-direct {v1, p0}, Landroid/os/DVFSHelper$1;-><init>(Landroid/os/DVFSHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 662
    :cond_6
    const-string v0, "DVFSHelper"

    const-string v1, "onAppLaunchEvent:: mCPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 673
    :cond_7
    const-string v0, "DVFSHelper"

    const-string v1, "onAppLaunchEvent:: mCPUCoreTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 715
    sget-object v1, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v1, :cond_0

    .line 716
    new-instance v1, Landroid/os/DVFSHelper;

    const/16 v2, 0xe

    invoke-direct {v1, p1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v1, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 717
    sget-object v1, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    .line 718
    .local v0, coreTable:[I
    if-eqz v0, :cond_2

    .line 719
    sget-object v1, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v2, "CORE_NUM"

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 724
    .end local v0           #coreTable:[I
    :cond_0
    :goto_0
    sget-object v1, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-eqz v1, :cond_1

    .line 725
    sget-object v1, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 727
    :cond_1
    return-void

    .line 721
    .restart local v0       #coreTable:[I
    :cond_2
    const-string v1, "DVFSHelper"

    const-string v2, "onWindowRotationEvent:: coreTable is null"

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 409
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    if-nez v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release:: mIsAcquired = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 421
    const-string v0, "DVFSHelper"

    const-string v1, "release:: cpuRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 424
    :cond_2
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 426
    const-string v0, "DVFSHelper"

    const-string v1, "release:: cpuNumRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 429
    :cond_3
    iget-object v0, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 431
    const-string v0, "DVFSHelper"

    const-string v1, "release:: gpuRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iput-object v3, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 434
    :cond_4
    iget-object v0, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_5

    .line 435
    iget-object v0, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 436
    const-string v0, "DVFSHelper"

    const-string v1, "release:: busRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iput-object v3, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 439
    :cond_5
    iget-object v0, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_6

    .line 440
    iget-object v0, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 441
    const-string v0, "DVFSHelper"

    const-string v1, "release:: mmcRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iput-object v3, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 445
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    goto :goto_0
.end method
