.class public Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;
.super Ljava/lang/Object;
.source "CrashAnrDetector.java"


# static fields
.field public static final ANR_DATA_TAG:Ljava/lang/String; = "data_app_anr"

.field public static final ANR_SYSTEM_TAG:Ljava/lang/String; = "system_app_anr"

.field private static final BYTES_FROM_DROPBOX:I = 0xbb8

.field public static final JAVA_DATA_CRASH_TAG:Ljava/lang/String; = "data_app_crash"

.field public static final JAVA_SYSTEM_CRASH_TAG:Ljava/lang/String; = "system_app_crash"

.field public static final NATIVE_CRASH_TAG:Ljava/lang/String; = "SYSTEM_TOMBSTONE"

.field private static final TAG:Ljava/lang/String; = "CrashAnrDetector"

.field private static final mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDatabaseStorage:Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

.field private mDropboxManager:Landroid/os/DropBoxManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageMonitor:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;

    .line 76
    sget-object v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;

    const-string v1, "system_app_crash"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;

    const-string v1, "data_app_crash"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;

    const-string v1, "system_app_anr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;

    const-string v1, "data_app_anr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;

    const-string v1, "SYSTEM_TOMBSTONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v1, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$1;

    invoke-direct {v1, p0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$1;-><init>(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V

    iput-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    new-instance v1, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$2;

    invoke-direct {v1, p0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$2;-><init>(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V

    iput-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mPackageMonitor:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;

    .line 129
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 133
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    iput-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDropboxManager:Landroid/os/DropBoxManager;

    .line 134
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->getInstance(Landroid/content/Context;)Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDatabaseStorage:Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

    .line 135
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mPackageMonitor:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;->register(Landroid/content/Context;)V

    .line 136
    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->updateAppInfoList()V

    .line 137
    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->processDropBoxEntry(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->updateAppInfoList()V

    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    if-eqz p1, :cond_1

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v2, sb:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 159
    .local v1, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v0       #line:Ljava/lang/String;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-object v3

    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method private getColumnForTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "tag"

    .prologue
    .line 172
    const-string v0, "system_app_crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data_app_crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    const-string v0, "javaCrash"

    .line 179
    :goto_0
    return-object v0

    .line 174
    :cond_1
    const-string v0, "SYSTEM_TOMBSTONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-string v0, "nativeCrash"

    goto :goto_0

    .line 176
    :cond_2
    const-string v0, "system_app_anr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "data_app_anr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    :cond_3
    const-string v0, "anr"

    goto :goto_0

    .line 179
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDropBoxManager()Landroid/os/DropBoxManager;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDropboxManager:Landroid/os/DropBoxManager;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDropboxManager:Landroid/os/DropBoxManager;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDropboxManager:Landroid/os/DropBoxManager;

    return-object v0
.end method

.method private final declared-synchronized getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "processName"

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mAppInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 185
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 184
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private processDropBoxEntry(Ljava/lang/String;J)V
    .locals 15
    .parameter "tag"
    .parameter "timestamp"

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->getDropBoxManager()Landroid/os/DropBoxManager;

    move-result-object v12

    if-nez v12, :cond_0

    .line 255
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v12, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDropboxManager:Landroid/os/DropBoxManager;

    const-wide/16 v13, 0x1

    sub-long v13, p2, v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13, v14}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v2

    .line 204
    .local v2, e:Landroid/os/DropBoxManager$Entry;
    if-nez v2, :cond_1

    .line 205
    const-string v12, "CrashAnrDetector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NO DROPBOX ENTRY for :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_1
    const-string v12, "SYSTEM_TOMBSTONE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "data_app_anr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "system_app_anr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 213
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 214
    .local v6, is:Ljava/io/InputStream;
    invoke-direct {p0, v6}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 215
    .local v10, temp:Ljava/lang/String;
    const-string v12, "---"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 216
    .local v5, idx:I
    if-gez v5, :cond_4

    .line 217
    move-object v11, v10

    .line 224
    .end local v5           #idx:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v10           #temp:Ljava/lang/String;
    .local v11, text:Ljava/lang/String;
    :goto_1
    const-string v12, "CrashAnrDetector"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_2
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 231
    const-string v7, "badProcess"

    .line 232
    .local v7, pName:Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 233
    const/4 v12, 0x0

    const/4 v13, 0x7

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 235
    .local v9, subStr:Ljava/lang/String;
    const-string v12, "Process"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 237
    const/16 v12, 0x8

    const/16 v13, 0xa

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 238
    const-string v12, "CrashAnrDetector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v9           #subStr:Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 254
    invoke-direct {p0, v7}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-direct {p0, v12, v0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->storeEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v7           #pName:Ljava/lang/String;
    .end local v11           #text:Ljava/lang/String;
    .restart local v5       #idx:I
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v10       #temp:Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v10, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .restart local v11       #text:Ljava/lang/String;
    goto :goto_1

    .line 221
    .end local v5           #idx:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v10           #temp:Ljava/lang/String;
    .end local v11           #text:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 222
    .local v3, ex:Ljava/io/IOException;
    const/16 v12, 0xbb8

    invoke-virtual {v2, v12}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #text:Ljava/lang/String;
    goto :goto_1

    .line 226
    .end local v3           #ex:Ljava/io/IOException;
    .end local v11           #text:Ljava/lang/String;
    :cond_5
    const/16 v12, 0xbb8

    invoke-virtual {v2, v12}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #text:Ljava/lang/String;
    goto :goto_2

    .line 241
    .restart local v7       #pName:Ljava/lang/String;
    .restart local v9       #subStr:Ljava/lang/String;
    :cond_6
    const-string v12, ">>>"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 242
    .local v4, firstIdx:I
    const-string v12, "<<<"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 244
    .local v8, secondIdx:I
    if-le v8, v4, :cond_7

    if-lez v4, :cond_7

    .line 245
    add-int/lit8 v12, v4, 0x4

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 246
    const-string v12, "CrashAnrDetector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 248
    :cond_7
    const-string v12, "CrashAnrDetector"

    const-string v13, "failed to find process name"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v7, "Not Available"

    goto :goto_3
.end method

.method private storeEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "packageName"
    .parameter "tag"

    .prologue
    const/4 v9, 0x0

    .line 258
    const-string v6, "CrashAnrDetector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storeEvent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v5, where:Landroid/content/ContentValues;
    const-string v6, "packageName"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0, p2}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->getColumnForTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, column:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v9

    .line 265
    .local v1, columns:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDatabaseStorage:Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

    const-string v7, "APPLICATION"

    invoke-virtual {v6, v7, v1, v5}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 268
    .local v2, existing:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 269
    .local v3, update:Landroid/content/ContentValues;
    const-string v6, "packageName"

    invoke-virtual {v3, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v4, 0x1

    .line 271
    .local v4, value:I
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 272
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 273
    add-int/lit8 v4, v4, 0x1

    .line 275
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    iget-object v6, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDatabaseStorage:Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

    const-string v7, "APPLICATION"

    invoke-virtual {v6, v7, v5, v3}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 277
    return-void
.end method

.method private final declared-synchronized updateAppInfoList()V
    .locals 2

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mAppInfoList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public collectApplicationCrashAnr(Ljava/lang/String;)Lcom/sec/analytics/data/collection/serviceif/ApplicationBugInfo;
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 286
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .local v3, where:Landroid/content/ContentValues;
    const-string v4, "packageName"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "javaCrash"

    aput-object v4, v1, v6

    const/4 v4, 0x1

    const-string v5, "nativeCrash"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "anr"

    aput-object v5, v1, v4

    .line 291
    .local v1, columns:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDatabaseStorage:Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

    const-string v5, "APPLICATION"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 293
    .local v2, existing:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 294
    new-instance v0, Lcom/sec/analytics/data/collection/serviceif/ApplicationBugInfo;

    invoke-direct {v0, p1}, Lcom/sec/analytics/data/collection/serviceif/ApplicationBugInfo;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, abi:Lcom/sec/analytics/data/collection/serviceif/ApplicationBugInfo;
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "javaCrash"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/analytics/data/collection/serviceif/ApplicationBugInfo;->setJavaCrash(I)V

    .line 296
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "nativeCrash"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/analytics/data/collection/serviceif/ApplicationBugInfo;->setNativeCrash(I)V

    .line 297
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "anr"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/analytics/data/collection/serviceif/ApplicationBugInfo;->setAnr(I)V

    .line 300
    .end local v0           #abi:Lcom/sec/analytics/data/collection/serviceif/ApplicationBugInfo;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
