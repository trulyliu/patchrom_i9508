.class Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;
.super Ljava/lang/Object;
.source "EnterpriseContainerCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerState"
.end annotation


# instance fields
.field mContainerId:I

.field mIsCanceled:Z

.field mRequestId:I

.field private mState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;


# direct methods
.method constructor <init>(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;II)V
    .locals 1
    .parameter
    .parameter "containerId"
    .parameter "requestId"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->this$0:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mState:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mState:Ljava/util/HashMap;

    .line 49
    iput p2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mContainerId:I

    .line 50
    iput p3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mRequestId:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mIsCanceled:Z

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mState:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public clearContainerRequestId(I)V
    .locals 2
    .parameter "requestId"

    .prologue
    const/4 v1, -0x1

    .line 104
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mRequestId:I

    if-ne v0, p1, :cond_0

    .line 105
    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mContainerId:I

    .line 106
    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mRequestId:I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mIsCanceled:Z

    .line 109
    :cond_0
    return-void
.end method

.method public containerCanceled(I)Z
    .locals 2
    .parameter "requestId"

    .prologue
    const/4 v0, 0x1

    .line 88
    iget v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mRequestId:I

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 89
    iput-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mIsCanceled:Z

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContainerIdForRequestId(I)I
    .locals 1
    .parameter "requestId"

    .prologue
    .line 59
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mContainerId:I

    return v0
.end method

.method public getContainerState(I)I
    .locals 3
    .parameter "requestId"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mState:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, o:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 64
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #o:Ljava/lang/Object;
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 66
    :goto_0
    return v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRequestIdForContainer(I)I
    .locals 1
    .parameter "containerId"

    .prologue
    .line 96
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mContainerId:I

    if-ne v0, p1, :cond_0

    .line 97
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mRequestId:I

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isContainerCanceled(I)Z
    .locals 1
    .parameter "containerId"

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mContainerId:I

    if-ne v0, p1, :cond_0

    .line 81
    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mIsCanceled:Z

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeContainerState(I)V
    .locals 2
    .parameter "requestId"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mState:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public setContainerState(II)V
    .locals 3
    .parameter "requestId"
    .parameter "containerState"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mState:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public setRequestIdForContainer(II)V
    .locals 1
    .parameter "containerId"
    .parameter "requestId"

    .prologue
    .line 74
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mContainerId:I

    .line 75
    iput p2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mRequestId:I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerState;->mIsCanceled:Z

    .line 77
    return-void
.end method
