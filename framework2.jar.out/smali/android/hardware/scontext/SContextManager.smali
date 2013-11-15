.class public Landroid/hardware/scontext/SContextManager;
.super Ljava/lang/Object;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation


# static fields
.field private static final NONE_SERVICE:I = 0x0

.field private static final SCONTEXT_SERVICE_NUM:I = 0xf

.field private static final TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "mainLooper"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    const-string v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    .line 64
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 65
    return-void
.end method

.method private registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z
    .locals 8
    .parameter "listener"
    .parameter "scontext"

    .prologue
    .line 210
    invoke-virtual {p2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    .line 211
    .local v3, service:I
    if-eqz p1, :cond_0

    if-lez v3, :cond_0

    const/16 v5, 0xf

    if-le v3, v5, :cond_1

    .line 212
    :cond_0
    const/4 v5, 0x0

    .line 237
    :goto_0
    return v5

    .line 215
    :cond_1
    const/4 v2, 0x0

    .line 217
    .local v2, scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    .line 219
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 220
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-virtual {v5}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v5

    if-ne v5, p1, :cond_4

    .line 221
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    check-cast v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .line 226
    .restart local v2       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :cond_2
    if-nez v2, :cond_3

    .line 227
    new-instance v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .end local v2           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    const/4 v5, 0x0

    invoke-direct {v2, p0, p1, v5}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Handler;)V

    .line 228
    .restart local v2       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_3
    :try_start_0
    iget-object v5, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v5, v2, p2}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;Landroid/hardware/scontext/SContext;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_2
    const-string v5, "SContextManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  .registerListener : service="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v5, 0x1

    goto :goto_0

    .line 219
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "SContextManager"

    const-string v6, "RemoteException in registerListener: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public initializeSContextService(I)V
    .locals 3
    .parameter "service"

    .prologue
    .line 298
    if-lez p1, :cond_0

    const/16 v1, 0xf

    if-le p1, v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v1, p1}, Landroid/hardware/scontext/ISContextService;->initializeSContextService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SContextManager"

    const-string v2, "RemoteException in initializeSContextService: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 3
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 76
    new-instance v1, Landroid/hardware/scontext/SContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 77
    .local v1, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v1, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 78
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v0

    .line 80
    .local v0, res:Z
    if-eqz v0, :cond_0

    .line 81
    const/4 v2, 0x1

    .line 83
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .parameter "listener"
    .parameter "service"
    .parameter "arg"

    .prologue
    .line 99
    new-instance v1, Landroid/hardware/scontext/SContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 100
    .local v1, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v1, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 101
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 102
    invoke-virtual {v1, p3}, Landroid/hardware/scontext/SContext;->setStepCount(I)V

    .line 106
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v0

    .line 108
    .local v0, res:Z
    if-eqz v0, :cond_2

    .line 109
    const/4 v2, 0x1

    .line 111
    :goto_1
    return v2

    .line 103
    .end local v0           #res:Z
    :cond_1
    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    .line 104
    invoke-virtual {v1, p3}, Landroid/hardware/scontext/SContext;->setDeviceType(I)V

    goto :goto_0

    .line 111
    .restart local v0       #res:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 7
    .parameter "listener"
    .parameter "service"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 156
    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 157
    .local v0, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 159
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    .line 160
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/SContext;->setUserInfo(IDD)V

    .line 163
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v6

    .line 165
    .local v6, res:Z
    if-eqz v6, :cond_1

    .line 166
    const/4 v1, 0x1

    .line 168
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .locals 3
    .parameter "listener"
    .parameter "service"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 126
    new-instance v1, Landroid/hardware/scontext/SContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 127
    .local v1, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v1, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 129
    const/16 v2, 0x8

    if-ne p2, v2, :cond_1

    .line 130
    invoke-virtual {v1, p3, p4}, Landroid/hardware/scontext/SContext;->setEnvironmentInfo(II)V

    .line 135
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v0

    .line 137
    .local v0, res:Z
    if-eqz v0, :cond_2

    .line 138
    const/4 v2, 0x1

    .line 140
    :goto_1
    return v2

    .line 131
    .end local v0           #res:Z
    :cond_1
    const/16 v2, 0xc

    if-ne p2, v2, :cond_0

    .line 132
    invoke-virtual {v1, p3, p4}, Landroid/hardware/scontext/SContext;->setShakeInfo(II)V

    goto :goto_0

    .line 140
    .restart local v0       #res:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .locals 7
    .parameter "listener"
    .parameter "service"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 185
    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 186
    .local v0, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 188
    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    move v1, p3

    move v2, p4

    move-wide v3, p5

    move v5, p7

    .line 189
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/SContext;->setParametersForMFP(IIDI)V

    .line 192
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v6

    .line 194
    .local v6, res:Z
    if-eqz v6, :cond_1

    .line 195
    const/4 v1, 0x1

    .line 197
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 247
    if-nez p1, :cond_1

    .line 254
    :cond_0
    return-void

    .line 251
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 252
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 7
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 263
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    const/16 v4, 0xf

    if-le p2, v4, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const/4 v2, 0x0

    .line 269
    .local v2, scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 271
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 272
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-virtual {v4}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v4

    if-ne v4, p1, :cond_4

    .line 273
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    check-cast v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .line 278
    .restart local v2       #scontextListener:Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    :cond_2
    if-eqz v2, :cond_0

    .line 283
    :try_start_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v4, v2, p2}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 284
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_3
    :goto_2
    const-string v4, "SContextManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .unregisterListener : service ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SContextManager"

    const-string v5, "RemoteException in unregisterListener: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
