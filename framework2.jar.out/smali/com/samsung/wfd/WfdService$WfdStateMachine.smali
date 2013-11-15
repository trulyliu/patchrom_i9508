.class Lcom/samsung/wfd/WfdService$WfdStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;,
        Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;,
        Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

.field private mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

.field private mWfdNotSupportedState:Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

.field final synthetic this$0:Lcom/samsung/wfd/WfdService;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "wfdSupported"

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    .line 1470
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 1465
    new-instance v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    .line 1466
    new-instance v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mWfdNotSupportedState:Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

    .line 1467
    new-instance v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    .line 1472
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1473
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1475
    if-eqz p3, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1481
    :goto_0
    return-void

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mWfdNotSupportedState:Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->disableWiFiP2P()V

    return-void
.end method

.method static synthetic access$4500(Lcom/samsung/wfd/WfdService$WfdStateMachine;Landroid/os/Message;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1463
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->enableWiFiP2P()V

    return-void
.end method

.method static synthetic access$4800(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->showNotification()V

    return-void
.end method

.method static synthetic access$5000(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->showWeakNetworkNotification()V

    return-void
.end method

.method static synthetic access$5100(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->showTerminatedByAudioNotification()V

    return-void
.end method

.method static synthetic access$5300(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1463
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->updateResources()V

    return-void
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 1900
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$4400(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1901
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1902
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1904
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mIsShowingNotification:Z
    invoke-static {v1, v2}, Lcom/samsung/wfd/WfdService;->access$6402(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1906
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v1, v2}, Lcom/samsung/wfd/WfdService;->access$6302(Lcom/samsung/wfd/WfdService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 1908
    :cond_0
    return-void
.end method

.method private disableWiFiP2P()V
    .locals 3

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, "disabling WiFi P2P"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1967
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, " mWifiP2pManager is null!! check!!"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1972
    :cond_0
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1973
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1700(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/samsung/wfd/WfdService$WfdStateMachine$2;

    invoke-direct {v2, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$2;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1995
    :cond_1
    :goto_0
    return-void

    .line 1992
    :cond_2
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$4400(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1993
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1700(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method

.method private enableWiFiP2P()V
    .locals 2

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, "enabling WiFi P2P"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1940
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1700(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1943
    :cond_0
    return-void
.end method

.method private isP2pConnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1948
    :try_start_0
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$4400(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1949
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1951
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_0

    .line 1952
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v5, "isP2pConnected >> true!"

    invoke-virtual {v4, v5}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    const/4 v3, 0x1

    .line 1961
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 1957
    :catch_0
    move-exception v1

    .line 1958
    .local v1, e:Ljava/lang/NullPointerException;
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v5, "isP2pConnected - NullPointerException"

    invoke-virtual {v4, v5}, Lcom/samsung/wfd/WfdService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .parameter "srcMsg"

    .prologue
    .line 1812
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1813
    .local v0, msg:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1814
    return-object v0
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .parameter "msg"
    .parameter "what"

    .prologue
    .line 1787
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 1791
    :goto_0
    return-void

    .line 1788
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1789
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1790
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$6200(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 1794
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 1799
    :goto_0
    return-void

    .line 1795
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1796
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1797
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1798
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$6200(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1802
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 1807
    :goto_0
    return-void

    .line 1803
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1804
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1805
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1806
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$6200(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private showNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1857
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$4400(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1858
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1896
    :cond_0
    :goto_0
    return-void

    .line 1868
    :cond_1
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdMode:I
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;)I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdMode:I
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;)I

    move-result v6

    if-eq v6, v9, :cond_0

    .line 1871
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1872
    .local v0, intent:Landroid/content/Intent;
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1873
    const/high16 v6, 0x1080

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1874
    const-string v6, "cause"

    const v7, 0x22077

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1876
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$4400(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1878
    .local v3, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1879
    .local v4, r:Landroid/content/res/Resources;
    const v6, 0x104064a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1880
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x10405f9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1884
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    #setter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6, v7}, Lcom/samsung/wfd/WfdService;->access$6302(Lcom/samsung/wfd/WfdService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 1885
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 1887
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    const v7, 0x10806f9

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 1888
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 1889
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 1890
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1891
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/wfd/WfdService;->access$4400(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1893
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mIsShowingNotification:Z
    invoke-static {v6, v9}, Lcom/samsung/wfd/WfdService;->access$6402(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1895
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v7}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private showTerminatedByAudioNotification()V
    .locals 4

    .prologue
    .line 1825
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v3, "showTerminatedByAudioNotification"

    invoke-virtual {v2, v3}, Lcom/samsung/wfd/WfdService;->loge(Ljava/lang/String;)V

    .line 1826
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1827
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x104064f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1828
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$4400(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1831
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$4400(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1834
    return-void
.end method

.method private showWeakNetworkNotification()V
    .locals 4

    .prologue
    .line 1818
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1819
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x104064c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1820
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$4400(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1823
    return-void
.end method

.method private terminateWfdRoutine(I)V
    .locals 7
    .parameter "option"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1716
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    .line 1717
    .local v0, wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 1719
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1800(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$1700(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    new-instance v3, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;

    invoke-direct {v3, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1731
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->clearNotification()V

    .line 1733
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdOffTimer:Z
    invoke-static {v1, v4}, Lcom/samsung/wfd/WfdService;->access$5802(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1735
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1736
    const-string v1, "wlan.wfd.status"

    const-string v2, "disconnected"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v1, v4}, Lcom/samsung/wfd/WfdService;->access$1900(Lcom/samsung/wfd/WfdService;I)V

    .line 1738
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastScreenMirroringEnable(Z)V
    invoke-static {v1, v4}, Lcom/samsung/wfd/WfdService;->access$2000(Lcom/samsung/wfd/WfdService;Z)V

    .line 1739
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionTeardown()V
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$5700(Lcom/samsung/wfd/WfdService;)V

    .line 1740
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1743
    :cond_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mKeepP2pConnection   :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mKeepP2pConnection:Z
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isRunningHomeSync   :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->isRunningHomeSync:Z
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$5900(Lcom/samsung/wfd/WfdService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wfdMode   :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdMode:I
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1744
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mKeepP2pConnection:Z
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->isRunningHomeSync:Z
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$5900(Lcom/samsung/wfd/WfdService;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdMode:I
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1745
    :cond_1
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$700(Lcom/samsung/wfd/WfdService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1746
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v2, "[WFD] Let\'s start Wfd with Last connect!!!"

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1747
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v2, "p2p disable by Wfd!!!"

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1748
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->disableWiFiP2P()V

    .line 1749
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v1, v4}, Lcom/samsung/wfd/WfdService;->access$4202(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1782
    :goto_0
    return-void

    .line 1751
    :cond_2
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdDevice:Lcom/samsung/wfd/WfdDevice;
    invoke-static {v1, v6}, Lcom/samsung/wfd/WfdService;->access$4002(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdDevice;)Lcom/samsung/wfd/WfdDevice;

    .line 1752
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;
    invoke-static {v1, v6}, Lcom/samsung/wfd/WfdService;->access$6002(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdInfo;)Lcom/samsung/wfd/WfdInfo;

    .line 1753
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$4200(Lcom/samsung/wfd/WfdService;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1754
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v2, "p2p disable by Wfd!!!"

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1755
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->disableWiFiP2P()V

    .line 1756
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v1, v4}, Lcom/samsung/wfd/WfdService;->access$4202(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1764
    :goto_1
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v1, v5}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 1765
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastIntent2HDMI(I)V
    invoke-static {v1, v5}, Lcom/samsung/wfd/WfdService;->access$6100(Lcom/samsung/wfd/WfdService;I)V

    .line 1768
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v1, v4}, Lcom/samsung/wfd/WfdService;->access$2702(Lcom/samsung/wfd/WfdService;I)I

    .line 1769
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v1, v4}, Lcom/samsung/wfd/WfdService;->access$2502(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1770
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z
    invoke-static {v1, v4}, Lcom/samsung/wfd/WfdService;->access$502(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1772
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WFD] done!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1758
    :cond_3
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v2, "now we should turn off wifip2p even though turned on by wifip2pservice!!!"

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1759
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->disableWiFiP2P()V

    .line 1761
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z
    invoke-static {v1, v4}, Lcom/samsung/wfd/WfdService;->access$2302(Lcom/samsung/wfd/WfdService;Z)Z

    goto :goto_1

    .line 1775
    :cond_4
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v1, v5}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 1776
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastIntent2HDMI(I)V
    invoke-static {v1, v5}, Lcom/samsung/wfd/WfdService;->access$6100(Lcom/samsung/wfd/WfdService;I)V

    .line 1777
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v1, v4}, Lcom/samsung/wfd/WfdService;->access$2702(Lcom/samsung/wfd/WfdService;I)I

    .line 1778
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v1, v4}, Lcom/samsung/wfd/WfdService;->access$2502(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1779
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z
    invoke-static {v1, v4}, Lcom/samsung/wfd/WfdService;->access$502(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1780
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v2, "terminateWfdRoutine / mKeepP2pConnection"

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateResources()V
    .locals 7

    .prologue
    .line 1839
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v5, "updateResources"

    invoke-virtual {v4, v5}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1841
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mIsShowingNotification:Z
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$6400(Lcom/samsung/wfd/WfdService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1842
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$4400(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1844
    .local v1, notificationManager:Landroid/app/NotificationManager;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 1845
    .local v2, r:Landroid/content/res/Resources;
    const v4, 0x104064a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1846
    .local v3, title:Ljava/lang/CharSequence;
    const v4, 0x10405f9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1848
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v4

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1849
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$4400(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1851
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->icon:I

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$6300(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1853
    .end local v0           #message:Ljava/lang/CharSequence;
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    .end local v2           #r:Landroid/content/res/Resources;
    .end local v3           #title:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method public sendWfdPickerStartBroadCast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1915
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v2, "sendWfdPickerStartBroadCast"

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1918
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1920
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1921
    const-string v1, "state"

    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$4200(Lcom/samsung/wfd/WfdService;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1923
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$4700(Lcom/samsung/wfd/WfdService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1924
    const-string v1, "cause"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1925
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z
    invoke-static {v1, v3}, Lcom/samsung/wfd/WfdService;->access$4702(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1926
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v1, v3}, Lcom/samsung/wfd/WfdService;->access$702(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1927
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v2, "putExtra >> cause::restart by ongoing"

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1934
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$4400(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1935
    return-void

    .line 1928
    :cond_1
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$700(Lcom/samsung/wfd/WfdService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1929
    const-string v1, "cause"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1930
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v1, v3}, Lcom/samsung/wfd/WfdService;->access$702(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1931
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v2, "putExtra >> cause::restart by AP connected"

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public syncGetWfdState()I
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method
