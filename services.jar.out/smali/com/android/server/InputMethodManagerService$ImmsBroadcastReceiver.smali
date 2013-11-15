.class Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImmsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateActive()V
    .locals 6

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v0, :cond_0

    .line 509
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbcc

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 512
    :cond_0
    return-void

    .line 509
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 516
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-boolean v3, v1, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    .line 519
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    #calls: Lcom/android/server/InputMethodManagerService;->refreshImeWindowVisibilityLocked()V
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$000(Lcom/android/server/InputMethodManagerService;)V

    .line 520
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->updateActive()V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-boolean v2, v1, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    .line 524
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    #calls: Lcom/android/server/InputMethodManagerService;->setImeWindowVisibilityStatusHiddenLocked()V
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$100(Lcom/android/server/InputMethodManagerService;)V

    .line 525
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->updateActive()V

    goto :goto_0

    .line 527
    :cond_2
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 528
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 530
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v1, v1, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    if-ne v1, v3, :cond_0

    .line 532
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 533
    :try_start_0
    const-string v1, "InputMethodManagerService"

    const-string v3, "onReceive() calling hidecurrentInputLocked"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 535
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 540
    :cond_3
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
