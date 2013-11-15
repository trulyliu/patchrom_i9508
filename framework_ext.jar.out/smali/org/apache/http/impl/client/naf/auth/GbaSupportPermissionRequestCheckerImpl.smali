.class public Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;
.super Ljava/lang/Object;
.source "GbaSupportPermissionRequestCheckerImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestChecker;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public isCurrentProcessAllowedToUseGba(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z
    .locals 4
    .parameter "androidContext"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->isCurrentProcessRequestedGba(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->isCurrentProcessHasTheSameSignaturesAsGbaService(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->isCurrentProcessSystemsOne(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 30
    .local v0, result:Z
    :goto_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCurrentProcessAllowedToUseGba()#started   result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 31
    return v0

    .line 27
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentProcessHasTheSameSignaturesAsGbaService(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z
    .locals 9
    .parameter "androidContext"

    .prologue
    .line 89
    const/4 v4, 0x0

    .line 91
    .local v4, haveTheSameSignatures:Z
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;->getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v0

    .line 94
    .local v0, androidContextWrapper:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->getCurrentProcessPackageName()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, curAppPackageName:Ljava/lang/String;
    const-string v3, "javax.microedition.gba.android"

    .line 97
    .local v3, gbaServicePackageName:Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->getPackageManager()Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;

    move-result-object v5

    .line 99
    .local v5, packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    invoke-interface {v5, v1, v3}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;->haveTheSameSignatures(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 102
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCurrentProcessHasTheSameSignaturesAsGbaService()#   curAppPackageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   gbaServicePackageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   haveTheSameSignatures="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0           #androidContextWrapper:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    .end local v1           #curAppPackageName:Ljava/lang/String;
    .end local v3           #gbaServicePackageName:Ljava/lang/String;
    .end local v5           #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    :goto_0
    return v4

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, e:Lorg/apache/http/impl/client/naf/remote/RemoteException;
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/remote/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isCurrentProcessRequestedGba(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z
    .locals 10
    .parameter "androidContext"

    .prologue
    .line 46
    const/4 v6, 0x0

    .line 49
    .local v6, result:Z
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->getCurrentProcessPermissionRequests()[Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, requestedPermissions:[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 54
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 55
    .local v1, currentPermission:Ljava/lang/String;
    const-string v7, "javax.microedition.gba.USE_GBA_SERVICE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 56
    const/4 v6, 0x1

    .line 57
    iget-object v7, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "   the permission request has been found."

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #currentPermission:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #requestedPermissions:[Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v7, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCurrentProcessRequestedGba()#finished   result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 75
    return v6

    .line 54
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #currentPermission:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #requestedPermissions:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #currentPermission:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #requestedPermissions:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 67
    .local v2, e:Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 68
    iget-object v7, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   errorMsg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public isCurrentProcessSystemsOne(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Z
    .locals 11
    .parameter "androidContext"

    .prologue
    .line 125
    const/4 v6, 0x0

    .line 128
    .local v6, res:Z
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;->getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v0

    .line 131
    .local v0, androidContextWrapper:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->getCurrentProcessPackageName()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, packageName:Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->getPackageManager()Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;

    move-result-object v4

    .line 134
    .local v4, packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 136
    invoke-interface {v4, v5}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;->getApplicationInfo(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;

    move-result-object v1

    .line 138
    .local v1, applicationInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    if-eqz v1, :cond_1

    .line 140
    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;->isSystemsOne()Z

    move-result v7

    .line 141
    .local v7, systemsOne:Z
    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCurrentProcessSystemsOne()#   systemsOne="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 142
    move v6, v7

    .line 144
    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;->getSourceDir()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, curProcApkPath:Ljava/lang/String;
    if-nez v7, :cond_0

    if-eqz v2, :cond_0

    .line 147
    const-string v8, "/system/app/"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 158
    .end local v0           #androidContextWrapper:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    .end local v1           #applicationInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    .end local v2           #curProcApkPath:Ljava/lang/String;
    .end local v4           #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v7           #systemsOne:Z
    :cond_0
    :goto_0
    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCurrentProcessSystemsOne()#finished   res="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 159
    return v6

    .line 150
    .restart local v0       #androidContextWrapper:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    .restart local v1       #applicationInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    .restart local v4       #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .restart local v5       #packageName:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "   applicationInfo == null"

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 154
    .end local v0           #androidContextWrapper:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    .end local v1           #applicationInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    .end local v4           #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .end local v5           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 155
    .local v3, e:Lorg/apache/http/impl/client/naf/remote/RemoteException;
    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportPermissionRequestCheckerImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/naf/remote/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
