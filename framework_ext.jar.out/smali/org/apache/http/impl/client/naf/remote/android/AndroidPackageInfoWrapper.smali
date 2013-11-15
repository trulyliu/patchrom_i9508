.class Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfoWrapper;
.super Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.source "AndroidPackageInfoWrapper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;


# instance fields
.field private final permissionsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

.field private final requestedPermissionsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;-><init>(Ljava/lang/Object;)V

    .line 21
    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    const-string v1, "permissions"

    invoke-direct {v0, p0, v1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfoWrapper;->permissionsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    .line 22
    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    const-string v1, "requestedPermissions"

    invoke-direct {v0, p0, v1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfoWrapper;->requestedPermissionsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    .line 23
    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "android.content.pm.PackageInfo"

    .line 71
    .local v0, packageInfo:Ljava/lang/String;
    return-object v0
.end method

.method public getPermissions()[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, permissions:[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfoWrapper;->permissionsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 40
    .local v1, permissionsFieldValue:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 41
    check-cast v1, [Ljava/lang/Object;

    .end local v1           #permissionsFieldValue:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 44
    :cond_0
    return-object v0
.end method

.method public getRequestedPermissions()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, requestedPermissions:[Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfoWrapper;->requestedPermissionsField:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, requestedPermissionsFieldValue:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 58
    check-cast v1, [Ljava/lang/String;

    .end local v1           #requestedPermissionsFieldValue:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 61
    :cond_0
    return-object v0
.end method

.method public validateClass(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-void
.end method
