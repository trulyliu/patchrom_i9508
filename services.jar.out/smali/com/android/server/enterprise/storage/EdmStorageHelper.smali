.class public Lcom/android/server/enterprise/storage/EdmStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EdmStorageHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "enterprise.db"

.field public static final DATABASE_VERSION:I = 0x7

.field private static final TAG:Ljava/lang/String; = "EdmStorageHelper"

.field static mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper; = null

.field private static final mTAG:Ljava/lang/String; = "EDM"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 96
    const-string v0, "enterprise.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 97
    iput-object p1, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method static synthetic access$300(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method static synthetic access$400(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static addContainerIdColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .locals 6
    .parameter "db"
    .parameter "table"

    .prologue
    const/4 v3, 0x0

    .line 440
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 442
    :try_start_0
    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 443
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v4, "containerID"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 444
    const-string v4, "EdmStorageHelper"

    const-string v5, "Generic Table is already updated."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 466
    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_0
    return v3

    .line 448
    .restart local v0       #cv:Landroid/content/ContentValues;
    :cond_0
    :try_start_1
    const-string v3, "EdmStorageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Table"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, temp:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE TABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP TABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 453
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SELECT *,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP TABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 463
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 466
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #temp:Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "EdmStorageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " upgrade EX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 463
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method private convertAdminIdToLUID(Landroid/content/ContentValues;)V
    .locals 9
    .parameter "cv"

    .prologue
    .line 2283
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 2284
    .local v3, hasContainerId:Z
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 2285
    .local v2, hasAdminId:Z
    const/4 v1, -0x1

    .line 2286
    .local v1, containerId:I
    const/4 v0, -0x1

    .line 2288
    .local v0, adminId:I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 2290
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2291
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2292
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2293
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2294
    const-string v4, "adminUid"

    int-to-long v5, v0

    int-to-long v7, v1

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->translateToAdminLUID(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2297
    :cond_0
    return-void
.end method

.method private convertAdminIdToLUID(Ljava/util/HashMap;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2336
    .local p1, fv:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 2337
    .local v3, hasContainerId:Z
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 2338
    .local v2, hasAdminId:Z
    const/4 v1, -0x1

    .line 2339
    .local v1, containerId:I
    const/4 v0, -0x1

    .line 2341
    .local v0, adminId:I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 2343
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2344
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2345
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    const-string v4, "adminUid"

    int-to-long v5, v0

    int-to-long v7, v1

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->translateToAdminLUID(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    :cond_0
    return-void
.end method

.method private static createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .locals 9
    .parameter "db"
    .parameter "table"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 135
    const-string v2, "CREATE TABLE %s (%s"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/storage/Table;->buildTableColumns()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, command:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/storage/Table;->buildPrimaryKeys()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, primarykeys:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 141
    const-string v2, "%s, PRIMARY KEY (%s)"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_0
    iget-object v2, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferTable:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/enterprise/storage/Table;->mForeignKeyName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 147
    const-string v2, "%s FOREIGN KEY (%s) REFERENCES %s(%s) ON DELETE CASCADE ON UPDATE CASCADE"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mForeignKeyName:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferTable:Ljava/lang/String;

    aput-object v4, v3, v8

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string v2, "EdmStorageHelper"

    const-string v3, "onTableFound Created Table %s with Columns %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static getAdminLUIDWhereIn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2248
    const-string v0, "adminUid IN ( ? )"

    return-object v0
.end method

.method public static getAdminLUIDWhereIn(I)Ljava/lang/String;
    .locals 2
    .parameter "containerId"

    .prologue
    .line 2266
    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 2267
    const/4 v1, 0x0

    .line 2276
    :goto_0
    return-object v1

    .line 2270
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2272
    .local v0, str:Ljava/lang/StringBuilder;
    const-string v1, "adminUid IN ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereInArgs(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2274
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getAdminLUIDWhereIn(Landroid/content/ContentValues;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter "cv"

    .prologue
    .line 2324
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereInStr(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 2325
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2329
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAdminLUIDWhereInArgs(I)Ljava/lang/String;
    .locals 3
    .parameter "containerId"

    .prologue
    .line 2252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2253
    .local v0, str:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT adminUid FROM ADMIN WHERE containerID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    if-eqz p0, :cond_0

    .line 2261
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAdminLUIDWhereInStr(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 3
    .parameter "cv"

    .prologue
    const/4 v1, 0x0

    .line 2304
    if-nez p1, :cond_1

    .line 2317
    :cond_0
    :goto_0
    return-object v1

    .line 2308
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 2310
    const-string v2, "containerID"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2312
    const-string v1, "containerID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2313
    .local v0, containerId:I
    const-string v1, "containerID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2314
    invoke-static {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getAdminUidFromLUID(J)I
    .locals 1
    .parameter "adminLUID"

    .prologue
    .line 2244
    long-to-int v0, p0

    return v0
.end method

.method static getContainerIdFromLUID(J)I
    .locals 2
    .parameter "adminLUID"

    .prologue
    .line 2237
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static getCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "db"
    .parameter "tableName"
    .parameter "whereCond"

    .prologue
    .line 2367
    const/4 v1, 0x0

    .line 2368
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 2371
    .local v0, cnt:I
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT COUNT(*) from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2372
    .local v3, sql:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 2373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2376
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2377
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2378
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2379
    const-string v4, "EdmStorageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCount("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") with Condition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2383
    if-eqz v1, :cond_1

    .line 2384
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2388
    .end local v3           #sql:Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 2380
    :catch_0
    move-exception v2

    .line 2381
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "EdmStorageHelper"

    const-string v5, "getCount() failed"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2383
    if-eqz v1, :cond_1

    .line 2384
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2383
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 2384
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmStorageHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 86
    const-class v1, Lcom/android/server/enterprise/storage/EdmStorageHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 89
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    .locals 4
    .parameter "db"
    .parameter "sTableName"
    .parameter "table"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/storage/Table;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/storage/Column;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LIMIT 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 306
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/server/enterprise/storage/Table;->getMissingColumns(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 308
    .local v1, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/storage/Column;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 310
    return-object v1
.end method

.method private static getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 10
    .parameter "db"
    .parameter "table_name"

    .prologue
    const/4 v6, 0x0

    .line 470
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PRAGMA table_info("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 471
    .local v5, sql:Ljava/lang/String;
    const/4 v1, 0x0

    .line 472
    .local v1, cv:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 475
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 477
    :cond_0
    const-string v7, "EdmStorageHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get list of columns for table: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :goto_0
    return-object v6

    .line 481
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 482
    .end local v1           #cv:Landroid/content/ContentValues;
    .local v2, cv:Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 484
    .local v4, i:I
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 485
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 489
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 490
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v4           #i:I
    .restart local v1       #cv:Landroid/content/ContentValues;
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    const-string v6, "EdmStorageHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "does not exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #e:Ljava/lang/Exception;
    :goto_3
    move-object v6, v1

    .line 493
    goto :goto_0

    .line 488
    .end local v1           #cv:Landroid/content/ContentValues;
    .restart local v2       #cv:Landroid/content/ContentValues;
    .restart local v4       #i:I
    :cond_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 491
    .end local v2           #cv:Landroid/content/ContentValues;
    .restart local v1       #cv:Landroid/content/ContentValues;
    goto :goto_3

    .line 489
    .end local v4           #i:I
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4
    .parameter "db"
    .parameter "table"

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, exists:Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 293
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    const/4 v1, 0x1

    .line 299
    :cond_0
    :goto_0
    return v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static postAdminInfoTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 369
    :try_start_0
    const-string v1, "INSERT INTO ADMIN_INFO VALUES (0, \'SYSTEM-LEVEL-ADMIN\', 0);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 371
    const-string v1, "ADMIN"

    invoke-static {p0, v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const-string v1, "INSERT INTO ADMIN_INFO SELECT * from ADMIN;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADMIN_INFO postAdminInfoTableCreate failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static postAdminTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 399
    :try_start_0
    const-string v2, "CREATE TRIGGER ADMIN_INFO_ONINSERT  AFTER INSERT  ON ADMIN_INFO BEGIN INSERT INTO ADMIN VALUES (NEW.adminUid,NEW.adminUid,0); END;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 405
    const-string v0, "adminUid!=0"

    .line 406
    .local v0, condition:Ljava/lang/String;
    const-string v2, "ADMIN_INFO"

    invoke-static {p0, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO ADMIN SELECT adminUid,adminUid,0 FROM ADMIN_INFO WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v0           #condition:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v1

    .line 414
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "EdmStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADMIN_INFO postAdminTableCreate failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static postContainerTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 385
    :try_start_0
    const-string v1, "INSERT INTO CONTAINER(containerID,adminUid) VALUES (0,0);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONTAINER postContainerTableCreate failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .locals 2
    .parameter "db"
    .parameter "table"

    .prologue
    .line 327
    iget-object v0, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 328
    .local v0, sTableName:Ljava/lang/String;
    const-string v1, "ADMIN_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 329
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postAdminInfoTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    const-string v1, "CONTAINER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 334
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postContainerTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 338
    :cond_2
    const-string v1, "ADMIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 339
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postAdminTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method private static preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .locals 0
    .parameter "db"
    .parameter "table"

    .prologue
    .line 319
    return-void
.end method

.method private static preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .locals 2
    .parameter "db"
    .parameter "table"

    .prologue
    .line 350
    iget-object v0, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 351
    .local v0, sTableName:Ljava/lang/String;
    const-string v1, "ADMIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 352
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->upgradeAdminTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v1

    .line 363
    :goto_0
    return v1

    .line 355
    :cond_0
    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 356
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addContainerIdColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v1

    goto :goto_0

    .line 359
    :cond_1
    const-string v1, "WebFilterLogTable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 360
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addContainerIdColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v1

    goto :goto_0

    .line 363
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static translateToAdminLUID(JJ)J
    .locals 3
    .parameter "adminId"
    .parameter "containerId"

    .prologue
    const-wide/16 v1, 0x0

    .line 2226
    cmp-long v0, p0, v1

    if-eqz v0, :cond_0

    cmp-long v0, p2, v1

    if-gtz v0, :cond_1

    .line 2230
    .end local p0
    :cond_0
    :goto_0
    return-wide p0

    .restart local p0
    :cond_1
    const/16 v0, 0x20

    shl-long v0, p2, v0

    or-long/2addr p0, v0

    goto :goto_0
.end method

.method private static upgradeAdminTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .locals 6
    .parameter "db"
    .parameter "table"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 420
    :try_start_0
    const-string v4, "ADMIN"

    invoke-static {p0, v4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 421
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v4, "containerID"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 422
    const-string v4, "EdmStorageHelper"

    const-string v5, "Admin Table is already updated."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 436
    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 426
    .restart local v0       #cv:Landroid/content/ContentValues;
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 427
    const-string v2, "DROP TABLE ADMIN"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 428
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 429
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postAdminTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 433
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .end local v0           #cv:Landroid/content/ContentValues;
    :goto_1
    move v2, v3

    .line 436
    goto :goto_0

    .line 430
    :catch_0
    move-exception v1

    .line 431
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "EdmStorageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADMIN upgrade failed  EX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    throw v2
.end method


# virtual methods
.method addAdmin(ILjava/lang/String;ZI)Z
    .locals 8
    .parameter "iUId"
    .parameter "sName"
    .parameter "bCanRemove"
    .parameter "containerId"

    .prologue
    .line 1240
    const/4 v3, 0x0

    .line 1242
    .local v3, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1243
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1244
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1245
    const-string v4, "adminName"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string v4, "canRemove"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1248
    const-string v4, "ADMIN_INFO"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1249
    const/4 v3, 0x1

    .line 1250
    invoke-virtual {p0, p4, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addAdminLUID(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v3

    .line 1252
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1254
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 1255
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "EdmStorageHelper"

    const-string v5, "Failed on addAdmin"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method addAdminLUID(II)Z
    .locals 9
    .parameter "containerId"
    .parameter "adminUid"

    .prologue
    .line 1450
    const/4 v3, 0x0

    .line 1452
    .local v3, result:Z
    if-eqz p2, :cond_0

    if-gtz p1, :cond_1

    .line 1454
    :cond_0
    const/4 v4, 0x1

    .line 1471
    :goto_0
    return v4

    .line 1457
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1458
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1459
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "adminUid"

    int-to-long v5, p2

    int-to-long v7, p1

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->translateToAdminLUID(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1460
    const-string v4, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1461
    const-string v4, "adminID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1463
    const-string v4, "ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 1464
    const/4 v3, 0x1

    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    move v4, v3

    .line 1471
    goto :goto_0

    .line 1466
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1468
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 1469
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "EdmStorageHelper"

    const-string v5, "Failed on addLUID"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method addContainer(II)Z
    .locals 8
    .parameter "containerId"
    .parameter "adminUid"

    .prologue
    .line 1322
    const/4 v3, 0x0

    .line 1324
    .local v3, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1325
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1326
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1327
    const-string v4, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1329
    const-string v4, "CONTAINER"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 1330
    if-eqz p2, :cond_0

    .line 1331
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addAdminLUID(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1341
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v3

    .line 1333
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 1336
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1338
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 1339
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "EdmStorageHelper"

    const-string v5, "Failed on addContainer"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method addorUpdateAdmin(ILjava/lang/String;ZI)Z
    .locals 9
    .parameter "iUId"
    .parameter "sName"
    .parameter "bCanRemove"
    .parameter "containerId"

    .prologue
    .line 1267
    const/4 v3, 0x0

    .line 1269
    .local v3, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1270
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1271
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "adminName"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const-string v5, "canRemove"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1275
    .local v4, whereClause:Ljava/lang/String;
    const-string v5, "ADMIN_INFO"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 1276
    const/4 v5, 0x1

    .line 1289
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #whereClause:Ljava/lang/String;
    :goto_0
    return v5

    .line 1279
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #whereClause:Ljava/lang/String;
    :cond_0
    const-string v5, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1280
    const-string v5, "ADMIN_INFO"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 1281
    const/4 v3, 0x1

    .line 1282
    invoke-virtual {p0, p4, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addAdminLUID(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #whereClause:Ljava/lang/String;
    :goto_1
    move v5, v3

    .line 1289
    goto :goto_0

    .line 1284
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #whereClause:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1286
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #whereClause:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1287
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on addAdmin"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "sTableName"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 2392
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2393
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 12
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"

    .prologue
    const/4 v9, 0x0

    .line 1786
    const/4 v8, 0x0

    .line 1787
    .local v8, where:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1788
    .local v1, buf:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 1789
    :cond_0
    const/4 p3, 0x0

    .line 1797
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1799
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4, p1, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    .line 1800
    const/4 v9, 0x1

    .line 1805
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_1
    return v9

    .line 1791
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1792
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .local v2, buf:Ljava/lang/StringBuffer;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    :try_start_1
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_3

    aget-object v3, v0, v6

    .line 1793
    .local v3, column:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "= ? AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1792
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1795
    .end local v3           #column:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    const-string v11, " AND "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    move-object v1, v2

    .end local v2           #buf:Ljava/lang/StringBuffer;
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 1802
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_0
    move-exception v5

    .line 1803
    .local v5, e:Ljava/lang/Exception;
    :goto_3
    const-string v10, "EdmStorageHelper"

    const-string v11, "could not execute deleteDataByFields"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1802
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #buf:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2           #buf:Ljava/lang/StringBuffer;
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    goto :goto_3
.end method

.method doCreationOrUpdatePostCommands(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const/4 v0, 0x0

    .line 211
    :try_start_0
    const-string v1, "CREATE TRIGGER IF NOT EXISTS webFilterLoggingPolicy_TbSize  AFTER INSERT  ON WebFilterLogTable WHEN (SELECT COUNT(*) FROM WebFilterLogTable) > 1000  BEGIN  DELETE FROM WebFilterLogTable WHERE id = (SELECT id FROM WebFilterLogTable ORDER BY id LIMIT 1); END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    :goto_0
    :try_start_1
    const-string v1, "CREATE TRIGGER IF NOT EXISTS bluetoothLoggingPolicy_TbSize  AFTER INSERT  ON BluetoothLogTable WHEN (SELECT COUNT(*) FROM BluetoothLogTable) > 1000  BEGIN  DELETE FROM BluetoothLogTable WHERE id = (SELECT id FROM BluetoothLogTable ORDER BY id LIMIT 1); END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 239
    :goto_1
    :try_start_2
    const-string v1, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (1, \'SpaceView\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    const-string v1, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (2, \'TextView\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    const-string v1, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (3, \'ImageView\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    const-string v1, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (4, \'ContainerView\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    const-string v1, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (5, \'CustomWidget\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 249
    :goto_2
    :try_start_3
    const-string v1, "INSERT INTO EnumLSOOrientation(Id, Description ) VALUES (0, \'VERTICAL\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 250
    const-string v1, "INSERT INTO EnumLSOOrientation(Id, Description ) VALUES (1, \'HORIZONTAL\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 256
    :goto_3
    :try_start_4
    const-string v1, "ro.build.fingerprint"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 257
    .local v13, value:Ljava/lang/String;
    const-string v1, "unknown"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v13, v0

    .line 258
    :cond_0
    const-string v0, "INSERT INTO generic VALUES (\'PlatformSoftwareVersion\', \'%s\', %d);"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v13, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 266
    .end local v13           #value:Ljava/lang/String;
    :goto_4
    :try_start_5
    const-string v0, "APPLICATION_SIGNATURE"

    invoke-static {p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const-string v1, "APPLICATION_SIGNATURE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 269
    .local v9, cursor:Landroid/database/Cursor;
    const-string v0, "EdmStorageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLICATION_SIGNATURE Current Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    const-string v0, "adminUid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 272
    .local v8, adminUid:I
    const-string v0, "signature"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 275
    .local v12, sig:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v10, cv:Landroid/content/ContentValues;
    const-string v0, "signature"

    invoke-virtual {v10, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "adminUid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    const-string v0, "controlState"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string v0, "APPLICATION_SIGNATURE2"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    .line 284
    .end local v8           #adminUid:I
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v12           #sig:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 287
    :cond_1
    :goto_6
    return-void

    .line 220
    :catch_1
    move-exception v11

    .line 221
    .local v11, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    const-string v2, "doCreationOrUpdatePostCommands EX1:"

    invoke-static {v1, v2, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 234
    .end local v11           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v11

    .line 235
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    const-string v2, "doCreationOrUpdatePostCommands EX2:"

    invoke-static {v1, v2, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 281
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 282
    const-string v0, "DROP TABLE APPLICATION_SIGNATURE;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    .line 261
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_3
    move-exception v0

    goto/16 :goto_4

    .line 251
    :catch_4
    move-exception v1

    goto/16 :goto_3

    .line 244
    :catch_5
    move-exception v1

    goto/16 :goto_2
.end method

.method public doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 159
    const-string v4, "EdmStorageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doTableCreationOrUpdate Starting + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10f0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 168
    .local v3, parser:Landroid/content/res/XmlResourceParser;
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;-><init>(Lcom/android/server/enterprise/storage/EdmStorageHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 197
    .local v0, callback:Lcom/android/server/enterprise/storage/TableCallback;
    new-instance v2, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;

    invoke-direct {v2, v3, v0}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;-><init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/enterprise/storage/TableCallback;)V

    .line 198
    .local v2, enterpriseParser:Lcom/android/server/enterprise/storage/EnterpriseXmlParser;
    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->parseXML()V

    .line 199
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->doCreationOrUpdatePostCommands(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v0           #callback:Lcom/android/server/enterprise/storage/TableCallback;
    .end local v2           #enterpriseParser:Lcom/android/server/enterprise/storage/EnterpriseXmlParser;
    .end local v3           #parser:Landroid/content/res/XmlResourceParser;
    :goto_0
    const-string v4, "EdmStorageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doTableCreationOrUpdate Done + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "EdmStorageHelper"

    const-string v5, "doTableCreationOrUpdate EX:"

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "sTableName"
    .parameter "sColumn"
    .parameter "value"

    .prologue
    .line 981
    monitor-enter p0

    const/4 v11, -0x1

    .line 982
    .local v11, result:I
    const/4 v9, 0x0

    .line 984
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 985
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v1

    .line 988
    .local v2, columns:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 989
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 992
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 993
    if-eqz v9, :cond_0

    .line 994
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1001
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 1002
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1004
    :cond_1
    monitor-exit p0

    return v11

    .line 998
    :catch_0
    move-exception v10

    .line 999
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "EdmStorageHelper"

    const-string v5, "Failed on getAdminByField"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 981
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getAdminLUID(II)J
    .locals 12
    .parameter "containerId"
    .parameter "adminUid"

    .prologue
    .line 1545
    const-wide/16 v8, -0x1

    .line 1546
    .local v8, adminLUID:J
    const/4 v10, 0x0

    .line 1549
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1550
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "containerID=? AND adminID=?"

    .line 1551
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1554
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v1

    .line 1558
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "ADMIN"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1560
    if-eqz v10, :cond_0

    .line 1561
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1562
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1563
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 1570
    :cond_0
    if-eqz v10, :cond_1

    .line 1571
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1574
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-wide v8

    .line 1567
    :catch_0
    move-exception v11

    .line 1568
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "EdmStorageHelper"

    const-string v5, "Failed on getAdminLUID"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1570
    if-eqz v10, :cond_1

    .line 1571
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1570
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_2

    .line 1571
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method declared-synchronized getBlobByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 14
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "retColumn"

    .prologue
    .line 1072
    monitor-enter p0

    const/4 v12, 0x0

    .line 1073
    .local v12, result:[B
    const/4 v10, 0x0

    .line 1075
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1076
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p6, v3, v2

    .line 1079
    .local v3, columns:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminUid=? AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "=? "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1080
    .local v4, where:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p5, v5, v2

    .line 1083
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1085
    if-eqz v10, :cond_1

    .line 1086
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1087
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 1089
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v13, v12

    .line 1099
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #columns:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v12           #result:[B
    .local v13, result:[B
    :goto_0
    monitor-exit p0

    return-object v13

    .line 1092
    .end local v13           #result:[B
    .restart local v12       #result:[B
    :catch_0
    move-exception v11

    .line 1093
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "EdmStorageHelper"

    const-string v6, "Failed on getIntByAdminAndField"

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    if-eqz v10, :cond_2

    .line 1095
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1096
    const/4 v10, 0x0

    :cond_2
    move-object v13, v12

    .line 1099
    .end local v12           #result:[B
    .restart local v13       #result:[B
    goto :goto_0

    .line 1072
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #result:[B
    .restart local v12       #result:[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getContainerOwnerUid(I)I
    .locals 11
    .parameter "containerId"

    .prologue
    .line 1373
    const/4 v8, -0x1

    .line 1374
    .local v8, adminUid:I
    const/4 v9, 0x0

    .line 1377
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1378
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "containerID=?"

    .line 1379
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1382
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v1

    .line 1386
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "CONTAINER"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1388
    if-eqz v9, :cond_0

    .line 1389
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1390
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1391
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1398
    :cond_0
    if-eqz v9, :cond_1

    .line 1399
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1403
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    :goto_0
    return v8

    .line 1395
    :catch_0
    move-exception v10

    .line 1396
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "EdmStorageHelper"

    const-string v5, "Failed on getAdminLUID"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1398
    if-eqz v9, :cond_1

    .line 1399
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1398
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_2

    .line 1399
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 18
    .parameter "tableName"
    .parameter "cvWhereValues"

    .prologue
    .line 2089
    const/4 v11, 0x0

    .line 2090
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v9, -0x1

    .line 2093
    .local v9, cnt:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2094
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 2095
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*) from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2096
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 2097
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2098
    const-string v2, "EdmStorageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCount("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2131
    if-eqz v11, :cond_1

    .line 2132
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    move v10, v9

    .line 2136
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #cnt:I
    .local v10, cnt:I
    :goto_0
    return v10

    .line 2102
    .end local v10           #cnt:I
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #cnt:I
    :cond_2
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 2103
    .local v5, whereArgs:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 2104
    .local v17, where:Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v16

    .line 2105
    .local v16, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v14, 0x0

    .line 2107
    .local v14, index:I
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 2109
    .local v15, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v17, :cond_3

    .line 2110
    new-instance v17, Ljava/lang/StringBuilder;

    .end local v17           #where:Ljava/lang/StringBuilder;
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 2111
    .restart local v17       #where:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2115
    :goto_2
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v14

    .line 2116
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2113
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2128
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #index:I
    .end local v15           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v17           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v12

    .line 2129
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "EdmStorageHelper"

    const-string v4, "getCount() failed"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2131
    if-eqz v11, :cond_4

    .line 2132
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .end local v12           #e:Ljava/lang/Exception;
    :cond_4
    :goto_3
    move v10, v9

    .line 2136
    .end local v9           #cnt:I
    .restart local v10       #cnt:I
    goto/16 :goto_0

    .line 2119
    .end local v10           #cnt:I
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #whereArgs:[Ljava/lang/String;
    .restart local v9       #cnt:I
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v14       #index:I
    .restart local v16       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v17       #where:Ljava/lang/StringBuilder;
    :cond_5
    const/4 v2, 0x1

    :try_start_3
    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "COUNT(*)"

    aput-object v4, v3, v2

    .line 2122
    .local v3, columns:[Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2123
    if-eqz v11, :cond_6

    .line 2124
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2125
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2126
    const-string v2, "EdmStorageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCount("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2131
    :cond_6
    if-eqz v11, :cond_4

    .line 2132
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 2131
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #columns:[Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #index:I
    .end local v16           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v17           #where:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_7

    .line 2132
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method declared-synchronized getCursorByAdmin(Ljava/lang/String;J[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "sTableName"
    .parameter "admin"
    .parameter "columns"

    .prologue
    .line 1165
    monitor-enter p0

    const/4 v9, 0x0

    .line 1167
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1168
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "adminUid=? "

    .line 1169
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1172
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1180
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 1173
    :catch_0
    move-exception v10

    .line 1174
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "EdmStorageHelper"

    const-string v2, "Failed on getCursorByAdminAndField"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    if-eqz v9, :cond_0

    .line 1176
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1177
    const/4 v9, 0x0

    goto :goto_0

    .line 1165
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getCursorByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "columns"

    .prologue
    .line 1141
    monitor-enter p0

    const/4 v9, 0x0

    .line 1143
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1144
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adminUid=? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1145
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    aput-object p5, v4, v1

    .line 1148
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1156
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 1149
    :catch_0
    move-exception v10

    .line 1150
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "EdmStorageHelper"

    const-string v2, "Failed on getCursorByAdminAndField"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    if-eqz v9, :cond_0

    .line 1152
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1153
    const/4 v9, 0x0

    goto :goto_0

    .line 1141
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"
    .parameter "ReturnColumns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1671
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1672
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1673
    .local v16, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v14, 0x0

    .line 1674
    .local v14, count:I
    const/4 v5, 0x0

    .line 1675
    .local v5, where:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1676
    .local v11, buf:Ljava/lang/StringBuffer;
    const/4 v15, 0x0

    .line 1679
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1680
    :cond_0
    const/16 p3, 0x0

    .line 1689
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p3

    :try_start_0
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1690
    if-eqz v15, :cond_4

    .line 1691
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1692
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_3

    .line 1694
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1682
    .end local v18           #i:I
    :cond_1
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    .end local v11           #buf:Ljava/lang/StringBuffer;
    .local v12, buf:Ljava/lang/StringBuffer;
    move-object/from16 v10, p2

    .local v10, arr$:[Ljava/lang/String;
    :try_start_1
    array-length v0, v10

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v13, v10, v19

    .line 1684
    .local v13, column:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1683
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1686
    .end local v13           #column:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    const-string v4, " AND "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    move-object v11, v12

    .end local v12           #buf:Ljava/lang/StringBuffer;
    .restart local v11       #buf:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 1696
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v20           #len$:I
    .restart local v18       #i:I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1702
    .end local v18           #i:I
    :cond_4
    if-eqz v15, :cond_5

    .line 1703
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1706
    :cond_5
    :goto_4
    return-object v16

    .line 1699
    :catch_0
    move-exception v17

    .line 1700
    .local v17, e:Ljava/lang/Exception;
    :goto_5
    :try_start_2
    const-string v3, "EdmStorageHelper"

    const-string v4, "could not execute getDataByFields"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1702
    if-eqz v15, :cond_5

    .line 1703
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 1702
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_6
    if-eqz v15, :cond_6

    .line 1703
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    .line 1702
    .end local v11           #buf:Ljava/lang/StringBuffer;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v12       #buf:Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v3

    move-object v11, v12

    .end local v12           #buf:Ljava/lang/StringBuffer;
    .restart local v11       #buf:Ljava/lang/StringBuffer;
    goto :goto_6

    .line 1699
    .end local v11           #buf:Ljava/lang/StringBuffer;
    .restart local v12       #buf:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v17

    move-object v11, v12

    .end local v12           #buf:Ljava/lang/StringBuffer;
    .restart local v11       #buf:Ljava/lang/StringBuffer;
    goto :goto_5
.end method

.method declared-synchronized getIntByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "retColumn"

    .prologue
    .line 1040
    monitor-enter p0

    const/4 v12, -0x1

    .line 1041
    .local v12, result:I
    const/4 v10, 0x0

    .line 1043
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1044
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p6, v3, v2

    .line 1047
    .local v3, columns:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminUid=? AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "=? "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1048
    .local v4, where:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p5, v5, v2

    .line 1051
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1053
    if-eqz v10, :cond_1

    .line 1054
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1055
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1057
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v13, v12

    .line 1067
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #columns:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v12           #result:I
    .local v13, result:I
    :goto_0
    monitor-exit p0

    return v13

    .line 1060
    .end local v13           #result:I
    .restart local v12       #result:I
    :catch_0
    move-exception v11

    .line 1061
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "EdmStorageHelper"

    const-string v6, "Failed on getIntByAdminAndField"

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    if-eqz v10, :cond_2

    .line 1063
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1064
    const/4 v10, 0x0

    :cond_2
    move v13, v12

    .line 1067
    .end local v12           #result:I
    .restart local v13       #result:I
    goto :goto_0

    .line 1040
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #result:I
    .restart local v12       #result:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getStringByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "retColumn"

    .prologue
    .line 1104
    monitor-enter p0

    const/4 v12, 0x0

    .line 1105
    .local v12, result:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1108
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1109
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p6, v3, v2

    .line 1112
    .local v3, columns:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminUid=? AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "=? "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1113
    .local v4, where:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p5, v5, v2

    .line 1116
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1118
    if-eqz v10, :cond_1

    .line 1119
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1120
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1122
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #columns:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v12

    .line 1124
    :catch_0
    move-exception v11

    .line 1125
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "EdmStorageHelper"

    const-string v6, "Failed on getValueByAdminAndField"

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    if-eqz v10, :cond_1

    .line 1127
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1128
    const/4 v10, 0x0

    goto :goto_0

    .line 1104
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 17
    .parameter "sTableName"
    .parameter "column"
    .parameter "cvValues"

    .prologue
    .line 2146
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2147
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 2150
    .local v11, cv:Landroid/content/ContentValues;
    if-nez p3, :cond_0

    .line 2151
    const/4 v3, 0x0

    .line 2187
    :goto_0
    return-object v3

    .line 2154
    :cond_0
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 2155
    .local v4, columns:[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p2, v4, v3

    .line 2157
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2158
    .local v16, where:Ljava/lang/StringBuilder;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v3

    new-array v6, v3, [Ljava/lang/String;

    .line 2160
    .local v6, whereArgs:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v15

    .line 2161
    .local v15, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v13, 0x0

    .line 2163
    .local v13, index:I
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 2165
    .local v14, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v16, :cond_1

    .line 2166
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #where:Ljava/lang/StringBuilder;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2167
    .restart local v16       #where:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2171
    :goto_2
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v13

    .line 2172
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2169
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2175
    .end local v14           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    if-eqz v16, :cond_4

    .line 2176
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2178
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    .line 2179
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2180
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 2181
    new-instance v11, Landroid/content/ContentValues;

    .end local v11           #cv:Landroid/content/ContentValues;
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2182
    .restart local v11       #cv:Landroid/content/ContentValues;
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_4
    move-object v3, v11

    .line 2187
    goto/16 :goto_0
.end method

.method declared-synchronized getValueByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "retColumn"

    .prologue
    .line 1017
    monitor-enter p0

    const/4 v9, 0x0

    .line 1019
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1020
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p6, v2, v1

    .line 1023
    .local v2, columns:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminUid=? AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1024
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p5, v4, v1

    .line 1027
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1035
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 1028
    :catch_0
    move-exception v10

    .line 1029
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "EdmStorageHelper"

    const-string v5, "Failed on getValueByAdminAndField"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    if-eqz v9, :cond_0

    .line 1031
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1032
    const/4 v9, 0x0

    goto :goto_0

    .line 1017
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 11
    .parameter "sTableName"
    .parameter "sAdmin"
    .parameter "columns"

    .prologue
    const/4 v5, 0x0

    .line 762
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 763
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 764
    .local v9, cv:Landroid/content/ContentValues;
    const-string v3, "adminUid=? "

    .line 765
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    .local v4, whereArgs:[Ljava/lang/String;
    move-object v1, p1

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    .line 768
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 769
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 770
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 772
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 775
    .end local v10           #i:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 777
    :cond_1
    return-object v9
.end method

.method getValuesList(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "sTableName"
    .parameter "containerId"
    .parameter "columns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 786
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 787
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v10, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static {p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(I)Ljava/lang/String;

    move-result-object v3

    .local v3, selection:Ljava/lang/String;
    move-object v1, p1

    move-object v2, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 790
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 791
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 792
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 793
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 795
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 796
    .local v9, cv:Landroid/content/ContentValues;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v11, v1, :cond_1

    .line 797
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 799
    :cond_1
    invoke-virtual {v9}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 800
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 804
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v11           #i:I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 806
    :cond_4
    return-object v10
.end method

.method getValuesList(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "sTableName"
    .parameter "where"
    .parameter "whereArgs"
    .parameter "columns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 816
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 817
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v10, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 820
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 821
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 822
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 824
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 825
    .local v9, cv:Landroid/content/ContentValues;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v11, v1, :cond_1

    .line 826
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 828
    :cond_1
    invoke-virtual {v9}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 829
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 833
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v11           #i:I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 835
    :cond_4
    return-object v10
.end method

.method getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 6
    .parameter "sTableName"
    .parameter "columns"
    .parameter "cvValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 892
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v2, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v0

    .line 895
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 896
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 897
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 899
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 900
    .local v1, cv:Landroid/content/ContentValues;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 901
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 903
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 904
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 908
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #i:I
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 911
    :cond_4
    return-object v2
.end method

.method getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 19
    .parameter "sTableName"
    .parameter "columns"
    .parameter "cvValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 922
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 923
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .local v12, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-nez p3, :cond_1

    .line 971
    :cond_0
    :goto_0
    return-object v12

    .line 930
    :cond_1
    const/4 v6, 0x0

    .line 931
    .local v6, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 933
    .local v18, where:Ljava/lang/StringBuilder;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v3

    new-array v6, v3, [Ljava/lang/String;

    .line 937
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v17

    .line 938
    .local v17, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v15, 0x0

    .line 940
    .local v15, index:I
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 942
    .local v16, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v18, :cond_3

    .line 943
    new-instance v18, Ljava/lang/StringBuilder;

    .end local v18           #where:Ljava/lang/StringBuilder;
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 944
    .restart local v18       #where:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v15

    .line 949
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 946
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 952
    .end local v16           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    if-eqz v18, :cond_0

    .line 953
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 955
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 956
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 957
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 959
    :cond_5
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 960
    .local v11, cv:Landroid/content/ContentValues;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v13, v3, :cond_6

    .line 961
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 963
    :cond_6
    invoke-virtual {v11}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 964
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 968
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v13           #i:I
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method insertData(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "sTableName"
    .parameter "cv"

    .prologue
    .line 1856
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1857
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 1858
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1859
    const/4 v1, 0x1

    .line 1861
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "sTableName"
    .parameter "sAdmin"
    .parameter "sColumn"
    .parameter "sValue"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 504
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 505
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 507
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 511
    const-string v6, "0"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 512
    const-string v2, "adminUid=? "

    .line 513
    .local v2, where:Ljava/lang/String;
    new-array v3, v4, [Ljava/lang/String;

    aput-object p2, v3, v5

    .line 516
    .local v3, whereArgs:[Ljava/lang/String;
    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 535
    .end local v2           #where:Ljava/lang/String;
    .end local v3           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 521
    :cond_1
    invoke-virtual {v1, p1, v0, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_0

    .line 527
    :cond_2
    const-string v6, "0"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 528
    const-string v6, "adminUid"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_3
    invoke-virtual {v1, p1, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    move v4, v5

    .line 535
    goto :goto_0
.end method

.method insertOrUpdateGenericTable(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "containerId"
    .parameter "Name"
    .parameter "Value"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1585
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1586
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1588
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "name=?"

    .line 1589
    .local v2, where:Ljava/lang/String;
    new-array v3, v4, [Ljava/lang/String;

    aput-object p2, v3, v5

    .line 1593
    .local v3, whereArgs:[Ljava/lang/String;
    if-ltz p1, :cond_0

    .line 1594
    const-string v2, "name=? and containerID=?"

    .line 1595
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    .line 1596
    aput-object p2, v3, v5

    .line 1597
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 1600
    :cond_0
    const-string v6, "value"

    invoke-virtual {v0, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    const-string v6, "generic"

    invoke-virtual {v1, v6, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 1613
    :cond_1
    :goto_0
    return v4

    .line 1605
    :cond_2
    const-string v6, "name"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    if-ltz p1, :cond_3

    .line 1607
    const-string v6, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1610
    :cond_3
    const-string v6, "generic"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move v4, v5

    .line 1613
    goto :goto_0
.end method

.method public insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 4
    .parameter "sTableName"
    .parameter "cvValues"

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 641
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 642
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 644
    .local v1, rowId:I
    return v1
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    const-string v2, "Foreign Key Config failed"

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 117
    const-string v0, "EdmStorageHelper"

    const-string v1, "Downgrading not supported"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 132
    return-void
.end method

.method putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 14
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"
    .parameter "cv"

    .prologue
    .line 1753
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1755
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 1756
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1757
    const/4 v9, 0x0

    .line 1758
    .local v9, where:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1759
    .local v3, buf:Ljava/lang/StringBuffer;
    move-object/from16 v2, p2

    .local v2, arr$:[Ljava/lang/String;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v2, v7

    .line 1760
    .local v4, column:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "= ? AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1759
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1762
    .end local v4           #column:Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    const-string v11, " AND "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1764
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v5, p1, v0, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    .line 1765
    const/4 v10, 0x1

    .line 1775
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #buf:Ljava/lang/StringBuffer;
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #where:Ljava/lang/String;
    :goto_1
    return v10

    .line 1769
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v5, p1, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    .line 1770
    const/4 v10, 0x1

    goto :goto_1

    .line 1772
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v6

    .line 1773
    .local v6, e:Ljava/lang/Exception;
    const-string v10, "EdmStorageHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "could not execute putDataByFields"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 9
    .parameter "sTableName"
    .parameter "cvValues"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 684
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 685
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereInStr(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, whereClause:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 687
    const/4 v5, 0x0

    invoke-virtual {v0, p1, p2, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 697
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #whereClause:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 690
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #whereClause:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    move v3, v4

    .line 693
    goto :goto_0

    .line 694
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #whereClause:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 695
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "EDM"

    const-string v5, "Failled on putValues(String sTableName, ContentValues cvValues)"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 697
    goto :goto_0
.end method

.method putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 12
    .parameter "sTableName"
    .parameter "cvUpdateValues"
    .parameter "cvWhereValues"

    .prologue
    .line 709
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 711
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 712
    const/4 v8, 0x0

    .line 752
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v8

    .line 715
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 717
    const/4 v7, 0x0

    .line 718
    .local v7, whereArgs:[Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 720
    .local v6, where:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 721
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 722
    invoke-virtual {p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    .line 723
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 725
    .local v3, index:I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 727
    .local v4, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v6, :cond_1

    .line 728
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #where:Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    .restart local v6       #where:Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :goto_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 734
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 731
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 748
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #index:I
    .end local v4           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6           #where:Ljava/lang/StringBuilder;
    .end local v7           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 749
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "EDM"

    const-string v9, "Failed on putValues(String sTableName, ContentValues cvUpdateValues, ContentValues cvWhereValues)"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 738
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6       #where:Ljava/lang/StringBuilder;
    .restart local v7       #whereArgs:[Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 739
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, p1, p2, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_3

    .line 740
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 744
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v0, p1, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 745
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 747
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method putValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 10
    .parameter "sTableName"
    .parameter "sAdmin"
    .parameter "cvValues"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 656
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 657
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "adminUid=? "

    .line 658
    .local v2, where:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v3, v6

    .line 661
    .local v3, whereArgs:[Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 662
    invoke-virtual {v0, p1, p3, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 674
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #where:Ljava/lang/String;
    .end local v3           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 665
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #where:Ljava/lang/String;
    .restart local v3       #whereArgs:[Ljava/lang/String;
    :cond_1
    const-string v6, "adminUid"

    invoke-virtual {p3, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const/4 v6, 0x0

    invoke-virtual {v0, p1, v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    move v4, v5

    .line 669
    goto :goto_0

    .line 670
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #where:Ljava/lang/String;
    .end local v3           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 671
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "EDM"

    const-string v6, "Failled on putValues(String sTableName, String sAdmin, ContentValues cvValues)"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 674
    goto :goto_0
.end method

.method putValuesForAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 9
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "cvValues"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1193
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1194
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminUid=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1195
    .local v1, where:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object p5, v2, v3

    .line 1198
    .local v2, whereArgs:[Ljava/lang/String;
    invoke-direct {p0, p6}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 1199
    invoke-virtual {v0, p1, p6, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return v3

    .line 1203
    :cond_1
    const-string v5, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p6, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p6, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5, p6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    move v3, v4

    .line 1208
    goto :goto_0
.end method

.method putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "sTableName"
    .parameter "cvValues"

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 627
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 628
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 629
    const/4 v1, 0x1

    .line 631
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    .line 2197
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 2198
    .local v3, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4, v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2201
    const/4 v0, 0x0

    .line 2203
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2204
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2205
    if-eqz v0, :cond_1

    .line 2206
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 2207
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v4, v0

    .line 2219
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v4

    .line 2210
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2218
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_1
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2219
    const/4 v4, 0x0

    goto :goto_0

    .line 2212
    :catch_0
    move-exception v2

    .line 2214
    .local v2, e:Ljava/lang/Exception;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 3
    .parameter "sTableName"

    .prologue
    const/4 v2, 0x0

    .line 1842
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1843
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 1844
    .local v1, result:Z
    invoke-virtual {v0, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1845
    const/4 v1, 0x1

    .line 1847
    :cond_0
    return v1
.end method

.method removeAdmin(I)Z
    .locals 7
    .parameter "iAdmin"

    .prologue
    .line 1297
    const/4 v2, 0x0

    .line 1299
    .local v2, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1300
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "adminUid=? AND canRemove=? "

    .line 1302
    .local v3, where:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    .line 1305
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v5, "ADMIN_INFO"

    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 1306
    const/4 v2, 0x1

    .line 1313
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :goto_0
    return v2

    .line 1308
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1310
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1311
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on removeAdmin"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method removeAdminLUID(II)Z
    .locals 7
    .parameter "containerId"
    .parameter "adminUid"

    .prologue
    .line 1519
    const/4 v2, 0x0

    .line 1521
    .local v2, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1523
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "containerID=? AND adminID=?"

    .line 1524
    .local v3, where:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1528
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v5, "ADMIN"

    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1529
    const/4 v2, 0x1

    .line 1536
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :goto_0
    return v2

    .line 1531
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1533
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1534
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on removeAdminLUID"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method removeByAdmin(Ljava/lang/String;J)Z
    .locals 6
    .parameter "sTableName"
    .parameter "admin"

    .prologue
    .line 1821
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1822
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "adminUid=? "

    .line 1823
    .local v2, where:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1827
    .local v3, whereArgs:[Ljava/lang/String;
    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 1828
    const/4 v1, 0x1

    .line 1832
    .local v1, result:Z
    :goto_0
    return v1

    .line 1830
    .end local v1           #result:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method removeByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"

    .prologue
    .line 1219
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1220
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminUid=? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1221
    .local v2, where:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    .line 1225
    .local v3, whereArgs:[Ljava/lang/String;
    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 1226
    const/4 v1, 0x1

    .line 1230
    .local v1, result:Z
    :goto_0
    return v1

    .line 1228
    .end local v1           #result:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method removeByFields(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 9
    .parameter "sTableName"
    .parameter "containerId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1927
    .local p3, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1929
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1930
    .local v1, columnName:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1932
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1933
    .local v5, where:Ljava/lang/StringBuffer;
    invoke-static {p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(I)Ljava/lang/String;

    move-result-object v7

    .line 1934
    .local v7, whereIn:Ljava/lang/String;
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v8

    new-array v6, v8, [Ljava/lang/String;

    .line 1936
    .local v6, whereArgs:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1939
    .local v3, i:I
    if-eqz v7, :cond_0

    .line 1940
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1941
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1942
    const-string v8, " AND "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1945
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1946
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1947
    .local v0, column:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1948
    const-string v8, " =? "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1949
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v3

    .line 1950
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1951
    const-string v8, " AND "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1952
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1954
    .end local v0           #column:Ljava/lang/String;
    :cond_2
    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1956
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, p1, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    return v8
.end method

.method removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 11
    .parameter "sTableName"
    .parameter "cvValues"

    .prologue
    .line 1872
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1873
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 1876
    .local v5, result:Z
    if-nez p2, :cond_1

    .line 1881
    :try_start_0
    const-string v9, "1"

    const/4 v10, 0x0

    invoke-virtual {v0, p1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 1882
    const/4 v5, 0x1

    .line 1921
    :goto_0
    return v5

    .line 1884
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 1887
    :cond_1
    const/4 v8, 0x0

    .line 1888
    .local v8, whereArgs:[Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1890
    .local v7, where:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 1891
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v9

    new-array v8, v9, [Ljava/lang/String;

    .line 1894
    :cond_2
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    .line 1895
    .local v6, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 1897
    .local v3, index:I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1899
    .local v4, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v7, :cond_3

    .line 1900
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #where:Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1901
    .restart local v7       #where:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    :goto_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 1906
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1903
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1918
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #index:I
    .end local v4           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7           #where:Ljava/lang/StringBuilder;
    .end local v8           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1919
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "EDM"

    const-string v10, "Failled on removeByFilter(String sTableName, ContentValues cvValues)"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1908
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #index:I
    .restart local v6       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v7       #where:Ljava/lang/StringBuilder;
    .restart local v8       #whereArgs:[Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_6

    .line 1909
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, p1, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    if-lez v9, :cond_5

    .line 1910
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1912
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1915
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method removeContainer(I)Z
    .locals 7
    .parameter "containerId"

    .prologue
    .line 1349
    const/4 v2, 0x0

    .line 1351
    .local v2, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1352
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "containerID=?"

    .line 1353
    .local v3, where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1357
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v5, "CONTAINER"

    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 1358
    const/4 v2, 0x1

    .line 1365
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :goto_0
    return v2

    .line 1360
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1362
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1363
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on removeContainer"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method select(Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "sTableName"
    .parameter "containerId"
    .parameter "sColumn"

    .prologue
    .line 588
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 589
    .local v11, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v11}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 592
    const/4 v9, 0x0

    .line 594
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 595
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v2, v1

    .line 598
    .local v2, columns:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(I)Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 602
    if-eqz v9, :cond_1

    .line 603
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 604
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v9

    .line 617
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 607
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 617
    const/4 v1, 0x0

    goto :goto_0

    .line 609
    :catch_0
    move-exception v10

    .line 610
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "EDM"

    const-string v4, "Failed on Cursor select(String sTableName, int containerId, String sColumn)"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 613
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method select(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .parameter "tablename"
    .parameter "containerId"
    .parameter "returnColumns"
    .parameter
    .parameter "orderBy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1963
    .local p4, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1964
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 1965
    .local v11, columnName:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1967
    .local v13, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 1968
    .local v14, where:Ljava/lang/StringBuffer;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(I)Ljava/lang/String;

    move-result-object v15

    .line 1969
    .local v15, whereIn:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 1971
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1974
    .local v12, i:I
    if-eqz v15, :cond_0

    .line 1975
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1976
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1977
    const-string v2, " AND "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1980
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1981
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1982
    .local v10, column:Ljava/lang/String;
    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1984
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v12

    .line 1985
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1986
    const-string v2, " AND "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1987
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1989
    .end local v10           #column:Ljava/lang/String;
    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 1990
    :cond_3
    const-string v2, ";"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1994
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1997
    :goto_1
    return-object v2

    :cond_4
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1
.end method

.method select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "sTableName"
    .parameter "sColumn"
    .parameter "sAdmin"

    .prologue
    .line 545
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 546
    .local v11, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v11}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 549
    const/4 v9, 0x0

    .line 551
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 552
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    .line 555
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "adminUid=? "

    .line 556
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 559
    .local v4, whereArgs:[Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 560
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    move-result-object v9

    .line 564
    :goto_0
    if-eqz v9, :cond_2

    .line 565
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 566
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v9

    .line 578
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    :goto_1
    return-object v1

    .line 562
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 569
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 578
    const/4 v1, 0x0

    goto :goto_1

    .line 571
    :catch_0
    move-exception v10

    .line 572
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "EDM"

    const-string v5, "Failed on Cursor select(String sTableName, String sColumn, String sAdmin)"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 574
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "tableName"
    .parameter "column"
    .parameter "value"
    .parameter "columnResult"

    .prologue
    .line 1719
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1720
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 1721
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v2, v1

    .line 1724
    .local v2, columns:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1725
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 1728
    .local v4, whereArgs:[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1729
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    move-result-object v9

    .line 1733
    :goto_0
    if-eqz v9, :cond_2

    .line 1734
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1743
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_1
    return-object v9

    .line 1731
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 1737
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1739
    :catch_0
    move-exception v10

    .line 1740
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "EDM"

    const-string v5, "Cursor select(String tableName, String column, String value, String columnResult)"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "tableName"
    .parameter "column"
    .parameter "value"
    .parameter "resultColumns"

    .prologue
    .line 2030
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2031
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 2032
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2033
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 2036
    .local v4, whereArgs:[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2037
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    move-result-object v9

    .line 2042
    :goto_0
    if-eqz v9, :cond_2

    .line 2043
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2053
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_1
    return-object v9

    .line 2039
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 2046
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2053
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    .line 2048
    :catch_0
    move-exception v10

    .line 2049
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cursor select(String tableName, String column, String value, String columnResult)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method select(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;
    .locals 15
    .parameter "sTableName"
    .parameter "columns"
    .parameter "cvValues"

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 848
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p3, :cond_0

    .line 849
    const/4 v9, 0x0

    .line 882
    :goto_0
    return-object v9

    .line 852
    :cond_0
    const/4 v5, 0x0

    .line 853
    .local v5, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 855
    .local v14, where:Ljava/lang/StringBuilder;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 856
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 859
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v13

    .line 860
    .local v13, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v11, 0x0

    .line 862
    .local v11, index:I
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 864
    .local v12, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v14, :cond_2

    .line 865
    new-instance v14, Ljava/lang/StringBuilder;

    .end local v14           #where:Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    .restart local v14       #where:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    :goto_2
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v11

    .line 871
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 868
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 874
    .end local v12           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    if-eqz v14, :cond_4

    .line 875
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 877
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 878
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    goto/16 :goto_0

    .line 882
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public select(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "tableName"
    .parameter "whereColums"
    .parameter "whereArgs"
    .parameter "resultColumns"

    .prologue
    .line 2060
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2061
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 2062
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 2063
    .local v12, where:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v1, p2

    if-ge v11, v1, :cond_3

    .line 2064
    if-nez v12, :cond_0

    .line 2065
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #where:Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2066
    .restart local v12       #where:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2068
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2079
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #i:I
    .end local v12           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v10

    .line 2080
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor select(String tableName, String column, String value, String columnResult)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    .end local v10           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    const/4 v9, 0x0

    :cond_2
    return-object v9

    .line 2071
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #i:I
    .restart local v12       #where:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2073
    if-eqz v9, :cond_1

    .line 2074
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 2077
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method selectGenericTable(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "containerId"
    .parameter "name"

    .prologue
    const/4 v12, 0x0

    .line 1623
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 1624
    .local v11, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v11}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1628
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1630
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "value"

    aput-object v5, v2, v1

    .line 1633
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "name=?"

    .line 1634
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    .line 1638
    .local v4, whereArgs:[Ljava/lang/String;
    if-ltz p1, :cond_0

    .line 1639
    const-string v3, "name=? and containerID=?"

    .line 1641
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    .line 1642
    const/4 v1, 0x0

    aput-object p2, v4, v1

    .line 1643
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1646
    :cond_0
    const-string v1, "generic"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1648
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 1649
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1650
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1660
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v9

    .line 1653
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v9, v12

    .line 1660
    goto :goto_0

    .line 1655
    :catch_0
    move-exception v10

    .line 1656
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    const-string v5, "Failed on selectGenericTable"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    .locals 8
    .parameter "tablename"
    .parameter "toBeUpdated"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .line 2004
    .local p3, whereParameters:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2006
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2007
    .local v5, where:Ljava/lang/StringBuffer;
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 2008
    .local v6, whereArgs:[Ljava/lang/String;
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2009
    .local v4, set:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2011
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 2013
    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2014
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2015
    .local v0, columnAndOperator:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2016
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v2

    .line 2017
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2018
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2019
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2021
    .end local v0           #columnAndOperator:Ljava/lang/String;
    :cond_1
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2023
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, p1, p2, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    return v7
.end method

.method updateAdminLUID(III)Z
    .locals 11
    .parameter "containerId"
    .parameter "oldAdminUid"
    .parameter "newAdminUid"

    .prologue
    const/4 v6, 0x1

    .line 1480
    const/4 v3, 0x0

    .line 1482
    .local v3, result:Z
    if-nez p3, :cond_0

    .line 1483
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->removeAdminLUID(II)Z

    .line 1510
    :goto_0
    return v6

    .line 1487
    :cond_0
    if-nez p2, :cond_1

    .line 1488
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addAdminLUID(II)Z

    move-result v6

    goto :goto_0

    .line 1491
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1493
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1494
    .local v0, cv:Landroid/content/ContentValues;
    const-string v6, "adminUid"

    int-to-long v7, p3

    int-to-long v9, p1

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->translateToAdminLUID(JJ)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1495
    const-string v6, "adminID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1497
    const-string v4, "containerID=? AND adminID=?"

    .line 1498
    .local v4, where:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1502
    .local v5, whereArgs:[Ljava/lang/String;
    const-string v6, "ADMIN"

    invoke-virtual {v1, v6, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1503
    const/4 v3, 0x1

    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :goto_1
    move v6, v3

    .line 1510
    goto :goto_0

    .line 1505
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #where:Ljava/lang/String;
    .restart local v5       #whereArgs:[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1507
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1508
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "EdmStorageHelper"

    const-string v7, "Failed on updateAdminLUID"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method updateContainerOwnerUid(II)Z
    .locals 9
    .parameter "containerId"
    .parameter "newAdminUid"

    .prologue
    const/4 v7, 0x1

    .line 1411
    const/4 v4, 0x0

    .line 1413
    .local v4, result:Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getContainerOwnerUid(I)I

    move-result v3

    .line 1414
    .local v3, oldAdminUid:I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_1

    .line 1416
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addContainer(II)Z

    move-result v7

    .line 1441
    .end local v3           #oldAdminUid:I
    :cond_0
    :goto_0
    return v7

    .line 1419
    .restart local v3       #oldAdminUid:I
    :cond_1
    if-eq v3, p2, :cond_0

    .line 1423
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1425
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1426
    .local v0, cv:Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1428
    const-string v5, "containerID=?"

    .line 1429
    .local v5, where:Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1433
    .local v6, whereArgs:[Ljava/lang/String;
    const-string v7, "CONTAINER"

    invoke-virtual {v1, v7, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_2

    .line 1434
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->updateAdminLUID(III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #oldAdminUid:I
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    :goto_1
    move v7, v4

    .line 1441
    goto :goto_0

    .line 1436
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #oldAdminUid:I
    .restart local v5       #where:Ljava/lang/String;
    .restart local v6       #whereArgs:[Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 1438
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #oldAdminUid:I
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1439
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "EdmStorageHelper"

    const-string v8, "Failed on addContainer"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method