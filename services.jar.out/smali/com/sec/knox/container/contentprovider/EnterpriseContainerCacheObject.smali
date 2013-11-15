.class public Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
.super Ljava/lang/Object;
.source "EnterpriseContainerCacheObject.java"

# interfaces
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;


# instance fields
.field private admin:I

.field private containerId:I

.field private containerLockOnScreenLock:Z

.field private containerStatus:I

.field private containerType:I

.field private failedPasswordAttempts:I

.field private lockType:I

.field private mEmail:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mSecurityIcon:Landroid/graphics/Bitmap;

.field private mSecurityText:Ljava/lang/String;

.field private maximumTimeToLock:J

.field private passwordExpirationDate:J

.field private passwordExpirationTimeout:J

.field private passwordHasExpired:Z

.field private passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

.field private passwordStatus:I

.field private pkgsInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private verifyPwdOnlyOnModeChange:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v5, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerId:I

    .line 10
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mPassword:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mEmail:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityText:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mName:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 15
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerStatus:I

    .line 16
    const/16 v0, 0x50

    iput v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStatus:I

    .line 17
    iput v5, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->admin:I

    .line 18
    iput-wide v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationDate:J

    .line 19
    iput-wide v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationTimeout:J

    .line 20
    iput-boolean v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordHasExpired:Z

    .line 21
    iput v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->failedPasswordAttempts:I

    .line 22
    iput-wide v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToLock:J

    .line 23
    iput v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->lockType:I

    .line 24
    iput v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerType:I

    .line 25
    iput-boolean v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerLockOnScreenLock:Z

    .line 26
    iput-boolean v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->verifyPwdOnlyOnModeChange:Z

    .line 27
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->pkgsInfo:Ljava/util/HashMap;

    .line 28
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    return-void
.end method


# virtual methods
.method public getAdmin()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->admin:I

    return v0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerId:I

    return v0
.end method

.method public getContainerLockOnScreenLock()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerLockOnScreenLock:Z

    return v0
.end method

.method public getContainerPackagesInfo()Ljava/util/HashMap;
    .locals 1
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
    .line 174
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->pkgsInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getContainerStatus()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerStatus:I

    return v0
.end method

.method public getContainerType()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerType:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getFailedPasswordAttempts()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->failedPasswordAttempts:I

    return v0
.end method

.method public getLockType()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->lockType:I

    return v0
.end method

.method public getMaximumTimeToLock()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToLock:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordExpirationDate()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationDate:J

    return-wide v0
.end method

.method public getPasswordExpirationTimeout()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationTimeout:J

    return-wide v0
.end method

.method public getPasswordHasExpired()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordHasExpired:Z

    return v0
.end method

.method public getPasswordStateInfo()Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    return-object v0
.end method

.method public getPasswordStatus()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStatus:I

    return v0
.end method

.method public getSecurityIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSecurityText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityText:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyPwdOnlyOnChangeMode()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->verifyPwdOnlyOnModeChange:Z

    return v0
.end method

.method public setAdmin(I)V
    .locals 0
    .parameter "admin"

    .prologue
    .line 119
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->admin:I

    .line 120
    return-void
.end method

.method public setContainerId(I)V
    .locals 0
    .parameter "container"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerId:I

    .line 72
    return-void
.end method

.method public setContainerLockOnScreenLock(Z)V
    .locals 0
    .parameter "lockSetting"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerLockOnScreenLock:Z

    .line 164
    return-void
.end method

.method public setContainerPackagesInfo(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, info:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->pkgsInfo:Ljava/util/HashMap;

    .line 179
    return-void
.end method

.method public setContainerStatus(I)V
    .locals 0
    .parameter "containers"

    .prologue
    .line 111
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerStatus:I

    .line 112
    return-void
.end method

.method public setContainerType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 135
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerType:I

    .line 136
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mEmail:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setFailedPasswordAttempts(I)V
    .locals 0
    .parameter "failedPasswordAttempts"

    .prologue
    .line 31
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->failedPasswordAttempts:I

    .line 32
    return-void
.end method

.method public setLockType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 127
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->lockType:I

    .line 128
    return-void
.end method

.method public setMaximumTimeToLock(J)V
    .locals 0
    .parameter "maximumTimeToLock"

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToLock:J

    .line 40
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mName:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mPassword:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPasswordExpirationDate(J)V
    .locals 0
    .parameter "passwordExpirationDate"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationDate:J

    .line 56
    return-void
.end method

.method public setPasswordExpirationTimeout(J)V
    .locals 0
    .parameter "passwordExpirationTimeout"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationTimeout:J

    .line 64
    return-void
.end method

.method public setPasswordHasExpired(Z)V
    .locals 0
    .parameter "passwordHasExpired"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordHasExpired:Z

    .line 48
    return-void
.end method

.method public setPasswordStateInfo(Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    .line 187
    return-void
.end method

.method public setPasswordStatus(I)V
    .locals 0
    .parameter "stat"

    .prologue
    .line 143
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStatus:I

    .line 144
    return-void
.end method

.method public setSecurityIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "securityIcon"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 152
    return-void
.end method

.method public setSecurityText(Ljava/lang/String;)V
    .locals 0
    .parameter "securityText"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityText:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setVerifyPwdOnlyOnChangeMode(Z)V
    .locals 0
    .parameter "toggleFlag"

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->verifyPwdOnlyOnModeChange:Z

    .line 171
    return-void
.end method
