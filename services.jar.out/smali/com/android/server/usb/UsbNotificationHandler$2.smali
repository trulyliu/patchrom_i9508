.class Lcom/android/server/usb/UsbNotificationHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbNotificationHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbNotificationHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    #getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$2;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler;->reflashNotificaton()V

    .line 73
    return-void
.end method
