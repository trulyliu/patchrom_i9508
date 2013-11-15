.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "PedometerRunner.java"


# instance fields
.field private accumulativeCalorie:D

.field private accumulativeDistance:D

.field private accumulativeRunStepCount:J

.field private accumulativeTotalStepCount:J

.field private accumulativeUpDownStepCount:J

.field private accumulativeWalkStepCount:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .parameter "context"
    .parameter "observable"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 64
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 225
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 227
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 228
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 229
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 230
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 232
    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 233
    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 234
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 325
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 326
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 327
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 312
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 313
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 314
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WalkStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RunStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UpDownStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TotalStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Distance"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "StepStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Calorie"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacket()[B
    .locals 4

    .prologue
    .line 96
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 97
    .local v0, packet:[B
    const/4 v1, 0x0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 98
    const/4 v1, 0x1

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 99
    const/4 v1, 0x2

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 101
    return-object v0
.end method

.method protected final getInitContextBundle()Landroid/os/Bundle;
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const-wide/16 v3, 0x0

    .line 245
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, names:[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v0, contextBundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 248
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 249
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 250
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 251
    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 252
    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 253
    const/4 v2, 0x6

    aget-object v2, v1, v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    const/4 v2, 0x7

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 256
    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x3

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 288
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;
    .locals 0

    .prologue
    .line 300
    return-object p0
.end method

.method public final parse([BI)I
    .locals 13
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 126
    move v5, p2

    .line 128
    .local v5, tmpNext:I
    array-length v7, p1

    sub-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_0

    .line 129
    const/4 v7, -0x1

    .line 214
    :goto_0
    return v7

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, names:[Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    .end local v5           #tmpNext:I
    .local v6, tmpNext:I
    aget-byte v0, p1, v5

    .line 135
    .local v0, data:I
    and-int/lit16 v7, v0, 0x80

    if-nez v7, :cond_3

    .line 136
    array-length v7, p1

    sub-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x9

    if-gez v7, :cond_1

    .line 137
    const-string v7, "packet is lost."

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 138
    const/4 v5, -0x1

    move v7, v5

    move v5, v6

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    goto :goto_0

    .line 141
    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 142
    iget-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    int-to-long v9, v0

    add-long/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 143
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v1, v8

    iget-wide v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 145
    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v0, p1, v6

    .line 146
    iget-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    int-to-long v9, v0

    add-long/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 147
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    iget-wide v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 149
    add-int/lit8 v6, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v0, p1, v5

    .line 150
    iget-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    int-to-long v9, v0

    add-long/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 151
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    iget-wide v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 152
    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v8, p1, v5

    and-int/lit16 v8, v8, 0xff

    add-int v0, v7, v8

    .line 153
    iget-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    int-to-long v9, v0

    add-long/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 154
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v8, v1, v8

    iget-wide v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 156
    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v8, p1, v5

    and-int/lit16 v8, v8, 0xff

    add-int v0, v7, v8

    .line 157
    iget-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    int-to-double v9, v0

    const-wide/high16 v11, 0x4059

    div-double/2addr v9, v11

    add-double/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 158
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x4

    aget-object v8, v1, v8

    iget-wide v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 159
    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v0, p1, v6

    .line 160
    if-gez v0, :cond_2

    .line 161
    add-int/lit16 v7, v0, 0xff

    add-int/lit8 v0, v7, 0x1

    .line 163
    :cond_2
    int-to-double v7, v0

    const-wide/high16 v9, 0x4024

    div-double v2, v7, v9

    .line 164
    .local v2, speed:D
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x5

    aget-object v8, v1, v8

    invoke-virtual {v7, v8, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 165
    add-int/lit8 v6, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v0, p1, v5

    .line 166
    move v4, v0

    .line 167
    .local v4, stepStatus:I
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x6

    aget-object v8, v1, v8

    invoke-virtual {v7, v8, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 168
    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v0, p1, v6

    .line 169
    iget-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    int-to-double v9, v0

    const-wide/high16 v11, 0x4059

    div-double/2addr v9, v11

    add-double/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 170
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x7

    aget-object v8, v1, v8

    iget-wide v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 212
    :goto_1
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move v7, v5

    .line 214
    goto/16 :goto_0

    .line 172
    .end local v2           #speed:D
    .end local v4           #stepStatus:I
    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    :cond_3
    array-length v7, p1

    sub-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x13

    if-gez v7, :cond_4

    .line 173
    const/4 v5, -0x1

    move v7, v5

    move v5, v6

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    goto/16 :goto_0

    .line 176
    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    :cond_4
    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v6, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v8, p1, v5

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    add-int v0, v7, v8

    .line 178
    iget-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    int-to-long v9, v0

    add-long/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 179
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v1, v8

    iget-wide v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 181
    add-int/lit8 v6, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v8, p1, v5

    and-int/lit16 v8, v8, 0xff

    add-int v0, v7, v8

    .line 183
    iget-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    int-to-long v9, v0

    add-long/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 184
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    iget-wide v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 186
    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v6, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v8, p1, v5

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    add-int v0, v7, v8

    .line 188
    iget-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    int-to-long v9, v0

    add-long/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 189
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    iget-wide v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 190
    add-int/lit8 v6, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v8, p1, v5

    and-int/lit16 v8, v8, 0xff

    add-int v0, v7, v8

    .line 192
    iget-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    int-to-long v9, v0

    add-long/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 193
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v8, v1, v8

    iget-wide v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 194
    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v6, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v8, p1, v5

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    add-int v0, v7, v8

    .line 196
    iget-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    int-to-double v9, v0

    const-wide/high16 v11, 0x4059

    div-double/2addr v9, v11

    add-double/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 197
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x4

    aget-object v8, v1, v8

    iget-wide v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 198
    add-int/lit8 v6, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v0, p1, v5

    .line 199
    if-gez v0, :cond_5

    .line 200
    add-int/lit16 v7, v0, 0xff

    add-int/lit8 v0, v7, 0x1

    .line 202
    :cond_5
    int-to-double v7, v0

    const-wide/high16 v9, 0x4024

    div-double v2, v7, v9

    .line 203
    .restart local v2       #speed:D
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x5

    aget-object v8, v1, v8

    invoke-virtual {v7, v8, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 204
    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v0, p1, v6

    .line 205
    move v4, v0

    .line 206
    .restart local v4       #stepStatus:I
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x6

    aget-object v8, v1, v8

    invoke-virtual {v7, v8, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 207
    add-int/lit8 v6, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v5, v6, 0x1

    .end local v6           #tmpNext:I
    .restart local v5       #tmpNext:I
    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    add-int v0, v7, v8

    .line 208
    iget-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    int-to-double v9, v0

    const-wide/high16 v11, 0x4059

    div-double/2addr v9, v11

    add-double/2addr v7, v9

    iput-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 209
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v7

    const/4 v8, 0x7

    aget-object v8, v1, v8

    iget-wide v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    goto/16 :goto_1
.end method

.method public final setPropertyValue(ILjava/lang/Object;)V
    .locals 4
    .parameter "property"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p2, value:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 269
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 271
    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 272
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    goto :goto_0

    .line 274
    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 275
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserGender(I)V

    goto :goto_0
.end method
