.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;
.super Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VpnCallBack"
.end annotation


# instance fields
.field private adminCheck:Z

.field private mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)V
    .locals 1
    .parameter
    .parameter "mEnterpriseVpnCallback"

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;-><init>()V

    .line 853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    .line 854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->adminCheck:Z

    .line 857
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    .line 858
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Z)V
    .locals 1
    .parameter
    .parameter "adminCheck"

    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;-><init>()V

    .line 853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    .line 854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->adminCheck:Z

    .line 860
    iput-boolean p2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->adminCheck:Z

    .line 861
    return-void
.end method


# virtual methods
.method public updateStatus(Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .parameter "profileName"
    .parameter "status"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 865
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin Check for Remove Connection Callback"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->adminCheck:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v4, 0x6

    if-ne p2, v4, :cond_0

    const-string v4, "No Error"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 867
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string v5, "Vpn_table"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "profile"

    aput-object v7, v6, v9

    new-array v7, v8, [Ljava/lang/String;

    aput-object p1, v7, v9

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    .line 869
    .local v3, removeProfileStatus:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The status for removing the profile from profile database is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-boolean v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->adminCheck:Z

    if-nez v4, :cond_2

    .line 871
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeEnterpriseVpnConnection Vpn profile deleted successfully. status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 873
    .local v1, identity:J
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeVpnConnectionForPerAppVpn(Ljava/lang/String;)Z
    invoke-static {v4, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    .line 874
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 881
    .end local v1           #identity:J
    .end local v3           #removeProfileStatus:Z
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->adminCheck:Z

    if-nez v4, :cond_1

    .line 883
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    invoke-interface {v4, p1, p2, p3}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;->updateStatus(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :cond_1
    :goto_1
    return-void

    .line 875
    .restart local v3       #removeProfileStatus:Z
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->adminCheck:Z

    if-ne v4, v8, :cond_0

    .line 876
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 877
    .restart local v1       #identity:J
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeVpnConnectionAfterAdminRemoval(Ljava/lang/String;)V
    invoke-static {v4, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)V

    .line 878
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 884
    .end local v1           #identity:J
    .end local v3           #removeProfileStatus:Z
    :catch_0
    move-exception v0

    .line 885
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in updateStatus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method