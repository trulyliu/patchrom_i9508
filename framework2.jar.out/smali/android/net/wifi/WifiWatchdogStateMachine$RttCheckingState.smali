.class Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RttCheckingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 925
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 928
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Ljava/lang/String;)V

    .line 930
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->setPoorConnectNotificationVisible(Z)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    .line 931
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 932
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 936
    :goto_0
    return-void

    .line 934
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x1

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->rttStart(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1003
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exit\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Ljava/lang/String;)V

    .line 1004
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 1005
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1006
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiWatchdogStateMachine"

    const-string v1, "There is a request need to be aborted!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 1009
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4602(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mStrongLevelRetry:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3802(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 1014
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    move-result-object v0

    const v1, 0x21020

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->removeMessages(I)V

    .line 1015
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;

    move-result-object v0

    const v1, 0x21024

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$RttResultHandler;->removeMessages(I)V

    .line 1016
    return-void

    .line 1010
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const v7, 0x2101f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 940
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "processMessage\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Ljava/lang/String;)V

    .line 941
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 998
    :cond_1
    :goto_0
    return v2

    .line 943
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 944
    .local v0, id:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 945
    .local v1, rtt:I
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "WifiWatchdogStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[REPORT_RTT_RESULT] id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttTimeout:[I
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;)[I

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    if-ge v1, v4, :cond_3

    .line 947
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mStrongLevelRetry:I
    invoke-static {v4, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3802(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 948
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 950
    :cond_3
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSets:I
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 951
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    add-int/lit8 v4, v0, 0x1

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->rttStart(I)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto :goto_0

    .line 953
    :cond_4
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->isInEvaluationLevel()Z
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3804(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_7

    .line 954
    :cond_5
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "WifiWatchdogStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStrongLevelRetry : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mStrongLevelRetry:I
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_6
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v4, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    .line 956
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 958
    :cond_7
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 959
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "WifiWatchdogStateMachine"

    const-string v4, "skip rechecking!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 961
    :cond_8
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v7, v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 969
    .end local v0           #id:I
    .end local v1           #rtt:I
    :sswitch_1
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "WifiWatchdogStateMachine"

    const-string v4, "[RttCheckingState] CMD_RTT_RECHECK"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_9
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->rttStart(I)V
    invoke-static {v3, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_0

    .line 974
    :sswitch_2
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "WifiWatchdogStateMachine"

    const-string v4, "[RttCheckingState] DELAYED_RTT_CHECK_QUERY"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_a
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->rttStart(I)V
    invoke-static {v3, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_0

    .line 979
    :sswitch_3
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 980
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mInternetServiceCheckPolicy:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    if-nez v3, :cond_1

    .line 981
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 982
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    goto/16 :goto_0

    .line 987
    :sswitch_4
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "[RTT_TEST_TIMEOUT]"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1100(Ljava/lang/String;)V

    .line 988
    :cond_b
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 990
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 991
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$RttCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v4, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRttSocket:Ljava/net/Socket;
    invoke-static {v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4602(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 992
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 941
    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_3
        0x2100c -> :sswitch_1
        0x2101f -> :sswitch_2
        0x21023 -> :sswitch_0
        0x21024 -> :sswitch_4
    .end sparse-switch
.end method
