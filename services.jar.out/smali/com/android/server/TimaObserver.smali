.class final Lcom/android/server/TimaObserver;
.super Landroid/os/UEventObserver;
.source "TimaObserver.java"


# static fields
.field private static final MSG_TIMA_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field private static final TIMA_MESSAGE:Ljava/lang/String; = "TIMA_MESSAGE"

.field private static final TIMA_POWER_STATE:Ljava/lang/String; = "POWER_STATE"

.field private static final TIMA_POWER_STATE_LEVEL1:Ljava/lang/String; = "50"

.field private static final TIMA_POWER_STATE_LEVEL2:Ljava/lang/String; = "100"

.field private static final TIMA_POWER_STATE_LEVEL3:Ljava/lang/String; = "150"

.field private static final TIMA_QSEE_MSG:Ljava/lang/String; = "MSG"

.field private static final TIMA_RESULT:Ljava/lang/String; = "TIMA_RESULT"

.field private static final TIMA_SERVICE:Ljava/lang/String; = "tima"

.field private static final TIMA_STATE_PATH:Ljava/lang/String; = "/sys/class/tima/state"

.field private static final TIMA_STATUS:Ljava/lang/String; = "TIMA_STATUS"

.field private static final TIMA_SUCCESS:Ljava/lang/String; = "0"

.field private static final TIMA_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/tima/tima_uevent"


# instance fields
.field private DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mSystemReady:Z

.field private final mTimaService:Landroid/service/tima/ITimaService;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/server/TimaObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 36
    iput-boolean v3, p0, Lcom/android/server/TimaObserver;->DEBUG:Z

    .line 56
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/TimaObserver;->mLock:Ljava/lang/Object;

    .line 59
    iput-boolean v3, p0, Lcom/android/server/TimaObserver;->mSystemReady:Z

    .line 142
    new-instance v1, Lcom/android/server/TimaObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/TimaObserver$1;-><init>(Lcom/android/server/TimaObserver;)V

    iput-object v1, p0, Lcom/android/server/TimaObserver;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/android/server/TimaObserver;->mContext:Landroid/content/Context;

    .line 69
    iget-object v1, p0, Lcom/android/server/TimaObserver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/TimaObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 70
    iget-object v1, p0, Lcom/android/server/TimaObserver;->mPowerManager:Landroid/os/PowerManager;

    sget-object v2, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TimaObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 72
    const-string v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TimaObserver;->mTimaService:Landroid/service/tima/ITimaService;

    .line 75
    iget-boolean v1, p0, Lcom/android/server/TimaObserver;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    const-string v2, "TIMA: TIMA startObserving: DEVPATH=/devices/virtual/tima/tima_uevent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    const-string v1, "DEVPATH=/devices/virtual/tima/tima_uevent"

    invoke-virtual {p0, v1}, Lcom/android/server/TimaObserver;->startObserving(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TimaObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/server/TimaObserver;->handleTimaStateChange()V

    return-void
.end method

.method private handleTimaStateChange()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/server/TimaObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/TimaObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    const-string v2, "Tima state changed: "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/server/TimaObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/TimaObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 139
    :cond_1
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateLocked()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/TimaObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TimaObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 81
    iget-boolean v5, p0, Lcom/android/server/TimaObserver;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TIMA: TIMA UEVENT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TIMA_STATUS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/TimaObserver;->mSystemReady:Z

    if-eqz v5, :cond_1

    .line 89
    iget-object v6, p0, Lcom/android/server/TimaObserver;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 94
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/TimaObserver;->DEBUG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TIMA_UEVENT: mTimaService: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/TimaObserver;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_3
    iget-object v5, p0, Lcom/android/server/TimaObserver;->mTimaService:Landroid/service/tima/ITimaService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_4

    :try_start_1
    monitor-exit v6

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 97
    :cond_4
    :try_start_2
    const-string v5, "TIMA_STATUS"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, status:Ljava/lang/String;
    const-string v5, "TIMA_RESULT"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, result:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TIMA_STATUS="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, eventStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v5, ";;"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ";;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/TimaObserver;->DEBUG:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TIMA_UEVENT: eventStr: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_6
    iget-object v5, p0, Lcom/android/server/TimaObserver;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v5, v1}, Landroid/service/tima/ITimaService;->displayEvent(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    .end local v1           #eventStr:Ljava/lang/String;
    .end local v3           #result:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    :goto_1
    :try_start_3
    iget-object v5, p0, Lcom/android/server/TimaObserver;->mTimaService:Landroid/service/tima/ITimaService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v5, :cond_7

    :try_start_4
    monitor-exit v6

    goto/16 :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse/relay TIMA event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 113
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_5
    const-string v5, "TIMA_STATUS"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .restart local v4       #status:Ljava/lang/String;
    const-string v5, "POWER_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, powerState:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 116
    const-string v5, "50"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 117
    iget-object v5, p0, Lcom/android/server/TimaObserver;->mTimaService:Landroid/service/tima/ITimaService;

    const/4 v7, 0x5

    invoke-interface {v5, v7}, Landroid/service/tima/ITimaService;->changeInterval(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 128
    .end local v2           #powerState:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    :cond_8
    :goto_2
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 118
    .restart local v2       #powerState:Ljava/lang/String;
    .restart local v4       #status:Ljava/lang/String;
    :cond_9
    :try_start_7
    const-string v5, "100"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 119
    iget-object v5, p0, Lcom/android/server/TimaObserver;->mTimaService:Landroid/service/tima/ITimaService;

    const/16 v7, 0xf

    invoke-interface {v5, v7}, Landroid/service/tima/ITimaService;->changeInterval(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 123
    .end local v2           #powerState:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 124
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_8
    sget-object v5, Lcom/android/server/TimaObserver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse/relay TIMA event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 120
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #powerState:Ljava/lang/String;
    .restart local v4       #status:Ljava/lang/String;
    :cond_a
    :try_start_9
    const-string v5, "150"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 121
    iget-object v5, p0, Lcom/android/server/TimaObserver;->mTimaService:Landroid/service/tima/ITimaService;

    const/16 v7, 0x3c

    invoke-interface {v5, v7}, Landroid/service/tima/ITimaService;->changeInterval(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2
.end method
