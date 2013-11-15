.class public Landroid/hardware/contextaware/manager/ContextAwareService;
.super Landroid/hardware/contextaware/manager/IContextAwareService$Stub;
.source "ContextAwareService.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/IContextObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;,
        Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    }
.end annotation


# static fields
.field private static final NOTIFY_WATING_TIME:I = 0x1

.field public static final START_OPERATION:Ljava/lang/String; = "START"

.field public static final STOP_OPERATION:Ljava/lang/String; = "STOP"


# instance fields
.field private mAutoTest:Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

.field private mBinderForFaultDetection:Landroid/os/IBinder;

.field private mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

.field private mHaveToRestore:Z

.field private mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mOperationCheckResultNotifyCompletion:Z

.field private mServiceForFaultDetection:I

.field private mServiceHandler:Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 85
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/IContextAwareService$Stub;-><init>()V

    .line 73
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mHaveToRestore:Z

    .line 76
    iput-boolean v3, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mOperationCheckResultNotifyCompletion:Z

    .line 86
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "context_aware"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, mHandlerThread:Landroid/os/HandlerThread;
    if-nez v1, :cond_0

    .line 89
    const-string v2, "mHandlerThread is null"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 95
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 96
    .local v0, looper:Landroid/os/Looper;
    if-nez v0, :cond_1

    .line 97
    const-string v2, "looper is null"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    new-instance v2, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-direct {v2, p0, v0}, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;-><init>(Landroid/hardware/contextaware/manager/ContextAwareService;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mServiceHandler:Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;

    .line 103
    new-instance v2, Landroid/hardware/contextaware/manager/ContextManager;

    invoke-direct {v2, p1, v0}, Landroid/hardware/contextaware/manager/ContextManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    .line 105
    new-instance v2, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-direct {v2, p1}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mAutoTest:Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    .line 106
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 108
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-virtual {v3}, Landroid/hardware/contextaware/manager/ContextManager;->getCreator()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/manager/ListenerListManager;->setCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    goto :goto_0
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/manager/ContextAwareService;)Landroid/hardware/contextaware/manager/ContextManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/contextaware/manager/ContextAwareService;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextAwareService;->displayCallback(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mOperationCheckResultNotifyCompletion:Z

    return p1
.end method

.method private displayCallback(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .parameter "binder"
    .parameter "str"

    .prologue
    .line 433
    const-string v1, ""

    .line 436
    .local v1, client:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/hardware/contextaware/manager/IContextAwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contextaware/manager/IContextAwareCallback;

    move-result-object v0

    .line 438
    .local v0, callback:Landroid/hardware/contextaware/manager/IContextAwareCallback;
    if-nez v0, :cond_0

    .line 449
    .end local v0           #callback:Landroid/hardware/contextaware/manager/IContextAwareCallback;
    :goto_0
    return-void

    .line 441
    .restart local v0       #callback:Landroid/hardware/contextaware/manager/IContextAwareCallback;
    :cond_0
    invoke-interface {v0}, Landroid/hardware/contextaware/manager/IContextAwareCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 446
    .end local v0           #callback:Landroid/hardware/contextaware/manager/IContextAwareCallback;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :catch_0
    move-exception v2

    .line 443
    .local v2, e:Landroid/os/RemoteException;
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private displayUsedCountForService(I)V
    .locals 3
    .parameter "service"

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v1

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v1

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedServiceCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subCollectionCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v1

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method private doCommendProcess(Ljava/lang/String;Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 3
    .parameter "operation"
    .parameter "listener"
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    .line 246
    const-string v0, "START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3}, Landroid/hardware/contextaware/manager/ContextAwareService;->isUsableService(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v0, "STOP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2, p3}, Landroid/hardware/contextaware/manager/ContextAwareService;->isUsableService(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    :cond_2
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$000(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mBinderForFaultDetection:Landroid/os/IBinder;

    .line 257
    iput p3, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mServiceForFaultDetection:I

    .line 259
    const-string v0, "START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 261
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_3
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p0, v2}, Landroid/hardware/contextaware/manager/ContextManager;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;Z)V

    .line 273
    :cond_4
    :goto_1
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextAwareService;->waitForNotifyOperationCheckResult()Z

    move-result v0

    if-nez v0, :cond_5

    .line 274
    const-string v0, "Time out."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mHaveToRestore:Z

    .line 277
    :cond_5
    const-string v0, "complete notify the operation result."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 279
    const-string v0, "START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 280
    invoke-direct {p0, p2, p3}, Landroid/hardware/contextaware/manager/ContextAwareService;->restoreStartProcess(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_0

    .line 265
    :cond_6
    const-string v0, "STOP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 267
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 269
    :cond_7
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p0, v2}, Landroid/hardware/contextaware/manager/ContextManager;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;Z)V

    goto :goto_1

    .line 281
    :cond_8
    const-string v0, "STOP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0, p2, p3}, Landroid/hardware/contextaware/manager/ContextAwareService;->restoreStopProcess(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    goto/16 :goto_0
.end method

.method private isUsableService(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)Z
    .locals 2
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 649
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreStartProcess(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 3
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 295
    iget-boolean v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mHaveToRestore:Z

    if-eqz v0, :cond_2

    .line 296
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 297
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/hardware/contextaware/manager/ContextManager;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;Z)V

    .line 300
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 304
    :cond_0
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$000(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 306
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/manager/ListenerListManager;->removeListener(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 309
    :cond_2
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextManager;->notifyInitContext(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreStopProcess(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 3
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 323
    iget-boolean v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mHaveToRestore:Z

    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 325
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/hardware/contextaware/manager/ContextManager;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;Z)V

    .line 328
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_0
    return-void
.end method

.method private showListenerList()V
    .locals 7

    .prologue
    .line 222
    const-string v4, "===== Context Aware Service List ====="

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 224
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .line 226
    .local v2, next:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, j:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 228
    .local v3, service:Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Listener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Service : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    .end local v1           #j:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v2           #next:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .end local v3           #service:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private waitForNotifyOperationCheckResult()Z
    .locals 4

    .prologue
    .line 364
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 366
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 367
    iget-boolean v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mOperationCheckResultNotifyCompletion:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 368
    const/4 v2, 0x1

    .line 376
    :goto_1
    return v2

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 376
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 364
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public initializeAutoTest()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mAutoTest:Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->initilizeAutoTest()V

    .line 678
    return-void
.end method

.method public registerCallback(Landroid/os/IBinder;I)V
    .locals 6
    .parameter "binder"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 127
    const-string v4, "[regi 01] Mutex is locked."

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 129
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mHaveToRestore:Z

    .line 130
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mOperationCheckResultNotifyCompletion:Z

    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, isExistListener:Z
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .line 136
    .local v3, next:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$000(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    const-string v4, "START"

    invoke-direct {p0, v4, v3, p2}, Landroid/hardware/contextaware/manager/ContextAwareService;->doCommendProcess(Ljava/lang/String;Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    .line 140
    const/4 v1, 0x1

    .line 144
    .end local v3           #next:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    :cond_1
    if-nez v1, :cond_2

    .line 145
    new-instance v2, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    invoke-direct {v2, p0, p1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;-><init>(Landroid/hardware/contextaware/manager/ContextAwareService;Landroid/os/IBinder;)V

    .line 146
    .local v2, listener:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 147
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/hardware/contextaware/manager/ListenerListManager;->addListener(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V

    .line 148
    const-string v4, "START"

    invoke-direct {p0, v4, v2, p2}, Landroid/hardware/contextaware/manager/ContextAwareService;->doCommendProcess(Ljava/lang/String;Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    .line 151
    .end local v2           #listener:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    :cond_2
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/manager/ContextAwareService;->displayUsedCountForService(I)V

    .line 153
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextAwareService;->showListenerList()V

    .line 154
    const-string v4, "registerCallback"

    invoke-direct {p0, p1, v4}, Landroid/hardware/contextaware/manager/ContextAwareService;->displayCallback(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    const-string v4, "[regi 02] Mutex is unlocked."

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 160
    return-void

    .line 157
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v1           #isExistListener:Z
    :catchall_0
    move-exception v4

    const-string v5, "[regi 02] Mutex is unlocked."

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 158
    iget-object v5, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 157
    throw v4
.end method

.method public resetCAService(I)V
    .locals 2
    .parameter "service"

    .prologue
    .line 404
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ContextManager;->reset(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public setCALogger(ZZIZ)V
    .locals 0
    .parameter "isConsole"
    .parameter "isFile"
    .parameter "level"
    .parameter "isCaller"

    .prologue
    .line 667
    invoke-static {p1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->setConsoleLoggingEnable(Z)V

    .line 668
    invoke-static {p2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->setFileLoggingEnable(Z)V

    .line 669
    invoke-static {p3, p4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->setLogOption(IZ)V

    .line 670
    return-void
.end method

.method public setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)V
    .locals 2
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 392
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/hardware/contextaware/manager/ContextManager;->setProperty(Ljava/lang/String;ILjava/lang/Object;)V

    .line 394
    return-void
.end method

.method public setScenarioForDebugging(II[B)Z
    .locals 1
    .parameter "testType"
    .parameter "delayTime"
    .parameter "packet"

    .prologue
    .line 724
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mAutoTest:Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->setScenarioForDebugging(II[B)Z

    move-result v0

    return v0
.end method

.method public setScenarioForTest(II)Z
    .locals 1
    .parameter "testType"
    .parameter "delayTime"

    .prologue
    .line 707
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mAutoTest:Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->setScenarioForTest(II)Z

    move-result v0

    return v0
.end method

.method public startAutoTest()V
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mAutoTest:Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->startAutoTest()V

    .line 686
    return-void
.end method

.method public stopAutoTest()V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mAutoTest:Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->stopAutoTest()V

    .line 694
    return-void
.end method

.method public unregisterCallback(Landroid/os/IBinder;I)Z
    .locals 6
    .parameter "binder"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v1, 0x1

    .line 178
    .local v1, isEmptyListener:Z
    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 179
    const-string v4, "[unregi 01] Mutex is locked."

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 182
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mHaveToRestore:Z

    .line 183
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mOperationCheckResultNotifyCompletion:Z

    .line 184
    const/4 v2, 0x0

    .line 186
    .local v2, listener:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 187
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .line 189
    .local v3, next:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$000(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    move-object v2, v3

    .line 193
    const-string v4, "STOP"

    invoke-direct {p0, v4, v3, p2}, Landroid/hardware/contextaware/manager/ContextAwareService;->doCommendProcess(Ljava/lang/String;Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    .line 197
    .end local v3           #next:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    :cond_1
    if-eqz v2, :cond_2

    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 198
    :cond_2
    const/4 v1, 0x0

    .line 201
    :cond_3
    if-eqz v1, :cond_4

    .line 202
    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 203
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/hardware/contextaware/manager/ListenerListManager;->removeListener(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V

    .line 206
    :cond_4
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/manager/ContextAwareService;->displayUsedCountForService(I)V

    .line 208
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextAwareService;->showListenerList()V

    .line 209
    const-string v4, "unregisterCallback"

    invoke-direct {p0, p1, v4}, Landroid/hardware/contextaware/manager/ContextAwareService;->displayCallback(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    const-string v4, "[unregi 02] Mutex is unlocked."

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 212
    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 215
    return v1

    .line 211
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v2           #listener:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    :catchall_0
    move-exception v4

    const-string v5, "[unregi 02] Mutex is unlocked."

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 212
    iget-object v5, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 211
    throw v4
.end method

.method public updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "type"
    .parameter "context"

    .prologue
    .line 418
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 419
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 420
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 421
    iget-object v1, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mServiceHandler:Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 422
    return-void
.end method

.method public updateFaultDetectionResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "operation"
    .parameter "type"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 741
    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 768
    :goto_0
    return-void

    .line 745
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CheckResult"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 748
    const-string v2, "CheckResult"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const-string v2, "CheckResult"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const-string v2, "CheckResult"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 751
    :cond_1
    iput-boolean v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mHaveToRestore:Z

    .line 754
    :cond_2
    const-string v2, "CheckResult"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 755
    const-string v2, "CheckResult"

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 759
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 760
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "Binder"

    iget-object v3, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mBinderForFaultDetection:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 761
    const-string v2, "Service"

    iget v3, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mServiceForFaultDetection:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 762
    const-string v2, "Listener"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 764
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 765
    .local v1, msg:Landroid/os/Message;
    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList$ContextType;->ordinal()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 766
    iput-object p3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 767
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService;->mServiceHandler:Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
