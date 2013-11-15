.class abstract Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "DynamicLCDFPS"
.end annotation


# instance fields
.field protected currentFPS:I

.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method protected constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1878
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1879
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->resetFPS()V

    .line 1880
    return-void
.end method


# virtual methods
.method protected calculateCurrentFPS()I
    .locals 2

    .prologue
    .line 1925
    const/4 v0, 0x3

    .line 1926
    .local v0, fps:I
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mMultiWindowRunning:Z

    if-eqz v1, :cond_0

    .line 1927
    const/4 v0, 0x0

    .line 1939
    :goto_0
    return v0

    .line 1929
    :cond_0
    sget v1, Lcom/android/server/ssrm/Monitor;->mPermanentAppPID:I

    if-lez v1, :cond_1

    .line 1930
    const/4 v0, 0x1

    goto :goto_0

    .line 1931
    :cond_1
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    if-eqz v1, :cond_2

    .line 1932
    const/4 v0, 0x1

    goto :goto_0

    .line 1933
    :cond_2
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    if-eqz v1, :cond_3

    .line 1934
    const/4 v0, 0x1

    goto :goto_0

    .line 1936
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getSysFSPath()Ljava/lang/String;
.end method

.method public handleMonitorStateChanged()V
    .locals 0

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->updateFPS()V

    .line 1888
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->updateFPS()V

    .line 1884
    return-void
.end method

.method public resetFPS()V
    .locals 1

    .prologue
    .line 1891
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->currentFPS:I

    .line 1892
    return-void
.end method

.method protected updateFPS()V
    .locals 2

    .prologue
    .line 1896
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->calculateCurrentFPS()I

    move-result v0

    .line 1897
    .local v0, newFPS:I
    iget v1, p0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->currentFPS:I

    if-eq v1, v0, :cond_0

    .line 1898
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->updateSysFSFile(I)V

    .line 1899
    iput v0, p0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->currentFPS:I

    .line 1901
    :cond_0
    return-void
.end method

.method protected updateSysFSFile(I)V
    .locals 4
    .parameter "fps"

    .prologue
    .line 1904
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSysFSFile: fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->getSysFSPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1907
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1920
    :cond_0
    :goto_0
    return-void

    .line 1911
    :cond_1
    #calls: Lcom/android/server/ssrm/Monitor;->isFPSValid(I)Z
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor;->access$4500(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1912
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->getSysFSPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    .line 1918
    :goto_1
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->getInstance()Lcom/android/server/ssrm/AirViewOnOff;

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->getSysFSPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/ssrm/AirViewOnOff;->onFrameRateUpdate(ILjava/lang/String;)V

    goto :goto_0

    .line 1914
    :cond_2
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sys FS file wasn\'t updated!!!"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
