.class public Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
.super Ljava/lang/Object;
.source "ContainerPackageInfo.java"


# instance fields
.field private appPackage:Ljava/lang/String;

.field private containerId:I

.field private installationSource:I

.field private signature:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->containerId:I

    .line 7
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->appPackage:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->signature:Ljava/lang/String;

    .line 9
    iput v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->installationSource:I

    .line 10
    iput v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->uid:I

    return-void
.end method


# virtual methods
.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->containerId:I

    return v0
.end method

.method public getInstallationSource()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->installationSource:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->uid:I

    return v0
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "appPackage"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->appPackage:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setContainerId(I)V
    .locals 0
    .parameter "containerId"

    .prologue
    .line 17
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->containerId:I

    .line 18
    return-void
.end method

.method public setInstallationSource(I)V
    .locals 0
    .parameter "installationSource"

    .prologue
    .line 35
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->installationSource:I

    .line 36
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->signature:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 41
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->uid:I

    .line 42
    return-void
.end method
