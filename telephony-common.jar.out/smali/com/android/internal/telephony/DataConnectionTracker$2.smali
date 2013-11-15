.class Lcom/android/internal/telephony/DataConnectionTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 417
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive: action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 419
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 420
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v4, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 421
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionTracker;->stopNetStatPoll()V

    .line 422
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionTracker;->startNetStatPoll()V

    .line 423
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionTracker;->restartDataStallAlarm()V

    .line 426
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->onScreenStateChanged(Z)V

    .line 471
    :cond_0
    :goto_0
    const-string v4, "android.intent.action.FD_SETTING_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 472
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v5, "FD_PREF_CHANGED - cleanUpAllConnections()"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 473
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v5, "fdSettingChanged"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 531
    :cond_1
    return-void

    .line 428
    :cond_2
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 429
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v5, v4, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 430
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionTracker;->stopNetStatPoll()V

    .line 431
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionTracker;->startNetStatPoll()V

    .line 432
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionTracker;->restartDataStallAlarm()V

    .line 435
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->onScreenStateChanged(Z)V

    goto :goto_0

    .line 436
    :cond_3
    const-string v6, "android.intent.action.PDP_RESET_TEST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 437
    const-string v5, "actionNum"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 438
    .local v1, doRecoveryAction:I
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDP Rest Test: doRecoveryAction= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 439
    if-nez v1, :cond_4

    .line 440
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v5, "pdpReset"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_4
    if-ne v1, v4, :cond_0

    .line 442
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    goto :goto_0

    .line 443
    .end local v1           #doRecoveryAction:I
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentReconnectAlarm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 444
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reconnect alarm. Previous state was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 445
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 446
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentDataStallAlarm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 447
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 448
    :cond_7
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 449
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 451
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_1
    iput-boolean v4, v6, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_1

    .line 452
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    :cond_9
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 453
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    move v2, v4

    .line 456
    .local v2, enabled:Z
    :goto_2
    if-nez v2, :cond_0

    .line 459
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v5, v4, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    goto/16 :goto_0

    .end local v2           #enabled:Z
    :cond_a
    move v2, v5

    .line 453
    goto :goto_2

    .line 461
    :cond_b
    const-string v5, "com.android.internal.telephony.dataconnectiontracker.intent_set_fail_data_setup_counter"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v6, "fail_data_setup_counter"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    .line 463
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v5, "fail_data_setup_fail_cause"

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 466
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set mFailDataSetupCounter="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v6, v6, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mFailDataSetupFailCause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
