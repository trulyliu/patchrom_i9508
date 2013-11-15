.class public Lcom/samsung/wfd/WFDUibcManager;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WFDUibcManager$1;,
        Lcom/samsung/wfd/WFDUibcManager$EventQueue;,
        Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_EVENTS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "WFDUibcManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventDispatcher:Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

.field private mEventDispatcherThread:Ljava/lang/Thread;

.field private mEventReaderThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

    .line 42
    iput-object p1, p0, Lcom/samsung/wfd/WFDUibcManager;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/wfd/WFDUibcManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public start()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public start(I)Z
    .locals 2
    .parameter "mSessionId"

    .prologue
    .line 51
    new-instance v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;-><init>(Lcom/samsung/wfd/WFDUibcManager;)V

    iput-object v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

    .line 52
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->enableUIBC(I)V

    .line 54
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 55
    iget-object v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

    invoke-static {v0}, Lcom/samsung/wfd/WFDNative;->startUIBC(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    const-string v0, "WFDUibcManager"

    const-string v1, "Uibc Manager started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public stop(I)Z
    .locals 4
    .parameter "mSessionId"

    .prologue
    const/4 v3, 0x1

    .line 68
    iget-object v1, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

    if-nez v1, :cond_0

    .line 79
    :goto_0
    return v3

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->running:Z

    .line 70
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->stopUIBC()V

    .line 71
    const-string v1, "WFDUibcManager"

    const-string v2, "Going to stop Uibc manager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->disableUIBC(I)V

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Error joining event dispatcher thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
