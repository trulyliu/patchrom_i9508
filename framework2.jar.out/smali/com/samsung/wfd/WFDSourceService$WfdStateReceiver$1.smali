.class Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver$1;
.super Landroid/os/CountDownTimer;
.source "WFDSourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver$1;->this$1:Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 609
    const-string v0, "WFDSourceService"

    const-string v1, "isBluetoothA2dpOn() timer finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .parameter "millis"

    .prologue
    .line 601
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAudioManager.isBluetoothA2dpOn() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver$1;->this$1:Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;

    iget-object v2, v2, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/samsung/wfd/WFDSourceService;->access$900(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver$1;->this$1:Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/samsung/wfd/WFDSourceService;->access$900(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver$1;->this$1:Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    #getter for: Lcom/samsung/wfd/WFDSourceService;->mPrevConnectionType:Lcom/samsung/wfd/WfdEnums$ConnectionType;
    invoke-static {v0}, Lcom/samsung/wfd/WFDSourceService;->access$800(Lcom/samsung/wfd/WFDSourceService;)Lcom/samsung/wfd/WfdEnums$ConnectionType;

    move-result-object v0

    sget-object v1, Lcom/samsung/wfd/WfdEnums$ConnectionType;->TCP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    if-ne v0, v1, :cond_0

    .line 603
    const-string v0, "WFDSourceService"

    const-string v1, "isBluetoothA2dpOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver$1;->this$1:Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;

    iget-object v0, v0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-virtual {v0}, Lcom/samsung/wfd/WFDSourceService;->teardownForAudioOut()V

    .line 606
    :cond_0
    return-void
.end method