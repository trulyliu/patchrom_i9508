.class public Lcom/android/server/ssrm/DvfsUpThreshold;
.super Lcom/android/server/ssrm/FgAppListener;
.source "DvfsUpThreshold.java"


# static fields
.field private static final BASE_MODEL:Ljava/lang/String; = "jf"

.field private static final DVFS_UT_DEFAULT:I = 0x5a

.field private static final DVFS_UT_MAX:I = 0x63

.field private static final DVFS_UT_SYSFS_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_h"

.field private static TAG:Ljava/lang/String;

.field private static isFullScreenMode:Z

.field private static isJaUpthresholdAppFg:Z

.field private static mCurrentUpThreshold:I

.field private static mUpThresholdExceptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrowserBenchmarkOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    const-string v0, "DvfsUpThreshold"

    sput-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->TAG:Ljava/lang/String;

    .line 19
    sput-boolean v1, Lcom/android/server/ssrm/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    .line 20
    sput-boolean v1, Lcom/android/server/ssrm/DvfsUpThreshold;->isFullScreenMode:Z

    .line 23
    const/16 v0, 0x5a

    sput v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mCurrentUpThreshold:I

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/ssrm/FgAppListener;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/DvfsUpThreshold;->mBrowserBenchmarkOn:Z

    .line 28
    const-string v0, "com.alphacloud.castlemaster"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/DvfsUpThreshold;->addPackage(Ljava/lang/String;)V

    .line 29
    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/DvfsUpThreshold;->addPackage(Ljava/lang/String;)V

    .line 30
    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/DvfsUpThreshold;->addPackage(Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "Gallery"

    const-string v2, "com.sec.android.gallery3d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "VideoPlayer"

    const-string v2, "com.samsung.everglades.video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "Video(hidden)"

    const-string v2, "com.sec.android.app.videoplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "Camera"

    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "QuadrantS"

    const-string v2, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "QuadrantA"

    const-string v2, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "QuadrantP"

    const-string v2, "com.aurorasoftworks.quadrant.ui.professional"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "Antutu"

    const-string v2, "com.antutu.ABenchMark"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "Antutu3D"

    const-string v2, "com.antutu.ABenchMark:remote"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "GLBench25"

    const-string v2, "com.glbenchmark.glbenchmark25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "GLBench21"

    const-string v2, "com.glbenchmark.glbenchmark21"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method protected calculateCurrentThreshold()I
    .locals 5

    .prologue
    const/16 v2, 0x63

    const/16 v1, 0x5a

    .line 108
    const-string v3, "com.sec.android.app.sbrowser"

    invoke-virtual {p0}, Lcom/android/server/ssrm/DvfsUpThreshold;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.chrome"

    invoke-virtual {p0}, Lcom/android/server/ssrm/DvfsUpThreshold;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/ssrm/DvfsUpThreshold;->mBrowserBenchmarkOn:Z

    if-eqz v3, :cond_2

    .line 126
    :cond_1
    :goto_0
    return v1

    .line 114
    :cond_2
    sget-boolean v3, Lcom/android/server/ssrm/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    if-eqz v3, :cond_3

    move v1, v2

    .line 115
    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ssrm/DvfsUpThreshold;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, fgPackageName:Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/ssrm/DvfsUpThreshold;->isFullScreenMode:Z

    if-eqz v3, :cond_1

    .line 120
    sget-object v3, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 123
    goto :goto_0
.end method

.method protected onFgAppChanged()V
    .locals 3

    .prologue
    .line 51
    const-string v1, "ja"

    const-string v2, "jf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/DvfsUpThreshold;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, newPackageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/DvfsUpThreshold;->isPackageExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/ssrm/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    .line 63
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/DvfsUpThreshold;->updateThreshold()V

    goto :goto_0

    .line 61
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ssrm/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    goto :goto_1
.end method

.method protected onFgAppInPackageList(Z)V
    .locals 0
    .parameter "isForeground"

    .prologue
    .line 69
    return-void
.end method

.method protected onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .parameter "statusName"
    .parameter "statusValue"
    .parameter "packageName"

    .prologue
    .line 77
    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusNotiReceived:: FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/DvfsUpThreshold;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sput-boolean p2, Lcom/android/server/ssrm/DvfsUpThreshold;->isFullScreenMode:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/server/ssrm/DvfsUpThreshold;->updateThreshold()V

    goto :goto_0
.end method

.method public setBrowserBenchmark(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 131
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrowserBenchmark:: on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/DvfsUpThreshold;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-boolean p1, p0, Lcom/android/server/ssrm/DvfsUpThreshold;->mBrowserBenchmarkOn:Z

    .line 133
    invoke-virtual {p0}, Lcom/android/server/ssrm/DvfsUpThreshold;->updateThreshold()V

    .line 134
    return-void
.end method

.method protected updateThreshold()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/server/ssrm/DvfsUpThreshold;->calculateCurrentThreshold()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/DvfsUpThreshold;->updateThresholdSysFS(I)V

    .line 89
    return-void
.end method

.method protected updateThresholdSysFS(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 96
    sget v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mCurrentUpThreshold:I

    if-eq v0, p1, :cond_0

    .line 97
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThresholdSysFS :: new value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/DvfsUpThreshold;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_h"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/DvfsUpThreshold;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sput p1, Lcom/android/server/ssrm/DvfsUpThreshold;->mCurrentUpThreshold:I

    .line 101
    :cond_0
    return-void
.end method
