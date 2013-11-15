.class Lcom/android/server/ssrm/Monitor$BoostedURLHandler;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BoostedURLHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;
    }
.end annotation


# static fields
.field static final LEAVING_URL_INTENT_EXTRA:Ljava/lang/String; = "Browser_leaving_URL"

.field static final PACKAGE_NAME_INTENT_EXTRA:Ljava/lang/String; = "PackageName"

.field static final PROCESS_ID_INTENT_EXTRA:Ljava/lang/String; = "PID"

.field static final SSRM_STATUS_NAME_BROWSER_LOADING_URL:Ljava/lang/String; = "Browser_loading_URL"

.field static final URL_INTENT_EXTRA:Ljava/lang/String; = "URL"

.field private static final sBoostedSites:[Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x64

    .line 2240
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    const-string v3, "^(http://)?www\\.webkit\\.org/perf/sunspider-.*/sunspider-.*/driver\\.html"

    const-string v4, "^(http://)?www\\.webkit\\.org/perf/sunspider-.*/sunspider-.*/results\\.html.*"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    const-string v3, "^(http://)?www\\.webkit\\.org/perf/sunspider-.*/sunspider-driver.html"

    const-string v4, "^(http://)?www\\.webkit\\.org/perf/sunspider-.*/sunspider-results.html.*"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    const-string v3, "http://browsermark.rightware.com/tests"

    const-string v4, "http://browsermark.rightware.com/results"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->sBoostedSites:[Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 2260
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2261
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->mContext:Landroid/content/Context;

    .line 2262
    iput-object p2, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->mHandler:Landroid/os/Handler;

    .line 2263
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/ssrm/Monitor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2229
    invoke-direct {p0, p1, p2}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/ssrm/Monitor$BoostedURLHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private disableBoostForSite(Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;)V
    .locals 5
    .parameter "site"

    .prologue
    .line 2324
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableBoostForSite() site: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :cond_0
    iget v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    if-nez v2, :cond_2

    .line 2345
    :cond_1
    :goto_0
    return-void

    .line 2329
    :cond_2
    iget v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    .line 2330
    iget v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    if-nez v2, :cond_3

    .line 2331
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->mHandler:Landroid/os/Handler;

    iget-object v3, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->timeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2332
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->timeoutTask:Ljava/lang/Runnable;

    .line 2336
    :cond_3
    :try_start_0
    const-class v2, Lcom/android/server/ssrm/DvfsUpThreshold;

    invoke-static {v2}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/DvfsUpThreshold;

    .line 2337
    .local v1, instance:Lcom/android/server/ssrm/DvfsUpThreshold;
    if-eqz v1, :cond_1

    .line 2338
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/DvfsUpThreshold;->setBrowserBenchmark(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2340
    .end local v1           #instance:Lcom/android/server/ssrm/DvfsUpThreshold;
    :catch_0
    move-exception v0

    .line 2341
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableBoostForSite:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2342
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 2343
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableBoostForSite:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableBoostForSite(Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;Ljava/lang/String;I)V
    .locals 8
    .parameter "site"
    .parameter "packageName"
    .parameter "pid"

    .prologue
    .line 2292
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableBoostForSite() site: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :cond_0
    iget-object v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->timeoutTask:Ljava/lang/Runnable;

    if-nez v2, :cond_1

    .line 2294
    new-instance v2, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$1;-><init>(Lcom/android/server/ssrm/Monitor$BoostedURLHandler;Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;Ljava/lang/String;I)V

    iput-object v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->timeoutTask:Ljava/lang/Runnable;

    .line 2307
    :cond_1
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->mHandler:Landroid/os/Handler;

    iget-object v3, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->timeoutTask:Ljava/lang/Runnable;

    iget-wide v4, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->timeout:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2309
    iget v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    .line 2312
    :try_start_0
    const-class v2, Lcom/android/server/ssrm/DvfsUpThreshold;

    invoke-static {v2}, Lcom/android/server/ssrm/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/DvfsUpThreshold;

    .line 2313
    .local v1, instance:Lcom/android/server/ssrm/DvfsUpThreshold;
    if-eqz v1, :cond_2

    .line 2314
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/DvfsUpThreshold;->setBrowserBenchmark(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2321
    .end local v1           #instance:Lcom/android/server/ssrm/DvfsUpThreshold;
    :cond_2
    :goto_0
    return-void

    .line 2316
    :catch_0
    move-exception v0

    .line 2317
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableBoostForSite:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2318
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 2319
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableBoostForSite:: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTotalConnectionsNumber()I
    .locals 6

    .prologue
    .line 2377
    const/4 v1, 0x0

    .line 2378
    .local v1, conCount:I
    sget-object v0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->sBoostedSites:[Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    .local v0, arr$:[Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 2379
    .local v4, site:Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;
    iget v5, v4, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    add-int/2addr v1, v5

    .line 2378
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2381
    .end local v4           #site:Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;
    :cond_0
    return v1
.end method


# virtual methods
.method public handleURL(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 7
    .parameter "url"
    .parameter "isLeaving"
    .parameter "packageName"
    .parameter "pid"

    .prologue
    .line 2266
    if-nez p1, :cond_1

    .line 2285
    :cond_0
    :goto_0
    return-void

    .line 2269
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->sBoostedSites:[Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;

    .local v0, arr$:[Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 2270
    .local v3, site:Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;
    iget-object v4, v3, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->startURL:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->startURL:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2271
    :cond_2
    if-eqz p2, :cond_3

    .line 2272
    invoke-direct {p0, v3}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->disableBoostForSite(Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;)V

    goto :goto_0

    .line 2275
    :cond_3
    invoke-direct {p0, v3, p3, p4}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->enableBoostForSite(Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;Ljava/lang/String;I)V

    goto :goto_0

    .line 2279
    :cond_4
    iget v4, v3, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->connectionsNumber:I

    if-lez v4, :cond_5

    iget-object v4, v3, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->endURL:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, v3, Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;->endURL:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v4, v5

    if-eqz v4, :cond_5

    .line 2280
    invoke-direct {p0, v3}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->disableBoostForSite(Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;)V

    goto :goto_0

    .line 2269
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2284
    .end local v3           #site:Lcom/android/server/ssrm/Monitor$BoostedURLHandler$Site;
    :cond_6
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleURL() skipped "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isURLBoostInProgress()Z
    .locals 1

    .prologue
    .line 2288
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;->getTotalConnectionsNumber()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
