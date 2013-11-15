.class Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WFDSourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WFDSourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WFDSourceService;


# direct methods
.method private constructor <init>(Lcom/samsung/wfd/WFDSourceService;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WFDSourceService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;-><init>(Lcom/samsung/wfd/WFDSourceService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 380
    invoke-static {}, Lcom/samsung/wfd/WFDSourceService;->access$100()Ljava/lang/Object;

    move-result-object v29

    monitor-enter v29

    .line 381
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 382
    .local v8, action:Ljava/lang/String;
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent recieved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v2, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 386
    const-string v2, "Control"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 387
    .local v23, strSessionControl:Ljava/lang/String;
    if-eqz v23, :cond_0

    const-string v2, "terminate"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    monitor-exit v29

    .line 616
    .end local v23           #strSessionControl:Ljava/lang/String;
    :goto_0
    return-void

    .line 391
    .restart local v23       #strSessionControl:Ljava/lang/String;
    :cond_0
    const-string v2, "res"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 392
    .local v19, resolution:I
    const-string v2, "3D"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 393
    .local v22, str3d:Ljava/lang/String;
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recvd resolution from app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 3d:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v14, 0x0

    .line 395
    .local v14, dim_mode:I
    if-eqz v22, :cond_2

    const-string v2, "Yes"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    const/4 v14, 0x1

    .line 404
    :goto_1
    const/16 v28, 0x0

    .line 405
    .local v28, width:I
    const/16 v16, 0x0

    .line 407
    .local v16, height:I
    and-int/lit8 v2, v19, 0x1

    if-eqz v2, :cond_3

    .line 409
    const/16 v28, 0x280

    .line 410
    const/16 v16, 0x1e0

    .line 444
    :goto_2
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Choosing the width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v2, 0x0

    move/from16 v0, v28

    move/from16 v1, v16

    invoke-static {v2, v0, v1, v14}, Lcom/samsung/wfd/WFDNative;->changeParams(IIII)Z

    .line 615
    .end local v14           #dim_mode:I
    .end local v16           #height:I
    .end local v19           #resolution:I
    .end local v22           #str3d:Ljava/lang/String;
    .end local v23           #strSessionControl:Ljava/lang/String;
    .end local v28           #width:I
    :cond_1
    :goto_3
    monitor-exit v29

    goto/16 :goto_0

    .end local v8           #action:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 399
    .restart local v8       #action:Ljava/lang/String;
    .restart local v14       #dim_mode:I
    .restart local v19       #resolution:I
    .restart local v22       #str3d:Ljava/lang/String;
    .restart local v23       #strSessionControl:Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 412
    .restart local v16       #height:I
    .restart local v28       #width:I
    :cond_3
    and-int/lit8 v2, v19, 0x2

    if-eqz v2, :cond_4

    .line 414
    const/16 v28, 0x2d0

    .line 415
    const/16 v16, 0x1e0

    goto :goto_2

    .line 417
    :cond_4
    and-int/lit8 v2, v19, 0x4

    if-eqz v2, :cond_5

    .line 419
    const/16 v28, 0x2d0

    .line 420
    const/16 v16, 0x240

    goto :goto_2

    .line 422
    :cond_5
    and-int/lit8 v2, v19, 0x8

    if-eqz v2, :cond_6

    .line 424
    const/16 v28, 0x500

    .line 425
    const/16 v16, 0x2d0

    goto :goto_2

    .line 427
    :cond_6
    and-int/lit8 v2, v19, 0x10

    if-eqz v2, :cond_7

    .line 429
    const/16 v28, 0x780

    .line 430
    const/16 v16, 0x438

    goto :goto_2

    .line 432
    :cond_7
    and-int/lit8 v2, v19, 0x20

    if-eqz v2, :cond_8

    .line 434
    const/16 v28, 0x320

    .line 435
    const/16 v16, 0x258

    goto :goto_2

    .line 440
    :cond_8
    const/16 v28, 0x500

    .line 441
    const/16 v16, 0x2d0

    goto :goto_2

    .line 446
    .end local v14           #dim_mode:I
    .end local v16           #height:I
    .end local v19           #resolution:I
    .end local v22           #str3d:Ljava/lang/String;
    .end local v23           #strSessionControl:Ljava/lang/String;
    .end local v28           #width:I
    :cond_9
    :try_start_1
    const-string v2, "com.samsung.wfd.WFD_SESSION_TEARDOWN"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 447
    const-string v2, "WFDSourceService"

    const-string v3, "Recived WFD_SESSION_TEARDOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x1

    #setter for: Lcom/samsung/wfd/WFDSourceService;->teardownFromApp:Z
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$202(Lcom/samsung/wfd/WFDSourceService;Z)Z

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-virtual {v2}, Lcom/samsung/wfd/WFDSourceService;->teardown()I

    goto :goto_3

    .line 450
    :cond_a
    const-string v2, "com.samsung.wfd.WFD_SESSION_STOP"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 451
    const-string v2, "WFDSourceService"

    const-string v3, "Recived WFD_SESSION_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-virtual {v2}, Lcom/samsung/wfd/WFDSourceService;->stop()I

    goto :goto_3

    .line 453
    :cond_b
    const-string v2, "com.samsung.wfd.WFD_SESSION_PAUSE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 454
    const-string v2, "WFDSourceService"

    const-string v3, "Recived WFD_SESSION_PAUSE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x0

    #calls: Lcom/samsung/wfd/WFDSourceService;->internalPause(Z)I
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$300(Lcom/samsung/wfd/WFDSourceService;Z)I

    goto/16 :goto_3

    .line 456
    :cond_c
    const-string v2, "com.samsung.wfd.WFD_SESSION_RESUME"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 457
    const-string v2, "WFDSourceService"

    const-string v3, "Recived WFD_SESSION_RESUME"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x0

    #calls: Lcom/samsung/wfd/WFDSourceService;->internalPlay(Z)I
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$400(Lcom/samsung/wfd/WFDSourceService;Z)I

    goto/16 :goto_3

    .line 459
    :cond_d
    const-string v2, "com.samsung.wfd.WFD_SESSION_START"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 460
    const-string v2, "WFDSourceService"

    const-string v3, "Recived WFD_SESSION_START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mSessionId:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$500(Lcom/samsung/wfd/WFDSourceService;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    .line 462
    const-string v2, "WFDSourceService"

    const-string v3, "Session ID not NULL, close previous session first"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    monitor-exit v29

    goto/16 :goto_0

    .line 465
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const-string v2, "wfdPeerDeviceDescriptor"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/wfd/WfdDevice;

    #setter for: Lcom/samsung/wfd/WFDSourceService;->mPeerDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v3, v2}, Lcom/samsung/wfd/WFDSourceService;->access$602(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WfdDevice;)Lcom/samsung/wfd/WfdDevice;

    .line 466
    const-string v2, "wfdCustomSetting"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 467
    .local v13, customSetting:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    new-instance v3, Lcom/samsung/wfd/WfdDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mPeerDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$600(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdDevice;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/wfd/WfdDevice;-><init>(Lcom/samsung/wfd/WfdDevice;)V

    #setter for: Lcom/samsung/wfd/WFDSourceService;->mMyDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$702(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WfdDevice;)Lcom/samsung/wfd/WfdDevice;

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mMyDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$700(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdDevice;

    move-result-object v2

    new-instance v3, Lcom/samsung/wfd/WfdInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/wfd/WfdInfo;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/samsung/wfd/WfdDevice;->setWfdInfo(Lcom/samsung/wfd/WfdInfo;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mMyDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$700(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdDevice;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/wfd/WFDNative;->enableWfd(Lcom/samsung/wfd/WfdDevice;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 473
    const/4 v2, 0x1

    if-ne v13, v2, :cond_f

    .line 474
    sget-object v2, Lcom/samsung/wfd/WfdEnums$CapabilityType;->WFD_CONTENT_PROTECTION_SUPPORTED:Lcom/samsung/wfd/WfdEnums$CapabilityType;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdEnums$CapabilityType;->getType()I

    move-result v2

    const-string v3, "<ContentProtection>\\n <HDCPValid>0</HDCPValid>\\n </ContentProtection>"

    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDNative;->setCapability(ILjava/lang/String;)V

    .line 475
    const-string v2, "WFDSourceService"

    const-string v3, "set 0 protection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v2, "WFDSourceService"

    const-string v3, "!!!!custom setting!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mPeerDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$600(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdDevice;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/wfd/WFDNative;->startWfdSession(Lcom/samsung/wfd/WfdDevice;)V

    goto/16 :goto_3

    .line 481
    :cond_10
    const-string v2, "WFDSourceService"

    const-string v3, "WFD NOT Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 483
    .end local v13           #customSetting:I
    :cond_11
    const-string v2, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 484
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk On Receive << ACTION_WIFI_DISPLAY_TCP_TRANSPORT Prev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$800(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isWiredHeadsetOn() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$900(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isBluetoothA2dpOn() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$900(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$1000(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$SessionState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " noError : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->noError:Z
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$1100(Lcom/samsung/wfd/WFDSourceService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$900(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$900(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 488
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-virtual {v2}, Lcom/samsung/wfd/WFDSourceService;->teardownForAudioOut()V

    goto/16 :goto_3

    .line 490
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$800(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v2

    sget-object v3, Lcom/samsung/wfd/WfdEnums$ConnectionType;->UDP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1000(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$SessionState;

    move-result-object v2

    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->noError:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1100(Lcom/samsung/wfd/WFDSourceService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    const/16 v24, 0x1

    .line 493
    .local v24, transportType:I
    const/16 v11, 0x9c4

    .line 494
    .local v11, bufferLengthMs:I
    const/16 v18, 0x4a3a

    .line 495
    .local v18, port:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk Calculted type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bufferLengthMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x0

    move/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v2, v0, v11, v1, v3}, Lcom/samsung/wfd/WFDSourceService;->setRtpTransport(IIIZ)I

    move-result v20

    .line 497
    .local v20, ret:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk setRtpTransport returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    if-ltz v20, :cond_14

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$ConnectionType;->TCP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    #setter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$802(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WfdEnums$ConnectionType;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    .line 501
    const-string v2, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    const/4 v3, 0x1

    #calls: Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;I)V
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$1200(Ljava/lang/String;I)V

    .line 503
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x1

    #setter for: Lcom/samsung/wfd/WFDSourceService;->tcpJustSwitched:Z
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$1302(Lcom/samsung/wfd/WFDSourceService;Z)Z

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/wfd/WFDSourceService;->tcpPlaybackControl(II)I

    goto/16 :goto_3

    .line 508
    .end local v11           #bufferLengthMs:I
    .end local v18           #port:I
    .end local v20           #ret:I
    .end local v24           #transportType:I
    :cond_15
    const-string v2, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->noError:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1100(Lcom/samsung/wfd/WFDSourceService;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 509
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk On Receive << ACTION_WIFI_DISPLAY_UDP_TRANSPORT Prev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$800(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$800(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v2

    sget-object v3, Lcom/samsung/wfd/WfdEnums$ConnectionType;->TCP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    if-ne v2, v3, :cond_1

    .line 512
    const/16 v24, 0x0

    .line 513
    .restart local v24       #transportType:I
    const/4 v11, 0x0

    .line 514
    .restart local v11       #bufferLengthMs:I
    const/16 v18, 0x4a38

    .line 515
    .restart local v18       #port:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk Calculted type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bufferLengthMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x0

    move/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v2, v0, v11, v1, v3}, Lcom/samsung/wfd/WFDSourceService;->setRtpTransport(IIIZ)I

    move-result v20

    .line 517
    .restart local v20       #ret:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk setRtpTransport returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-ltz v20, :cond_1

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$ConnectionType;->UDP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    #setter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$802(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WfdEnums$ConnectionType;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    .line 521
    const-string v2, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    const/4 v3, 0x0

    #calls: Lcom/samsung/wfd/WFDSourceService;->sendBroadcastIntent(Ljava/lang/String;I)V
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$1200(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 524
    .end local v11           #bufferLengthMs:I
    .end local v18           #port:I
    .end local v20           #ret:I
    .end local v24           #transportType:I
    :cond_16
    const-string v2, "android.intent.action.WIFI_DISPLAY_RESOLUTION"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 525
    const/4 v15, 0x3

    .line 526
    .local v15, formatType:I
    const/16 v25, 0x1

    .line 527
    .local v25, value:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calculated formatType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move/from16 v0, v25

    #calls: Lcom/samsung/wfd/WFDSourceService;->setResolution(II)I
    invoke-static {v2, v15, v0}, Lcom/samsung/wfd/WFDSourceService;->access$1400(Lcom/samsung/wfd/WFDSourceService;II)I

    move-result v20

    .line 529
    .restart local v20       #ret:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setResoltuion returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 530
    .end local v15           #formatType:I
    .end local v20           #ret:I
    .end local v25           #value:I
    :cond_17
    const-string v2, "android.intent.action.WIFI_DISPLAY_BITRATE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 531
    const-string v2, "value"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 532
    .local v10, bitrate:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calculated bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #calls: Lcom/samsung/wfd/WFDSourceService;->setBitrate(I)I
    invoke-static {v2, v10}, Lcom/samsung/wfd/WFDSourceService;->access$1500(Lcom/samsung/wfd/WFDSourceService;I)I

    move-result v20

    .line 534
    .restart local v20       #ret:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBitrate returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 536
    .end local v10           #bitrate:I
    .end local v20           #ret:I
    :cond_18
    const-string v2, "android.intent.action.WIFI_DISPLAY_BUFFERING_DO"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->setBufferingMode(I)I

    goto/16 :goto_3

    .line 540
    :cond_19
    const-string v2, "android.intent.action.WIFI_DISPLAY_BUFFERING_DONE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->setBufferingMode(I)I

    goto/16 :goto_3

    .line 545
    :cond_1a
    const-string v2, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 546
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/samsung/wfd/WFDNative;->sendUpdateUserInput(I)Z

    goto/16 :goto_3

    .line 547
    :cond_1b
    const-string v2, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 548
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/wfd/WFDNative;->sendUpdateUserInput(I)Z

    goto/16 :goto_3

    .line 549
    :cond_1c
    const-string v2, "android.intent.action.SECURE_START"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "android.intent.action.SECURE_END"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->noError:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1100(Lcom/samsung/wfd/WFDSourceService;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 550
    const-string v2, "WFDSourceService"

    const-string v3, "On Receive << ACTION_SECURE_START or ACTION_SECURE_END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x1

    #calls: Lcom/samsung/wfd/WFDSourceService;->internalPause(Z)I
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$300(Lcom/samsung/wfd/WFDSourceService;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 554
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 555
    :cond_1e
    :try_start_3
    const-string v2, "android.intent.action.SECURE_START_DONE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "android.intent.action.SECURE_END_DONE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->noError:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1100(Lcom/samsung/wfd/WFDSourceService;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 556
    const-string v2, "WFDSourceService"

    const-string v3, "On Receive << ACTION_SECURE_START_DONE or ACTION_SECURE_END_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x1

    #calls: Lcom/samsung/wfd/WFDSourceService;->internalPlay(Z)I
    invoke-static {v2, v3}, Lcom/samsung/wfd/WFDSourceService;->access$400(Lcom/samsung/wfd/WFDSourceService;Z)I

    goto/16 :goto_3

    .line 558
    :cond_20
    const-string v2, "android.intent.action.WIFI_DISPLAY_TCP_PLAYBACK_CONTROL"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1000(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$SessionState;

    move-result-object v2

    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v2, v3, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->noError:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1100(Lcom/samsung/wfd/WFDSourceService;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 559
    const-string v2, "WFDSourceService"

    const-string v3, "kkk [B3] On Receive << ACTION_WIFI_DISPLAY_TCP_PLAYBACK_CONTROL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v2, "type"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 561
    .local v12, cmdType:I
    const-string v2, "volume"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 562
    .local v26, volume:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk [B3] Calculated type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move/from16 v0, v26

    invoke-virtual {v2, v12, v0}, Lcom/samsung/wfd/WFDSourceService;->tcpPlaybackControl(II)I

    move-result v20

    .line 564
    .restart local v20       #ret:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk [B3] tcpPlaybackControl returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 565
    .end local v12           #cmdType:I
    .end local v20           #ret:I
    .end local v26           #volume:I
    :cond_21
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mState:Lcom/samsung/wfd/WfdEnums$SessionState;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1000(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$SessionState;

    move-result-object v2

    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    if-ne v2, v3, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->noError:Z
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1100(Lcom/samsung/wfd/WFDSourceService;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->preventCounter:I
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1600(Lcom/samsung/wfd/WFDSourceService;)I

    move-result v2

    if-nez v2, :cond_22

    .line 567
    const-string v2, "WFDSourceService"

    const-string v3, "kkk [B3] On Receive << AudioManager.VOLUME_CHANGED_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 570
    .local v9, audio_type:I
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 571
    .local v27, volume_value:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk [B3] audio_type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volume_value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v2, 0x3

    if-ne v9, v2, :cond_1

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    const/4 v3, 0x4

    move/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Lcom/samsung/wfd/WFDSourceService;->tcpPlaybackControl(II)I

    move-result v20

    .line 574
    .restart local v20       #ret:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kkk [B3] tcpPlaybackControl returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 577
    .end local v9           #audio_type:I
    .end local v20           #ret:I
    .end local v27           #volume_value:I
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$1606(Lcom/samsung/wfd/WFDSourceService;)I

    goto/16 :goto_3

    .line 579
    :cond_23
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 580
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action << WIFIDISPLAY_HEADSET_PLUG, MODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$800(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v2, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 582
    const-string v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_24

    .line 583
    const-string v2, "WFDSourceService"

    const-string v3, "headset out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 585
    :cond_24
    const-string v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$800(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v2

    sget-object v3, Lcom/samsung/wfd/WfdEnums$ConnectionType;->TCP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    if-ne v2, v3, :cond_1

    .line 586
    const-string v2, "WFDSourceService"

    const-string v3, "headset in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-virtual {v2}, Lcom/samsung/wfd/WFDSourceService;->teardownForAudioOut()V

    goto/16 :goto_3

    .line 590
    :cond_25
    const-string v2, "android.intent.action.WIFI_DISPLAY_PLAYBACK_MODE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 591
    const-string v2, "mode"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 592
    .local v17, mode:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calculated mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/wfd/WFDSourceService;->setAvPlaybackMode(I)I

    move-result v20

    .line 594
    .restart local v20       #ret:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAvPlaybackMode returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 595
    .end local v17           #mode:I
    .end local v20           #ret:I
    :cond_26
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 596
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 597
    .local v21, state:I
    const-string v2, "WFDSourceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action << WIFIDISPLAY_BLUETOOTH_HEADSET_ACTION, state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v4}, Lcom/samsung/wfd/WFDSourceService;->access$800(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_1

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    move-object/from16 v30, v0

    new-instance v2, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver$1;

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x3e8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver$1;-><init>(Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;JJ)V

    invoke-virtual {v2}, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver$1;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    move-object/from16 v0, v30

    iput-object v2, v0, Lcom/samsung/wfd/WFDSourceService;->mCountdown:Landroid/os/CountDownTimer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method
