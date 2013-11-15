.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1974
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    #calls: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addServices()V
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$900(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    .line 1978
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    #calls: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->initServices()V
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$1000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    .line 1979
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$1100()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1980
    return-void
.end method
