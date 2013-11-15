.class public Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;
.super Ljava/lang/Object;
.source "LogcatDataCollector.java"

# interfaces
.implements Lcom/sec/analytics/data/collection/serviceif/LogCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$1;,
        Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LogcatDataCollector"

.field private static final mFormatParserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;",
            ">;"
        }
    .end annotation
.end field

.field private static final mGroupPrefixMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTagNameGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

.field private mCallback:Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;

.field private mLogGroups:I

.field private mLogcatReader:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

.field private mNewProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

.field private mParser:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mFormatParserMap:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mGroupPrefixMap:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mTagNameGroupMap:Ljava/util/Map;

    .line 123
    sget-object v0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mFormatParserMap:Ljava/util/Map;

    const-string v1, "threadtime"

    sget-object v2, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->THREADTIME_FORMAT_PARSER:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mGroupPrefixMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "300"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mGroupPrefixMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "701"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget-object v0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mFormatParserMap:Ljava/util/Map;

    const-string v1, "threadtime"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mParser:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->invokeLogCollectorCallback(Ljava/lang/String;)V

    return-void
.end method

.method private getFilterSpecs(I)Ljava/util/List;
    .locals 9
    .parameter "logGroups"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, filterSpecList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mGroupPrefixMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 159
    .local v1, i:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/2addr v7, p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 161
    sget-object v7, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mGroupPrefixMap:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 163
    .local v4, prefix:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/analytics/data/collection/logcat/EventLogTags;->getTagNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 165
    .local v6, tagNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 167
    .local v5, tagName:Ljava/lang/String;
    sget-object v7, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mTagNameGroupMap:Ljava/util/Map;

    invoke-interface {v7, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    .end local v1           #i:Ljava/lang/Integer;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #prefix:Ljava/lang/String;
    .end local v5           #tagName:Ljava/lang/String;
    .end local v6           #tagNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v0
.end method

.method private internalStartLogCollection(IZLcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;)V
    .locals 7
    .parameter "logGroups"
    .parameter "clearBuffer"
    .parameter "processor"

    .prologue
    .line 180
    iput p1, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mLogGroups:I

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->getFilterSpecs(I)Ljava/util/List;

    move-result-object v6

    .line 182
    .local v6, filterSpec:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    const-string v1, "threadtime"

    const-string v2, "events"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;)V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mLogcatReader:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    .line 184
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mLogcatReader:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    invoke-virtual {v0}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->startReadingLogs()V

    .line 185
    return-void
.end method

.method private invokeLogCollectorCallback(Ljava/lang/String;)V
    .locals 4
    .parameter "record"

    .prologue
    .line 190
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mParser:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;

    invoke-interface {v3, p1}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, tagName:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mTagNameGroupMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 197
    .local v1, logGroup:I
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mCallback:Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;

    invoke-interface {v3, v1, p1}, Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;->processLog(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1           #logGroup:I
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private mergeLogs(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, oldList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, newList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    add-int v6, v7, v8

    .line 207
    .local v6, total:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v3, mergedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 209
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mParser:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v8, v7}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 210
    .local v5, o:Ljava/util/Date;
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mParser:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v8, v7}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordParser;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 211
    .local v4, n:Ljava/util/Date;
    invoke-virtual {v5, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 212
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 218
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 221
    .end local v4           #n:Ljava/util/Date;
    .end local v5           #o:Ljava/util/Date;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 222
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 224
    return-object v3
.end method

.method private supportedLogGroups(I)Z
    .locals 2
    .parameter "logGroups"

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->getSupportedLogGroups()I

    move-result v0

    .line 229
    .local v0, supported:I
    and-int v1, v0, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getActiveLogGroups()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mLogGroups:I

    return v0
.end method

.method public getSupportedLogGroups()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x3

    return v0
.end method

.method public registerLogCollectorCallback(Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mCallback:Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;

    .line 251
    return-void
.end method

.method public restartLogCollection(I)V
    .locals 8
    .parameter "logGroups"

    .prologue
    const/4 v7, 0x1

    .line 255
    iget v5, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mLogGroups:I

    if-ne v5, p1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mLogcatReader:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    .line 260
    .local v3, oldReader:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;
    iget-object v2, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mActiveProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

    .line 262
    .local v2, oldProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;
    #setter for: Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->bufferSwitch:Z
    invoke-static {v2, v7}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->access$102(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;Z)Z

    .line 265
    new-instance v5, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;-><init>(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$1;)V

    iput-object v5, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mActiveProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

    .line 266
    iget-object v5, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mActiveProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

    #setter for: Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->bufferSwitch:Z
    invoke-static {v5, v7}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->access$102(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;Z)Z

    .line 267
    iget-object v5, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mActiveProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

    invoke-direct {p0, p1, v7, v5}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->internalStartLogCollection(IZLcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;)V

    .line 270
    iget-object v5, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mActiveProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

    #getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->mStartCondition:Landroid/os/ConditionVariable;
    invoke-static {v5}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->access$300(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;)Landroid/os/ConditionVariable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ConditionVariable;->block()V

    .line 273
    invoke-virtual {v3}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->stopReadingLogs()V

    .line 276
    #getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->mFinishCondition:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->access$400(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;)Landroid/os/ConditionVariable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ConditionVariable;->block()V

    .line 280
    iget-object v5, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mActiveProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

    #getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->mMergeCondition:Landroid/os/ConditionVariable;
    invoke-static {v5}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->access$500(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;)Landroid/os/ConditionVariable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ConditionVariable;->close()V

    .line 283
    #getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->buffer:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->access$600(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mActiveProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

    #getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->buffer:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->access$600(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mergeLogs(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 284
    .local v1, mergedLogs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 285
    .local v4, record:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->invokeLogCollectorCallback(Ljava/lang/String;)V

    goto :goto_1

    .line 288
    .end local v4           #record:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mActiveProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

    #getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->mMergeCondition:Landroid/os/ConditionVariable;
    invoke-static {v5}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->access$500(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;)Landroid/os/ConditionVariable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ConditionVariable;->open()V

    .line 289
    iget-object v5, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mActiveProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->bufferSwitch:Z
    invoke-static {v5, v6}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;->access$102(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;Z)Z

    goto :goto_0
.end method

.method public startLogCollection(I)V
    .locals 3
    .parameter "logGroups"

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->supportedLogGroups(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " log groups not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    iput-object v1, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mNewProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

    .line 299
    new-instance v0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;-><init>(Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$1;)V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mActiveProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

    .line 300
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mActiveProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->internalStartLogCollection(IZLcom/android/server/analytics/data/collection/logcat/LogcatDataCollector$MergeProcessor;)V

    .line 301
    return-void
.end method

.method public stopLogCollection()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mLogcatReader:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    invoke-virtual {v0}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->stopReadingLogs()V

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mLogGroups:I

    .line 307
    return-void
.end method

.method public unregisterLogCollectorCallback(Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;->mCallback:Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;

    .line 312
    return-void
.end method
