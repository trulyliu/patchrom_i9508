.class public Lcom/android/server/ssrm/Monitor$SysfsTable;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SysfsTable"
.end annotation


# instance fields
.field aclOnOffPath:Ljava/lang/String;

.field apTemperaturePath:Ljava/lang/String;

.field chargingCurrentPath:Ljava/lang/String;

.field cpTemperaturePath:Ljava/lang/String;

.field public isAclOnOffValid:Z

.field public isApTemperatureValid:Z

.field public isChargingCurrentValid:Z

.field public isCpTemperatureValid:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ApTemperature"
    .parameter "CpTemperature"
    .parameter "ChargingCurrent"
    .parameter "AclOnOff"

    .prologue
    const/4 v0, 0x0

    .line 2152
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2146
    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isApTemperatureValid:Z

    .line 2147
    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isCpTemperatureValid:Z

    .line 2148
    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isChargingCurrentValid:Z

    .line 2149
    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isAclOnOffValid:Z

    .line 2153
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->apTemperaturePath:Ljava/lang/String;

    .line 2154
    iput-object p2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->cpTemperaturePath:Ljava/lang/String;

    .line 2155
    iput-object p3, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->chargingCurrentPath:Ljava/lang/String;

    .line 2156
    iput-object p4, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->aclOnOffPath:Ljava/lang/String;

    .line 2157
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$SysfsTable;->checkSysfsReady()V

    .line 2158
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SysfsPathForSIOP:: apTemperaturePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->apTemperaturePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ready = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isApTemperatureValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SysfsPathForSIOP:: cpTemperaturePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->cpTemperaturePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ready = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isCpTemperatureValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SysfsPathForSIOP:: chargingCurrentPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->chargingCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ready = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isChargingCurrentValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SysfsPathForSIOP:: aclOnOffPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->aclOnOffPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ready = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isAclOnOffValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    return-void
.end method

.method static checkCpSysfsAccesible()V
    .locals 5

    .prologue
    .line 2186
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4800()Lcom/android/server/ssrm/Monitor$SysfsTable;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/ssrm/Monitor$SysfsTable;->isCpTemperatureValid:Z

    if-eqz v2, :cond_0

    .line 2187
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4800()Lcom/android/server/ssrm/Monitor$SysfsTable;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/ssrm/Monitor$SysfsTable;->isCpTemperatureValid:Z

    .line 2188
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/ssrm/Monitor$SysfsTable$1;

    invoke-direct {v2}, Lcom/android/server/ssrm/Monitor$SysfsTable$1;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2210
    .local v0, cpSysfsReadThread:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2211
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2212
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2217
    :cond_0
    :goto_0
    return-void

    .line 2213
    :catch_0
    move-exception v1

    .line 2214
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpSysfsReadThread:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method checkSysfsReady()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2166
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->apTemperaturePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2167
    .local v1, ApFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2168
    iput-boolean v5, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isApTemperatureValid:Z

    .line 2170
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->cpTemperaturePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2171
    .local v3, CpFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2172
    iput-boolean v5, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isCpTemperatureValid:Z

    .line 2174
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->chargingCurrentPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2175
    .local v2, ChargingFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2176
    iput-boolean v5, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isChargingCurrentValid:Z

    .line 2178
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->aclOnOffPath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2179
    .local v0, AclOnOffFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2180
    iput-boolean v5, p0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isAclOnOffValid:Z

    .line 2182
    :cond_3
    return-void
.end method
