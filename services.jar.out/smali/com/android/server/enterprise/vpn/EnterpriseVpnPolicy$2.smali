.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;
.super Ljava/lang/Object;
.source "EnterpriseVpnPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-static {p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v1

    #setter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$402(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    .line 267
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cMocanaFipsConnect >> onServiceConnected >> Mocana Service connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    invoke-static {v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    invoke-static {v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    .line 269
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printVpnState()V
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runAllVpnService()V
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_1
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cMocanaFipsConnect >> onServiceDisconnected >> Mocana Service has unexpectedly disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mocana Service has unexpectedly disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->handleMocanaServiceDisconnect()V
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$402(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    .line 281
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    .line 282
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trying to bind to Mocana service again.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindMocanaVpnInterface()V
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
