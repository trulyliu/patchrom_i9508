.class final Lcom/android/server/ssrm/Monitor$3;
.super Landroid/content/BroadcastReceiver;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1271
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private displayAllStates()V
    .locals 3

    .prologue
    .line 1702
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n Battery Remaining : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/ssrm/Monitor;->mBatteyRemaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Battery Charging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mBatteryCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Battery Full:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mBatteryFull:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nWifi Enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->wifiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Wifi Connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nAirPlaneMode Status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUsb Status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nBluetooth Enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mBluetoothEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Bluetooth Connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mBluetoothConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nPower Connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mPowerConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nPower Saving Mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nScreen On"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1715
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mhandle is ! null On"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    :goto_0
    return-void

    .line 1717
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mhandle is null On"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAutoBrightnessEnabled(Landroid/content/ContentResolver;)Z
    .locals 4
    .parameter "contentResolver"

    .prologue
    const/4 v2, 0x1

    .line 1689
    const/4 v0, 0x0

    .line 1691
    .local v0, automicBrightness:Z
    :try_start_0
    const-string v3, "screen_brightness_mode"

    invoke-static {p1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .line 1698
    :cond_0
    :goto_0
    return v0

    .line 1691
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1693
    :catch_0
    move-exception v1

    .line 1694
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1695
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1274
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1277
    .local v3, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->getInstance()Lcom/android/server/ssrm/AirViewOnOff;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/AirViewOnOff;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1281
    :try_start_0
    const-class v21, Lcom/android/server/ssrm/KfcControl;

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1282
    const-class v21, Lcom/android/server/ssrm/mDNLeOnOff;

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1283
    const-class v21, Lcom/android/server/ssrm/DvfsUpThreshold;

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1284
    const-class v21, Lcom/android/server/ssrm/TurboModeOnOff;

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1285
    const-class v21, Lcom/android/server/ssrm/ScreenMirroringBooster;

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1292
    :goto_0
    const-string v21, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1293
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v21

    const-string v22, "onReceive:: ACTION_BOOT_COMPLETED is received."

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    .line 1297
    const-string v21, "jf"

    const-string v22, "jf"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1298
    new-instance v21, Ljava/lang/Thread;

    new-instance v22, Lcom/android/server/ssrm/Monitor$3$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/Monitor$3$1;-><init>(Lcom/android/server/ssrm/Monitor$3;)V

    invoke-direct/range {v21 .. v22}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    .line 1331
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Lcom/android/server/ssrm/PolicyCreator;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/ssrm/PolicyCreator;->createPolicyFile()V

    .line 1333
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "psm_switch"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 1335
    .local v15, powersavingState:I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_1

    .line 1336
    const/16 v21, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->onPowerSavingModeChanged(Z)V
    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$3400(Z)V

    .line 1686
    .end local v15           #powersavingState:I
    :cond_1
    :goto_1
    return-void

    .line 1286
    :catch_0
    move-exception v9

    .line 1287
    .local v9, e1:Ljava/lang/InstantiationException;
    invoke-virtual {v9}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 1288
    .end local v9           #e1:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v10

    .line 1289
    .local v10, e2:Ljava/lang/IllegalAccessException;
    invoke-virtual {v10}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 1345
    .end local v10           #e2:Ljava/lang/IllegalAccessException;
    :cond_2
    const-string v21, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1346
    const-string v21, "level"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    sput v21, Lcom/android/server/ssrm/Monitor;->mBatteyRemaining:I

    .line 1348
    sget v21, Lcom/android/server/ssrm/Monitor;->mBatteyRemaining:I

    const/16 v22, 0x64

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 1349
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBatteryFull:Z

    .line 1355
    :cond_3
    const-string v21, "status"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1357
    .local v6, battStatus:I
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v6, v0, :cond_5

    .line 1358
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBatteryCharging:Z

    .line 1371
    :cond_4
    :goto_2
    const-string v21, "plugged"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1373
    .local v5, battPlugged:I
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v5, v0, :cond_8

    .line 1374
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    goto :goto_1

    .line 1359
    .end local v5           #battPlugged:I
    :cond_5
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v6, v0, :cond_6

    .line 1360
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBatteryCharging:Z

    goto :goto_2

    .line 1361
    :cond_6
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v6, v0, :cond_7

    .line 1362
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBatteryFull:Z

    goto :goto_2

    .line 1363
    :cond_7
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v6, v0, :cond_4

    .line 1364
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBatteryCharging:Z

    goto :goto_2

    .line 1376
    .restart local v5       #battPlugged:I
    :cond_8
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    goto/16 :goto_1

    .line 1384
    .end local v5           #battPlugged:I
    .end local v6           #battStatus:I
    :cond_9
    const-string v21, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1385
    const-string v21, "state"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1387
    .local v4, airplaneMode:Z
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v21

    if-eqz v21, :cond_a

    .line 1388
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x3e8

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1389
    :cond_a
    if-eqz v4, :cond_b

    .line 1390
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    goto/16 :goto_1

    .line 1393
    :cond_b
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    goto/16 :goto_1

    .line 1402
    .end local v4           #airplaneMode:Z
    :cond_c
    const-string v21, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 1403
    const-string v21, "wifi_state"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 1405
    .local v20, wifiState:I
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 1406
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->wifiEnabled:Z

    goto/16 :goto_1

    .line 1407
    :cond_d
    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1408
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->wifiEnabled:Z

    goto/16 :goto_1

    .line 1414
    .end local v20           #wifiState:I
    :cond_e
    const-string v21, "android.intent.action.ACTION_POWER_CONNECTED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 1415
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mPowerConnected:Z

    goto/16 :goto_1

    .line 1422
    :cond_f
    const-string v21, "android.intent.action.ACTION_POWER_DISCONNECTED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 1423
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mPowerConnected:Z

    goto/16 :goto_1

    .line 1425
    :cond_10
    const-string v21, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 1426
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    .line 1427
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v21

    if-eqz v21, :cond_11

    .line 1428
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->resetFPS()V

    .line 1432
    :cond_11
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    goto/16 :goto_1

    .line 1434
    :cond_12
    const-string v21, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 1435
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    .line 1438
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v21

    const-string v22, "ACTION_SCREEN_OFF:: limitChargingCurrent = -1"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const/16 v21, -0x1

    #calls: Lcom/android/server/ssrm/Monitor;->limitChargingCurrent(I)V
    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$3600(I)V

    goto/16 :goto_1

    .line 1442
    :cond_13
    const-string v21, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 1443
    const-string v21, "1"

    const-string v22, "sys.multiwindow.running"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mMultiWindowRunning:Z

    .line 1444
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v21

    if-eqz v21, :cond_1

    .line 1445
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto/16 :goto_1

    .line 1451
    :cond_14
    const-string v21, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 1452
    const-string v21, "android.bluetooth.adapter.extra.STATE"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1454
    .local v7, bluetoothState:I
    const/16 v21, 0xc

    move/from16 v0, v21

    if-ne v7, v0, :cond_15

    .line 1455
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBluetoothEnabled:Z

    goto/16 :goto_1

    .line 1456
    :cond_15
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v7, v0, :cond_16

    .line 1457
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBluetoothEnabled:Z

    .line 1458
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBluetoothConnected:Z

    goto/16 :goto_1

    .line 1459
    :cond_16
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v7, v0, :cond_17

    .line 1460
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBluetoothConnected:Z

    goto/16 :goto_1

    .line 1461
    :cond_17
    if-nez v7, :cond_1

    .line 1462
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBluetoothConnected:Z

    goto/16 :goto_1

    .line 1468
    .end local v7           #bluetoothState:I
    :cond_18
    const-string v21, "android.settings.POWERSAVING_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 1469
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "psm_switch"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 1471
    .restart local v15       #powersavingState:I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_19

    .line 1472
    const/16 v21, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->onPowerSavingModeChanged(Z)V
    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$3400(Z)V

    goto/16 :goto_1

    .line 1474
    :cond_19
    const/16 v21, 0x0

    #calls: Lcom/android/server/ssrm/Monitor;->onPowerSavingModeChanged(Z)V
    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$3400(Z)V

    goto/16 :goto_1

    .line 1480
    .end local v15           #powersavingState:I
    :cond_1a
    const-string v21, "com.sec.android.intent.action.SSRM_REQUEST"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_30

    .line 1482
    const-string v21, "SSRM_STATUS_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1483
    .local v17, statusName:Ljava/lang/String;
    const-string v21, "SSRM_STATUS_VALUE"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 1484
    .local v18, statusValue:Z
    const-string v21, "PackageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1485
    .local v13, packageName:Ljava/lang/String;
    const-string v21, "PID"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1487
    .local v14, pid:I
    const-string v21, "FullScreen"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 1488
    sput-boolean v18, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    .line 1489
    sget-boolean v21, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    sget-boolean v22, Lcom/android/server/ssrm/Monitor;->mPrevFpsFullScreen:Z

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1c

    .line 1490
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v21

    if-eqz v21, :cond_1b

    .line 1491
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 1493
    :cond_1b
    sget-boolean v21, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mPrevFpsFullScreen:Z

    .line 1497
    :cond_1c
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_1

    if-eqz v17, :cond_1

    .line 1501
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "BroadcastReceiver::onReceive SSRM_STATUS_NOTIFY with statusName = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "  statusValue ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    if-lez v14, :cond_21

    .line 1506
    const-string v21, "Camera_preview"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1d

    const-string v21, "MoviePlayer_play"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1d

    const-string v21, "TMap_show"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1d

    const-string v21, "SIP_show"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1d

    const-string v21, "ChatOnV_vtCall"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1d

    const-string v21, "GroupPlay_fpsChange"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1d

    const-string v21, "Phone_vtCall"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f

    .line 1513
    :cond_1d
    if-eqz v18, :cond_28

    move/from16 v21, v14

    :goto_3
    sput v21, Lcom/android/server/ssrm/Monitor;->mPermanentAppPID:I

    .line 1514
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v21

    if-eqz v21, :cond_1e

    .line 1515
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 1517
    :cond_1e
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$3702(Z)Z

    .line 1519
    :cond_1f
    const-string v21, "TMap_show"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_20

    .line 1520
    invoke-static/range {v18 .. v18}, Lcom/android/server/ssrm/Monitor;->access$3802(Z)Z

    .line 1521
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    .line 1524
    :cond_20
    const-string v21, "GroupPlay_gpuLock"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_21

    .line 1525
    const-string v21, "jf"

    const-string v22, "jf"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2a

    .line 1526
    if-eqz v18, :cond_29

    .line 1527
    const-string v21, "/sys/class/kgsl/kgsl-3d0/max_pwrlevel"

    const/16 v22, 0x3

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    .line 1541
    :cond_21
    :goto_4
    const-string v21, "BrowserLowFps"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_22

    .line 1542
    sput-boolean v18, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    .line 1543
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v21

    if-eqz v21, :cond_22

    .line 1544
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 1548
    :cond_22
    sget-boolean v21, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CAMERA_DUAL_RECORD:Z

    if-eqz v21, :cond_25

    .line 1549
    const-string v21, "Camera_recording"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_23

    const-string v21, "Camera_recordingDual"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_25

    .line 1550
    :cond_23
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3900()Z

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-eq v0, v1, :cond_24

    .line 1551
    invoke-static/range {v18 .. v18}, Lcom/android/server/ssrm/Monitor;->access$3902(Z)Z

    .line 1552
    const/16 v21, 0x0

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$1800(Z)V

    .line 1554
    :cond_24
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$3702(Z)Z

    .line 1558
    :cond_25
    sget-boolean v21, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CAMERA_DRAMA_SHOT:Z

    if-eqz v21, :cond_27

    .line 1559
    const-string v21, "Camera_panoramaShot"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_26

    const-string v21, "Camera_dramaShot"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_27

    .line 1560
    :cond_26
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Z

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-eq v0, v1, :cond_27

    .line 1561
    invoke-static/range {v18 .. v18}, Lcom/android/server/ssrm/Monitor;->access$3702(Z)Z

    .line 1562
    const/16 v21, 0x0

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$1800(Z)V

    .line 1567
    :cond_27
    sget-boolean v21, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_BROWSER_BOOSTER:Z

    if-eqz v21, :cond_2c

    .line 1568
    const-string v21, "Browser_loading_URL"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2c

    .line 1569
    const-string v21, "URL"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1570
    .local v19, url:Ljava/lang/String;
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_1

    .line 1571
    const-string v21, "Browser_leaving_URL"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 1573
    .local v11, isLeaving:Z
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4000()Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11, v13, v14}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->handleURL(Ljava/lang/String;ZLjava/lang/String;I)V

    goto/16 :goto_1

    .line 1513
    .end local v11           #isLeaving:Z
    .end local v19           #url:Ljava/lang/String;
    :cond_28
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1529
    :cond_29
    const-string v21, "/sys/class/kgsl/kgsl-3d0/max_pwrlevel"

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1531
    :cond_2a
    const-string v21, "ja"

    const-string v22, "jf"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_21

    .line 1532
    if-eqz v18, :cond_2b

    .line 1533
    const-string v21, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    const/16 v22, 0x10a

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1535
    :cond_2b
    const-string v21, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1579
    :cond_2c
    if-eqz v18, :cond_2d

    .line 1580
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 1581
    .local v12, msg:Landroid/os/Message;
    const/16 v21, 0x2

    move/from16 v0, v21

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1582
    const/16 v21, 0x3

    move/from16 v0, v21

    iput v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v0, v21

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 1583
    iput-object v13, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1584
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v21

    const-wide/16 v22, 0xc8

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1594
    :goto_5
    const-string v21, "BenchmarkBooster"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1595
    if-eqz v18, :cond_2e

    .line 1596
    const/16 v21, -0x1

    #calls: Lcom/android/server/ssrm/Monitor;->limitCPUFreq(I)V
    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$4100(I)V

    .line 1597
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$4202(Z)Z

    .line 1598
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Benchmark is working now. SIOP will not control CPU max freq any more"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1586
    .end local v12           #msg:Landroid/os/Message;
    :cond_2d
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 1587
    .restart local v12       #msg:Landroid/os/Message;
    const/16 v21, 0x2

    move/from16 v0, v21

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1588
    const/16 v21, 0x4

    move/from16 v0, v21

    iput v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v0, v21

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 1589
    iput-object v13, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1590
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 1600
    :cond_2e
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$4202(Z)Z

    .line 1601
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4300()Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-result-object v21

    if-eqz v21, :cond_2f

    .line 1602
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$4300()Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-result-object v21

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v21

    #calls: Lcom/android/server/ssrm/Monitor;->limitCPUFreq(I)V
    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$4100(I)V

    .line 1604
    :cond_2f
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Benchmark is done now. SIOP will control CPU max freq again"

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1609
    .end local v12           #msg:Landroid/os/Message;
    .end local v13           #packageName:Ljava/lang/String;
    .end local v14           #pid:I
    .end local v17           #statusName:Ljava/lang/String;
    .end local v18           #statusValue:Z
    :cond_30
    const-string v21, "ResponseAxT9Info"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_31

    .line 1610
    #calls: Lcom/android/server/ssrm/Monitor;->onSIPIntentReceived(Landroid/content/Intent;)V
    invoke-static/range {p2 .. p2}, Lcom/android/server/ssrm/Monitor;->access$4400(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1613
    :cond_31
    const-string v21, "com.sec.android.intent.action.DVFS_FG_PROCESS_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3d

    .line 1614
    sget-boolean v21, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    if-eqz v21, :cond_32

    .line 1615
    invoke-static {}, Lcom/android/server/ssrm/TouchBusBooster;->getInstance()Lcom/android/server/ssrm/TouchBusBooster;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/TouchBusBooster;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1618
    :cond_32
    sget-boolean v21, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_BROWSER_BRIGHTNESS:Z

    if-eqz v21, :cond_34

    .line 1619
    const-string v21, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1620
    .restart local v13       #packageName:Ljava/lang/String;
    const-string v21, "PROCESS_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1621
    .local v16, processState:Ljava/lang/String;
    const-string v21, "FOREGROUND"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_34

    .line 1622
    const-string v21, "com.sec.android.app.sbrowser"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_33

    const-string v21, "com.android.chrome"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_37

    .line 1623
    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/Monitor$3;->isAutoBrightnessEnabled(Landroid/content/ContentResolver;)Z

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$1602(Z)Z

    .line 1624
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$1702(Z)Z

    .line 1625
    const/16 v21, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$1800(Z)V

    .line 1634
    .end local v13           #packageName:Ljava/lang/String;
    .end local v16           #processState:Ljava/lang/String;
    :cond_34
    :goto_6
    const-string v21, "FOREGROUND"

    const-string v22, "PROCESS_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3c

    .line 1635
    const-string v21, "com.google.android.youtube"

    const-string v22, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_35

    const-string v21, "com.android.chrome"

    const-string v22, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_38

    .line 1636
    :cond_35
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    .line 1637
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    .line 1638
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    .line 1648
    :goto_7
    sget-boolean v21, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    sget-boolean v22, Lcom/android/server/ssrm/Monitor;->mPrevFpsPackage:Z

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3a

    .line 1649
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v21

    if-eqz v21, :cond_36

    .line 1650
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 1652
    :cond_36
    sget-boolean v21, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mPrevFpsPackage:Z

    goto/16 :goto_1

    .line 1627
    .restart local v13       #packageName:Ljava/lang/String;
    .restart local v16       #processState:Ljava/lang/String;
    :cond_37
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1700()Z

    move-result v21

    if-eqz v21, :cond_34

    .line 1628
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$1702(Z)Z

    .line 1629
    const/16 v21, 0x1

    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor;->access$1800(Z)V

    goto :goto_6

    .line 1639
    .end local v13           #packageName:Ljava/lang/String;
    .end local v16           #processState:Ljava/lang/String;
    :cond_38
    const-string v21, "com.sec.android.app.sbrowser"

    const-string v22, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_39

    .line 1640
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    .line 1641
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    goto :goto_7

    .line 1643
    :cond_39
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    .line 1644
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    .line 1645
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    goto :goto_7

    .line 1653
    :cond_3a
    sget-boolean v21, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    sget-boolean v22, Lcom/android/server/ssrm/Monitor;->mPrevBrowserLowFps:Z

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 1654
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v21

    if-eqz v21, :cond_3b

    .line 1655
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3500()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 1657
    :cond_3b
    sget-boolean v21, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    sput-boolean v21, Lcom/android/server/ssrm/Monitor;->mPrevBrowserLowFps:Z

    goto/16 :goto_1

    .line 1659
    :cond_3c
    const-string v21, "BACKGROUND"

    const-string v22, "PROCESS_STATE"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1660
    const-string v21, "com.samsung.groupcast"

    const-string v22, "PACKAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1661
    const-string v21, "/sys/class/kgsl/kgsl-3d0/max_pwrlevel"

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1666
    :cond_3d
    const-string v21, "android.intent.action.SECURE_PLAYBACK_START"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3e

    .line 1667
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1668
    .local v8, boostIntent:Landroid/content/Intent;
    const-string v21, "com.sec.android.intent.action.SSRM_REQUEST"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1669
    const-string v21, "SSRM_STATUS_NAME"

    const-string v22, "SecurePlayback_play"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    const-string v21, "SSRM_STATUS_VALUE"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1671
    const-string v21, "PackageName"

    const-string v22, "android.av.media.libstagefright"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    const-string v21, "PID"

    const/16 v22, 0x100

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1673
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1500()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1676
    .end local v8           #boostIntent:Landroid/content/Intent;
    :cond_3e
    const-string v21, "android.intent.action.SECURE_PLAYBACK_STOP"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1677
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1678
    .restart local v8       #boostIntent:Landroid/content/Intent;
    const-string v21, "com.sec.android.intent.action.SSRM_REQUEST"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1679
    const-string v21, "SSRM_STATUS_NAME"

    const-string v22, "SecurePlayback_play"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1680
    const-string v21, "SSRM_STATUS_VALUE"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1681
    const-string v21, "PackageName"

    const-string v22, "android.av.media.libstagefright"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1682
    const-string v21, "PID"

    const/16 v22, 0x100

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1683
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1500()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
