.class Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;
.super Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.source "AndroidPackageManagerWrapper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;


# static fields
.field private static final DEFAULT_GET_APP_INFO_FLAG:I = 0x80


# instance fields
.field private final checkSignaturesMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final getApplicationInfoMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final getPackageInfoMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7
    .parameter "androidPackageManagerRef"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;-><init>(Ljava/lang/Object;)V

    .line 27
    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "getApplicationInfo"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->getApplicationInfoMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 29
    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "getPackageInfo"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->getPackageInfoMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 30
    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "checkSignatures"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->checkSignaturesMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 31
    return-void
.end method


# virtual methods
.method public getApplicationInfo(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    .locals 2
    .parameter "appPackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;

    move-result-object v0

    .line 71
    .local v0, applicationInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    .locals 8
    .parameter "appPackageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->getApplicationInfoMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 48
    .local v2, applicationInfoRef:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 50
    .local v0, applicationInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfoWrapper;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfoWrapper;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #applicationInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    .local v1, applicationInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    move-object v0, v1

    .line 57
    .end local v1           #applicationInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    .restart local v0       #applicationInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v3

    .line 52
    .local v3, e:Ljava/lang/SecurityException;
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 54
    .local v3, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "android.content.pm.PackageManager"

    .line 126
    .local v0, packageManager:Ljava/lang/String;
    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;
    .locals 8
    .parameter "appPackageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 84
    .local v1, packageInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->getPackageInfoMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 85
    .local v3, packageInfoRef:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 87
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfoWrapper;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfoWrapper;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #packageInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;
    .local v2, packageInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;
    move-object v1, v2

    .line 95
    .end local v2           #packageInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;
    .restart local v1       #packageInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public haveTheSameSignatures(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "pkg1"
    .parameter "pkg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 106
    const/4 v1, 0x0

    .line 108
    .local v1, result:Z
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;->checkSignaturesMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, checkSignaturesMethodRes:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 111
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const/4 v1, 0x1

    .line 116
    :cond_0
    return v1
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
    .line 36
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-void
.end method
