.class Lcom/android/server/TimaService$TimaServiceHandler;
.super Landroid/os/Handler;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimaServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TimaService;


# direct methods
.method constructor <init>(Lcom/android/server/TimaService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    .line 95
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 96
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 100
    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TimaServiceHandler.handleMessage what ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 144
    :goto_0
    :pswitch_0
    return-void

    .line 108
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, b:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    #getter for: Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;
    invoke-static {v5}, Lcom/android/server/TimaService;->access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;

    move-result-object v5

    if-eqz v5, :cond_0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    const-string v5, "TimaService"

    const-string v6, "Notification or Bundle is not ready!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_1
    const-string v5, "MSG="

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, text:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 116
    :cond_2
    const-string v5, "TimaService"

    const-string v6, "Invalid TIMA message!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_3
    sget-boolean v5, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v5, :cond_4

    .line 121
    const-string v5, "TimaService"

    const-string v6, "TimaServiceHandler(): iBootCompleted==false"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_4
    :try_start_0
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 127
    .local v2, notification:Landroid/app/Notification;
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 128
    const/16 v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 129
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    #getter for: Lcom/android/server/TimaService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/TimaService;->access$100(Lcom/android/server/TimaService;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 131
    .local v3, pi:Landroid/app/PendingIntent;
    const v5, 0x1080027

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 132
    iget-object v5, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    #getter for: Lcom/android/server/TimaService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/TimaService;->access$100(Lcom/android/server/TimaService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "TIMA security measurement"

    invoke-virtual {v2, v5, v6, v4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 133
    iget-object v5, p0, Lcom/android/server/TimaService$TimaServiceHandler;->this$0:Lcom/android/server/TimaService;

    #getter for: Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;
    invoke-static {v5}, Lcom/android/server/TimaService;->access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;

    move-result-object v5

    const/16 v6, 0x1b58

    invoke-virtual {v5, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #notification:Landroid/app/Notification;
    .end local v3           #pi:Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
