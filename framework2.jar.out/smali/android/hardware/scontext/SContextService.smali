.class public Landroid/hardware/scontext/SContextService;
.super Landroid/hardware/scontext/ISContextService$Stub;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextService$ServiceHandler;,
        Landroid/hardware/scontext/SContextService$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextService"


# instance fields
.field private final mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

.field private final mContext:Landroid/content/Context;

.field private mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

.field private mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mSContext:Landroid/hardware/scontext/SContext;

.field private mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

.field private mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

.field private mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

.field private mSContextCallPoseContext:Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;

.field private mSContextCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;

.field private mSContextEnvironmentContext:Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;

.field private mSContextFlipCoverActionContext:Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;

.field private mSContextGyroTemperatureContext:Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;

.field private mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

.field private mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

.field private mSContextMovementForPositioningContext:Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;

.field private mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

.field private mSContextPutDownMotionContext:Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;

.field private mSContextShakeMotionContext:Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;

.field private mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

.field private final mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

.field private mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-direct {p0}, Landroid/hardware/scontext/ISContextService$Stub;-><init>()V

    .line 54
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    .line 57
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    .line 63
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 69
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    .line 72
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    .line 75
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    .line 78
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    .line 81
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    .line 84
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    .line 87
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    .line 90
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextEnvironmentContext:Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;

    .line 93
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextMovementForPositioningContext:Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;

    .line 96
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;

    .line 99
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextCallPoseContext:Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;

    .line 102
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextShakeMotionContext:Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;

    .line 105
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextFlipCoverActionContext:Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;

    .line 108
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextGyroTemperatureContext:Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;

    .line 111
    iput-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContextPutDownMotionContext:Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;

    .line 717
    new-instance v2, Landroid/hardware/scontext/SContextService$1;

    invoke-direct {v2, p0}, Landroid/hardware/scontext/SContextService$1;-><init>(Landroid/hardware/scontext/SContextService;)V

    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    .line 776
    new-instance v2, Landroid/hardware/scontext/SContextService$2;

    invoke-direct {v2, p0}, Landroid/hardware/scontext/SContextService$2;-><init>(Landroid/hardware/scontext/SContextService;)V

    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    .line 120
    iput-object p1, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    .line 121
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.sensorhub"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "context_aware"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 124
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 125
    .local v1, looper:Landroid/os/Looper;
    if-nez v1, :cond_0

    .line 126
    const-string v2, "SContextService"

    const-string v3, "looper is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    .end local v1           #looper:Landroid/os/Looper;
    :goto_0
    return-void

    .line 129
    .restart local v0       #handlerThread:Landroid/os/HandlerThread;
    .restart local v1       #looper:Landroid/os/Looper;
    :cond_0
    new-instance v2, Landroid/hardware/scontext/SContextService$ServiceHandler;

    invoke-direct {v2, p0, v1}, Landroid/hardware/scontext/SContextService$ServiceHandler;-><init>(Landroid/hardware/scontext/SContextService;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    .line 130
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 131
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    const-string v3, "context_aware"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/ContextAwareManager;

    iput-object v2, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    .line 132
    invoke-direct {p0, p0}, Landroid/hardware/scontext/SContextService;->addIScontextListener(Landroid/hardware/scontext/ISContextListener;)V

    .line 134
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    .end local v1           #looper:Landroid/os/Looper;
    :cond_1
    const-string v2, "SContextService"

    const-string v3, "SContextService()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextMovementForPositioningContext:Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextCallPoseContext:Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextShakeMotionContext:Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextFlipCoverActionContext:Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextGyroTemperatureContext:Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextPutDownMotionContext:Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextApproachContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMotionContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMovementContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextEnvironmentContext:Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;

    return-object v0
.end method

.method private addIScontextListener(Landroid/hardware/scontext/ISContextListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 388
    invoke-static {}, Landroid/hardware/scontext/SContextUpdateContext;->getInstance()Landroid/hardware/scontext/SContextUpdateContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/scontext/SContextUpdateContext;->addListener(Landroid/hardware/scontext/ISContextListener;)V

    .line 389
    const-string v0, "SContextService"

    const-string v1, "addSContextListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method private addSContextService(I)V
    .locals 6
    .parameter "service"

    .prologue
    const/4 v5, 0x1

    .line 505
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextService;->resetSContextService(I)V

    .line 507
    packed-switch p1, :pswitch_data_0

    .line 599
    :cond_0
    :goto_0
    const-string v1, "SContextService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSContextService() : service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return-void

    .line 510
    :pswitch_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 514
    :pswitch_1
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    const/4 v3, 0x6

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getGender()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)V

    .line 515
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    const/4 v3, 0x5

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getHeight()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IID)V

    .line 516
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    const/4 v3, 0x4

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getWeight()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IID)V

    .line 517
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 521
    :pswitch_2
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    const/4 v3, 0x7

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getStepCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)V

    .line 522
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 526
    :pswitch_3
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 530
    :pswitch_4
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 534
    :pswitch_5
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    const/16 v3, 0x8

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getDeviceType()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)V

    .line 535
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 539
    :pswitch_6
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    const-string v2, "sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/sensorhub/SensorHubManager;

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 540
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/hardware/sensorhub/SensorHubManager;->registerListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;I)Z

    goto/16 :goto_0

    .line 545
    :pswitch_7
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getEnvSensorType()I

    move-result v0

    .line 547
    .local v0, sensorType:I
    const-string v1, "SContextService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Environment sensorType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " updateInterval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getUpdateInterval()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    const/16 v3, 0xd

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getUpdateInterval()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)V

    .line 550
    if-ne v0, v5, :cond_0

    .line 551
    const-string v1, "SContextService"

    const-string v2, "addSContextService : registerd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 557
    .end local v0           #sensorType:I
    :pswitch_8
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v3, 0x9

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getNomoveDurationThrs()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)V

    .line 559
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v3, 0xa

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getMoveDurationThrs()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)V

    .line 561
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v3, 0xb

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getMoveMinDurationThrs()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)V

    .line 563
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v3, 0xc

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getMoveDistanceThrs()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IID)V

    .line 565
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    .line 566
    const-string v1, "SContextService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nomove duration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getNomoveDurationThrs()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Move duration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getMoveDurationThrs()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Move min Duration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getMoveMinDurationThrs()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Move distance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getMoveDistanceThrs()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 571
    :pswitch_9
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->CURRENT_STATUS_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 575
    :pswitch_a
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 579
    :pswitch_b
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    const/16 v3, 0xe

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getStrength()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)V

    .line 580
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    const/16 v3, 0xf

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getDuration()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)V

    .line 581
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 585
    :pswitch_c
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 589
    :pswitch_d
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 593
    :pswitch_e
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v3, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .parameter "binder"
    .parameter "str"

    .prologue
    .line 706
    const-string v1, ""

    .line 708
    .local v1, client:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .line 709
    .local v0, cb:Landroid/hardware/scontext/ISContextCallback;
    invoke-interface {v0}, Landroid/hardware/scontext/ISContextCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 713
    .end local v0           #cb:Landroid/hardware/scontext/ISContextCallback;
    :goto_0
    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void

    .line 710
    :catch_0
    move-exception v2

    .line 711
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private removeSContextService(I)V
    .locals 4
    .parameter "service"

    .prologue
    .line 608
    packed-switch p1, :pswitch_data_0

    .line 673
    :goto_0
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-void

    .line 611
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 615
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 619
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 623
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 627
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 631
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 635
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/sensorhub/SensorHubManager;->unregisterListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;)V

    goto :goto_0

    .line 639
    :pswitch_7
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 643
    :pswitch_8
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 647
    :pswitch_9
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CURRENT_STATUS_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 651
    :pswitch_a
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 655
    :pswitch_b
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 659
    :pswitch_c
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 663
    :pswitch_d
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 667
    :pswitch_e
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private resetSContextService(I)V
    .locals 4
    .parameter "service"

    .prologue
    .line 398
    packed-switch p1, :pswitch_data_0

    .line 496
    :cond_0
    :goto_0
    const-string v1, "SContextService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetSContextService() : service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void

    .line 401
    :pswitch_0
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    .line 402
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;->clear()V

    .line 403
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(I)V

    goto :goto_0

    .line 407
    :pswitch_1
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    .line 408
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->clear()V

    .line 409
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(I)V

    goto :goto_0

    .line 413
    :pswitch_2
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    .line 414
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->clear()V

    .line 415
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(I)V

    goto :goto_0

    .line 419
    :pswitch_3
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    .line 420
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;->clear()V

    .line 421
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(I)V

    goto :goto_0

    .line 425
    :pswitch_4
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    .line 426
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;->clear()V

    .line 427
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(I)V

    goto :goto_0

    .line 431
    :pswitch_5
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    .line 432
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;->clear()V

    .line 433
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(I)V

    goto/16 :goto_0

    .line 437
    :pswitch_6
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    .line 438
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->clear()V

    goto/16 :goto_0

    .line 442
    :pswitch_7
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextEnvironmentContext:Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;

    .line 443
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextEnvironmentContext:Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;->clear()V

    .line 444
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getEnvSensorType()I

    move-result v0

    .line 446
    .local v0, sensorType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 447
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(I)V

    goto/16 :goto_0

    .line 452
    .end local v0           #sensorType:I
    :pswitch_8
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextMovementForPositioningContext:Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;

    .line 453
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextMovementForPositioningContext:Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;->clear()V

    .line 454
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(I)V

    goto/16 :goto_0

    .line 458
    :pswitch_9
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;

    .line 459
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;->clear()V

    .line 460
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CURRENT_STATUS_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(I)V

    goto/16 :goto_0

    .line 464
    :pswitch_a
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextCallPoseContext:Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;

    .line 465
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextCallPoseContext:Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;->clear()V

    .line 466
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(I)V

    goto/16 :goto_0

    .line 470
    :pswitch_b
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextShakeMotionContext:Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;

    .line 471
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextShakeMotionContext:Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;->clear()V

    .line 472
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(I)V

    goto/16 :goto_0

    .line 476
    :pswitch_c
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextFlipCoverActionContext:Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;

    .line 477
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextFlipCoverActionContext:Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;->clear()V

    .line 478
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(I)V

    goto/16 :goto_0

    .line 482
    :pswitch_d
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextGyroTemperatureContext:Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;

    .line 483
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextGyroTemperatureContext:Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;->clear()V

    .line 484
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(I)V

    goto/16 :goto_0

    .line 488
    :pswitch_e
    new-instance v1, Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextPutDownMotionContext:Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;

    .line 489
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mSContextPutDownMotionContext:Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;->clear()V

    .line 490
    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->resetCAService(I)V

    goto/16 :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private showListenerList()V
    .locals 7

    .prologue
    .line 691
    const-string v4, "SContextService"

    const-string v5, "===== SContext Service List ====="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextService$Listener;

    .line 693
    .local v0, i:Landroid/hardware/scontext/SContextService$Listener;
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 694
    .local v3, j:Ljava/lang/Integer;
    const-string v4, "SContextService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Service : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 697
    .end local v0           #i:Landroid/hardware/scontext/SContextService$Listener;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #j:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    .locals 3
    .parameter "event"
    .parameter "scontext"

    .prologue
    .line 683
    invoke-static {}, Landroid/hardware/scontext/SContextUpdateContext;->getInstance()Landroid/hardware/scontext/SContextUpdateContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/scontext/SContextUpdateContext;->reportMessage(ILandroid/hardware/scontext/ISContextContexts;)V

    .line 684
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSContext() : event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void
.end method


