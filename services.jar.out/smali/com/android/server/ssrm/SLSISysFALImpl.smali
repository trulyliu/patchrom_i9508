.class public Lcom/android/server/ssrm/SLSISysFALImpl;
.super Ljava/lang/Object;
.source "SLSISysFALImpl.java"

# interfaces
.implements Lcom/android/server/ssrm/SysFileAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;
    }
.end annotation


# static fields
.field private static final ADONIS_GPU_TABLE:[I = null

.field private static final APE_OPP_PATH:Ljava/lang/String; = "/debug/prcmu/ape_opp"

.field private static final BASE_MODEL:Ljava/lang/String; = "jf"

.field private static BUS_DEFAULT_FREQUENCY:I = 0x0

.field private static BUS_MAX_PATH:Ljava/lang/String; = null

.field private static BUS_MIN_PATH:Ljava/lang/String; = null

.field private static BUS_TABLE_PATH:Ljava/lang/String; = null

.field private static CPUS_ONLINE_MAX_LIMIT_1:I = 0x0

.field private static CPUS_ONLINE_MAX_LIMIT_2:I = 0x0

.field private static CPUS_ONLINE_MAX_LIMIT_3:I = 0x0

.field private static CPUS_ONLINE_MAX_LIMIT_4:I = 0x0

.field private static CPUS_ONLINE_MAX_LIMIT_MAX:I = 0x0

.field private static CPU_CORE_MAX_PATH:Ljava/lang/String; = null

.field private static CPU_CORE_MIN_PATH:Ljava/lang/String; = null

.field private static final CPU_CORE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

.field private static final CPU_DEFAULT_CORE:I = 0x0

.field private static final DDR_OPP_PATH:Ljava/lang/String; = "/debug/prcmu/ddr_opp"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static GPU_DEFAULT_FREQUENCY:I = 0x0

.field private static GPU_MAX_PATH:Ljava/lang/String; = null

.field private static GPU_MIN_PATH:Ljava/lang/String; = null

.field private static final IS_AP_TYPE_DB8420:Z = true

.field private static final LCD_FRAME_RATE_DEFAULT:I = 0x1

.field private static final LCD_FRAME_RATE_PATH:Ljava/lang/String; = "/sys/class/graphics/fb0/lcdfreq/level"

.field private static final MSM8064_CORE_NUM_TABLE:[I = null

.field private static final OPP_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SysFALImpl"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field public static mApeOppPath:Z

.field public static mDdrOppPath:Z

.field private static mPerfCoreMaxLock:Lorg/codeaurora/Performance;

.field private static mPerfCoreMinLock:Lorg/codeaurora/Performance;

.field private static mPlatformInfo:Ljava/lang/String;

.field public static mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

.field public static mSysBusPath:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x7fb

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 19
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    .line 21
    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MIN_PATH:Ljava/lang/String;

    .line 22
    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MAX_PATH:Ljava/lang/String;

    .line 25
    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 26
    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 28
    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MIN_PATH:Ljava/lang/String;

    .line 29
    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MAX_PATH:Ljava/lang/String;

    .line 30
    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 34
    sput-boolean v3, Lcom/android/server/ssrm/SLSISysFALImpl;->mDdrOppPath:Z

    .line 35
    sput-boolean v3, Lcom/android/server/ssrm/SLSISysFALImpl;->mApeOppPath:Z

    .line 36
    sput-boolean v3, Lcom/android/server/ssrm/SLSISysFALImpl;->mSysBusPath:Z

    .line 43
    sput v3, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_DEFAULT_FREQUENCY:I

    .line 53
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformInfo:Ljava/lang/String;

    .line 54
    const-string v0, "msm8960"

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    .line 62
    :goto_0
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_2

    .line 63
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_min_lock"

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MIN_PATH:Ljava/lang/String;

    .line 64
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MAX_PATH:Ljava/lang/String;

    .line 65
    sput v3, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_DEFAULT_FREQUENCY:I

    .line 66
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/min_freq"

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MIN_PATH:Ljava/lang/String;

    .line 67
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/max_freq"

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MAX_PATH:Ljava/lang/String;

    .line 68
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/freq_table"

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 69
    sput v3, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_DEFAULT_FREQUENCY:I

    .line 226
    :goto_1
    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 261
    const/16 v0, 0x7fe

    sput v0, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_1:I

    .line 262
    const/16 v0, 0x7fd

    sput v0, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_2:I

    .line 263
    const/16 v0, 0x7fc

    sput v0, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_3:I

    .line 264
    sput v4, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_4:I

    .line 265
    sput v4, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_MAX:I

    .line 266
    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 327
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->MSM8064_CORE_NUM_TABLE:[I

    .line 328
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->ADONIS_GPU_TABLE:[I

    return-void

    .line 56
    :cond_0
    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    goto :goto_0

    .line 59
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->NONE:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    goto :goto_0

    .line 71
    :cond_2
    const-string v0, "/sys/power/gpu_lock"

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MIN_PATH:Ljava/lang/String;

    .line 72
    sput-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MAX_PATH:Ljava/lang/String;

    .line 73
    sput v3, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_DEFAULT_FREQUENCY:I

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MIN_PATH:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MAX_PATH:Ljava/lang/String;

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_TABLE_PATH:Ljava/lang/String;

    goto :goto_1

    .line 327
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 328
    :array_1
    .array-data 0x4
        0x14t 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
        0xat 0x1t 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquirePerfCoreMaxLock(I)V
    .locals 4
    .parameter "coreNum"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 268
    if-lt p0, v2, :cond_0

    const/4 v0, 0x4

    if-le p0, v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v0, :cond_2

    .line 274
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMaxLock:: create new Performance instance"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v0}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 276
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 280
    :cond_2
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 292
    :pswitch_0
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_1)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 294
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    sget v2, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_1:I

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 282
    :pswitch_1
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_3)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 284
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    sget v2, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_3:I

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 287
    :pswitch_2
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_2)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 289
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    sget v2, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_2:I

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static acquirePerfCoreMinLock(I)V
    .locals 4
    .parameter "coreNum"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 228
    if-lt p0, v2, :cond_0

    const/4 v0, 0x4

    if-le p0, v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v0, :cond_2

    .line 234
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMinLock:: create new Performance instance"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v0}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 236
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 240
    :cond_2
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 252
    :pswitch_0
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_2)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 254
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    const/16 v2, 0x702

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 242
    :pswitch_1
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_MAX)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 244
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    const/16 v2, 0x704

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 247
    :pswitch_2
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_3)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 249
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    const/16 v2, 0x703

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkFileExistence(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 356
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, filePtr:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 361
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 365
    sget-boolean v0, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 366
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    return-void
.end method

.method private parseSystemBusTable()[I
    .locals 11

    .prologue
    .line 370
    const-string v7, "SysFALImpl"

    const-string v8, "parseSystemBusTable"

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v5, 0x0

    .line 372
    .local v5, supportedFrequency:[I
    const/4 v0, 0x0

    .line 374
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_0
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 375
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    sget-object v8, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 377
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_0
    if-nez v0, :cond_2

    .line 393
    if-eqz v0, :cond_1

    .line 394
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    move-object v6, v5

    .line 400
    .end local v5           #supportedFrequency:[I
    .local v6, supportedFrequency:[I
    :goto_1
    return-object v6

    .line 380
    .end local v6           #supportedFrequency:[I
    .restart local v5       #supportedFrequency:[I
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, strSupportedFreq:[Ljava/lang/String;
    array-length v7, v4

    new-array v5, v7, [I

    .line 382
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v7, v4

    if-ge v3, v7, :cond_6

    .line 383
    aget-object v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v3

    .line 384
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: supportedFrequency = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 386
    .end local v3           #i:I
    .end local v4           #strSupportedFreq:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 387
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    sget-boolean v7, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 388
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by Exception, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    :cond_3
    const/4 v5, 0x0

    .line 393
    if-eqz v0, :cond_4

    .line 394
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    :goto_3
    move-object v6, v5

    .line 400
    .end local v5           #supportedFrequency:[I
    .restart local v6       #supportedFrequency:[I
    goto :goto_1

    .line 392
    .end local v6           #supportedFrequency:[I
    .restart local v5       #supportedFrequency:[I
    :catchall_0
    move-exception v7

    .line 393
    if-eqz v0, :cond_5

    .line 394
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 392
    :cond_5
    :goto_4
    throw v7

    .line 396
    :catch_1
    move-exception v2

    .line 397
    .local v2, e:Ljava/io/IOException;
    const-string v8, "SysFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 396
    .local v2, e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 397
    .local v2, e:Ljava/io/IOException;
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 396
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 397
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 393
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #i:I
    .restart local v4       #strSupportedFreq:[Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_4

    .line 394
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 396
    :catch_4
    move-exception v2

    .line 397
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5
.end method


# virtual methods
.method public checkNodeExistence(I)Z
    .locals 6
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 303
    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v2, v3

    .line 324
    :cond_1
    :goto_0
    return v2

    .line 306
    :pswitch_1
    sget-object v4, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 312
    :pswitch_2
    const-string v2, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 314
    :pswitch_3
    sget-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 316
    :pswitch_4
    sget-object v4, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v1

    .line 317
    .local v1, minFileExists:Z
    sget-object v4, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    .line 318
    .local v0, maxFileExists:Z
    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    :cond_2
    move v2, v3

    goto :goto_0

    .line 320
    .end local v0           #maxFileExists:Z
    .end local v1           #minFileExists:Z
    :pswitch_5
    const-string v2, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public initSupportedFrequency(I)[I
    .locals 2
    .parameter "type"

    .prologue
    .line 331
    packed-switch p1, :pswitch_data_0

    .line 352
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 334
    :pswitch_1
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_0

    .line 335
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->ADONIS_GPU_TABLE:[I

    goto :goto_0

    .line 340
    :pswitch_2
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_0

    .line 341
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->MSM8064_CORE_NUM_TABLE:[I

    goto :goto_0

    .line 345
    :pswitch_3
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/android/server/ssrm/SLSISysFALImpl;->parseSystemBusTable()[I

    move-result-object v0

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public modifyToValues(II)Z
    .locals 9
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 160
    const/4 v4, 0x0

    .line 161
    .local v4, successFlag:Z
    const/4 v1, 0x0

    .line 162
    .local v1, filePtr:Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 196
    :pswitch_0
    const/4 v4, 0x0

    move v5, v4

    .line 223
    :goto_0
    return v5

    .line 164
    :pswitch_1
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v6, v7, :cond_0

    .line 165
    invoke-static {p2}, Lcom/android/server/ssrm/SLSISysFALImpl;->acquirePerfCoreMinLock(I)V

    goto :goto_0

    .line 170
    :pswitch_2
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v6, v7, :cond_0

    .line 171
    invoke-static {p2}, Lcom/android/server/ssrm/SLSISysFALImpl;->acquirePerfCoreMaxLock(I)V

    goto :goto_0

    .line 176
    :pswitch_3
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    const-string v5, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v1       #filePtr:Ljava/io/File;
    :cond_0
    :goto_1
    sget-boolean v5, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 200
    const-string v5, "SysFALImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    if-eqz v1, :cond_2

    .line 204
    const/4 v2, 0x0

    .line 206
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 208
    const/4 v4, 0x1

    .line 215
    if-eqz v3, :cond_2

    .line 216
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    move v5, v4

    .line 223
    goto :goto_0

    .line 179
    :pswitch_4
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .restart local v1       #filePtr:Ljava/io/File;
    goto :goto_1

    .line 182
    :pswitch_5
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .restart local v1       #filePtr:Ljava/io/File;
    goto :goto_1

    .line 185
    :pswitch_6
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .restart local v1       #filePtr:Ljava/io/File;
    goto :goto_1

    .line 188
    :pswitch_7
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    const-string v5, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v1       #filePtr:Ljava/io/File;
    const/16 v5, 0x28

    if-eq p2, v5, :cond_3

    const/16 v5, 0x33

    if-eq p2, v5, :cond_3

    const/16 v5, 0x32

    if-ne p2, v5, :cond_4

    .line 190
    :cond_3
    const/4 p2, 0x1

    goto :goto_1

    .line 191
    :cond_4
    const/16 v5, 0x3c

    if-ne p2, v5, :cond_0

    .line 192
    const/4 p2, 0x0

    goto :goto_1

    .line 209
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    sget-boolean v5, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 211
    const-string v5, "SysFALImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    :cond_5
    if-eqz v2, :cond_2

    .line 216
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 218
    :catch_1
    move-exception v0

    .line 219
    const-string v5, "SysFALImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v2           #fos:Ljava/io/FileOutputStream;
    :goto_4
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 214
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    .line 215
    :goto_5
    if-eqz v2, :cond_6

    .line 216
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 214
    :cond_6
    :goto_6
    throw v5

    .line 218
    :catch_2
    move-exception v0

    .line 219
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 218
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 219
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "SysFALImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 214
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 209
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public revertToDefault(I)Z
    .locals 10
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 82
    const/4 v5, 0x0

    .line 83
    .local v5, successFlag:Z
    const/4 v1, 0x0

    .line 84
    .local v1, filePtr:Ljava/io/File;
    const/4 v4, -0x1

    .line 86
    .local v4, revertValue:I
    packed-switch p1, :pswitch_data_0

    .line 126
    :pswitch_0
    const/4 v5, 0x0

    move v6, v5

    .line 152
    :goto_0
    return v6

    .line 88
    :pswitch_1
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v7, v8, :cond_0

    .line 89
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v7, :cond_0

    .line 90
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v7}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 91
    sput-object v9, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    goto :goto_0

    .line 97
    :pswitch_2
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v7, v8, :cond_0

    .line 98
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v7, :cond_0

    .line 99
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v7}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 100
    sput-object v9, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    goto :goto_0

    .line 106
    :pswitch_3
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    const-string v6, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .restart local v1       #filePtr:Ljava/io/File;
    const/4 v4, 0x0

    .line 129
    :cond_0
    :goto_1
    sget-boolean v6, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 130
    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", revertValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    if-eqz v1, :cond_2

    .line 133
    const/4 v2, 0x0

    .line 135
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 137
    const/4 v5, 0x1

    .line 144
    if-eqz v3, :cond_2

    .line 145
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    move v6, v5

    .line 152
    goto :goto_0

    .line 110
    :pswitch_4
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v1       #filePtr:Ljava/io/File;
    sget v4, Lcom/android/server/ssrm/SLSISysFALImpl;->GPU_DEFAULT_FREQUENCY:I

    .line 112
    goto :goto_1

    .line 114
    :pswitch_5
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v1       #filePtr:Ljava/io/File;
    sget v4, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_DEFAULT_FREQUENCY:I

    .line 116
    goto :goto_1

    .line 118
    :pswitch_6
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v1       #filePtr:Ljava/io/File;
    sget v4, Lcom/android/server/ssrm/SLSISysFALImpl;->BUS_DEFAULT_FREQUENCY:I

    .line 120
    goto :goto_1

    .line 122
    :pswitch_7
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    const-string v6, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .restart local v1       #filePtr:Ljava/io/File;
    const/4 v4, 0x1

    .line 124
    goto :goto_1

    .line 138
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    sget-boolean v6, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 140
    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :cond_3
    if-eqz v2, :cond_2

    .line 145
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 147
    :catch_1
    move-exception v0

    .line 148
    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v2           #fos:Ljava/io/FileOutputStream;
    :goto_4
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 143
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    .line 144
    :goto_5
    if-eqz v2, :cond_4

    .line 145
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 143
    :cond_4
    :goto_6
    throw v6

    .line 147
    :catch_2
    move-exception v0

    .line 148
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 147
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 148
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 143
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 138
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
