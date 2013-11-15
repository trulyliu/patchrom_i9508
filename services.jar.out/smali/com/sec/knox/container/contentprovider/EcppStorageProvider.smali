.class public Lcom/sec/knox/container/contentprovider/EcppStorageProvider;
.super Ljava/lang/Object;
.source "EcppStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "EcppStorageProvider"


# instance fields
.field protected mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v2, Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;

    invoke-direct {v2, p0}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;-><init>(Lcom/sec/knox/container/contentprovider/EcppStorageProvider;)V

    invoke-static {p1, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 70
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 82
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. getWritableDatabase SQLiteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. enableWriteAheadLogging IllegalStateException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 80
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 4
    .parameter "admin"

    .prologue
    .line 216
    const-string v0, ""

    .line 217
    .local v0, adminName:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkOldPasswordHistory(I[B)Z
    .locals 8
    .parameter "containerId"
    .parameter "newPasswordHash"

    .prologue
    const/4 v7, 0x0

    .line 804
    const/4 v1, 0x0

    .line 805
    .local v1, result:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 806
    .local v2, whereClause:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v4, "PASSWORD_HISTORY"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "oldPasswordHashValue"

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 809
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 810
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 811
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 812
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 813
    const/4 v1, 0x1

    .line 818
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 820
    :cond_2
    return v1
.end method

.method public getAllowBluetoothMode(ILandroid/content/ComponentName;)I
    .locals 9
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 665
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowBluetoothMode"

    const/4 v5, 0x0

    const-wide/16 v6, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 670
    :goto_0
    return v0

    .line 668
    :catch_0
    move-exception v8

    .line 669
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 670
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getAllowBrowser(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 786
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowBrowser"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 790
    :goto_0
    return v0

    .line 788
    :catch_0
    move-exception v6

    .line 789
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 790
    goto :goto_0
.end method

.method public getAllowCamera(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 766
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowCamera"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 770
    :goto_0
    return v0

    .line 768
    :catch_0
    move-exception v6

    .line 769
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 770
    goto :goto_0
.end method

.method public getAllowDesktopSync(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 686
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowDesktopSync"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 690
    :goto_0
    return v0

    .line 688
    :catch_0
    move-exception v6

    .line 689
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 690
    goto :goto_0
.end method

.method public getAllowInternetSharing(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 649
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowInternetSharing"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 654
    :goto_0
    return v0

    .line 652
    :catch_0
    move-exception v6

    .line 653
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 654
    goto :goto_0
.end method

.method public getAllowIrDA(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 706
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowIrDA"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 710
    :goto_0
    return v0

    .line 708
    :catch_0
    move-exception v6

    .line 709
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 710
    goto :goto_0
.end method

.method public getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 746
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowPOPIMAPEmail"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 750
    :goto_0
    return v0

    .line 748
    :catch_0
    move-exception v6

    .line 749
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 750
    goto :goto_0
.end method

.method public getAllowStorageCard(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 726
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowStorageCard"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 730
    :goto_0
    return v0

    .line 728
    :catch_0
    move-exception v6

    .line 729
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 730
    goto :goto_0
.end method

.method public getAllowTextMessaging(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 629
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowTextMessaging"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 633
    :goto_0
    return v0

    .line 631
    :catch_0
    move-exception v6

    .line 632
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 633
    goto :goto_0
.end method

.method public getAllowWifi(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 609
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowWifi"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 613
    :goto_0
    return v0

    .line 611
    :catch_0
    move-exception v6

    .line 612
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 613
    goto :goto_0
.end method

.method protected getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .parameter "tableName"
    .parameter "columnToSelect"
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v6, 0x0

    .line 194
    const-string v1, "0"

    .line 195
    .local v1, result:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passwordContainerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "componentName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, whereClause:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 202
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 212
    :goto_0
    return-object v1

    .line 208
    :cond_1
    const-string v3, "EcppStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not available on this policy set yet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x0

    .line 510
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumFailedPasswordsForWipe"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 515
    :goto_0
    return v0

    .line 513
    :catch_0
    move-exception v6

    .line 514
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 515
    goto :goto_0
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .locals 9
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const-wide/16 v7, 0x0

    .line 554
    if-nez p2, :cond_0

    .line 555
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumTimeToLockPassword"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    .line 568
    :goto_0
    return-wide v0

    .line 559
    :cond_0
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "maximumTimeToLockPassword"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v6

    .line 564
    .local v6, ex:Ljava/lang/NumberFormatException;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getMaximumTimeToLock: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 565
    goto :goto_0

    .line 566
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 567
    .local v6, ex:Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaximumTimeToLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 568
    goto :goto_0
.end method

.method public getPasswordExpirationDate(ILandroid/content/ComponentName;)J
    .locals 9
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 486
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordExpirationDate"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v7

    .line 491
    .local v7, passwordExpirationDate:J
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordExpirationDate: getting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v7           #passwordExpirationDate:J
    :goto_0
    return-wide v7

    .line 493
    :catch_0
    move-exception v6

    .line 494
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordExpirationDate: something went wrong, returning 0"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    const-wide/16 v7, 0x0

    goto :goto_0
.end method

.method public getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J
    .locals 9
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const-wide/16 v7, 0x0

    .line 579
    if-nez p2, :cond_0

    .line 580
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordExpirationTimeout"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    .line 593
    :goto_0
    return-wide v0

    .line 584
    :cond_0
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordExpirationTimeout"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 588
    :catch_0
    move-exception v6

    .line 589
    .local v6, ex:Ljava/lang/NumberFormatException;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordExpirationTimeout: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 590
    goto :goto_0

    .line 591
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 592
    .local v6, ex:Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordExpirationTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 593
    goto :goto_0
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x0

    .line 463
    if-nez p2, :cond_0

    .line 464
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordHistory"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    long-to-int v0, v0

    .line 475
    :goto_0
    return v0

    .line 467
    :cond_0
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordHistory"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v6

    .line 471
    .local v6, ex:Ljava/lang/NumberFormatException;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordHistory: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 472
    goto :goto_0

    .line 473
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 474
    .local v6, ex:Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordHistory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 475
    goto :goto_0
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 299
    :try_start_0
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container - getPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLength"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 306
    :goto_0
    return v0

    .line 304
    :catch_0
    move-exception v6

    .line 305
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumLetters(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 319
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLetters"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 324
    :goto_0
    return v0

    .line 322
    :catch_0
    move-exception v6

    .line 323
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 335
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLowerCase"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 340
    :goto_0
    return v0

    .line 338
    :catch_0
    move-exception v6

    .line 339
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 351
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumNonLetter"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 356
    :goto_0
    return v0

    .line 354
    :catch_0
    move-exception v6

    .line 355
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 367
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumNumeric"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 372
    :goto_0
    return v0

    .line 370
    :catch_0
    move-exception v6

    .line 371
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 399
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumSymbols"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 404
    :goto_0
    return v0

    .line 402
    :catch_0
    move-exception v6

    .line 403
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 383
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumUpperCase"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 388
    :goto_0
    return v0

    .line 386
    :catch_0
    move-exception v6

    .line 387
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 388
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 425
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordQuality"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v7, v0

    .line 428
    .local v7, quality:I
    if-gez v7, :cond_0

    .line 429
    const/4 v7, 0x0

    .line 435
    .end local v7           #quality:I
    :cond_0
    :goto_0
    return v7

    .line 433
    :catch_0
    move-exception v6

    .line 434
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 435
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getPasswordStateInfoFromDB(I)Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    .locals 8
    .parameter "containerId"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 867
    const/16 v4, 0xa

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "containerid"

    aput-object v4, v2, v5

    const-string v4, "quality"

    aput-object v4, v2, v6

    const/4 v4, 0x2

    const-string v7, "length"

    aput-object v7, v2, v4

    const/4 v4, 0x3

    const-string v7, "uppercase"

    aput-object v7, v2, v4

    const/4 v4, 0x4

    const-string v7, "lowercase"

    aput-object v7, v2, v4

    const/4 v4, 0x5

    const-string v7, "letters"

    aput-object v7, v2, v4

    const/4 v4, 0x6

    const-string v7, "numeric"

    aput-object v7, v2, v4

    const/4 v4, 0x7

    const-string v7, "nonletters"

    aput-object v7, v2, v4

    const/16 v4, 0x8

    const-string v7, "symbols"

    aput-object v7, v2, v4

    const/16 v4, 0x9

    const-string v7, "simplepassword"

    aput-object v7, v2, v4

    .line 875
    .local v2, project:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 876
    .local v3, where:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v7, "ACTIVE_PASSWORD_STATE"

    invoke-virtual {v4, v7, v2, v3, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 879
    .local v0, cur:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 911
    :goto_0
    return-object v1

    .line 882
    :cond_0
    new-instance v1, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    invoke-direct {v1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;-><init>()V

    .line 883
    .local v1, obj:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    if-eqz v1, :cond_2

    .line 884
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 886
    :cond_1
    const-string v4, "containerid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setContainerId(I)V

    .line 888
    const-string v4, "quality"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordQuality(I)V

    .line 890
    const-string v4, "length"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLength(I)V

    .line 892
    const-string v4, "uppercase"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordUppercase(I)V

    .line 894
    const-string v4, "lowercase"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLowercase(I)V

    .line 896
    const-string v4, "letters"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLetters(I)V

    .line 898
    const-string v4, "numeric"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNumeric(I)V

    .line 900
    const-string v4, "nonletters"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNonLetter(I)V

    .line 902
    const-string v4, "symbols"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSymbols(I)V

    .line 904
    const-string v4, "simplepassword"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSimple(Z)V

    .line 907
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 910
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_3
    move v4, v6

    .line 904
    goto :goto_1
.end method

.method public getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z
    .locals 10
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 446
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowSimplePassword"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v7, v0

    .line 448
    .local v7, retVal:I
    if-eqz v7, :cond_0

    move v0, v8

    .line 451
    .end local v7           #retVal:I
    :goto_0
    return v0

    .restart local v7       #retVal:I
    :cond_0
    move v0, v9

    .line 448
    goto :goto_0

    .line 449
    .end local v7           #retVal:I
    :catch_0
    move-exception v6

    .line 450
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v9

    .line 451
    goto :goto_0
.end method

.method protected getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    .locals 8
    .parameter "tableName"
    .parameter "columnToSelect"
    .parameter "containerId"
    .parameter "admin"
    .parameter "getHigherValue"

    .prologue
    .line 129
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J
    .locals 10
    .parameter "tableName"
    .parameter "columnToSelect"
    .parameter "containerId"
    .parameter "admin"
    .parameter "getHigherValue"
    .parameter "defaultValue"

    .prologue
    .line 142
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getStricterColumnValue(): tableName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " columnToSelect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " containerId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " admin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getHigherValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-wide/16 v4, 0x0

    .line 146
    .local v4, last:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "passwordContainerID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, whereClause:Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, adminName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND componentName=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 154
    :cond_0
    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, p1, v8, v6, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 157
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_5

    .line 158
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 159
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 162
    :cond_1
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 163
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 165
    .local v1, current:J
    if-eqz p5, :cond_2

    .line 166
    cmp-long v7, v1, v4

    if-lez v7, :cond_1

    .line 167
    move-wide v4, v1

    goto :goto_0

    .line 170
    :cond_2
    const-wide/16 v7, 0x1

    cmp-long v7, v4, v7

    if-ltz v7, :cond_3

    cmp-long v7, v1, v4

    if-gez v7, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    .line 171
    :cond_3
    move-wide v4, v1

    goto :goto_0

    .line 176
    .end local v1           #current:J
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 183
    :goto_1
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getStricterColumnValue(): tableName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " columnToSelect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RETURNING = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-wide v4

    .line 178
    :cond_5
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The setting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not available on this policy set yet"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    move-wide/from16 v4, p6

    goto :goto_1
.end method

.method protected getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    .locals 10
    .parameter "tableName"
    .parameter "columnToSelect"
    .parameter "containerId"
    .parameter "admin"
    .parameter "defaultValue"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    const-string v6, "EcppStorageProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStricterColumnValueForBoolean(): tableName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " columnToSelect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " containerId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " admin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    move v2, p5

    .line 91
    .local v2, strictValue:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "passwordContainerID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, whereClause:Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, adminName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND componentName=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    :cond_0
    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    new-array v7, v5, [Ljava/lang/String;

    aput-object p2, v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v7, v3, v8}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 102
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_4

    .line 103
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    move v2, v4

    .line 105
    :goto_0
    if-nez v2, :cond_1

    .line 109
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 115
    :goto_1
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStricterColumnValueForBoolean(): tableName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " columnToSelect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " RETURNING = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return v2

    :cond_3
    move v2, v5

    .line 104
    goto :goto_0

    .line 111
    :cond_4
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not available on this policy set yet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isPasswordVisisbilityEnabled(I)Z
    .locals 9
    .parameter "containerId"

    .prologue
    const/4 v8, 0x0

    .line 537
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordVisible"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v7, v0

    .line 540
    .local v7, ret:I
    if-eqz v7, :cond_0

    const/4 v0, 0x1

    .line 543
    .end local v7           #ret:I
    :goto_0
    return v0

    .restart local v7       #ret:I
    :cond_0
    move v0, v8

    .line 540
    goto :goto_0

    .line 541
    .end local v7           #ret:I
    :catch_0
    move-exception v6

    .line 542
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v8

    .line 543
    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "admin"

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v2, "PASSWORD_POLICY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "componentName=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 294
    :goto_0
    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EcppStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: something failed trying to remove policies  and admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeContainer(I)Z
    .locals 8
    .parameter "containerId"

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, result1:Z
    const/4 v2, 0x0

    .line 259
    .local v2, result2:Z
    const/4 v3, 0x0

    .line 261
    .local v3, result3:Z
    :try_start_0
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_POLICY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "passwordContainerID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 268
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_HISTORY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 275
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "ACTIVE_PASSWORD_STATE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    .line 281
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :goto_3
    return v4

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: something failed trying to remove password policies for the container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 271
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: something failed trying to remove password history for the container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 278
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: something failed trying to remove active password state table for the container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 281
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public removeOldestPasswordIfRequired(II)V
    .locals 9
    .parameter "containerId"
    .parameter "passwordPolicyHistoryLength"

    .prologue
    const/4 v8, 0x0

    .line 824
    const/4 v0, 0x0

    .line 825
    .local v0, currPaswordHistoryLength:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containerID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 826
    .local v3, whereClause:Ljava/lang/String;
    const-string v2, "_index ASC"

    .line 827
    .local v2, orderBy:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_HISTORY"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "_index"

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6, v3, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 830
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 831
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 832
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 833
    :cond_0
    if-lt v0, p2, :cond_1

    .line 834
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 836
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_HISTORY"

    invoke-virtual {v4, v5, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z

    .line 837
    add-int/lit8 v0, v0, -0x1

    .line 838
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 841
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 843
    :cond_2
    return-void
.end method

.method public setActivePasswordState(IIIIIIIIIZ)V
    .locals 4
    .parameter "containerId"
    .parameter "quality"
    .parameter "length"
    .parameter "uppercase"
    .parameter "lowercase"
    .parameter "letters"
    .parameter "numbers"
    .parameter "nonletter"
    .parameter "symbols"
    .parameter "passwordSimple"

    .prologue
    .line 848
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 849
    .local v0, sContentValues:Landroid/content/ContentValues;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "containerid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, where:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 851
    const-string v2, "containerid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    const-string v2, "quality"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    const-string v2, "length"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    const-string v2, "uppercase"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 855
    const-string v2, "lowercase"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    const-string v2, "letters"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    const-string v2, "numeric"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    const-string v2, "nonletters"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
    const-string v2, "symbols"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    const-string v3, "simplepassword"

    if-eqz p10, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 861
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v3, "ACTIVE_PASSWORD_STATE"

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 864
    :cond_0
    return-void

    .line 860
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAllowBluetoothMode(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 659
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowBluetoothMode"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 661
    return-void
.end method

.method public setAllowBrowser(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 775
    const/4 v4, 0x0

    .line 776
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 777
    const/4 v4, 0x1

    .line 780
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowBrowser"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 782
    return-void
.end method

.method public setAllowCamera(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 755
    const/4 v4, 0x0

    .line 756
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 757
    const/4 v4, 0x1

    .line 760
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowCamera"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 762
    return-void
.end method

.method public setAllowDesktopSync(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 675
    const/4 v4, 0x0

    .line 676
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 677
    const/4 v4, 0x1

    .line 680
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowDesktopSync"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 682
    return-void
.end method

.method public setAllowInternetSharing(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 638
    const/4 v4, 0x0

    .line 639
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 640
    const/4 v4, 0x1

    .line 643
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowInternetSharing"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 645
    return-void
.end method

.method public setAllowIrDA(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 695
    const/4 v4, 0x0

    .line 696
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 697
    const/4 v4, 0x1

    .line 700
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowIrDA"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 702
    return-void
.end method

.method public setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 735
    const/4 v4, 0x0

    .line 736
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 737
    const/4 v4, 0x1

    .line 740
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowPOPIMAPEmail"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 742
    return-void
.end method

.method public setAllowStorageCard(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 715
    const/4 v4, 0x0

    .line 716
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 717
    const/4 v4, 0x1

    .line 720
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowStorageCard"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 722
    return-void
.end method

.method public setAllowTextMessaging(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 618
    const/4 v4, 0x0

    .line 619
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 620
    const/4 v4, 0x1

    .line 623
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowTextMessaging"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 625
    return-void
.end method

.method public setAllowWifi(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 598
    const/4 v4, 0x0

    .line 599
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 600
    const/4 v4, 0x1

    .line 603
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowWifi"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 605
    return-void
.end method

.method protected setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V
    .locals 7
    .parameter "table"
    .parameter "admin"
    .parameter "columnName"
    .parameter "columnValue"
    .parameter "containerId"

    .prologue
    .line 225
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColumnValues(): table = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " columnName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " columnValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    int-to-long v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 229
    return-void
.end method

.method protected setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V
    .locals 6
    .parameter "table"
    .parameter "admin"
    .parameter "columnName"
    .parameter "columnValue"
    .parameter "containerId"

    .prologue
    .line 233
    const-string v3, "EcppStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setColumnValuesAsLong(): table = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " admin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " columnName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " columnValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .local v1, sContentValues:Landroid/content/ContentValues;
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    if-lez p6, :cond_1

    .line 240
    invoke-direct {p0, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, adminName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passwordContainerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, where:Ljava/lang/String;
    const-string v3, "passwordContainerID"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "componentName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    const-string v3, "componentName"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    invoke-virtual {v3, p1, v1, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 254
    .end local v0           #adminName:Ljava/lang/String;
    .end local v2           #where:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 520
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumFailedPasswordsForWipe"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 523
    return-void
.end method

.method public setMaximumTimeToLock(ILandroid/content/ComponentName;J)V
    .locals 7
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 548
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumTimeToLockPassword"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 550
    return-void
.end method

.method public setOldPasswordToHistory(I[B)V
    .locals 4
    .parameter "containerId"
    .parameter "newPasswordHash"

    .prologue
    const/4 v3, 0x0

    .line 795
    invoke-virtual {p0, p1, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->removeOldestPasswordIfRequired(II)V

    .line 796
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 797
    .local v0, sContentValues:Landroid/content/ContentValues;
    const-string v1, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 798
    const-string v1, "oldPasswordHashValue"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 800
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v2, "PASSWORD_HISTORY"

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 801
    return-void
.end method

.method public setPasswordExpirationDate(ILandroid/content/ComponentName;J)V
    .locals 7
    .parameter "containerId"
    .parameter "admin"
    .parameter "passwordExpirationDate"

    .prologue
    .line 502
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordExpirationDate: setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordExpirationDate"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 506
    return-void
.end method

.method public setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V
    .locals 7
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 573
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordExpirationTimeout"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 575
    return-void
.end method

.method public setPasswordHistory(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "history"

    .prologue
    .line 480
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordHistory"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 482
    return-void
.end method

.method public setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 311
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container - setPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLength"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 315
    return-void
.end method

.method public setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 329
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLetters"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 331
    return-void
.end method

.method public setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 345
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLowerCase"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 347
    return-void
.end method

.method public setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 361
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumNonLetter"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 363
    return-void
.end method

.method public setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 377
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumNumeric"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 379
    return-void
.end method

.method public setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 409
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumSymbols"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 411
    return-void
.end method

.method public setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 393
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumUpperCase"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 395
    return-void
.end method

.method public setPasswordQuality(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "quality"

    .prologue
    .line 440
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordQuality"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 442
    return-void
.end method

.method public setPasswordVisibilityEnabled(IZ)V
    .locals 6
    .parameter "containerId"
    .parameter "val"

    .prologue
    .line 526
    const/4 v4, 0x0

    .line 527
    .local v4, value:I
    if-eqz p2, :cond_0

    .line 528
    const/4 v4, 0x1

    .line 531
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const/4 v2, 0x0

    const-string v3, "passwordVisible"

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 533
    return-void
.end method

.method public setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "enabled"

    .prologue
    .line 456
    if-eqz p3, :cond_0

    const/4 v4, 0x1

    .line 457
    .local v4, value:I
    :goto_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowSimplePassword"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 459
    return-void

    .line 456
    .end local v4           #value:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
