.class Lcom/android/server/power/PowerManagerService$8;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->initSmartStay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 4449
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 4451
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4461
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[smart stay] undefined message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    :goto_0
    return-void

    .line 4453
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    #calls: Lcom/android/server/power/PowerManagerService;->handleSmartStay(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$6000(Lcom/android/server/power/PowerManagerService;Z)V

    goto :goto_0

    .line 4457
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    #calls: Lcom/android/server/power/PowerManagerService;->handleSmartStay(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$6000(Lcom/android/server/power/PowerManagerService;Z)V

    goto :goto_0

    .line 4451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
