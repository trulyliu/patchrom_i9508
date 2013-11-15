.class Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
.super Landroid/os/Handler;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerServiceHandler"
.end annotation


# static fields
.field public static final ENTERPRISE_CONTAINER_ALL_PACKAGES_INSTALLED:I = 0x2

.field public static final ENTERPRISE_CONTAINER_ALL_PACKAGES_UNINSTALLED:I = 0x4

.field public static final ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION:I = 0x6

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK:I = 0x9

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_CONTAINEROBJ:Ljava/lang/String; = "containerObj"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_ERROR:Ljava/lang/String; = "errorCode"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_PASSWORD:Ljava/lang/String; = "password"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_PRIMARY:Ljava/lang/String; = "primary"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_RID:Ljava/lang/String; = "requestId"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_STATE:Ljava/lang/String; = "state"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_STATUS:Ljava/lang/String; = "status"

.field public static final ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER:I = 0x5

.field public static final ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT:I = 0xe

.field public static final ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE:I = 0x7

.field public static final ENTERPRISE_CONTAINER_HANDLE_PASSWORD_TIMEOUT:I = 0x8

.field public static final ENTERPRISE_CONTAINER_LOCK_TIMEOUT:I = 0xf

.field public static final ENTERPRISE_CONTAINER_PACKAGE_INSTALLED:I = 0x1

.field public static final ENTERPRISE_CONTAINER_PACKAGE_UNINSTALLED:I = 0x3

.field public static final ENTERPRISE_CONTAINER_REMOUNT_FAILURE:I = 0xb

.field public static final ENTERPRISE_CONTAINER_REMOUNT_FAILURE_DATA_RID:Ljava/lang/String; = "rid"

.field public static final ENTERPRISE_CONTAINER_REMOUNT_SUCCESS:I = 0xd

.field public static final ENTERPRISE_CONTAINER_REMOUNT_SUCCESS_DATA_RID:Ljava/lang/String; = "rid"

.field public static final ENTERPRISE_CONTAINER_SETUP_FAILURE:I = 0xa

.field public static final ENTERPRISE_CONTAINER_SETUP_SUCCESS:I = 0xc


# instance fields
.field private mParent:Lcom/sec/knox/container/EnterpriseContainerService;

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Looper;Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 1
    .parameter
    .parameter "loop"
    .parameter "service"

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 1210
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 1211
    iput-object p3, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 1212
    return-void
.end method


