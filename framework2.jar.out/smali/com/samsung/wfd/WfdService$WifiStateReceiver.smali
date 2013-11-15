.class Lcom/samsung/wfd/WfdService$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WfdService;


# direct methods
.method private constructor <init>(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 563
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WifiStateReceiver;-><init>(Lcom/samsung/wfd/WfdService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 566
    monitor-enter p0

    .line 567
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "intent recieved "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 570
    const-string v12, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 572
    const-string v12, "wifi_p2p_state"

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 574
    .local v10, state:I
    packed-switch v10, :pswitch_data_0

    .line 957
    .end local v10           #state:I
    :cond_0
    :goto_0
    monitor-exit p0

    .line 958
    :goto_1
    return-void

    .line 577
    .restart local v10       #state:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x1

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$202(Lcom/samsung/wfd/WfdService;Z)Z

    .line 578
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 579
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v13}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 581
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$500(Lcom/samsung/wfd/WfdService;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 582
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->startWfdRoutine()V
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)V

    goto :goto_0

    .line 957
    .end local v1           #action:Ljava/lang/String;
    .end local v10           #state:I
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 584
    .restart local v1       #action:Ljava/lang/String;
    .restart local v10       #state:I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "Wfd is not enabled from Picker"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$202(Lcom/samsung/wfd/WfdService;Z)Z

    .line 590
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$702(Lcom/samsung/wfd/WfdService;Z)Z

    .line 591
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mConnectedDeviceMacAddr:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$802(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 592
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mConnectedDeviceName:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$902(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 593
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "WifiP2pManager.WIFI_P2P_STATE_DISABLED -> mKeepP2pConnection = false"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mKeepP2pConnection:Z
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$1002(Lcom/samsung/wfd/WfdService;Z)Z

    .line 595
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, -0x1

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdMode:I
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$1102(Lcom/samsung/wfd/WfdService;I)I

    .line 604
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    .line 605
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v12

    const v13, 0x22068

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 614
    .end local v10           #state:I
    :cond_3
    const-string v12, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 615
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_8

    .line 616
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "IP"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$1302(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 618
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1300(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 619
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dongle IP:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRemoteIP:Ljava/lang/String;
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$1300(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 622
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "URL"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$1402(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 625
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dongle Update URL:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 628
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "count"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    #setter for: Lcom/samsung/wfd/WfdService;->mAudioCnt:I
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$1502(Lcom/samsung/wfd/WfdService;I)I

    .line 630
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mAudioCnt:I
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)I

    move-result v12

    if-eqz v12, :cond_6

    .line 631
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "audio count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mAudioCnt:I
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 634
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "VER"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$1602(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 636
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 637
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dongle ver:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleVer:Ljava/lang/String;
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 640
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v13}, Lcom/samsung/wfd/WfdService;->access$1700(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v13

    new-instance v14, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;-><init>(Lcom/samsung/wfd/WfdService$WifiStateReceiver;)V

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 658
    const-string v12, "wlan.wfd.status"

    const-string v13, "connected"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x5

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 660
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x1

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$1900(Lcom/samsung/wfd/WfdService;I)V

    .line 661
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x1

    #calls: Lcom/samsung/wfd/WfdService;->broadcastScreenMirroringEnable(Z)V
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$2000(Lcom/samsung/wfd/WfdService;Z)V

    .line 662
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastDongleVerToFota()V
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2100(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 664
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Recvd WFD session established intent in wrong state:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 666
    :cond_9
    const-string v12, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 667
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "receive from Engine...WFD_SESSION_TERMINATED  state:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x5

    if-eq v12, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_b

    .line 671
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v12

    const v13, 0x22068

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 673
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Recvd WFD session terminated intent in wrong state:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    :cond_c
    const-string v12, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 676
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, " onReceive << WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 678
    const-string v12, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 679
    .local v8, networkInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v12, "wifiP2pInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/p2p/WifiP2pInfo;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v13, v12}, Lcom/samsung/wfd/WfdService;->access$2202(Lcom/samsung/wfd/WfdService;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 681
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 682
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v12

    if-nez v12, :cond_d

    .line 683
    monitor-exit p0

    goto/16 :goto_1

    .line 689
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "WIFI_P2P_CONNECTION_CHANGED_ACTION >> isConnected() true"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x1

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$2302(Lcom/samsung/wfd/WfdService;Z)Z

    .line 698
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_e

    .line 699
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x3

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 700
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2400(Lcom/samsung/wfd/WfdService;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 701
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "send wfd start msg"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v12

    const v13, 0x2206b

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 705
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Recvd Wifi P2P connected intent in wrong state:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 709
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "WIFI_P2P_CONNECTION_CHANGED_ACTION >> isConnected() false"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, -0x1

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdMode:I
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$1102(Lcom/samsung/wfd/WfdService;I)I

    .line 711
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mKeepP2pConnection:Z
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$1002(Lcom/samsung/wfd/WfdService;Z)Z

    .line 712
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$2302(Lcom/samsung/wfd/WfdService;Z)Z

    .line 713
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mConnectedDeviceMacAddr:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$802(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 714
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mConnectedDeviceName:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$902(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 715
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2500(Lcom/samsung/wfd/WfdService;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 716
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "don\'t show disconnect popup..."

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v12}, Lcom/samsung/wfd/WfdService;->setWfdTerminate()Z

    .line 718
    monitor-exit p0

    goto/16 :goto_1

    .line 720
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x3

    if-lt v12, v13, :cond_11

    .line 721
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "Wifip2p disconnect..."

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v13, 0x2207b

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$2600(Lcom/samsung/wfd/WfdService;I)V

    .line 724
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-nez v12, :cond_0

    .line 726
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2400(Lcom/samsung/wfd/WfdService;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 727
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "P2P disconnected but rtsp not stoped so request stop"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v12

    const v13, 0x22068

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 732
    .end local v8           #networkInfo:Landroid/net/NetworkInfo;
    :cond_12
    const-string v12, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 733
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v12

    if-nez v12, :cond_13

    .line 734
    monitor-exit p0

    goto/16 :goto_1

    .line 736
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v12, "wifiP2pGroupInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/p2p/WifiP2pGroup;

    iput-object v12, v13, Lcom/samsung/wfd/WfdService;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 738
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v12, v12, Lcom/samsung/wfd/WfdService;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-nez v12, :cond_14

    .line 739
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "EXTRA_WIFI_P2P_GROUP_INFO is null!!! check!!"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 740
    monitor-exit p0

    goto/16 :goto_1

    .line 743
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v13, v13, Lcom/samsung/wfd/WfdService;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v13

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$2702(Lcom/samsung/wfd/WfdService;I)I

    .line 744
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "wifi P2P_CONNECTION_ESTABLISHED >> Wfd frequency:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$2700(Lcom/samsung/wfd/WfdService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_15

    .line 747
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x3

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 748
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2400(Lcom/samsung/wfd/WfdService;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 749
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "send wfd start msg"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v12

    const v13, 0x2206b

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 753
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Recvd Wifi P2P connected intent in wrong state:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 755
    :cond_16
    const-string v12, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 756
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v12

    if-nez v12, :cond_17

    monitor-exit p0

    goto/16 :goto_1

    .line 758
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$2702(Lcom/samsung/wfd/WfdService;I)I

    .line 759
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "wifi P2P_CONNECTION_TERMINATED"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 761
    :cond_18
    const-string v12, "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 762
    const-string v12, "res"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 763
    .local v9, resolution:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mSourceReslnBitMask:I
    invoke-static {v13}, Lcom/samsung/wfd/WfdService;->access$2900(Lcom/samsung/wfd/WfdService;)I

    move-result v13

    and-int/2addr v13, v9

    #setter for: Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$2802(Lcom/samsung/wfd/WfdService;I)I

    .line 764
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Recvd WFD sink resln bitmask:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " SrcRslnBitMsk:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mSourceReslnBitMask:I
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$2900(Lcom/samsung/wfd/WfdService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " UpdatedRslnBitMsk:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$2800(Lcom/samsung/wfd/WfdService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionInfo()V
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$3000(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 767
    .end local v9           #resolution:I
    :cond_19
    const-string v12, "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 768
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "WFD param changed notification"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionInfo()V
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$3000(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 771
    :cond_1a
    const-string v12, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 772
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "res"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    #setter for: Lcom/samsung/wfd/WfdService;->mCurrentResln:I
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$3102(Lcom/samsung/wfd/WfdService;I)I

    .line 773
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "3D"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$3202(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 774
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Recvd resolution from app:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mCurrentResln:I
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$3100(Lcom/samsung/wfd/WfdService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " 3D:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mCurrentDimm:Ljava/lang/String;
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$3200(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "Control"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$3302(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 777
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "terminate"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 778
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Recvd SessionControl from app:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRequestSessionControl:Ljava/lang/String;
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v12}, Lcom/samsung/wfd/WfdService;->setWfdTerminate()Z

    goto/16 :goto_0

    .line 781
    :cond_1b
    const-string v12, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 783
    const-string v12, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 785
    .local v6, info:Landroid/net/NetworkInfo;
    if-eqz v6, :cond_1f

    .line 786
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 788
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "AP is connected!"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 790
    const-string v12, "wifiInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiInfo;

    .line 792
    .local v7, mWifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v7, :cond_1c

    .line 793
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "EXTRA_WIFI_INFO is null!!! check!!"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 794
    monitor-exit p0

    goto/16 :goto_1

    .line 797
    :cond_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v13

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$3402(Lcom/samsung/wfd/WfdService;I)I

    .line 799
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2400(Lcom/samsung/wfd/WfdService;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 800
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AP is connected! FreqAp:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$3400(Lcom/samsung/wfd/WfdService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ? FreqWfd:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$2700(Lcom/samsung/wfd/WfdService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$3400(Lcom/samsung/wfd/WfdService;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v13}, Lcom/samsung/wfd/WfdService;->access$2700(Lcom/samsung/wfd/WfdService;)I

    move-result v13

    if-eq v12, v13, :cond_0

    .line 803
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "They are different. Now WfdService will be restarted!!"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v13, 0x22073

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$2600(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 808
    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "WfdService is not running..."

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 812
    .end local v7           #mWifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyAp:I
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$3402(Lcom/samsung/wfd/WfdService;I)I

    .line 813
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "AP is disconnected!"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 826
    :cond_1f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "NetworkInfo is null!! check!!"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 828
    .end local v6           #info:Landroid/net/NetworkInfo;
    :cond_20
    const-string v12, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 829
    const/16 v2, 0xe

    .line 830
    .local v2, apState:I
    const-string v12, "wifi_state"

    const/16 v13, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "apState:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$3500(Lcom/samsung/wfd/WfdService;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v12, 0xb

    if-ne v2, v12, :cond_0

    .line 833
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "Wait done for Hotspot off!!! Now Wfd is start!"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWaitHotspotDone:Z
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$3502(Lcom/samsung/wfd/WfdService;Z)Z

    .line 835
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v12

    const v13, 0x2206f

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 837
    .end local v2           #apState:I
    :cond_21
    const-string v12, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 838
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    #setter for: Lcom/samsung/wfd/WfdService;->mHDMIConnected:Z
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$3602(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_0

    .line 839
    :cond_22
    const-string v12, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 841
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "URL"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$1402(Lcom/samsung/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 843
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 844
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dongle Update URL:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUpdateURL:Ljava/lang/String;
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 845
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v13, 0x22078

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$2600(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 847
    :cond_23
    const-string v12, "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 848
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "display toast for weak network"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v12

    const v13, 0x2207a

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 850
    :cond_24
    const-string v12, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 852
    const-string v12, "cause"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 853
    .local v5, data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WFD Engine noti Error << data:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 857
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mKeepP2pConnection:Z
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 858
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v13, 0x22083

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$2600(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 862
    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const v13, 0x2207b

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$2600(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 864
    .end local v5           #data:Ljava/lang/String;
    :cond_26
    const-string v12, "com.samsung.wfd.RESULT_WFD_UPDATE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 866
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "result"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    #setter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$2502(Lcom/samsung/wfd/WfdService;Z)Z

    .line 867
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_RESULT_WFD_UPDATE << result:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v14}, Lcom/samsung/wfd/WfdService;->access$2500(Lcom/samsung/wfd/WfdService;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 869
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2500(Lcom/samsung/wfd/WfdService;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 870
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "dongle update is failed..."

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 875
    :cond_27
    const-string v12, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_BROKER"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28

    .line 876
    const-string v12, "cause"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 877
    .local v3, cause:I
    sparse-switch v3, :sswitch_data_0

    .line 893
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "broker notify that picker is normally goning!"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 896
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->sendToWfdPickerControlInfo(I)V
    invoke-static {v12, v3}, Lcom/samsung/wfd/WfdService;->access$3700(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 882
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "broker notify that WfdService should control to finish picker! cause:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 889
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "broker notify that WfdService proceed setWfdEnabled("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 890
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v12, v3}, Lcom/samsung/wfd/WfdService;->setWfdEnabled(I)Z

    goto :goto_2

    .line 898
    .end local v3           #cause:I
    :cond_28
    const-string v12, "com.android.server.enterprise.WFD_DISABLE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 899
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    .line 900
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v12}, Lcom/samsung/wfd/WfdService;->setWfdTerminate()Z

    .line 901
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v12

    const v13, 0x22068

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 904
    :cond_29
    const-string v12, "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 905
    const-string v12, "cause"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 906
    .local v5, data:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WFD Engine HDCP result >> data:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 908
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_0

    .line 910
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "connect with non-HDCP dongle! show WFD suspend!"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->WfdStartHDCPSuspend()V
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$3800(Lcom/samsung/wfd/WfdService;)V

    goto/16 :goto_0

    .line 916
    .end local v5           #data:I
    :cond_2a
    const-string v12, "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    .line 917
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "action  << WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v12

    const v13, 0x2207c

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 919
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v12}, Lcom/samsung/wfd/WfdService;->setWfdTerminate()Z

    goto/16 :goto_0

    .line 920
    :cond_2b
    const-string v12, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 921
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x1

    #setter for: Lcom/samsung/wfd/WfdService;->mScreenStatus:Z
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$3902(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_0

    .line 922
    :cond_2c
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 923
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mScreenStatus:Z
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$3902(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_0

    .line 924
    :cond_2d
    const-string v12, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 925
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$2400(Lcom/samsung/wfd/WfdService;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 926
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v12

    const v13, 0x22080

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 930
    :cond_2e
    const-string v12, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2f

    .line 931
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "WIFI_P2P_THIS_DEVICE_CHANGED_ACTION arrived"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 932
    const-string v12, "wifiP2pDevice"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 933
    .local v11, thisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v11, :cond_0

    .line 934
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v13, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$4002(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdDevice;)Lcom/samsung/wfd/WfdDevice;

    .line 936
    iget v12, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v12, :cond_0

    .line 937
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "WIFI_P2pDevice is connected"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v13, Lcom/samsung/wfd/WfdDevice;

    new-instance v14, Lcom/samsung/wfd/WfdInfo;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/samsung/wfd/WfdInfo;-><init>(I)V

    invoke-direct {v13, v14, v11}, Lcom/samsung/wfd/WfdDevice;-><init>(Lcom/samsung/wfd/WfdInfo;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v12, v13}, Lcom/samsung/wfd/WfdService;->access$4002(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdDevice;)Lcom/samsung/wfd/WfdDevice;

    goto/16 :goto_0

    .line 942
    .end local v11           #thisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2f
    const-string v12, "com.samsung.wfd.WFD_SERVICE_STARTED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    .line 943
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 944
    .local v4, current_state:I
    const/4 v12, 0x4

    if-ge v4, v12, :cond_0

    if-eqz v4, :cond_0

    .line 946
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionStart()Z
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$4100(Lcom/samsung/wfd/WfdService;)Z

    move-result v12

    if-eqz v12, :cond_30

    .line 947
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 949
    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, "Session broadcast failed"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->loge(Ljava/lang/String;)V

    .line 950
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v12}, Lcom/samsung/wfd/WfdService;->setWfdTerminate()Z

    goto/16 :goto_0

    .line 954
    .end local v4           #current_state:I
    :cond_31
    const-string v12, "com.samsung.wfd.WFD_SESSION_ENABLED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 955
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v13, " onReceive << session Enabled in WFD Native"

    invoke-virtual {v12, v13}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 877
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0xa -> :sswitch_0
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch

    .line 908
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
