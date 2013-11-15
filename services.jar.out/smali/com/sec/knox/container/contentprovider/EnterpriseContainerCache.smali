.class public Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;
.super Lcom/sec/knox/container/contentprovider/ContainerDatabase;
.source "EnterpriseContainerCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;
    }
.end annotation


# static fields
.field public static final CACHE_CONTAINER_STATUS_ERROR:I = -0x1


# instance fields
.field private CONTAINER_ID_ONE:I

.field private CONTAINER_LIMIT_REACHED:I

.field private CONTAINER_MAX_LIMIT:I

.field private CONTAINER_NONE:I

.field private final TAG:Ljava/lang/String;

.field dbHandle:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

.field private mContainerCacheHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerState:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;-><init>()V

    .line 24
    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    .line 25
    const-string v1, "EnterpriseContainerCacheData"

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->TAG:Ljava/lang/String;

    .line 27
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_ID_ONE:I

    .line 28
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_MAX_LIMIT:I

    .line 29
    iget v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_MAX_LIMIT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_LIMIT_REACHED:I

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_NONE:I

    .line 32
    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    .line 33
    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->dbHandle:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    .line 34
    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerState:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;

    .line 115
    :try_start_0
    const-string v1, "EnterpriseContainerCacheData"

    const-string v2, "EnterpriseContainerCache intialise"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    .line 117
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->initializeContainersOnBoot(Landroid/content/Context;)V

    .line 118
    new-instance v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;-><init>(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;II)V

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerState:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EnterpriseContainerCacheData"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getContainers(IZ)Ljava/util/List;
    .locals 8
    .parameter "status"
    .parameter "all"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    const-string v5, "EnterpriseContainerCacheData"

    const-string v6, "Container cache getContainers "

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v5, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    .line 496
    const-string v5, "EnterpriseContainerCacheData"

    const-string v6, "Container cache getContainers not null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v5, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 498
    .local v1, it:Ljava/util/Iterator;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v2, listContainer:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 501
    const-string v5, "EnterpriseContainerCacheData"

    const-string v6, "getContainerStatus while loop"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 503
    .local v4, pairs:Ljava/util/Map$Entry;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--key--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "----"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 507
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    new-instance v3, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;-><init>()V

    .line 509
    .local v3, obj:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerId(I)V

    .line 510
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerName(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getAdmin()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerAdmin(I)V

    .line 512
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerEmail(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getLockType()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerLockType(I)V

    .line 514
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerType()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerType(I)V

    .line 516
    const-string v5, "EnterpriseContainerCacheData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getContainerStatus of: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--flag--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v5, 0x1

    if-eq p2, v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerStatus()I

    move-result v5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 520
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 527
    .end local v0           #cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    .end local v1           #it:Ljava/util/Iterator;
    .end local v2           #listContainer:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v3           #obj:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v4           #pairs:Ljava/util/Map$Entry;
    :cond_2
    const-string v5, "EnterpriseContainerCacheData"

    const-string v6, "getActiveContainersreturn NULL"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const/4 v2, 0x0

    :cond_3
    return-object v2
.end method

.method private initializeContainersOnBoot(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getPasswordContainerdataFromDB(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    .line 126
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 128
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 130
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    const-string v3, "EnterpriseContainerCacheData"

    const-string v4, "initializeContainersOnBoot()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 133
    .local v1, containerId:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 134
    .restart local v0       #cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->updateContainerPackageCache(I)Z

    goto :goto_0

    .line 137
    .end local v0           #cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    .end local v1           #containerId:Ljava/lang/Integer;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method private updateContainerPackageCache(I)Z
    .locals 5
    .parameter "containerId"

    .prologue
    .line 140
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 142
    .local v0, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 143
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainerPackagesInfo(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v1

    .line 144
    .local v1, pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerPackagesInfo(Ljava/util/HashMap;)V

    .line 145
    const/4 v2, 0x1

    .line 152
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    .end local v1           #pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :goto_0
    return v2

    .line 147
    .restart local v0       #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no entry in cache for containerId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 150
    :cond_1
    const-string v2, "EnterpriseContainerCacheData"

    const-string v3, "Container hashmap is null...hmmm"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public clearContainerRequestId(I)V
    .locals 1
    .parameter "requestId"

    .prologue
    .line 712
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerState:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->clearContainerRequestId(I)V

    .line 713
    return-void
.end method

.method public containerCanceled(I)Z
    .locals 1
    .parameter "requestId"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerState:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerState:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->containerCanceled(I)Z

    move-result v0

    .line 695
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContainerId(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainerId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getContainerIdForCreation()I
    .locals 5

    .prologue
    .line 644
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getPasswordContainerdataFromDB(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    .line 645
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_ID_ONE:I

    .line 646
    .local v0, i:I
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_MAX_LIMIT:I

    if-ne v2, v3, :cond_0

    .line 647
    const-string v2, "EnterpriseContainerCacheData"

    const-string v3, "getContainerIdForCreation -Maximum 3 reached"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_LIMIT_REACHED:I

    .line 663
    :goto_0
    return v2

    .line 649
    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 652
    :goto_1
    iget v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_MAX_LIMIT:I

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_1

    .line 653
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 654
    .local v1, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-nez v1, :cond_2

    .line 662
    .end local v1           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_1
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContainerId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 663
    goto :goto_0

    .line 652
    .restart local v1       #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 658
    .end local v1           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_3
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_NONE:I

    if-ne v2, v3, :cond_1

    .line 659
    const-string v2, "EnterpriseContainerCacheData"

    const-string v3, "get container ID 1"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_ID_ONE:I

    goto :goto_0
.end method

.method public getContainerIdForRequestId(I)I
    .locals 1
    .parameter "requestId"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerState:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->getContainerIdForRequestId(I)I

    move-result v0

    return v0
.end method

.method public getContainerLockOnScreenLock(I)Z
    .locals 4
    .parameter "containerId"

    .prologue
    .line 423
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 425
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 426
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerLockOnScreenLock: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerLockOnScreenLock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerLockOnScreenLock()Z

    move-result v1

    .line 432
    :goto_0
    return v1

    .line 429
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerLockOnScreenLock: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .locals 4
    .parameter "containerId"

    .prologue
    .line 244
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 245
    .local v1, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    new-instance v0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;-><init>()V

    .line 246
    .local v0, containerObj:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerId(I)V

    .line 247
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerName(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getAdmin()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerAdmin(I)V

    .line 249
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerEmail(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getLockType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerLockType(I)V

    .line 251
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerType(I)V

    .line 252
    return-object v0
.end method

.method public getContainerPackages(I)Ljava/util/List;
    .locals 8
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 622
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v2, containerPkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 625
    .local v5, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v5, :cond_0

    .line 626
    invoke-virtual {v5}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v0

    .line 627
    .local v0, containerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 629
    .local v3, containerSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 630
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 633
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 634
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 635
    .local v1, containerPkg:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 640
    .end local v0           #containerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    .end local v1           #containerPkg:Ljava/lang/String;
    .end local v3           #containerSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method

.method public declared-synchronized getContainerPackagesInfoFromCache()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v0, allPkgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 218
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 219
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 222
    .local v1, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 224
    .local v2, containerId:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 225
    .restart local v1       #cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 226
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 215
    .end local v0           #allPkgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    .end local v1           #cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    .end local v2           #containerId:Ljava/lang/Integer;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 230
    .restart local v0       #allPkgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :cond_1
    monitor-exit p0

    return-object v0
.end method

.method public getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;
    .locals 3
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 236
    .local v0, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v1

    .line 240
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainerState(I)I
    .locals 1
    .parameter "requestId"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerState:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->getContainerState(I)I

    move-result v0

    return v0
.end method

.method protected getContainerStatus(IZ)I
    .locals 4
    .parameter "containerId"
    .parameter "fromCache"

    .prologue
    .line 269
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 270
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 272
    .local v0, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerStatus()I

    move-result v1

    .line 278
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return v1

    .line 275
    .restart local v0       #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getContainerVerifyOnlyOnChangeMode(I)Z
    .locals 4
    .parameter "containerId"

    .prologue
    .line 451
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 453
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 454
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerVerifyOnlyOnChangeMode: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getVerifyPwdOnlyOnChangeMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getVerifyPwdOnlyOnChangeMode()Z

    move-result v1

    .line 460
    :goto_0
    return v1

    .line 457
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerVerifyOnlyOnChangeMode: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainers(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContainers(I)Ljava/util/List;
    .locals 1
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainers(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContainers(Lcom/sec/knox/container/constants/CSState;)Ljava/util/List;
    .locals 1
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/knox/container/constants/CSState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainers(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFailedPasswordAttempts(I)I
    .locals 4
    .parameter "containerId"

    .prologue
    .line 282
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 284
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 285
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFailedPasswordAttempts: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getFailedPasswordAttempts()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getFailedPasswordAttempts()I

    move-result v1

    .line 291
    :goto_0
    return v1

    .line 288
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFailedPasswordAttempts: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumTimeToLock(I)J
    .locals 5
    .parameter "containerId"

    .prologue
    .line 312
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 314
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 315
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumTimeToLock: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getMaximumTimeToLock()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getMaximumTimeToLock()J

    move-result-wide v1

    .line 321
    :goto_0
    return-wide v1

    .line 318
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumTimeToLock: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordExpirationDate(I)J
    .locals 5
    .parameter "containerId"

    .prologue
    .line 369
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 371
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 372
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordExpirationDate: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordExpirationDate()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordExpirationDate()J

    move-result-wide v1

    .line 378
    :goto_0
    return-wide v1

    .line 375
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordExpirationDate: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordExpirationTimeout(I)J
    .locals 5
    .parameter "containerId"

    .prologue
    .line 396
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 398
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 399
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordExpirationTimeout: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordExpirationTimeout()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordExpirationTimeout()J

    move-result-wide v1

    .line 405
    :goto_0
    return-wide v1

    .line 402
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordExpirationTimeout: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordHasExpired(I)Z
    .locals 4
    .parameter "containerId"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 344
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 345
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordHasExpired: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordHasExpired()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordHasExpired()Z

    move-result v1

    .line 351
    :goto_0
    return v1

    .line 348
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordHasExpired: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordStateInfoCache(I)Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    .locals 3
    .parameter "containerId"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 201
    .local v0, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordStateInfo()Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    move-result-object v1

    .line 205
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequestIdForContainer(I)I
    .locals 1
    .parameter "containerId"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerState:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->getRequestIdForContainer(I)I

    move-result v0

    return v0
.end method

.method public isContainerCanceled(I)Z
    .locals 1
    .parameter "requestId"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerState:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->isContainerCanceled(I)Z

    move-result v0

    return v0
.end method

.method public isCreationInProgress()Z
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerState:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;

    #getter for: Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mState:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->access$000(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 668
    const/4 v0, 0x1

    .line 670
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeContainer(I)Z
    .locals 4
    .parameter "containerId"

    .prologue
    .line 603
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 605
    .local v0, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 606
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RemoveContiner- containerid success "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/4 v1, 0x1

    .line 612
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return v1

    .line 609
    .restart local v0       #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RemoveContiner- Cannot remove containerid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeContainerState(I)V
    .locals 1
    .parameter "requestId"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerState:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->removeContainerState(I)V

    .line 689
    return-void
.end method

.method public setContainerLockOnScreenLock(IZ)Z
    .locals 7
    .parameter "containerId"
    .parameter "containerLockOnScreenLock"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 436
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 438
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_1

    .line 439
    const-string v4, "EnterpriseContainerCacheData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContainerLockOnScreenLock: setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerLockOnScreenLock(Z)V

    .line 441
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 442
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "containerLockOnScreenLock"

    if-ne p2, v2, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v3

    .line 447
    .end local v1           #cv:Landroid/content/ContentValues;
    :goto_1
    return v3

    .restart local v1       #cv:Landroid/content/ContentValues;
    :cond_0
    move v2, v3

    .line 442
    goto :goto_0

    .line 445
    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_1
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setContainerLockOnScreenLock: There is no container with containerId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setContainerState(II)V
    .locals 1
    .parameter "requestId"
    .parameter "containerState"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerState:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->setContainerState(II)V

    .line 677
    return-void
.end method

.method protected setContainerStatus(II)V
    .locals 4
    .parameter "containerId"
    .parameter "containerStatus"

    .prologue
    .line 256
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 259
    .local v0, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerStatus(I)V

    .line 265
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    :goto_0
    return-void

    .line 262
    .restart local v0       #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_1
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContainerVerifyOnlyOnChangeMode(IZ)Z
    .locals 7
    .parameter "containerId"
    .parameter "toggleFlag"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 464
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 466
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_1

    .line 467
    const-string v4, "EnterpriseContainerCacheData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContainerVerifyOnlyOnChangeMode: setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setVerifyPwdOnlyOnChangeMode(Z)V

    .line 469
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 470
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "containerPwdVerfyOnModeChange"

    if-ne p2, v2, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 471
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v3

    .line 475
    .end local v1           #cv:Landroid/content/ContentValues;
    :goto_1
    return v3

    .restart local v1       #cv:Landroid/content/ContentValues;
    :cond_0
    move v2, v3

    .line 470
    goto :goto_0

    .line 473
    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_1
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setContainerVerifyOnlyOnChangeMode: There is no container with containerId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setFailedPasswordAttempts(II)Z
    .locals 4
    .parameter "containerId"
    .parameter "failedPasswordAttempts"

    .prologue
    .line 295
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 297
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 298
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFailedPasswordAttempts: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setFailedPasswordAttempts(I)V

    .line 300
    const/4 v1, 0x1

    .line 305
    :goto_0
    return v1

    .line 302
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFailedPasswordAttempts: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaximumTimeToLock(IJ)Z
    .locals 4
    .parameter "containerId"
    .parameter "maximumTimeToLock"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 330
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 331
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaximumTimeToLock: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p2, p3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setMaximumTimeToLock(J)V

    .line 333
    const/4 v1, 0x1

    .line 338
    :goto_0
    return v1

    .line 335
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaximumTimeToLock: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordExpirationDate(IJ)Z
    .locals 4
    .parameter "containerId"
    .parameter "passwordExpirationDate"

    .prologue
    .line 382
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 384
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 385
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordExpirationDate: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0, p2, p3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordExpirationDate(J)V

    .line 387
    const/4 v1, 0x1

    .line 392
    :goto_0
    return v1

    .line 389
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordExpirationDate: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordExpirationTimeout(IJ)Z
    .locals 4
    .parameter "containerId"
    .parameter "passwordExpirationTimeout"

    .prologue
    .line 409
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 411
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 412
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordExpirationTimeout: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0, p2, p3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordExpirationTimeout(J)V

    .line 414
    const/4 v1, 0x1

    .line 419
    :goto_0
    return v1

    .line 416
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordExpirationTimeout: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordHasExpired(IZ)Z
    .locals 4
    .parameter "containerId"
    .parameter "passwordHasExpired"

    .prologue
    .line 355
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 357
    .local v0, cacheObj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 358
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordHasExpired: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordHasExpired(Z)V

    .line 360
    const/4 v1, 0x1

    .line 365
    :goto_0
    return v1

    .line 362
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordHasExpired: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRequestIdForContainer(II)V
    .locals 1
    .parameter "containerId"
    .parameter "requestId"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerState:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;

    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->setRequestIdForContainer(II)V

    .line 701
    return-void
.end method

.method public updateCacheAddContainerObject(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_0
    return-void
.end method

.method public updateContainerPackageCache(Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;)Z
    .locals 5
    .parameter "info"

    .prologue
    .line 156
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 157
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getContainerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 158
    .local v0, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v1

    .line 160
    .local v1, pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    if-nez v1, :cond_0

    .line 161
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 163
    .restart local v1       #pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getAppPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getAppPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerPackagesInfo(Ljava/util/HashMap;)V

    .line 169
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getContainerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/4 v2, 0x1

    .line 177
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    .end local v1           #pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :goto_1
    return v2

    .line 166
    .restart local v0       #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    .restart local v1       #pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getAppPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 172
    .end local v1           #pkgsInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :cond_2
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no entry in cache for containerId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getContainerId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 175
    :cond_3
    const-string v2, "EnterpriseContainerCacheData"

    const-string v3, "there is error in updating the cache"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public updateContainerType(II)Z
    .locals 4
    .parameter "containerId"
    .parameter "containerType"

    .prologue
    .line 586
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 588
    .local v0, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerType(I)V

    .line 590
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const/4 v1, 0x1

    .line 598
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return v1

    .line 593
    .restart local v0       #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 596
    :cond_1
    const-string v1, "EnterpriseContainerCacheData"

    const-string v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateEmailId(ILjava/lang/String;)Z
    .locals 4
    .parameter "containerId"
    .parameter "emailId"

    .prologue
    .line 550
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 551
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 552
    .local v0, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setEmail(Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const/4 v1, 0x1

    .line 562
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return v1

    .line 557
    .restart local v0       #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 560
    :cond_1
    const-string v1, "EnterpriseContainerCacheData"

    const-string v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateLockType(II)Z
    .locals 4
    .parameter "containerId"
    .parameter "lockType"

    .prologue
    .line 568
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 570
    .local v0, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setLockType(I)V

    .line 572
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const/4 v1, 0x1

    .line 580
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return v1

    .line 575
    .restart local v0       #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 578
    :cond_1
    const-string v1, "EnterpriseContainerCacheData"

    const-string v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updatePasswordStateInfoCache(Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;)Z
    .locals 4
    .parameter "stateinfo"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getContainerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 183
    .local v0, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordStateInfo(Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;)V

    .line 185
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getContainerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const/4 v1, 0x1

    .line 194
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return v1

    .line 188
    .restart local v0       #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getContainerId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 191
    :cond_1
    const-string v1, "EnterpriseContainerCacheData"

    const-string v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updatePasswordStatus(ILjava/lang/Integer;)Z
    .locals 4
    .parameter "containerId"
    .parameter "passwordStatus"

    .prologue
    .line 532
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 534
    .local v0, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordStatus(I)V

    .line 536
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const/4 v1, 0x1

    .line 544
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return v1

    .line 539
    .restart local v0       #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .end local v0           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 542
    :cond_1
    const-string v1, "EnterpriseContainerCacheData"

    const-string v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