# virtual methods
.method public addContainer(IZIILcom/sec/knox/container/EnterpriseContainerObjectParam;Ljava/lang/String;)Z
    .locals 19
    .parameter "state"
    .parameter "status"
    .parameter "errorCode"
    .parameter "containerId"
    .parameter "containerObj"
    .parameter "password"

    .prologue
    .line 1938
    const/16 v18, 0x0

    .line 1939
    .local v18, returnCode:Z
    if-nez p1, :cond_2

    .line 1941
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1943
    .local v11, apkList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p5

    move/from16 v1, p4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z
    invoke-static {v2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5200(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    move-object/from16 v0, p5

    move/from16 v1, p4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->addContainerToCache(Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V
    invoke-static {v2, v0, v1, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5300(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v2

    move/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->storeUserCredentials(ILjava/lang/String;)V

    .line 1950
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getApkInstallPath()Ljava/lang/String;

    move-result-object v17

    .line 1951
    .local v17, installApkPath:Ljava/lang/String;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1952
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1953
    .local v14, apkFolder:Ljava/io/File;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->getApksFromFolder(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1956
    .local v15, apks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1957
    invoke-interface {v11, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1966
    .end local v14           #apkFolder:Ljava/io/File;
    .end local v15           #apks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #installApkPath:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v14, Ljava/io/File;

    const-string v2, "/system/containers"

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1967
    .restart local v14       #apkFolder:Ljava/io/File;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->getApksFromFolder(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1970
    .restart local v15       #apks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1971
    invoke-interface {v11, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1978
    .end local v14           #apkFolder:Ljava/io/File;
    .end local v15           #apks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1979
    .local v6, data:Landroid/os/Bundle;
    const-string v2, "apksCount"

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x1

    const/16 v5, 0x3f3

    const/4 v7, 0x0

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1984
    new-instance v7, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    move/from16 v9, p4

    invoke-direct/range {v7 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/util/List;ZI)V

    .line 1986
    .local v7, installer:Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;
    invoke-virtual {v7}, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->start()V

    .line 1987
    const/16 v18, 0x1

    .line 1999
    .end local v6           #data:Landroid/os/Bundle;
    .end local v7           #installer:Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;
    .end local v11           #apkList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    return v18

    .line 1961
    .restart local v11       #apkList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v16

    .line 1962
    .local v16, ex:Ljava/lang/Exception;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addContainer() Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1974
    .end local v16           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v16

    .line 1975
    .restart local v16       #ex:Ljava/lang/Exception;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addContainer() Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1994
    .end local v16           #ex:Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v2, v0, v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    .line 1996
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Failed after mount cannot add to DB"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 66
    .parameter "param"

    .prologue
    .line 1274
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Message received "

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->toString(I)V

    .line 1279
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1280
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Cache object is null returning from handleMessage()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    const/16 v28, 0x0

    .line 1284
    .local v28, cid:I
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Bundle;

    .line 1285
    .local v12, bundle:Landroid/os/Bundle;
    const/16 v54, 0x0

    .line 1286
    .local v54, pkgName:Ljava/lang/String;
    const/16 v64, 0x0

    .line 1287
    .local v64, uid:I
    const/16 v44, 0x0

    .line 1288
    .local v44, installSource:I
    const/16 v52, 0x0

    .line 1290
    .local v52, origSignatures:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_2
    :pswitch_0
    move/from16 v22, v28

    .end local v28           #cid:I
    .local v22, cid:I
    goto :goto_0

    .line 1292
    .end local v22           #cid:I
    .restart local v28       #cid:I
    :pswitch_1
    const-string v3, "EnterpriseContainerService"

    const-string v4, "ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE called. Starting everything from here."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/knox/container/manager/StateManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$902(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)Lcom/sec/knox/container/manager/StateManager;

    .line 1297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->registerClientCallback(Lcom/sec/knox/container/manager/IStateManagerCallback;)I

    .line 1298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    invoke-direct {v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;-><init>()V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2302(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/contentprovider/ContainerDatabase;)Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    .line 1299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$102(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 1300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    const/4 v6, 0x1

    sget-object v8, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_INSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntArrayValues()[I

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/container/util/StringUtil;->getRegisteringKey(I[I)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;-><init>([Ljava/lang/String;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;)Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    .line 1306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2502(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 1307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2602(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 1308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2702(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 1309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2802(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 1310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v9}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v9

    invoke-direct {v4, v6, v8, v9}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;-><init>(Landroid/content/Context;Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2902(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerPasswordService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    .line 1312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->initializeDPMActiveAdminList()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3000(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->registerReciever()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3100(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3202(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/dirEncryption/DirEncryptionManager;)Landroid/dirEncryption/DirEncryptionManager;

    .line 1315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    const-string v6, "power"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v4, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3302(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    .line 1316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3300(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/PowerManager;

    move-result-object v3

    const/4 v4, 0x1

    const-string v6, "EnterpriseContainerService"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3402(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 1317
    invoke-static {}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3400()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->bindRedexService()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$300(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getVpnService()Landroid/app/enterprise/IEnterpriseVpnPolicy;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3600(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v4

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Landroid/app/enterprise/IEnterpriseVpnPolicy;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3502(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/app/enterprise/IEnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnPolicy;

    .line 1320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1500(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1502(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    .line 1323
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->initialiseContainer()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3700(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x1

    #setter for: Lcom/sec/knox/container/EnterpriseContainerService;->isServiceInitialized:Z
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3802(Lcom/sec/knox/container/EnterpriseContainerService;Z)Z

    .line 1329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->getContainers(Lcom/sec/knox/container/constants/CSState;)Ljava/util/List;

    move-result-object v34

    .line 1331
    .local v34, createInprogresslist:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->getContainers(Lcom/sec/knox/container/constants/CSState;)Ljava/util/List;

    move-result-object v56

    .line 1333
    .local v56, removeInprogresslist:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->getContainers(Lcom/sec/knox/container/constants/CSState;)Ljava/util/List;

    move-result-object v35

    .line 1336
    .local v35, doesnotExistlist:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    .local v57, removeList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    if-eqz v34, :cond_4

    .line 1338
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List of createInprogresslist:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_4
    if-eqz v56, :cond_5

    .line 1341
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List of removeInprogresslist:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :cond_5
    if-eqz v35, :cond_6

    .line 1344
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List of DoesntExistlist:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    :cond_6
    if-eqz v34, :cond_7

    .line 1346
    move-object/from16 v0, v57

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1347
    :cond_7
    if-eqz v56, :cond_8

    .line 1348
    move-object/from16 v0, v57

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1349
    :cond_8
    if-eqz v35, :cond_9

    .line 1350
    move-object/from16 v0, v57

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1352
    :cond_9
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List of objects:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    if-eqz v57, :cond_a

    .line 1354
    const-string v3, "EnterpriseContainerService"

    const-string v4, "removeList of objects not null"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    invoke-interface/range {v57 .. v57}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .local v42, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 1357
    .local v50, object:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual/range {v50 .. v50}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v6

    invoke-virtual/range {v50 .. v50}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v6

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v4, v6, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 1360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual/range {v50 .. v50}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v4

    const/4 v6, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3900(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto :goto_1

    .line 1363
    .end local v42           #i$:Ljava/util/Iterator;
    .end local v50           #object:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :cond_a
    const-string v3, "EnterpriseContainerService"

    const-string v4, "createInprogresslist is null, nothing to set"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/knox/container/manager/StateManager;->getContainers()Ljava/util/List;

    move-result-object v47

    .line 1368
    .local v47, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List of objects:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    if-eqz v47, :cond_d

    .line 1370
    const-string v3, "EnterpriseContainerService"

    const-string v4, "List of objects not null"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .restart local v42       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 1372
    .restart local v50       #object:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    const-string v3, "EnterpriseContainerService"

    const-string v4, "At least one container is there"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual/range {v50 .. v50}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v6

    invoke-virtual/range {v50 .. v50}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v6

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_REBOOT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v4, v6, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    goto :goto_2

    .end local v50           #object:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :cond_c
    move/from16 v22, v28

    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1378
    .end local v22           #cid:I
    .end local v42           #i$:Ljava/util/Iterator;
    .restart local v28       #cid:I
    :cond_d
    const-string v3, "EnterpriseContainerService"

    const-string v4, "List is null, nothing to set"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v28

    .line 1380
    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1383
    .end local v22           #cid:I
    .end local v34           #createInprogresslist:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v35           #doesnotExistlist:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v47           #list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v56           #removeInprogresslist:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v57           #removeList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v28       #cid:I
    :pswitch_2
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1384
    .local v10, containerId:I
    const-string v3, "rid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1385
    .local v5, requestId:I
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container remount successfully: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v10, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v63

    .line 1392
    .local v63, transitState:Lcom/sec/knox/container/constants/CSState;
    invoke-virtual/range {v63 .. v63}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-eq v3, v4, :cond_f

    .line 1393
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container remount successfully: New state is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(I)Z
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4000(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    .line 1400
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1401
    .local v7, data:Landroid/os/Bundle;
    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x4

    const/16 v6, 0x3f6

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1406
    .end local v7           #data:Landroid/os/Bundle;
    .end local v63           #transitState:Lcom/sec/knox/container/constants/CSState;
    :cond_e
    new-instance v60, Landroid/content/Intent;

    const-string v3, "enterprise.container.remount.success"

    move-object/from16 v0, v60

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1407
    .local v60, success:Landroid/content/Intent;
    const-string v3, "containerid"

    move-object/from16 v0, v60

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1412
    new-instance v48, Landroid/os/Bundle;

    invoke-direct/range {v48 .. v48}, Landroid/os/Bundle;-><init>()V

    .line 1413
    .local v48, message:Landroid/os/Bundle;
    const-string v3, "containerid"

    move-object/from16 v0, v48

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/16 v4, 0xc

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v48

    invoke-static {v3, v4, v6, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v49

    .line 1416
    .local v49, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    move/from16 v22, v28

    .line 1417
    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1396
    .end local v22           #cid:I
    .end local v48           #message:Landroid/os/Bundle;
    .end local v49           #msg:Landroid/os/Message;
    .end local v60           #success:Landroid/content/Intent;
    .restart local v28       #cid:I
    .restart local v63       #transitState:Lcom/sec/knox/container/constants/CSState;
    :cond_f
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Container remount successfully: transitState failed. State still invalid"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1420
    .end local v5           #requestId:I
    .end local v10           #containerId:I
    .end local v63           #transitState:Lcom/sec/knox/container/constants/CSState;
    :pswitch_3
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1422
    .restart local v10       #containerId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v10, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 1426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->loadPasswordInfoToCache(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4100(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V
    invoke-static {v3, v4, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2100(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->startContainerEventsRelayManager()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4200(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v9, 0x1

    const/16 v11, 0x3e9

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1439
    new-instance v32, Landroid/content/Intent;

    const-string v3, "enterprise.container.setup.success"

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1440
    .local v32, containerSuccess:Landroid/content/Intent;
    const-string v3, "containerid"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v22, v28

    .line 1442
    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1447
    .end local v10           #containerId:I
    .end local v22           #cid:I
    .end local v32           #containerSuccess:Landroid/content/Intent;
    .restart local v28       #cid:I
    :pswitch_4
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1448
    .restart local v10       #containerId:I
    const-string v3, "rid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1449
    .restart local v5       #requestId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x2

    const/4 v6, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v3, v10, v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    .line 1450
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Container remount failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " <<<<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1452
    const-string v3, "EnterpriseContainerService"

    const-string v4, "    Calling callback container remount failure"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1454
    .restart local v7       #data:Landroid/os/Bundle;
    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x4

    const/16 v6, 0x3f7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1458
    .end local v7           #data:Landroid/os/Bundle;
    :cond_10
    new-instance v38, Landroid/content/Intent;

    const-string v3, "enterprise.container.remount.failed"

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1459
    .local v38, failure:Landroid/content/Intent;
    const-string v3, "containerid"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1463
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1464
    .restart local v7       #data:Landroid/os/Bundle;
    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v4, v6, v8, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v49

    .line 1467
    .restart local v49       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    move/from16 v22, v28

    .line 1468
    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1471
    .end local v5           #requestId:I
    .end local v7           #data:Landroid/os/Bundle;
    .end local v10           #containerId:I
    .end local v22           #cid:I
    .end local v38           #failure:Landroid/content/Intent;
    .end local v49           #msg:Landroid/os/Message;
    .restart local v28       #cid:I
    :pswitch_5
    const-string v3, "containerid"

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1472
    .restart local v10       #containerId:I
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Container create failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " <<<<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const-string v3, "EnterpriseContainerService"

    const-string v4, "    Calling callback container set up failure"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_FAILURE:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v10, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 1478
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v14, 0x1

    const/16 v16, 0x3ea

    const/16 v17, 0x0

    const/16 v18, 0x1

    move v15, v10

    invoke-virtual/range {v13 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1481
    new-instance v38, Landroid/content/Intent;

    const-string v3, "enterprise.container.setup.failure"

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1482
    .restart local v38       #failure:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v22, v28

    .line 1483
    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1486
    .end local v10           #containerId:I
    .end local v22           #cid:I
    .end local v38           #failure:Landroid/content/Intent;
    .restart local v28       #cid:I
    :pswitch_6
    const-string v3, "state"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v58

    .line 1487
    .local v58, state:I
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1488
    .restart local v10       #containerId:I
    const-string v3, "requestId"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1489
    .restart local v5       #requestId:I
    const-string v3, "errorCode"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v36

    .line 1491
    .local v36, errorCode:I
    const-string v3, "primary"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v45

    .line 1493
    .local v45, isPrimary:Z
    const-string v3, "status"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v59

    .line 1495
    .local v59, status:Z
    const-string v3, "password"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1497
    .local v19, password:Ljava/lang/String;
    const-string v3, "containerObj"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    .line 1500
    .local v18, containerObj:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    new-instance v48, Landroid/os/Bundle;

    invoke-direct/range {v48 .. v48}, Landroid/os/Bundle;-><init>()V

    .line 1501
    .restart local v48       #message:Landroid/os/Bundle;
    if-eqz v58, :cond_11

    const/4 v3, 0x2

    move/from16 v0, v58

    if-ne v0, v3, :cond_1b

    .line 1502
    :cond_11
    const/4 v3, 0x1

    move/from16 v0, v45

    if-ne v0, v3, :cond_16

    .line 1503
    const/4 v3, 0x1

    move/from16 v0, v59

    if-ne v0, v3, :cond_14

    .line 1505
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1506
    .restart local v7       #data:Landroid/os/Bundle;
    const-string v3, "primaryMountStatus"

    const-string v4, "success"

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v14, 0x1

    const/16 v16, 0x3f2

    const/16 v18, 0x0

    move v15, v10

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1511
    .end local v18           #containerObj:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    move-object/from16 v0, p0

    move/from16 v1, v58

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v5, v10, v2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mountSecondStorage(IIILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1513
    const/4 v3, 0x2

    move/from16 v0, v58

    if-ne v0, v3, :cond_13

    .line 1514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4400(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v3, v10, v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    :cond_12
    :goto_4
    move/from16 v22, v28

    .line 1522
    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1518
    .end local v22           #cid:I
    .restart local v28       #cid:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    goto :goto_4

    .line 1523
    .end local v7           #data:Landroid/os/Bundle;
    .restart local v18       #containerObj:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    :cond_14
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed for mounting primary partition: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const/4 v3, 0x2

    move/from16 v0, v58

    if-ne v0, v3, :cond_15

    .line 1528
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container remount failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4400(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v22, v28

    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1531
    .end local v22           #cid:I
    .restart local v28       #cid:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 1532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v22, v28

    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1537
    .end local v22           #cid:I
    .restart local v28       #cid:I
    :cond_16
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    const/4 v3, 0x1

    move/from16 v0, v59

    if-ne v0, v3, :cond_19

    .line 1541
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1542
    .restart local v7       #data:Landroid/os/Bundle;
    const-string v3, "secondaryMountStatus"

    const-string v4, "success"

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v14, 0x1

    const/16 v16, 0x3f2

    const/16 v18, 0x0

    move v15, v10

    move-object/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1548
    .end local v18           #containerObj:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mMountCallBackData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4700(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    .line 1550
    .local v30, containerData:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    move-object/from16 v18, v30

    .line 1554
    .restart local v18       #containerObj:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    const/4 v3, 0x2

    move/from16 v0, v58

    if-ne v0, v3, :cond_18

    .line 1557
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remount success for : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    const-string v3, "containerid"

    move-object/from16 v0, v48

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1559
    const-string v3, "rid"

    move-object/from16 v0, v48

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/16 v4, 0xd

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v48

    invoke-static {v3, v4, v6, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v49

    .line 1563
    .restart local v49       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v49           #msg:Landroid/os/Message;
    :cond_17
    :goto_5
    move/from16 v22, v28

    .line 1572
    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .end local v22           #cid:I
    .restart local v28       #cid:I
    :cond_18
    move-object/from16 v13, p0

    move/from16 v14, v58

    move/from16 v15, v59

    move/from16 v16, v36

    move/from16 v17, v10

    .line 1566
    invoke-virtual/range {v13 .. v19}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->addContainer(IZIILcom/sec/knox/container/EnterpriseContainerObjectParam;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    goto :goto_5

    .line 1574
    .end local v7           #data:Landroid/os/Bundle;
    .end local v30           #containerData:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    :cond_19
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed for mounting secondary partition: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v3, v10, v4, v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    .line 1577
    const/4 v3, 0x2

    move/from16 v0, v58

    if-ne v0, v3, :cond_1a

    .line 1578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4400(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v22, v28

    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1580
    .end local v22           #cid:I
    .restart local v28       #cid:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 1581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v22, v28

    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1585
    .end local v22           #cid:I
    .restart local v28       #cid:I
    :cond_1b
    const/4 v3, 0x1

    move/from16 v0, v58

    if-ne v0, v3, :cond_1d

    .line 1586
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const/4 v3, 0x1

    move/from16 v0, v59

    if-ne v0, v3, :cond_1c

    .line 1589
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unmount is success "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v28

    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1591
    .end local v22           #cid:I
    .restart local v28       #cid:I
    :cond_1c
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1592
    .restart local v7       #data:Landroid/os/Bundle;
    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    const/16 v23, 0x3ed

    const/16 v25, 0x1

    move/from16 v22, v10

    move-object/from16 v24, v7

    invoke-virtual/range {v20 .. v25}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1596
    new-instance v65, Landroid/content/Intent;

    const-string v3, "enterprise.container.unmountfailure"

    move-object/from16 v0, v65

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1601
    .local v65, unmountFailed:Landroid/content/Intent;
    const-string v3, "containerid"

    move-object/from16 v0, v65

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v65

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v22, v28

    .line 1603
    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1604
    .end local v7           #data:Landroid/os/Bundle;
    .end local v22           #cid:I
    .end local v65           #unmountFailed:Landroid/content/Intent;
    .restart local v28       #cid:I
    :cond_1d
    const/4 v3, 0x3

    move/from16 v0, v58

    if-ne v0, v3, :cond_2

    .line 1605
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Change Password callback"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    const/4 v3, 0x1

    move/from16 v0, v59

    if-ne v0, v3, :cond_20

    .line 1607
    const-string v3, "EnterpriseContainerService"

    const-string v4, "changePassword success"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Change Password storing the new password"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v10, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->updatePassword(ILjava/lang/String;)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->onChangePasswordSuccess(I)V

    .line 1611
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1612
    .restart local v7       #data:Landroid/os/Bundle;
    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x3

    const/16 v6, 0x3f4

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CHANGE_PWD:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v10, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v61

    .line 1622
    .local v61, tempState:Lcom/sec/knox/container/constants/CSState;
    invoke-virtual/range {v61 .. v61}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-eq v3, v4, :cond_1f

    .line 1623
    const-string v3, "EnterpriseContainerService"

    const-string v4, "ContainerEncryptionCallback.updateStatus(): restarting password expiry timeout"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4800(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .restart local v42       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/ComponentName;

    .line 1626
    .local v29, componentName:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v10, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->updatePasswordExpirationTimeout(ILandroid/content/ComponentName;)V

    goto :goto_6

    .line 1629
    .end local v29           #componentName:Landroid/content/ComponentName;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    .line 1630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V
    invoke-static {v3, v4, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2100(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V

    .line 1632
    const-string v3, "EnterpriseContainerService"

    const-string v4, "ContainerEncryptionCallback.updateStatus(): firing intent: com.samsung.redex.proxy.activity.close_dialog"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    new-instance v55, Landroid/content/Intent;

    const-string v3, "com.samsung.redex.proxy.activity.close_dialog"

    move-object/from16 v0, v55

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1636
    .local v55, redexclosedialog:Landroid/content/Intent;
    const-string v3, "containerid"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v55

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v42           #i$:Ljava/util/Iterator;
    .end local v55           #redexclosedialog:Landroid/content/Intent;
    :cond_1f
    move/from16 v22, v28

    .line 1639
    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1640
    .end local v7           #data:Landroid/os/Bundle;
    .end local v22           #cid:I
    .end local v61           #tempState:Lcom/sec/knox/container/constants/CSState;
    .restart local v28       #cid:I
    :cond_20
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change Password failed cannot update the cache error code:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1644
    .restart local v7       #data:Landroid/os/Bundle;
    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x3

    const/16 v6, 0x3f5

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    move/from16 v22, v28

    .line 1648
    .end local v28           #cid:I
    .restart local v22       #cid:I
    goto/16 :goto_0

    .line 1653
    .end local v5           #requestId:I
    .end local v7           #data:Landroid/os/Bundle;
    .end local v10           #containerId:I
    .end local v18           #containerObj:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .end local v19           #password:Ljava/lang/String;
    .end local v22           #cid:I
    .end local v36           #errorCode:I
    .end local v45           #isPrimary:Z
    .end local v48           #message:Landroid/os/Bundle;
    .end local v58           #state:I
    .end local v59           #status:Z
    .restart local v28       #cid:I
    :pswitch_7
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binder UID :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    const-string v3, "package_install_name"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1655
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1656
    .end local v28           #cid:I
    .restart local v22       #cid:I
    const-string v3, "package_install_uid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v64

    .line 1657
    const-string v3, "package_install_source"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 1658
    const-string v3, "package_original_signature"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v52

    .line 1659
    const-string v51, "NA"

    .line 1664
    .local v51, origSignatureAsString:Ljava/lang/String;
    if-eqz v52, :cond_21

    .line 1665
    const-string v3, ","

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    .line 1668
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v3, v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_22

    .line 1669
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 1670
    .local v33, contentval:Landroid/content/ContentValues;
    const-string v3, "containerid"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1671
    const-string v3, "packages"

    move-object/from16 v0, v33

    move-object/from16 v1, v54

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    const-string v3, "original_signature"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const-string v3, "installation_source"

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1675
    const-string v3, "app_uid"

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    invoke-virtual {v3, v4, v0, v6}, Lcom/sec/knox/container/manager/StateManager;->insert(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;)Z

    .line 1678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v7

    .line 1680
    .local v7, data:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-virtual {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v26

    .line 1681
    .local v26, adminId:I
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationUninstallationDisabledBySystem to true :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v54

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 1685
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getApplicationUninstallationEnabled  :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v6}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    new-instance v43, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    invoke-direct/range {v43 .. v43}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;-><init>()V

    .line 1691
    .local v43, info:Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    move-object/from16 v0, v43

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setContainerId(I)V

    .line 1692
    move-object/from16 v0, v43

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setAppPackage(Ljava/lang/String;)V

    .line 1693
    move-object/from16 v0, v43

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setSignature(Ljava/lang/String;)V

    .line 1694
    invoke-virtual/range {v43 .. v44}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setInstallationSource(I)V

    .line 1695
    move-object/from16 v0, v43

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setUid(I)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->updateContainerPackageCache(Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;)Z

    .line 1701
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " INSTALLED SUCCESSFULLY in container: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    .end local v7           #data:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v26           #adminId:I
    .end local v33           #contentval:Landroid/content/ContentValues;
    .end local v43           #info:Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    :goto_7
    new-instance v37, Landroid/os/Bundle;

    invoke-direct/range {v37 .. v37}, Landroid/os/Bundle;-><init>()V

    .line 1718
    .local v37, eventData:Landroid/os/Bundle;
    const-string v3, "containerid"

    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1719
    const-string v3, "package"

    move-object/from16 v0, v37

    move-object/from16 v1, v54

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    sget-object v4, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_INSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntValue()I

    move-result v4

    move/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v3, v0, v4, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->updateEventToListners(IILandroid/os/Bundle;)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v22

    move-object/from16 v1, v54

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5000(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 1728
    .local v62, transformedPackageName:Ljava/lang/String;
    if-eqz v62, :cond_0

    .line 1729
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1730
    .local v7, data:Landroid/os/Bundle;
    const-string v3, "packageName"

    move-object/from16 v0, v62

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    const-string v3, "packageInstallStatus"

    const-string v4, "success"

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v23, 0x3f3

    const/16 v25, 0x0

    move-object/from16 v24, v7

    invoke-virtual/range {v20 .. v25}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 1704
    .end local v7           #data:Landroid/os/Bundle;
    .end local v37           #eventData:Landroid/os/Bundle;
    .end local v62           #transformedPackageName:Ljava/lang/String;
    :cond_22
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " UPDATED SUCCESSFULLY in container: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1741
    .end local v22           #cid:I
    .end local v51           #origSignatureAsString:Ljava/lang/String;
    .restart local v28       #cid:I
    :pswitch_8
    new-instance v48, Landroid/os/Bundle;

    invoke-direct/range {v48 .. v48}, Landroid/os/Bundle;-><init>()V

    .line 1742
    .restart local v48       #message:Landroid/os/Bundle;
    const/16 v49, 0x0

    .line 1743
    .restart local v49       #msg:Landroid/os/Message;
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1744
    .end local v28           #cid:I
    .restart local v22       #cid:I
    const-string v3, "package_install_name"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1745
    .local v39, frameworkPackageList:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1300(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->isContainerCanceled(I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1746
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Cancel Container: All packages will be uninstalled"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v22

    invoke-virtual {v3, v0, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 1750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    move/from16 v0, v22

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3900(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_0

    .line 1754
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v7

    .line 1755
    .local v7, data:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-virtual {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v26

    .line 1756
    .restart local v26       #adminId:I
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationUninstallationDisabledBySystem to true :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    if-nez v39, :cond_25

    const/16 v40, 0x0

    .line 1761
    .local v40, frameworkPackages:[Ljava/lang/String;
    :goto_8
    if-eqz v40, :cond_26

    .line 1762
    move-object/from16 v27, v40

    .local v27, arr$:[Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v46, v0

    .local v46, len$:I
    const/16 v42, 0x0

    .local v42, i$:I
    :goto_9
    move/from16 v0, v42

    move/from16 v1, v46

    if-ge v0, v1, :cond_26

    aget-object v41, v27, v42

    .line 1763
    .local v41, frameworkPkg:Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    .line 1764
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 1762
    :cond_24
    add-int/lit8 v42, v42, 0x1

    goto :goto_9

    .line 1759
    .end local v27           #arr$:[Ljava/lang/String;
    .end local v40           #frameworkPackages:[Ljava/lang/String;
    .end local v41           #frameworkPkg:Ljava/lang/String;
    .end local v42           #i$:I
    .end local v46           #len$:I
    :cond_25
    const-string v3, ";"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v40

    goto :goto_8

    .line 1770
    .restart local v40       #frameworkPackages:[Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "framework.pkgName.key"

    move-object/from16 v0, v39

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v22

    invoke-virtual {v3, v0, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 1776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v58

    .line 1777
    .local v58, state:Lcom/sec/knox/container/constants/CSState;
    invoke-virtual/range {v58 .. v58}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-ne v3, v4, :cond_27

    .line 1778
    const-string v3, "containerid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1300(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v48

    invoke-static {v3, v4, v6, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v49

    .line 1783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1785
    :cond_27
    const-string v3, "containerid"

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/16 v4, 0xc

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v48

    invoke-static {v3, v4, v6, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v49

    .line 1788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1793
    .end local v7           #data:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v22           #cid:I
    .end local v26           #adminId:I
    .end local v39           #frameworkPackageList:Ljava/lang/String;
    .end local v40           #frameworkPackages:[Ljava/lang/String;
    .end local v48           #message:Landroid/os/Bundle;
    .end local v49           #msg:Landroid/os/Message;
    .end local v58           #state:Lcom/sec/knox/container/constants/CSState;
    .restart local v28       #cid:I
    :pswitch_9
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binder UID :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    const-string v3, "package_install_name"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1795
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1796
    .end local v28           #cid:I
    .restart local v22       #cid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v3, v4, v0, v1, v6}, Lcom/sec/knox/container/manager/StateManager;->delete(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)Z

    .line 1798
    new-instance v43, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    invoke-direct/range {v43 .. v43}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;-><init>()V

    .line 1799
    .restart local v43       #info:Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    move-object/from16 v0, v43

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setContainerId(I)V

    .line 1800
    move-object/from16 v0, v43

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setAppPackage(Ljava/lang/String;)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->updateContainerPackageCache(Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;)Z

    .line 1804
    new-instance v37, Landroid/os/Bundle;

    invoke-direct/range {v37 .. v37}, Landroid/os/Bundle;-><init>()V

    .line 1805
    .restart local v37       #eventData:Landroid/os/Bundle;
    const-string v3, "containerid"

    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1806
    const-string v3, "package"

    move-object/from16 v0, v37

    move-object/from16 v1, v54

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    sget-object v4, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_UNINSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntValue()I

    move-result v4

    move/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v3, v0, v4, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->updateEventToListners(IILandroid/os/Bundle;)V

    .line 1814
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " UNINSTALLED SUCCESSFULLY in container: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1819
    .end local v22           #cid:I
    .end local v37           #eventData:Landroid/os/Bundle;
    .end local v43           #info:Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    .restart local v28       #cid:I
    :pswitch_a
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() All Packages Uninstalled Part of Remove Container"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1822
    .end local v28           #cid:I
    .restart local v22       #cid:I
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1823
    .local v7, data:Landroid/os/Bundle;
    const/16 v31, 0x0

    .line 1824
    .local v31, containerRemoved:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->isContainerCanceled(I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v5

    .line 1826
    .restart local v5       #requestId:I
    const-string v3, "containerid"

    move/from16 v0, v22

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1827
    const-string v3, "requestid"

    invoke-virtual {v7, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    const/16 v23, 0x3f8

    const/16 v25, 0x1

    move-object/from16 v24, v7

    invoke-virtual/range {v20 .. v25}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1831
    new-instance v31, Landroid/content/Intent;

    .end local v31           #containerRemoved:Landroid/content/Intent;
    const-string v3, "enterprise.container.cancelled"

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1832
    .restart local v31       #containerRemoved:Landroid/content/Intent;
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container Cancelled intent Container id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    const-string v3, "containerid"

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1834
    const-string v3, "requestid"

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1845
    .end local v5           #requestId:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_COMPLETED:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v22

    invoke-virtual {v3, v0, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 1848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v22

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "framework.pkgName.key"

    const-string v6, ""

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1836
    :cond_28
    const-string v3, "containerid"

    move/from16 v0, v22

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    const/16 v23, 0x3eb

    const/16 v25, 0x1

    move-object/from16 v24, v7

    invoke-virtual/range {v20 .. v25}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1840
    new-instance v31, Landroid/content/Intent;

    .end local v31           #containerRemoved:Landroid/content/Intent;
    const-string v3, "enterprise.container.uninstalled"

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1841
    .restart local v31       #containerRemoved:Landroid/content/Intent;
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container removed intent Container id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    const-string v3, "containerid"

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_a

    .line 1857
    .end local v7           #data:Landroid/os/Bundle;
    .end local v22           #cid:I
    .end local v31           #containerRemoved:Landroid/content/Intent;
    .restart local v28       #cid:I
    :pswitch_b
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1859
    .end local v28           #cid:I
    .restart local v22       #cid:I
    const-string v3, "package_install_name"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1860
    .restart local v39       #frameworkPackageList:Ljava/lang/String;
    if-eqz v39, :cond_29

    .line 1861
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "framework.pkgName.key"

    move-object/from16 v0, v39

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1864
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v22

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(I)V
    invoke-static {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 1866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v22

    invoke-virtual {v3, v0, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 1868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    move/from16 v0, v22

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3900(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_0

    .line 1876
    .end local v22           #cid:I
    .end local v39           #frameworkPackageList:Ljava/lang/String;
    .restart local v28       #cid:I
    :pswitch_c
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1879
    .end local v28           #cid:I
    .restart local v22       #cid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v6, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v22

    invoke-virtual {v3, v0, v4, v6}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 1881
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    move/from16 v0, v22

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3900(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_0

    .line 1885
    .end local v22           #cid:I
    .restart local v28       #cid:I
    :pswitch_d
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1889
    .end local v28           #cid:I
    .restart local v22       #cid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v22

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(I)Z
    invoke-static {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4000(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1890
    new-instance v53, Landroid/content/Intent;

    const-string v3, "com.samsung.redex.proxy.activity.show_dialog"

    move-object/from16 v0, v53

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1891
    .local v53, passwordExpired:Landroid/content/Intent;
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Password is expired. Fire a change password intent"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    const-string v3, "containerid"

    move-object/from16 v0, v53

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$800(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1895
    .end local v53           #passwordExpired:Landroid/content/Intent;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    goto/16 :goto_0

    .line 1900
    .end local v22           #cid:I
    .restart local v28       #cid:I
    :pswitch_e
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_LOCK_TIMEOUT"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    const-string v3, "containerid"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1902
    .end local v28           #cid:I
    .restart local v22       #cid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->executeTimeout(I)V

    goto/16 :goto_0

    .line 1290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public mountSecondStorage(IIILjava/lang/String;)Z
    .locals 12
    .parameter "state"
    .parameter "requestId"
    .parameter "containerId"
    .parameter "password"

    .prologue
    .line 1911
    const-string v1, "EnterpriseContainerService"

    const-string v2, "mountSecondStorage()"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #calls: Lcom/sec/knox/container/EnterpriseContainerService;->isContainerPartition(I)Z
    invoke-static {v1, p3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5100(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1914
    const-string v1, "EnterpriseContainerService"

    const-string v2, "Error create container: sdcard directory"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    const/4 v1, 0x0

    .line 1932
    :goto_0
    return v1

    .line 1918
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/container/.sdcontainer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1919
    .local v10, sdSrcPath:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt_1/sdcard_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1920
    .local v9, sdMountPath:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1922
    .local v11, srcSDPathFile:Ljava/io/File;
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v5, 0x0

    move v2, p1

    move v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Z)V

    .line 1924
    .local v0, callback:Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    .line 1926
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    #getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3200(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, v10

    move-object v3, v9

    move-object/from16 v4, p4

    move v7, p3

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Landroid/dirEncryption/DirEncryptionManager;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 1928
    const-string v1, "EnterpriseContainerService"

    const-string v2, "Error create container: DirEncryptionManager secondary mount failed"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    const/4 v1, 0x0

    goto :goto_0

    .line 1932
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString(I)V
    .locals 3
    .parameter "i"

    .prologue
    .line 1215
    packed-switch p1, :pswitch_data_0

    .line 1267
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message parameter : Unknown return - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    :goto_0
    return-void

    .line 1217
    :pswitch_0
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_PACKAGE_INSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1220
    :pswitch_1
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ALL_PACKAGES_INSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1224
    :pswitch_2
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_PACKAGE_UNINSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1227
    :pswitch_3
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ALL_PACKAGES_UNINSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1231
    :pswitch_4
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1235
    :pswitch_5
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1239
    :pswitch_6
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1242
    :pswitch_7
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_HANDLE_PASSWORD_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1246
    :pswitch_8
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_SETUP_FAILURE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1249
    :pswitch_9
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_REMOUNT_FAILURE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1252
    :pswitch_a
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_SETUP_SUCCESS"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1255
    :pswitch_b
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_REMOUNT_SUCCESS"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1258
    :pswitch_c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1261
    :pswitch_d
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1264
    :pswitch_e
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_LOCK_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
