.class Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;
.super Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UninstallPackageThread"
.end annotation


# instance fields
.field private mApkFilePath:Ljava/lang/String;

.field private mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V
    .locals 0
    .parameter
    .parameter "cid"
    .parameter "handler"
    .parameter "packagePath"
    .parameter "statusCb"

    .prologue
    .line 3293
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 3294
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/EnterpriseContainerService$UnInstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;)V

    .line 3295
    iput-object p4, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    .line 3296
    iput-object p5, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 3297
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 3301
    const-string v8, "EnterpriseContainerService"

    const-string v9, "UninstallPackageThread run()"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3302
    const/4 v4, 0x0

    .line 3303
    .local v4, msg:Landroid/os/Message;
    const/4 v7, -0x1

    .line 3305
    .local v7, result:I
    :try_start_0
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->acquireLock()V
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5400(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 3306
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getValidStr(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5600(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    .line 3307
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v8

    iget v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mContainerId:I

    invoke-virtual {v8, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v2

    .line 3309
    .local v2, data:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v0

    .line 3310
    .local v0, adminId:I
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 3312
    new-instance v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;

    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mContainerId:I

    invoke-direct {v5, v8, v9}, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 3315
    .local v5, obs:Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v5, v10}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 3317
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3318
    :goto_0
    :try_start_1
    iget-boolean v8, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_0

    .line 3320
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3321
    :catch_0
    move-exception v3

    .line 3322
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .line 3326
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 3338
    .end local v0           #adminId:I
    .end local v2           #data:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v5           #obs:Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;
    :catch_1
    move-exception v3

    .line 3339
    .local v3, e:Ljava/lang/Exception;
    :try_start_5
    const-string v8, "EnterpriseContainerService"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3341
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5500(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 3344
    .end local v3           #e:Ljava/lang/Exception;
    :goto_1
    :try_start_6
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    if-eqz v8, :cond_3

    .line 3346
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3347
    .local v6, packageUnInstallState:Landroid/os/Bundle;
    const-string v8, "packageName"

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3350
    if-ne v7, v12, :cond_2

    .line 3351
    const-string v8, "EnterpriseContainerService"

    const-string v9, "Calling callback for package Uninstall success"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    const/16 v9, 0x3f0

    invoke-interface {v8, v9, v6}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 3372
    .end local v6           #packageUnInstallState:Landroid/os/Bundle;
    :goto_2
    return-void

    .line 3325
    .restart local v0       #adminId:I
    .restart local v2       #data:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .restart local v5       #obs:Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;
    :cond_0
    :try_start_7
    iget v7, v5, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;->result:I

    .line 3326
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3328
    if-ne v7, v12, :cond_1

    .line 3329
    :try_start_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3330
    .local v1, bundle:Landroid/os/Bundle;
    const-string v8, "containerid"

    iget v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mContainerId:I

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3331
    const-string v8, "package_install_name"

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3332
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mParentHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 3335
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 3341
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_1
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5500(Lcom/sec/knox/container/EnterpriseContainerService;)V

    goto :goto_1

    .end local v0           #adminId:I
    .end local v2           #data:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v5           #obs:Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;
    :catchall_1
    move-exception v8

    iget-object v9, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5500(Lcom/sec/knox/container/EnterpriseContainerService;)V

    throw v8

    .line 3357
    .restart local v6       #packageUnInstallState:Landroid/os/Bundle;
    :cond_2
    :try_start_9
    const-string v8, "pmerrorcode"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3359
    iget-object v8, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mStatusCb:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    const/16 v9, 0x3f1

    invoke-interface {v8, v9, v6}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    .line 3362
    const-string v8, "EnterpriseContainerService"

    const-string v9, "Callback Object updateStatus invoked"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3363
    const-string v8, "EnterpriseContainerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$UninstallPackageThread;->mApkFilePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " UNINSTALL FAILED. ErrorCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 3369
    .end local v6           #packageUnInstallState:Landroid/os/Bundle;
    :catch_2
    move-exception v3

    .line 3370
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "EnterpriseContainerService"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3367
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_a
    const-string v8, "EnterpriseContainerService"

    const-string v9, "Call Back not found for uninstall package"

    invoke-static {v8, v9}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2
.end method