# virtual methods
.method public initializeSContextService(I)V
    .locals 4
    .parameter "service"

    .prologue
    .line 243
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->clear()V

    .line 245
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    .line 246
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v1, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    const/4 v2, 0x7

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getStepCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)V

    .line 247
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    .line 251
    :goto_0
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 249
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextService;->resetSContextService(I)V

    goto :goto_0
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/hardware/scontext/SContext;)V
    .locals 9
    .parameter "binder"
    .parameter "scontext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, listener:Landroid/hardware/scontext/SContextService$Listener;
    const/4 v5, 0x0

    .line 150
    .local v5, used:I
    :try_start_0
    iput-object p2, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    .line 151
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mSContext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v6}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    .line 153
    .local v4, service:I
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    move-object v3, v2

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .local v3, listener:Landroid/hardware/scontext/SContextService$Listener;
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextService$Listener;

    .line 154
    .local v0, i:Landroid/hardware/scontext/SContextService$Listener;
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 155
    add-int/lit8 v5, v5, 0x1

    .line 157
    :cond_0
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v6

    if-ne p1, v6, :cond_4

    .line 158
    move-object v2, v0

    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :goto_1
    move-object v3, v2

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_0

    .line 162
    .end local v0           #i:Landroid/hardware/scontext/SContextService$Listener;
    :cond_1
    const-string v6, "SContextService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ".registerCallback, used ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-nez v3, :cond_3

    .line 165
    new-instance v2, Landroid/hardware/scontext/SContextService$Listener;

    invoke-direct {v2, p0, p1}, Landroid/hardware/scontext/SContextService$Listener;-><init>(Landroid/hardware/scontext/SContextService;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    const/4 v6, 0x0

    :try_start_2
    invoke-interface {p1, v2, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 167
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :goto_2
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 171
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    if-nez v5, :cond_2

    .line 173
    invoke-direct {p0, v4}, Landroid/hardware/scontext/SContextService;->addSContextService(I)V

    .line 174
    invoke-direct {p0}, Landroid/hardware/scontext/SContextService;->showListenerList()V

    .line 178
    :cond_2
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v6, "registerCallback"

    invoke-direct {p0, p1, v6}, Landroid/hardware/scontext/SContextService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 183
    return-void

    .line 181
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #service:I
    :catchall_0
    move-exception v6

    :goto_3
    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v4       #service:I
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_3

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :cond_3
    move-object v2, v3

    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_2

    .end local v2           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v0       #i:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3       #listener:Landroid/hardware/scontext/SContextService$Listener;
    :cond_4
    move-object v2, v3

    .end local v3           #listener:Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2       #listener:Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_1
.end method

.method public declared-synchronized sendEvent(ILandroid/hardware/scontext/ISContextContexts;)V
    .locals 23
    .parameter "event"
    .parameter "scontext"

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    new-instance v17, Landroid/hardware/scontext/SContextEvent;

    invoke-direct/range {v17 .. v17}, Landroid/hardware/scontext/SContextEvent;-><init>()V

    .line 265
    .local v17, scontextEvent:Landroid/hardware/scontext/SContextEvent;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 266
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 267
    const-string v20, "SContextService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "sendEvent() : event = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p1 .. p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    packed-switch p1, :pswitch_data_0

    .line 374
    .end local p2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 375
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 376
    .local v14, msg:Landroid/os/Message;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v14, Landroid/os/Message;->what:I

    .line 377
    move-object/from16 v0, v17

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/hardware/scontext/SContextService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    .end local v14           #msg:Landroid/os/Message;
    :cond_0
    monitor-exit p0

    return-void

    .line 272
    .restart local p2
    :pswitch_0
    :try_start_1
    new-instance v4, Landroid/hardware/scontext/SContextApproach;

    invoke-direct {v4}, Landroid/hardware/scontext/SContextApproach;-><init>()V

    .line 273
    .local v4, approachContext:Landroid/hardware/scontext/SContextApproach;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;->mApproach:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/hardware/scontext/SContextApproach;->setApproach(I)V

    .line 274
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/hardware/scontext/SContextEvent;->setApproachContext(Landroid/hardware/scontext/SContextApproach;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    .end local v4           #approachContext:Landroid/hardware/scontext/SContextApproach;
    .end local v17           #scontextEvent:Landroid/hardware/scontext/SContextEvent;
    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20

    .line 278
    .restart local v17       #scontextEvent:Landroid/hardware/scontext/SContextEvent;
    .restart local p2
    :pswitch_1
    :try_start_2
    new-instance v15, Landroid/hardware/scontext/SContextPedometer;

    invoke-direct {v15}, Landroid/hardware/scontext/SContextPedometer;-><init>()V

    .line 279
    .local v15, pedometerContext:Landroid/hardware/scontext/SContextPedometer;
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mCalorie:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/hardware/scontext/SContextPedometer;->setCalorie(D)V

    .line 280
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mDistance:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/hardware/scontext/SContextPedometer;->setDistance(D)V

    .line 281
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mSpeed:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/hardware/scontext/SContextPedometer;->setSpeed(D)V

    .line 282
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mStepStatus:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/hardware/scontext/SContextPedometer;->setStepStatus(I)V

    .line 283
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mTotalStepCount:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/hardware/scontext/SContextPedometer;->setTotalStepCount(J)V

    .line 284
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mWalkStepCount:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/hardware/scontext/SContextPedometer;->setWalkStepCount(J)V

    .line 285
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mRunStepCount:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/hardware/scontext/SContextPedometer;->setRunStepCount(J)V

    .line 286
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    .end local p2
    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mUpDownStepCount:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/hardware/scontext/SContextPedometer;->setUpDownStepCount(J)V

    .line 287
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/hardware/scontext/SContextEvent;->setPedometerContext(Landroid/hardware/scontext/SContextPedometer;)V

    goto/16 :goto_0

    .line 291
    .end local v15           #pedometerContext:Landroid/hardware/scontext/SContextPedometer;
    .restart local p2
    :pswitch_2
    new-instance v19, Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-direct/range {v19 .. v19}, Landroid/hardware/scontext/SContextStepCountAlert;-><init>()V

    .line 292
    .local v19, stepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->mAlert:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/scontext/SContextStepCountAlert;->setAlert(I)V

    .line 293
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextEvent;->setStepCountAlertContext(Landroid/hardware/scontext/SContextStepCountAlert;)V

    goto/16 :goto_0

    .line 297
    .end local v19           #stepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;
    .restart local p2
    :pswitch_3
    new-instance v11, Landroid/hardware/scontext/SContextMotion;

    invoke-direct {v11}, Landroid/hardware/scontext/SContextMotion;-><init>()V

    .line 298
    .local v11, motionContext:Landroid/hardware/scontext/SContextMotion;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;->mType:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/hardware/scontext/SContextMotion;->setType(I)V

    .line 299
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/hardware/scontext/SContextEvent;->setMotionContext(Landroid/hardware/scontext/SContextMotion;)V

    goto/16 :goto_0

    .line 303
    .end local v11           #motionContext:Landroid/hardware/scontext/SContextMotion;
    .restart local p2
    :pswitch_4
    new-instance v12, Landroid/hardware/scontext/SContextMovement;

    invoke-direct {v12}, Landroid/hardware/scontext/SContextMovement;-><init>()V

    .line 304
    .local v12, movementContext:Landroid/hardware/scontext/SContextMovement;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;->mAction:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/hardware/scontext/SContextMovement;->setAction(I)V

    .line 305
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/hardware/scontext/SContextEvent;->setMovementContext(Landroid/hardware/scontext/SContextMovement;)V

    goto/16 :goto_0

    .line 309
    .end local v12           #movementContext:Landroid/hardware/scontext/SContextMovement;
    .restart local p2
    :pswitch_5
    new-instance v5, Landroid/hardware/scontext/SContextAutoRotation;

    invoke-direct {v5}, Landroid/hardware/scontext/SContextAutoRotation;-><init>()V

    .line 310
    .local v5, autoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;->mAngle:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/hardware/scontext/SContextAutoRotation;->setAngle(I)V

    .line 311
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/hardware/scontext/SContextEvent;->setAutoRotationContext(Landroid/hardware/scontext/SContextAutoRotation;)V

    goto/16 :goto_0

    .line 315
    .end local v5           #autoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;
    .restart local p2
    :pswitch_6
    new-instance v3, Landroid/hardware/scontext/SContextAirMotion;

    invoke-direct {v3}, Landroid/hardware/scontext/SContextAirMotion;-><init>()V

    .line 316
    .local v3, airmotionContext:Landroid/hardware/scontext/SContextAirMotion;
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/hardware/scontext/SContextAirMotion;->setDirection(I)V

    .line 317
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mAngle:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/hardware/scontext/SContextAirMotion;->setAngle(I)V

    .line 318
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/hardware/scontext/SContextEvent;->setAirMotionContext(Landroid/hardware/scontext/SContextAirMotion;)V

    goto/16 :goto_0

    .line 322
    .end local v3           #airmotionContext:Landroid/hardware/scontext/SContextAirMotion;
    .restart local p2
    :pswitch_7
    new-instance v8, Landroid/hardware/scontext/SContextEnvironment;

    invoke-direct {v8}, Landroid/hardware/scontext/SContextEnvironment;-><init>()V

    .line 323
    .local v8, environmentContext:Landroid/hardware/scontext/SContextEnvironment;
    move-object/from16 v0, p2

    check-cast v0, Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;->mSensorType:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/hardware/scontext/SContextEnvironment;->setSensorType(I)V

    .line 324
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;

    .end local p2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;->mBundleInfo:Landroid/os/Bundle;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/hardware/scontext/SContextEnvironment;->setData(Landroid/os/Bundle;)V

    .line 325
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/hardware/scontext/SContextEvent;->setEnvironmentContext(Landroid/hardware/scontext/SContextEnvironment;)V

    goto/16 :goto_0

    .line 329
    .end local v8           #environmentContext:Landroid/hardware/scontext/SContextEnvironment;
    .restart local p2
    :pswitch_8
    new-instance v13, Landroid/hardware/scontext/SContextMovementForPositioning;

    invoke-direct {v13}, Landroid/hardware/scontext/SContextMovementForPositioning;-><init>()V

    .line 330
    .local v13, movementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;->mAlert:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/hardware/scontext/SContextMovementForPositioning;->setAlert(I)V

    .line 331
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/hardware/scontext/SContextEvent;->setMovementForPositioningContext(Landroid/hardware/scontext/SContextMovementForPositioning;)V

    goto/16 :goto_0

    .line 335
    .end local v13           #movementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;
    .restart local p2
    :pswitch_9
    new-instance v7, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    invoke-direct {v7}, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;-><init>()V

    .line 336
    .local v7, currentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;->mStatus:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->setStatus(I)V

    .line 337
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/hardware/scontext/SContextEvent;->setCurrentStatusForPositioningContext(Landroid/hardware/scontext/SContextCurrentStatusForPositioning;)V

    goto/16 :goto_0

    .line 341
    .end local v7           #currentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;
    .restart local p2
    :pswitch_a
    new-instance v6, Landroid/hardware/scontext/SContextCallPose;

    invoke-direct {v6}, Landroid/hardware/scontext/SContextCallPose;-><init>()V

    .line 342
    .local v6, callPoseContext:Landroid/hardware/scontext/SContextCallPose;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;->mPose:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/hardware/scontext/SContextCallPose;->setPose(I)V

    .line 343
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/hardware/scontext/SContextEvent;->setCallPoseContext(Landroid/hardware/scontext/SContextCallPose;)V

    goto/16 :goto_0

    .line 347
    .end local v6           #callPoseContext:Landroid/hardware/scontext/SContextCallPose;
    .restart local p2
    :pswitch_b
    new-instance v18, Landroid/hardware/scontext/SContextShakeMotion;

    invoke-direct/range {v18 .. v18}, Landroid/hardware/scontext/SContextShakeMotion;-><init>()V

    .line 348
    .local v18, shakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;->mShakeStatus:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextShakeMotion;->setShakeStatus(I)V

    .line 349
    invoke-virtual/range {v17 .. v18}, Landroid/hardware/scontext/SContextEvent;->setShakeMotionContext(Landroid/hardware/scontext/SContextShakeMotion;)V

    goto/16 :goto_0

    .line 353
    .end local v18           #shakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;
    .restart local p2
    :pswitch_c
    new-instance v9, Landroid/hardware/scontext/SContextFlipCoverAction;

    invoke-direct {v9}, Landroid/hardware/scontext/SContextFlipCoverAction;-><init>()V

    .line 354
    .local v9, flipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;->mAction:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/hardware/scontext/SContextFlipCoverAction;->setAction(I)V

    .line 355
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/hardware/scontext/SContextEvent;->setFlipCoverActionContext(Landroid/hardware/scontext/SContextFlipCoverAction;)V

    goto/16 :goto_0

    .line 359
    .end local v9           #flipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;
    .restart local p2
    :pswitch_d
    new-instance v10, Landroid/hardware/scontext/SContextGyroTemperature;

    invoke-direct {v10}, Landroid/hardware/scontext/SContextGyroTemperature;-><init>()V

    .line 360
    .local v10, gyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;

    .end local p2
    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;->mGyroTemperature:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Landroid/hardware/scontext/SContextGyroTemperature;->setGyroTemperature(D)V

    .line 361
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/hardware/scontext/SContextEvent;->setGyroTemperatureContext(Landroid/hardware/scontext/SContextGyroTemperature;)V

    goto/16 :goto_0

    .line 365
    .end local v10           #gyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;
    .restart local p2
    :pswitch_e
    new-instance v16, Landroid/hardware/scontext/SContextPutDownMotion;

    invoke-direct/range {v16 .. v16}, Landroid/hardware/scontext/SContextPutDownMotion;-><init>()V

    .line 366
    .local v16, putDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;
    check-cast p2, Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;

    .end local p2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;->mAction:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextPutDownMotion;->setAction(I)V

    .line 367
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextEvent;->setPutDownMotionContext(Landroid/hardware/scontext/SContextPutDownMotion;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public unregisterCallback(Landroid/os/IBinder;I)Z
    .locals 9
    .parameter "binder"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 194
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 196
    const/4 v2, 0x0

    .line 197
    .local v2, listener:Landroid/hardware/scontext/SContextService$Listener;
    const/4 v3, 0x0

    .line 198
    .local v3, used:I
    :try_start_0
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextService$Listener;

    .line 199
    .local v0, i:Landroid/hardware/scontext/SContextService$Listener;
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 200
    add-int/lit8 v3, v3, 0x1

    .line 202
    :cond_1
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v6

    if-ne p1, v6, :cond_0

    .line 203
    move-object v2, v0

    goto :goto_0

    .line 207
    .end local v0           #i:Landroid/hardware/scontext/SContextService$Listener;
    :cond_2
    const-string v6, "SContextService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ".unregisterCallback, used ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-eqz v2, :cond_3

    .line 210
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 211
    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 212
    if-ne v3, v4, :cond_3

    .line 213
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextService;->removeSContextService(I)V

    .line 214
    invoke-direct {p0}, Landroid/hardware/scontext/SContextService;->showListenerList()V

    .line 219
    :cond_3
    if-eqz v2, :cond_4

    #getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_5

    .line 228
    :cond_4
    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v4, v5

    .line 230
    :goto_1
    return v4

    .line 223
    :cond_5
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {p1, v2, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 224
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 226
    const-string v5, "unregisterCallback"

    invoke-direct {p0, p1, v5}, Landroid/hardware/scontext/SContextService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method
