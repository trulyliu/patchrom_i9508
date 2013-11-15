.class Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataActivityHandler"
.end annotation


# static fields
.field private static final ACTIVITY_CHECK_PERIOD:I = 0x2710

.field private static final ACTIVITY_POLLING_INTERVAL:I = 0x3e8

.field private static final MIN_STAY_TIME_AFTER_RSSI_CHEK:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine.DataActivityHandler"


# instance fields
.field private mNoRxCheckCountInGoodCondition:I

.field private mNoRxStatStayed:I

.field private mPollingStarted:Z

.field private mPoorRxStatStayed:I

.field private mRxPackets:J

.field private mSkipRate:I

.field private mSkipRssi:I

.field private mTxPackets:J

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V
    .locals 4
    .parameter
    .parameter "looper"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1354
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 1355
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1345
    iput-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mPollingStarted:Z

    .line 1346
    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mTxPackets:J

    .line 1347
    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mRxPackets:J

    .line 1348
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mNoRxStatStayed:I

    .line 1349
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mPoorRxStatStayed:I

    .line 1350
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mNoRxCheckCountInGoodCondition:I

    .line 1351
    const/16 v0, -0xc8

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRssi:I

    .line 1352
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRate:I

    .line 1356
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 1360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1361
    .local v11, now:J
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1455
    const-string v17, "WifiWatchdogStateMachine.DataActivityHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignore msg id : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_0
    :goto_0
    return-void

    .line 1363
    :pswitch_0
    const v17, 0x2102b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->sendEmptyMessage(I)Z

    .line 1364
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mPollingStarted:Z

    goto :goto_0

    .line 1368
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mPollingStarted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1369
    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mTxPackets:J

    .local v15, preTxPkts:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mRxPackets:J

    .line 1370
    .local v13, preRxPkts:J
    const-string v17, "wlan0"

    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mTxPackets:J

    .line 1371
    const-string v17, "wlan0"

    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mRxPackets:J

    .line 1372
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mRxPackets:J

    move-wide/from16 v17, v0

    sub-long v4, v17, v13

    .line 1373
    .local v4, diffRx:J
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200()Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "WifiWatchdogStateMachine.DataActivityHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "diffRx : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mTxPackets:J

    move-wide/from16 v17, v0

    sub-long v6, v17, v15

    .line 1375
    .local v6, diffTx:J
    const/4 v9, 0x0

    .line 1376
    .local v9, needCheckByNoRx:Z
    const/4 v10, 0x0

    .line 1378
    .local v10, needCheckByPoorRx:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOngoingRttId:I
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v17

    if-eqz v17, :cond_d

    .line 1379
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mPoorRxStatStayed:I

    .line 1380
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mNoRxStatStayed:I

    .line 1400
    :cond_2
    :goto_1
    if-nez v9, :cond_3

    if-eqz v10, :cond_c

    .line 1401
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastRttCheckTimeByActivity:J
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v17

    sub-long v17, v11, v17

    const-wide/16 v19, 0x2710

    cmp-long v17, v17, v19

    if-lez v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastCheckTimeByRssi:J
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5700(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v17

    sub-long v17, v11, v17

    const-wide/16 v19, 0x1388

    cmp-long v17, v17, v19

    if-lez v17, :cond_15

    .line 1403
    const/4 v8, 0x1

    .line 1404
    .local v8, needCheck:Z
    if-eqz v9, :cond_b

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->isInEvaluationLevel()Z
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v17

    if-nez v17, :cond_14

    .line 1413
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mNoRxCheckCountInGoodCondition:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mNoRxCheckCountInGoodCondition:I

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 1414
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRate:I

    move/from16 v17, v0

    if-lez v17, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRssi:I

    move/from16 v17, v0

    const/16 v18, -0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRssi:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRate:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_12

    .line 1416
    :cond_4
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200()Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v17, "WifiWatchdogStateMachine.DataActivityHandler"

    const-string v18, "Stayed in Good Condition but get bad than before"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRate:I

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRate:I

    .line 1423
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRssi:I

    move/from16 v17, v0

    const/16 v18, -0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRssi:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRssi:I

    .line 1424
    :cond_9
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200()Z

    move-result v17

    if-eqz v17, :cond_a

    const-string v17, "WifiWatchdogStateMachine.DataActivityHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mSkipRate:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRate:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mSkipRssi:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRssi:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_a
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200()Z

    move-result v17

    if-eqz v17, :cond_b

    const-string v17, "WifiWatchdogStateMachine.DataActivityHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mNoRxCheckCountInGoodCondition : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mNoRxCheckCountInGoodCondition:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_b
    :goto_3
    if-eqz v8, :cond_c

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastRttCheckTimeByActivity:J
    invoke-static {v0, v11, v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5602(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    .line 1442
    .end local v8           #needCheck:Z
    :cond_c
    :goto_4
    const v17, 0x2102b

    const-wide/16 v18, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1381
    :cond_d
    const-wide/16 v17, 0x3

    cmp-long v17, v4, v17

    if-gez v17, :cond_f

    .line 1382
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mPoorRxStatStayed:I

    .line 1383
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mNoRxStatStayed:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mNoRxStatStayed:I

    .line 1384
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mNoRxStatStayed:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1385
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200()Z

    move-result v17

    if-eqz v17, :cond_e

    const-string v17, "WifiWatchdogStateMachine.DataActivityHandler"

    const-string v18, "No-Rx Stayed for 3s"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_e
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1388
    :cond_f
    const-wide/16 v17, 0x5

    cmp-long v17, v17, v4

    if-gtz v17, :cond_11

    const-wide/16 v17, 0xf

    cmp-long v17, v4, v17

    if-gtz v17, :cond_11

    .line 1389
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mNoRxStatStayed:I

    .line 1390
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mPoorRxStatStayed:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mPoorRxStatStayed:I

    .line 1391
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mPoorRxStatStayed:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1392
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200()Z

    move-result v17

    if-eqz v17, :cond_10

    const-string v17, "WifiWatchdogStateMachine.DataActivityHandler"

    const-string v18, "Poor-Rx Stayed for 5s"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_10
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1396
    :cond_11
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mPoorRxStatStayed:I

    .line 1397
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mNoRxStatStayed:I

    goto/16 :goto_1

    .line 1419
    .restart local v8       #needCheck:Z
    :cond_12
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200()Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v17, "WifiWatchdogStateMachine.DataActivityHandler"

    const-string v18, "Stayed in Good Condition"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1428
    :cond_14
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRate:I

    .line 1429
    const/16 v17, -0xc8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mSkipRssi:I

    .line 1430
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mNoRxCheckCountInGoodCondition:I

    goto/16 :goto_3

    .line 1438
    .end local v8           #needCheck:Z
    :cond_15
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200()Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v17, "WifiWatchdogStateMachine.DataActivityHandler"

    const-string v18, "Skip checking quality"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1446
    .end local v4           #diffRx:J
    .end local v6           #diffTx:J
    .end local v9           #needCheckByNoRx:Z
    .end local v10           #needCheckByPoorRx:Z
    .end local v13           #preRxPkts:J
    .end local v15           #preTxPkts:J
    :pswitch_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mPollingStarted:Z

    .line 1447
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mPoorRxStatStayed:I

    .line 1448
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mNoRxStatStayed:I

    .line 1449
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->mNoRxCheckCountInGoodCondition:I

    .line 1450
    const v17, 0x2102b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$DataActivityHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1361
    :pswitch_data_0
    .packed-switch 0x21029
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
