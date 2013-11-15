.class public Lcom/android/server/enterprise/license/EnterpriseLicenseService;
.super Landroid/app/enterprise/license/IEnterpriseLicense$Stub;
.source "EnterpriseLicenseService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "EnterpriseLicenseService"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mPMS:Landroid/content/pm/IPackageManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .locals 2
    .parameter "ctx"
    .parameter "pms"

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 74
    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 75
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKeyMap:Ljava/util/Map;

    .line 77
    return-void
.end method

.method private deleteELMInfo(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 718
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 719
    .local v0, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v1

    .line 722
    .local v1, result:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 723
    const/4 v2, 0x1

    .line 725
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_LICENSE_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1
    .parameter "uid"

    .prologue
    .line 692
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 493
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 496
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 497
    :cond_1
    const/4 v3, 0x0

    .line 514
    :cond_2
    :goto_0
    return-object v3

    .line 499
    :cond_3
    const/4 v4, 0x0

    .line 500
    .local v4, ro:Landroid/app/enterprise/license/RightsObject;
    const/4 v3, 0x0

    .line 502
    .local v3, perm:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "LICENSE"

    const-string v7, "pkgName"

    const-string v8, "rightsObject"

    invoke-virtual {v5, v6, v7, p0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 506
    .local v1, blob:[B
    if-eqz v1, :cond_2

    .line 507
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/enterprise/license/RightsObject;

    move-object v4, v0

    .line 508
    invoke-virtual {v4}, Landroid/app/enterprise/license/RightsObject;->getPermissions()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 510
    .end local v1           #blob:[B
    :catch_0
    move-exception v2

    .line 511
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "EnterpriseLicenseService"

    const-string v6, "getPermissions() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUidForPackageName(Ljava/lang/String;)I
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 696
    const/4 v2, -0x1

    .line 699
    .local v2, uid:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 700
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string v4, "getUidForPackageName() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetELMInfo(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    .line 709
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 710
    .local v1, cv:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 711
    .local v0, blob:[B
    const-string v3, "rightsObject"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 712
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v2, cvWhere:Landroid/content/ContentValues;
    const-string v3, "pkgName"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public static updateAdminPermissions()V
    .locals 9

    .prologue
    .line 642
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 643
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 647
    :cond_0
    const/4 v6, 0x1

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    .line 648
    .local v0, columns:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "pkgName"

    aput-object v7, v0, v6

    .line 650
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    invoke-virtual {v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 653
    .local v5, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 654
    const/4 v1, 0x0

    .line 655
    .local v1, cv:Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 656
    .local v4, pkgName:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 658
    .local v3, it:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 659
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cv:Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 660
    .restart local v1       #cv:Landroid/content/ContentValues;
    const-string v6, "pkgName"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 662
    if-eqz v4, :cond_1

    .line 663
    const-string v6, "EnterpriseLicenseService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAdminPermissions() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 669
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #it:Ljava/util/Iterator;
    .end local v4           #pkgName:Ljava/lang/String;
    .end local v5           #results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 670
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "updateAdminPermissions() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 673
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized activateLicense(Ljava/lang/String;)V
    .locals 8
    .parameter "licenseKey"

    .prologue
    .line 454
    monitor-enter p0

    const/4 v3, 0x0

    .line 457
    .local v3, pkgName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 458
    .local v5, uid:I
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 459
    iget-object v6, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 460
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 463
    .local v4, pkgVersion:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKeyMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v2, Landroid/content/Intent;

    const-string v6, "edm.intent.action.license.registration.internal"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v6, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string v6, "edm.intent.extra.license.data.licensekey"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    iget-object v6, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #pkgVersion:Ljava/lang/String;
    .end local v5           #uid:I
    :goto_0
    monitor-exit p0

    return-void

    .line 472
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "activateLicense() failed."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    new-instance v2, Landroid/content/Intent;

    const-string v6, "edm.intent.action.license.status"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "edm.intent.extra.license.status"

    const-string v7, "fail"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string v6, "edm.intent.extra.license.errorcode"

    const/16 v7, 0x12d

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    iget-object v6, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 454
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;)Z
    .locals 7
    .parameter "status"
    .parameter "instanceId"
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 307
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v2

    .line 312
    :cond_1
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    const-string v5, "instanceId"

    const-string v6, "pkgName"

    invoke-virtual {v3, v4, v5, p2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 316
    const-string v3, "EnterpriseLicenseService"

    const-string v4, "deleteApiCallData(): Record does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    .end local v1           #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string v4, "deleteApiCallData() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #pkgName:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0
.end method

.method public deleteLicense(Ljava/lang/String;)Z
    .locals 10
    .parameter "instanceId"

    .prologue
    const/4 v5, 0x0

    .line 587
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 588
    const/4 v2, 0x0

    .line 589
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 591
    .local v3, token:J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 610
    :cond_0
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 612
    :goto_1
    return v5

    .line 594
    :cond_1
    :try_start_1
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    const-string v8, "instanceId"

    const-string v9, "pkgName"

    invoke-virtual {v6, v7, v8, p1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 598
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "deleteLicense(): Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 607
    .end local v1           #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 608
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "EnterpriseLicenseService"

    const-string v6, "deleteLicense() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 610
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v2

    .line 612
    goto :goto_1

    .line 602
    .restart local v1       #pkgName:Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v2

    .line 603
    if-eqz v2, :cond_2

    .line 605
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 610
    .end local v1           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public deleteLicenseByAdmin(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 622
    const/4 v1, 0x0

    .line 623
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 625
    .local v2, token:J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 626
    :cond_0
    const/4 v4, 0x0

    .line 636
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 638
    :goto_0
    return v4

    .line 628
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v1

    .line 629
    if-eqz v1, :cond_2

    .line 631
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 636
    :cond_2
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    .line 638
    goto :goto_0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "EnterpriseLicenseService"

    const-string v5, "deleteLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 636
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;
    .locals 14

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 410
    const/4 v7, 0x0

    .line 411
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    const/4 v5, 0x0

    .line 414
    .local v5, lInfo:Landroid/app/enterprise/license/LicenseInfo;
    const/4 v12, 0x3

    :try_start_0
    new-array v0, v12, [Ljava/lang/String;

    .line 415
    .local v0, columns:[Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "pkgName"

    aput-object v13, v0, v12

    .line 416
    const/4 v12, 0x1

    const-string v13, "instanceId"

    aput-object v13, v0, v12

    .line 417
    const/4 v12, 0x2

    const-string v13, "pkgVersion"

    aput-object v13, v0, v12

    .line 419
    sget-object v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "LICENSE"

    invoke-virtual {v12, v13, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 422
    .local v11, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, cv:Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 425
    .local v9, packageName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 426
    .local v3, instanceId:Ljava/lang/String;
    const/4 v10, 0x0

    .line 427
    .local v10, packageVersion:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .local v4, it:Ljava/util/Iterator;
    move-object v6, v5

    .line 430
    .end local v5           #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .local v6, lInfo:Landroid/app/enterprise/license/LicenseInfo;
    :goto_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 431
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cv:Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 432
    .restart local v1       #cv:Landroid/content/ContentValues;
    const-string v12, "pkgName"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 433
    const-string v12, "instanceId"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 434
    const-string v12, "pkgVersion"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 435
    new-instance v5, Landroid/app/enterprise/license/LicenseInfo;

    invoke-direct {v5, v9, v3, v10}, Landroid/app/enterprise/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 436
    .end local v6           #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5       #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    :try_start_3
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v6, v5

    .end local v5           #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6       #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    goto :goto_0

    .line 438
    :cond_0
    if-eqz v8, :cond_2

    :try_start_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 439
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Landroid/app/enterprise/license/LicenseInfo;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/app/enterprise/license/LicenseInfo;

    check-cast v12, [Landroid/app/enterprise/license/LicenseInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v5, v6

    .end local v6           #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5       #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .line 445
    .end local v0           #columns:[Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #instanceId:Ljava/lang/String;
    .end local v4           #it:Ljava/util/Iterator;
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #packageVersion:Ljava/lang/String;
    .end local v11           #results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v7       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :goto_1
    return-object v12

    .line 441
    :catch_0
    move-exception v2

    .line 442
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    const-string v12, "EnterpriseLicenseService"

    const-string v13, "getLicenseInfo() failed"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    const/4 v12, 0x0

    goto :goto_1

    .line 441
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v0       #columns:[Ljava/lang/String;
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v3       #instanceId:Ljava/lang/String;
    .restart local v8       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v9       #packageName:Ljava/lang/String;
    .restart local v10       #packageVersion:Ljava/lang/String;
    .restart local v11       #results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_1
    move-exception v2

    move-object v7, v8

    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_2

    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v5           #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v4       #it:Ljava/util/Iterator;
    .restart local v6       #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .restart local v8       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6           #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5       #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_2

    .end local v5           #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v6       #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .restart local v8       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :cond_2
    move-object v5, v6

    .end local v6           #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5       #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_3
.end method

.method public getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .parameter "instanceId"

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 271
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-object v2

    .line 276
    :cond_1
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    const-string v5, "instanceId"

    const-string v6, "pkgName"

    invoke-virtual {v3, v4, v5, p1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 280
    const-string v3, "EnterpriseLicenseService"

    const-string v4, "getApiCallData(): Record does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    .end local v1           #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string v4, "getApiCallData() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #pkgName:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public getApiCallDataByAdmin(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_LICENSE_LOG"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-object v1

    .line 345
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "EnterpriseLicenseService"

    const-string v3, "getApiCallDataByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLicenseInfo(Ljava/lang/String;)Landroid/app/enterprise/license/LicenseInfo;
    .locals 13
    .parameter "instanceId"

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 361
    const/4 v6, 0x0

    .line 363
    .local v6, lInfo:Landroid/app/enterprise/license/LicenseInfo;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move-object v7, v6

    .line 400
    .end local v6           #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .local v7, lInfo:Landroid/app/enterprise/license/LicenseInfo;
    :goto_0
    return-object v7

    .line 367
    .end local v7           #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6       #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    :cond_1
    const/4 v11, 0x3

    :try_start_0
    new-array v0, v11, [Ljava/lang/String;

    .line 368
    .local v0, columns:[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "pkgName"

    aput-object v12, v0, v11

    .line 369
    const/4 v11, 0x1

    const-string v12, "instanceId"

    aput-object v12, v0, v11

    .line 370
    const/4 v11, 0x2

    const-string v12, "pkgVersion"

    aput-object v12, v0, v11

    .line 371
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .local v2, cvWhere:Landroid/content/ContentValues;
    const-string v11, "instanceId"

    invoke-virtual {v2, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    .line 377
    .local v10, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, cv:Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 380
    .local v4, instId:Ljava/lang/String;
    const/4 v8, 0x0

    .line 381
    .local v8, packageName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 382
    .local v9, packageVersion:Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 384
    .local v5, it:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 385
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cv:Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 386
    .restart local v1       #cv:Landroid/content/ContentValues;
    const-string v11, "instanceId"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 388
    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 389
    const-string v11, "pkgName"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 390
    const-string v11, "pkgVersion"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 391
    new-instance v7, Landroid/app/enterprise/license/LicenseInfo;

    invoke-direct {v7, v8, v4, v9}, Landroid/app/enterprise/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .restart local v7       #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    move-object v6, v7

    .end local v0           #columns:[Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #cvWhere:Landroid/content/ContentValues;
    .end local v4           #instId:Ljava/lang/String;
    .end local v5           #it:Ljava/util/Iterator;
    .end local v7           #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #packageVersion:Ljava/lang/String;
    .end local v10           #results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v6       #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    :cond_3
    :goto_1
    move-object v7, v6

    .line 400
    .end local v6           #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .restart local v7       #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    goto :goto_0

    .line 396
    .end local v7           #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6       #lInfo:Landroid/app/enterprise/license/LicenseInfo;
    :catch_0
    move-exception v3

    .line 397
    .local v3, e:Ljava/lang/Exception;
    const-string v11, "EnterpriseLicenseService"

    const-string v12, "getLicenseInfo() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getRightsObject(Ljava/lang/String;)Landroid/app/enterprise/license/RightsObject;
    .locals 9
    .parameter "instanceId"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 173
    const/4 v3, 0x0

    .line 174
    .local v3, ro:Landroid/app/enterprise/license/RightsObject;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v4, v3

    .line 188
    .end local v3           #ro:Landroid/app/enterprise/license/RightsObject;
    .local v4, ro:Landroid/app/enterprise/license/RightsObject;
    :goto_0
    return-object v4

    .line 178
    .end local v4           #ro:Landroid/app/enterprise/license/RightsObject;
    .restart local v3       #ro:Landroid/app/enterprise/license/RightsObject;
    :cond_1
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "LICENSE"

    const-string v7, "instanceId"

    const-string v8, "rightsObject"

    invoke-virtual {v5, v6, v7, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 182
    .local v1, blob:[B
    if-eqz v1, :cond_2

    .line 183
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/enterprise/license/RightsObject;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #blob:[B
    :cond_2
    :goto_1
    move-object v4, v3

    .line 188
    .end local v3           #ro:Landroid/app/enterprise/license/RightsObject;
    .restart local v4       #ro:Landroid/app/enterprise/license/RightsObject;
    goto :goto_0

    .line 184
    .end local v4           #ro:Landroid/app/enterprise/license/RightsObject;
    .restart local v3       #ro:Landroid/app/enterprise/license/RightsObject;
    :catch_0
    move-exception v2

    .line 185
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "EnterpriseLicenseService"

    const-string v6, "getRightsObject() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .parameter "apiName"

    .prologue
    .line 518
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->log(Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 681
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 685
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 689
    return-void
.end method

.method public declared-synchronized processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;)Z
    .locals 14
    .parameter "packageName"
    .parameter "packageVersion"
    .parameter "status"
    .parameter "instanceId"
    .parameter "RO"
    .parameter "error"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 102
    const/4 v7, 0x0

    .line 103
    .local v7, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 106
    .local v9, token:J
    if-nez p5, :cond_0

    .line 107
    const/4 v7, 0x1

    .line 144
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    new-instance v6, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v6, intent:Landroid/content/Intent;
    if-eqz v7, :cond_3

    .line 149
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    :goto_0
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v7

    .line 160
    .end local v7           #ret:Z
    .local v8, ret:I
    :goto_1
    monitor-exit p0

    return v8

    .line 112
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #ret:I
    .restart local v7       #ret:Z
    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v4, cvWhere:Landroid/content/ContentValues;
    const-string v11, "pkgName"

    invoke-virtual {v4, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v3, cv:Landroid/content/ContentValues;
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v1

    .line 117
    .local v1, blob:[B
    const-string v11, "rightsObject"

    invoke-virtual {v3, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 118
    const-string v11, "instanceId"

    move-object/from16 v0, p4

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKeyMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 122
    .local v2, cnt:I
    if-lez v2, :cond_2

    .line 124
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v7

    .line 131
    :goto_2
    const-string v11, "EnterpriseLicenseService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processLicenseActivationResponse(): ret = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v7, :cond_1

    .line 135
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :cond_1
    :try_start_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    new-instance v6, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v6       #intent:Landroid/content/Intent;
    if-eqz v7, :cond_6

    .line 149
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    :goto_3
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1           #blob:[B
    .end local v2           #cnt:I
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v4           #cvWhere:Landroid/content/ContentValues;
    :goto_4
    move v8, v7

    .line 160
    .restart local v8       #ret:I
    goto/16 :goto_1

    .line 127
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #ret:I
    .restart local v1       #blob:[B
    .restart local v2       #cnt:I
    .restart local v3       #cv:Landroid/content/ContentValues;
    .restart local v4       #cvWhere:Landroid/content/ContentValues;
    :cond_2
    :try_start_3
    const-string v11, "pkgName"

    invoke-virtual {v3, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v11, "pkgVersion"

    move-object/from16 v0, p2

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v7

    goto :goto_2

    .line 140
    .end local v1           #blob:[B
    .end local v2           #cnt:I
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v4           #cvWhere:Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 141
    .local v5, e:Ljava/lang/Exception;
    :try_start_4
    const-string v11, "EnterpriseLicenseService"

    const-string v12, "processLicenseActivationResponse() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 144
    :try_start_5
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    new-instance v6, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v6       #intent:Landroid/content/Intent;
    if-eqz v7, :cond_5

    .line 149
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    :goto_5
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 100
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #ret:Z
    .end local v9           #token:J
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 144
    .restart local v7       #ret:Z
    .restart local v9       #token:J
    :catchall_1
    move-exception v11

    :try_start_6
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    new-instance v6, Landroid/content/Intent;

    const-string v12, "edm.intent.action.license.status"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v6       #intent:Landroid/content/Intent;
    if-eqz v7, :cond_4

    .line 149
    const-string v12, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v12, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v13

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    :goto_6
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v12, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    throw v11

    .line 152
    :cond_3
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 152
    :cond_4
    const-string v12, "edm.intent.extra.license.status"

    const-string v13, "fail"

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v12, "edm.intent.extra.license.errorcode"

    const/16 v13, 0x12d

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6

    .line 152
    .restart local v5       #e:Ljava/lang/Exception;
    :cond_5
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 152
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v1       #blob:[B
    .restart local v2       #cnt:I
    .restart local v3       #cv:Landroid/content/ContentValues;
    .restart local v4       #cvWhere:Landroid/content/ContentValues;
    :cond_6
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;)Z
    .locals 15
    .parameter "status"
    .parameter "instanceId"
    .parameter "RO"
    .parameter "error"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 206
    const/4 v7, 0x0

    .line 207
    .local v7, ret:Z
    const/4 v6, 0x0

    .line 208
    .local v6, pkgName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 211
    .local v9, token:J
    if-nez p3, :cond_0

    .line 212
    const/4 v7, 0x1

    .line 241
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    new-instance v5, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v5, intent:Landroid/content/Intent;
    if-eqz v7, :cond_3

    .line 246
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    :goto_0
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v8, v7

    .line 257
    .end local v7           #ret:Z
    .local v8, ret:I
    :goto_1
    return v8

    .line 217
    .end local v5           #intent:Landroid/content/Intent;
    .end local v8           #ret:I
    .restart local v7       #ret:Z
    :cond_0
    :try_start_0
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    const-string v13, "instanceId"

    const-string v14, "pkgName"

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v13, v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 220
    if-nez v6, :cond_1

    .line 221
    const-string v11, "EnterpriseLicenseService"

    const-string v12, "processLicenseValidationResult(): Record does not exist"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    new-instance v5, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v5       #intent:Landroid/content/Intent;
    if-eqz v7, :cond_6

    .line 246
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    :goto_2
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v8, v7

    .line 222
    .restart local v8       #ret:I
    goto :goto_1

    .line 226
    .end local v5           #intent:Landroid/content/Intent;
    .end local v8           #ret:I
    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v2, cv:Landroid/content/ContentValues;
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v1

    .line 228
    .local v1, blob:[B
    const-string v11, "rightsObject"

    invoke-virtual {v2, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 229
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v3, cvWhere:Landroid/content/ContentValues;
    const-string v11, "instanceId"

    move-object/from16 v0, p2

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE"

    invoke-virtual {v11, v12, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v7

    .line 233
    const-string v11, "EnterpriseLicenseService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processLicenseValidationResult(): ret = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    if-eqz v7, :cond_2

    .line 236
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, v6}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    :cond_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    new-instance v5, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v5       #intent:Landroid/content/Intent;
    if-eqz v7, :cond_7

    .line 246
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    :goto_3
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .end local v1           #blob:[B
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v3           #cvWhere:Landroid/content/ContentValues;
    :goto_4
    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v8, v7

    .line 257
    .restart local v8       #ret:I
    goto/16 :goto_1

    .line 238
    .end local v5           #intent:Landroid/content/Intent;
    .end local v8           #ret:I
    :catch_0
    move-exception v4

    .line 239
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    const-string v11, "EnterpriseLicenseService"

    const-string v12, "processLicenseValidationResult() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    new-instance v5, Landroid/content/Intent;

    const-string v11, "edm.intent.action.license.status"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v5       #intent:Landroid/content/Intent;
    if-eqz v7, :cond_5

    .line 246
    const-string v11, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v11, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    :goto_5
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v11, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    goto :goto_4

    .line 241
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    new-instance v5, Landroid/content/Intent;

    const-string v12, "edm.intent.action.license.status"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v5       #intent:Landroid/content/Intent;
    if-eqz v7, :cond_4

    .line 246
    const-string v12, "edm.intent.extra.license.status"

    move-object/from16 v0, p1

    invoke-virtual {v5, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v12, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    :goto_6
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v12, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 241
    throw v11

    .line 249
    :cond_3
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 249
    :cond_4
    const-string v12, "edm.intent.extra.license.status"

    const-string v13, "fail"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v12, "edm.intent.extra.license.errorcode"

    const/16 v13, 0x12d

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6

    .line 249
    .restart local v4       #e:Ljava/lang/Exception;
    :cond_5
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 249
    .end local v4           #e:Ljava/lang/Exception;
    :cond_6
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 249
    .restart local v1       #blob:[B
    .restart local v2       #cv:Landroid/content/ContentValues;
    .restart local v3       #cvWhere:Landroid/content/ContentValues;
    :cond_7
    const-string v11, "edm.intent.extra.license.status"

    const-string v12, "fail"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v11, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3
.end method

.method public resetLicense(Ljava/lang/String;)Z
    .locals 10
    .parameter "instanceId"

    .prologue
    const/4 v5, 0x0

    .line 527
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 528
    const/4 v2, 0x0

    .line 529
    .local v2, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 531
    .local v3, token:J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 550
    :cond_0
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 552
    :goto_1
    return v5

    .line 534
    :cond_1
    :try_start_1
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    const-string v8, "instanceId"

    const-string v9, "pkgName"

    invoke-virtual {v6, v7, v8, p1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 538
    const-string v6, "EnterpriseLicenseService"

    const-string v7, "resetLicense(): Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 547
    .end local v1           #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "EnterpriseLicenseService"

    const-string v6, "resetLicense() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v2

    .line 552
    goto :goto_1

    .line 542
    .restart local v1       #pkgName:Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v2

    .line 543
    if-eqz v2, :cond_2

    .line 545
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 550
    .end local v1           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public resetLicenseByAdmin(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 562
    const/4 v1, 0x0

    .line 563
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 565
    .local v2, token:J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 566
    :cond_0
    const/4 v4, 0x0

    .line 576
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 578
    :goto_0
    return v4

    .line 568
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v1

    .line 569
    if-eqz v1, :cond_2

    .line 571
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 576
    :cond_2
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    .line 578
    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "EnterpriseLicenseService"

    const-string v5, "resetLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 576
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 676
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V

    .line 677
    return-void
.end method
