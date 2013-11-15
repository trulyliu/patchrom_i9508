.class public Lcom/sec/knox/container/contentprovider/ContainerDatabase;
.super Ljava/lang/Object;
.source "ContainerDatabase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContainerDatabase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAppPackagesSignedWithSig(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .parameter "context"
    .parameter "sig"
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 729
    if-nez p1, :cond_0

    .line 760
    :goto_0
    return-object v1

    .line 732
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "original_signature=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 733
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "packages"

    aput-object v6, v2, v5

    .line 736
    .local v2, project:[Ljava/lang/String;
    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, v5, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 738
    .local v0, cur:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 739
    const-string v5, "ContainerDatabase"

    const-string v6, "getAppPackagesSignedWithSig call is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 742
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 744
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 747
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 748
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v1, packageArray:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v5, "packages"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 751
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 752
    const-string v5, "ContainerDatabase"

    invoke-static {v5, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 759
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 755
    :cond_4
    const-string v5, "ContainerDatabase"

    const-string v6, "getAppPackagesSignedWithSig is not having any package in DB"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private removeSigningSignature(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 9
    .parameter "context"
    .parameter "pkgName"
    .parameter "containerId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, originalSignature:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 767
    .local v2, signaturesAsString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 769
    .local v1, packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getOriginalSignatures(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_0

    .line 771
    const-string v6, ","

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 772
    const-string v6, "NA"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 773
    invoke-direct {p0, p1, v2, p3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getAppPackagesSignedWithSig(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 775
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 776
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "orig_signature=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 778
    .local v3, where:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v6

    sget-object v7, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 786
    .end local v3           #where:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method private returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "project"
    .parameter "uri"
    .parameter "where"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, projection:[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 64
    move-object v2, p2

    .line 69
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 70
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v0

    move-object v1, p3

    move-object v3, p4

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 75
    :goto_0
    return-object v4

    .line 66
    :cond_0
    const-string v0, "ContainerDatabase"

    const-string v1, "Column name is null in returnCursorAsPerColumnName"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_1
    const-string v5, "ContainerDatabase"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "projection object is null? "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "context is null? "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)Z
    .locals 5
    .parameter "context"
    .parameter "pkgName"
    .parameter "containerId"
    .parameter "uri"

    .prologue
    .line 405
    const-string v3, "ContainerDatabase"

    const-string v4, "  ########  update to DB delete"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, result:Z
    if-eqz p1, :cond_1

    .line 409
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->removeSigningSignature(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containerid=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "packages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, where:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p4, v2, v4}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 421
    .end local v2           #where:Ljava/lang/String;
    :goto_0
    return v1

    .line 412
    .restart local v2       #where:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 414
    .end local v2           #where:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ContainerDatabase"

    const-string v4, "exception"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 419
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v3, "ContainerDatabase"

    const-string v4, "projection object is nul"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAllContainerStatus(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 150
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "containerid"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "activestatus"

    aput-object v6, v4, v5

    .line 154
    .local v4, project:[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v3, listContainerStatus:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-direct {p0, p1, v4, v5, v6}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 158
    .local v2, cur:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 160
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 173
    :goto_0
    return-object v3

    .line 164
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    :cond_1
    const-string v5, "containerid"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 167
    .local v1, containerId:I
    const-string v5, "activestatus"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 169
    .local v0, activestatus:I
    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-containerid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "activestatus"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 172
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getAndroidId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "containerId"

    .prologue
    const/4 v5, 0x0

    .line 425
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "containerid"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "androidid"

    aput-object v7, v3, v6

    .line 428
    .local v3, project:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, where:Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v6, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 434
    .local v1, cur:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 435
    const-string v6, "ContainerDatabase"

    const-string v7, "getAndroidId container DB is null cannot fetch the android id"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 454
    .end local v1           #cur:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v0

    .line 439
    .restart local v1       #cur:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 440
    const-string v6, "androidid"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, androidId:Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 443
    if-nez v0, :cond_0

    .line 444
    const-string v6, "ContainerDatabase"

    const-string v7, "getAndroidId android id is null"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    .end local v0           #androidId:Ljava/lang/String;
    .end local v1           #cur:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 449
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "ContainerDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAndroidId and error happend trying to get the android id from DB. Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 454
    goto :goto_0
.end method

.method public getCertificateManagerSignatureCreationTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "signature"

    .prologue
    const/4 v0, 0x0

    .line 646
    if-nez p1, :cond_0

    .line 647
    const-string v5, "ContainerDatabase"

    const-string v6, "getPackageSignatureName context is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :goto_0
    return-object v0

    .line 650
    :cond_0
    if-nez p2, :cond_1

    .line 651
    const-string v5, "ContainerDatabase"

    const-string v6, "getPackageSignatureName signature is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getCertificateManagerSignatureId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 657
    .local v1, certificateSingnatureId:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "new_signature_creationtime"

    aput-object v6, v3, v5

    .line 661
    .local v3, project:[Ljava/lang/String;
    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v5, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 664
    .local v2, cur:Landroid/database/Cursor;
    if-nez v2, :cond_2

    .line 665
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureCreationTime cursor is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 669
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureCreationTime no rows found for this query"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 674
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 675
    const-string v5, "new_signature_creationtime"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, certificateCreationTime:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 679
    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCertificateManagerSignatureCreationTime getting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 682
    :cond_4
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureCreationTime there is no time for this certificateSingnatureId in DB"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCertificateManagerSignatureCreationTime(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "signature"

    .prologue
    .line 634
    if-nez p2, :cond_0

    .line 635
    const-string v1, "ContainerDatabase"

    const-string v2, "getPackageSignatureName signature is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const/4 v1, 0x0

    .line 641
    :goto_0
    return-object v1

    .line 639
    :cond_0
    const/4 v0, 0x0

    .line 640
    .local v0, origSignatureAsString:Ljava/lang/String;
    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-virtual {p0, p1, v0}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getCertificateManagerSignatureCreationTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCertificateManagerSignatureId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "signature"

    .prologue
    const/4 v4, -0x1

    .line 593
    if-nez p1, :cond_0

    .line 594
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureId context is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 629
    :goto_0
    return v0

    .line 597
    :cond_0
    if-nez p2, :cond_1

    .line 598
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureId packageName is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 599
    goto :goto_0

    .line 602
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orig_signature=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 604
    .local v3, where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v5

    .line 607
    .local v2, project:[Ljava/lang/String;
    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, v5, v3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 609
    .local v1, cur:Landroid/database/Cursor;
    if-nez v1, :cond_2

    .line 610
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureId cursor is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 611
    goto :goto_0

    .line 613
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 614
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureId no rows found for this query"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v4

    .line 616
    goto :goto_0

    .line 618
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 619
    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 621
    .local v0, certificateManagerSignatureId:I
    if-eq v0, v4, :cond_4

    .line 622
    const-string v4, "ContainerDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateManagerSignatureId getting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 625
    :cond_4
    const-string v4, "ContainerDatabase"

    const-string v5, "getCertificateManagerSignatureId there is no id for this package in DB"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCertificateManagerSignatureId(Landroid/content/Context;[Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "signature"

    .prologue
    .line 582
    if-nez p2, :cond_0

    .line 583
    const-string v1, "ContainerDatabase"

    const-string v2, "getPackageSignatureName signature is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const/4 v1, -0x1

    .line 588
    :goto_0
    return v1

    .line 586
    :cond_0
    const/4 v0, 0x0

    .line 587
    .local v0, origSignatureAsString:Ljava/lang/String;
    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-virtual {p0, p1, v0}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getCertificateManagerSignatureId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getContainerId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "mContext"
    .parameter "packageName"

    .prologue
    const/4 v4, -0x1

    .line 116
    if-nez p1, :cond_0

    move v0, v4

    .line 145
    :goto_0
    return v0

    .line 119
    :cond_0
    const/4 v0, -0x1

    .line 120
    .local v0, containerId:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packages=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "containerid"

    aput-object v6, v2, v5

    .line 124
    .local v2, project:[Ljava/lang/String;
    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, v5, v3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 126
    .local v1, cur:Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 127
    const-string v5, "ContainerDatabase"

    const-string v6, "getContainerIDcall is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 128
    goto :goto_0

    .line 130
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 132
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v4

    .line 133
    goto :goto_0

    .line 135
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 138
    :cond_3
    const-string v4, "containerid"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 139
    const-string v4, "ContainerDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got ContainerID from DB for package"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 143
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 144
    const-string v4, "ContainerDatabase"

    const-string v5, "Got ContainerID from DB for package----last"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContainerPackagesInfo(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 13
    .parameter "context"
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    const/4 v3, 0x0

    .line 228
    :goto_0
    return-object v3

    .line 182
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "containerid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, where:Ljava/lang/String;
    const/4 v10, 0x5

    new-array v5, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "containerid"

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "packages"

    aput-object v11, v5, v10

    const/4 v10, 0x2

    const-string v11, "original_signature"

    aput-object v11, v5, v10

    const/4 v10, 0x3

    const-string v11, "installation_source"

    aput-object v11, v5, v10

    const/4 v10, 0x4

    const-string v11, "app_uid"

    aput-object v11, v5, v10

    .line 190
    .local v5, project:[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v3, listContainerPackage:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    sget-object v10, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v5, v10, v9}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 193
    .local v1, cur:Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 194
    const-string v10, "ContainerDatabase"

    const-string v11, "getContainerPackagesInfocall is null"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 198
    const-string v10, "ContainerDatabase"

    const-string v11, "package information not found..."

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 203
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 206
    :cond_3
    const-string v10, "containerid"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 207
    .local v0, cId:I
    const-string v10, "packages"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, packageName:Ljava/lang/String;
    const-string v10, "original_signature"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, signature:Ljava/lang/String;
    const-string v10, "installation_source"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 211
    .local v7, source:I
    const-string v10, "app_uid"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 213
    .local v8, uid:I
    if-eqz v4, :cond_4

    .line 214
    const-string v10, "ContainerDatabase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v2, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    invoke-direct {v2}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;-><init>()V

    .line 216
    .local v2, info:Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    invoke-virtual {v2, v0}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setContainerId(I)V

    .line 217
    invoke-virtual {v2, v4}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setAppPackage(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v2, v6}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setSignature(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2, v7}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setInstallationSource(I)V

    .line 220
    invoke-virtual {v2, v8}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setUid(I)V

    .line 221
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .end local v2           #info:Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 227
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 223
    :cond_4
    const-string v10, "ContainerDatabase"

    const-string v11, "Empty package information cannot be added..."

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .locals 8
    .parameter "context"
    .parameter "containerId"

    .prologue
    .line 234
    const/4 v6, 0x6

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "admin_uid"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "email"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "name"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "securitytext"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string v7, "securityicon"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string v7, "locktype"

    aput-object v7, v3, v6

    .line 240
    .local v3, project:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, where:Ljava/lang/String;
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v6, v5}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 244
    .local v1, cur:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 246
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 247
    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    .line 249
    :cond_0
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    invoke-direct {v0}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;-><init>()V

    .line 250
    .local v0, createContainerObj:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 253
    :cond_1
    const-string v6, "admin_uid"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setAdmin(I)V

    .line 255
    const-string v6, "email"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setEmail(Ljava/lang/String;)V

    .line 257
    const-string v6, "name"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setName(Ljava/lang/String;)V

    .line 259
    const-string v6, "securitytext"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setSecurityText(Ljava/lang/String;)V

    .line 261
    const-string v6, "securityicon"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 264
    .local v4, securityIcon:[B
    if-eqz v4, :cond_2

    array-length v6, v4

    if-lez v6, :cond_2

    .line 265
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 266
    .local v2, imageStream:Ljava/io/ByteArrayInputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setSecurityIcon(Landroid/graphics/Bitmap;)V

    .line 269
    .end local v2           #imageStream:Ljava/io/ByteArrayInputStream;
    :cond_2
    const-string v6, "locktype"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setLockType(I)V

    .line 272
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 274
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getContainerStatus(Landroid/content/Context;I)I
    .locals 6
    .parameter "context"
    .parameter "containerId"

    .prologue
    .line 279
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "containerid"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "activestatus"

    aput-object v5, v1, v4

    .line 282
    .local v1, project:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containerid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, where:Ljava/lang/String;
    sget-object v4, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v1, v4, v3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 286
    .local v0, cur:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 287
    const-string v4, "ContainerDatabase"

    const-string v5, "Container DB is null cannot fetch the status"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 289
    const/16 v2, 0x385

    .line 298
    :goto_0
    return v2

    .line 291
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 292
    const/4 v2, 0x0

    .line 294
    .local v2, val:I
    :cond_1
    const-string v4, "activestatus"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 295
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 297
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getFailedPasswordAttempts(Landroid/content/Context;I)I
    .locals 9
    .parameter "context"
    .parameter "containerId"

    .prologue
    const/4 v5, 0x0

    .line 471
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    const-string v6, "containerid"

    aput-object v6, v3, v5

    const/4 v6, 0x1

    const-string v7, "failedpasswordattempts"

    aput-object v7, v3, v6

    .line 475
    .local v3, project:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, where:Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v6, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 481
    .local v0, cur:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 482
    const-string v6, "ContainerDatabase"

    const-string v7, "getFailedPasswordAttempts(): container DB is null cannot fetch the failedPasswordAttempts"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v2, v5

    .line 501
    .end local v0           #cur:Landroid/database/Cursor;
    :goto_0
    return v2

    .line 487
    .restart local v0       #cur:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 488
    const-string v6, "failedpasswordattempts"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 490
    .local v2, failedPasswordAttempts:I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 492
    const-string v6, "ContainerDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFailedPasswordAttempts() getting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    .end local v0           #cur:Landroid/database/Cursor;
    .end local v2           #failedPasswordAttempts:I
    :catch_0
    move-exception v1

    .line 495
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ContainerDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFailedPasswordAttempts(): and error happend trying to get the value from DB. Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v6, "ContainerDatabase"

    const-string v7, "getFailedPasswordAttempts() failed, getting 0"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v5

    .line 501
    goto :goto_0
.end method

.method public getOriginalSignatures(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 692
    if-nez p1, :cond_0

    move-object v1, v5

    .line 725
    :goto_0
    return-object v1

    .line 695
    :cond_0
    const/4 v2, 0x0

    .line 696
    .local v2, originalSignatureAsString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 697
    .local v1, originalSignature:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packages=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 698
    .local v4, where:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "original_signature"

    aput-object v7, v3, v6

    .line 701
    .local v3, project:[Ljava/lang/String;
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v6, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 703
    .local v0, cur:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 704
    const-string v6, "ContainerDatabase"

    const-string v7, "getOriginalCertificatecall is null"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 705
    goto :goto_0

    .line 707
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 709
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v1, v5

    .line 710
    goto :goto_0

    .line 712
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 715
    :cond_3
    const-string v5, "original_signature"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 717
    const-string v5, ","

    invoke-static {v2, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 718
    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got Original Signature from DB for package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 723
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 724
    const-string v5, "ContainerDatabase"

    const-string v6, "Got Original Signature from DB for package----last"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getPackageNames(Landroid/content/Context;I)Ljava/util/List;
    .locals 7
    .parameter "context"
    .parameter "containerId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 112
    :goto_0
    return-object v1

    .line 84
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "packages"

    aput-object v6, v2, v5

    .line 88
    .local v2, project:[Ljava/lang/String;
    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, v5, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 90
    .local v0, cur:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 91
    const-string v5, "ContainerDatabase"

    const-string v6, "getPackageNamescall is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 96
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 99
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, packageArray:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v5, "packages"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 104
    const-string v5, "ContainerDatabase"

    invoke-static {v5, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 111
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 107
    :cond_4
    const-string v5, "ContainerDatabase"

    const-string v6, "getPackageNames is not having any package in DB"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getPasswordContainerdataFromDB(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 24
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    const/16 v21, 0xd

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const-string v22, "containerid"

    aput-object v22, v19, v21

    const/16 v21, 0x1

    const-string v22, "admin_uid"

    aput-object v22, v19, v21

    const/16 v21, 0x2

    const-string v22, "activestatus"

    aput-object v22, v19, v21

    const/16 v21, 0x3

    const-string v22, "passwordstatus"

    aput-object v22, v19, v21

    const/16 v21, 0x4

    const-string v22, "email"

    aput-object v22, v19, v21

    const/16 v21, 0x5

    const-string v22, "name"

    aput-object v22, v19, v21

    const/16 v21, 0x6

    const-string v22, "securitytext"

    aput-object v22, v19, v21

    const/16 v21, 0x7

    const-string v22, "securityicon"

    aput-object v22, v19, v21

    const/16 v21, 0x8

    const-string v22, "failedpasswordattempts"

    aput-object v22, v19, v21

    const/16 v21, 0x9

    const-string v22, "locktype"

    aput-object v22, v19, v21

    const/16 v21, 0xa

    const-string v22, "containertype"

    aput-object v22, v19, v21

    const/16 v21, 0xb

    const-string v22, "containerLockOnScreenLock"

    aput-object v22, v19, v21

    const/16 v21, 0xc

    const-string v22, "containerPwdVerfyOnModeChange"

    aput-object v22, v19, v21

    .line 316
    .local v19, project:[Ljava/lang/String;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 317
    .local v15, mapObjData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;>;"
    sget-object v21, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 320
    .local v11, cur:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v21

    if-nez v21, :cond_0

    .line 323
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 377
    :goto_0
    return-object v15

    .line 326
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 328
    :cond_1
    const-string v21, "containerid"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 329
    .local v7, containerId:I
    const-string v21, "admin_uid"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 330
    .local v5, admin:I
    const-string v21, "passwordstatus"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 331
    .local v18, passwordStatus:I
    const-string v21, "activestatus"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 333
    .local v9, containerStatus:I
    const-string v21, "email"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 334
    .local v12, email:Ljava/lang/String;
    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 335
    .local v16, name:Ljava/lang/String;
    const-string v21, "securitytext"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 337
    .local v20, securityText:Ljava/lang/String;
    const-string v21, "failedpasswordattempts"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 342
    .local v13, failedPasswordAttemps:I
    const-string v21, "locktype"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 343
    .local v14, lockType:I
    const-string v21, "containertype"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 344
    .local v10, containerType:I
    const-string v21, "containerLockOnScreenLock"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    if-nez v21, :cond_2

    const/4 v8, 0x0

    .line 347
    .local v8, containerLockOnScreenLock:Z
    :goto_1
    const-string v21, "containerPwdVerfyOnModeChange"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    if-nez v21, :cond_3

    const/4 v6, 0x0

    .line 351
    .local v6, alwaysAskPwd:Z
    :goto_2
    new-instance v17, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    invoke-direct/range {v17 .. v17}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;-><init>()V

    .line 353
    .local v17, obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    invoke-virtual/range {v17 .. v18}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordStatus(I)V

    .line 354
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerId(I)V

    .line 355
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setAdmin(I)V

    .line 356
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerStatus(I)V

    .line 357
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setEmail(Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setName(Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setSecurityText(Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setFailedPasswordAttempts(I)V

    .line 361
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setLockType(I)V

    .line 362
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerType(I)V

    .line 363
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerLockOnScreenLock(Z)V

    .line 364
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setVerifyPwdOnlyOnChangeMode(Z)V

    .line 371
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v21, "ContainerDatabase"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Container read from DB : [  id:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " adminId:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " containerStatus:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " passwordStatus:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " name:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-nez v21, :cond_1

    .line 376
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 344
    .end local v6           #alwaysAskPwd:Z
    .end local v8           #containerLockOnScreenLock:Z
    .end local v17           #obj:Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_2
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 347
    .restart local v8       #containerLockOnScreenLock:Z
    :cond_3
    const/4 v6, 0x1

    goto/16 :goto_2
.end method

.method public insert(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;)Z
    .locals 5
    .parameter "context"
    .parameter "mContentValues"
    .parameter "uri"

    .prologue
    .line 26
    const-string v2, "ContainerDatabase"

    const-string v3, "  ########  update to DB Insert"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :try_start_0
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v2

    invoke-virtual {v2, p3, p2}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 29
    .local v1, uris:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 30
    const/4 v2, 0x1

    .line 38
    .end local v1           #uris:Landroid/net/Uri;
    :goto_0
    return v2

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "ContainerDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .end local v0           #e:Landroid/database/SQLException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ContainerDatabase"

    const-string v3, "exception"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public removeContainer(Landroid/content/Context;I)Z
    .locals 7
    .parameter "context"
    .parameter "containerId"

    .prologue
    const/4 v3, 0x0

    .line 381
    const-string v4, "ContainerDatabase"

    const-string v5, "  ########  update to DB remove"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containerid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, where:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v4

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 388
    .local v0, count:I
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v4

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 391
    if-gtz v0, :cond_0

    .line 392
    const-string v4, "ContainerDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted failed for containerId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v0           #count:I
    .end local v2           #where:Ljava/lang/String;
    :goto_0
    return v3

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ContainerDatabase"

    const-string v5, "exception"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 400
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v2       #where:Ljava/lang/String;
    :cond_0
    const-string v3, "ContainerDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted complete for containerId+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setAndroidId(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "containerId"
    .parameter "androidId"

    .prologue
    .line 458
    const-string v1, "ContainerDatabase"

    const-string v2, "  ########  update to DB  setAndroidId"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    if-nez p3, :cond_0

    .line 460
    const-string v1, "ContainerDatabase"

    const-string v2, "setAndroidId androidId is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 464
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "androidid"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    return v1
.end method

.method public setCertificateManagerSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "signature"
    .parameter "creationTime"

    .prologue
    const/4 v4, 0x0

    .line 534
    if-nez p1, :cond_0

    .line 535
    const-string v5, "ContainerDatabase"

    const-string v6, "setPackageSignature context is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :goto_0
    return v4

    .line 538
    :cond_0
    if-nez p2, :cond_1

    .line 539
    const-string v5, "ContainerDatabase"

    const-string v6, "setPackageSignature signature is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :cond_1
    if-nez p2, :cond_2

    .line 543
    const-string v5, "ContainerDatabase"

    const-string v6, "setPackageSignature creationTime is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getCertificateManagerSignatureId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 549
    .local v2, packageSignatureId:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_4

    .line 550
    const-string v5, "ContainerDatabase"

    const-string v6, "setPackageSignature inserting new packageSignature"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 553
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v5, "orig_signature"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v5, "new_signature_creationtime"

    invoke-virtual {v0, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v5

    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v0}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 560
    .local v3, uris:Landroid/net/Uri;
    if-eqz v3, :cond_3

    .line 561
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 570
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v3           #uris:Landroid/net/Uri;
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 563
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v3       #uris:Landroid/net/Uri;
    :cond_3
    const-string v5, "ContainerDatabase"

    const-string v6, "setPackageSignature error when inserting into DB"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #packageSignatureId:I
    .end local v3           #uris:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 572
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPackageSignature an error happend trying to store the signature in DB. Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 567
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #packageSignatureId:I
    :cond_4
    :try_start_1
    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPackageSignature error, entry already exists with id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setCertificateManagerSignature(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "signature"
    .parameter "creationTime"

    .prologue
    .line 522
    if-nez p2, :cond_0

    .line 523
    const-string v1, "ContainerDatabase"

    const-string v2, "getPackageSignatureName signature is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v1, 0x0

    .line 528
    :goto_0
    return v1

    .line 526
    :cond_0
    const/4 v0, 0x0

    .line 527
    .local v0, origSignatureAsString:Ljava/lang/String;
    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 528
    invoke-virtual {p0, p1, v0, p3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->setCertificateManagerSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setFailedPasswordAttempts(Landroid/content/Context;II)Z
    .locals 4
    .parameter "context"
    .parameter "containerId"
    .parameter "failedPasswordAttempts"

    .prologue
    .line 506
    const-string v1, "ContainerDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFailedPasswordAttempts() setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 508
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "failedpasswordattempts"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    return v1
.end method

.method public updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .locals 5
    .parameter "context"
    .parameter "uri"
    .parameter "val"
    .parameter "containerId"

    .prologue
    const/4 v1, 0x0

    .line 43
    const-string v2, "ContainerDatabase"

    const-string v3, "  ########  update to DB Update"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "containerid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, where:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p3, v0, v3}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 47
    const-string v2, "ContainerDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update failed for container status update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "activestatus"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .end local v0           #where:Ljava/lang/String;
    :goto_0
    return v1

    .line 54
    :cond_0
    const-string v2, "ContainerDatabase"

    const-string v3, "projection object is null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .restart local v0       #where:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
