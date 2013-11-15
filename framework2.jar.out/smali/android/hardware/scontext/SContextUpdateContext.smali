.class Landroid/hardware/scontext/SContextUpdateContext;
.super Ljava/lang/Object;
.source "SContextUpdateContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextUpdateContext"

.field private static instance:Landroid/hardware/scontext/SContextUpdateContext;

.field private static mListener:Landroid/hardware/scontext/ISContextListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/scontext/SContextUpdateContext;->mListener:Landroid/hardware/scontext/ISContextListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/scontext/SContextUpdateContext;
    .locals 2

    .prologue
    .line 39
    const-class v1, Landroid/hardware/scontext/SContextUpdateContext;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Landroid/hardware/scontext/SContextUpdateContext;->instance:Landroid/hardware/scontext/SContextUpdateContext;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/hardware/scontext/SContextUpdateContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextUpdateContext;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextUpdateContext;->instance:Landroid/hardware/scontext/SContextUpdateContext;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    sget-object v0, Landroid/hardware/scontext/SContextUpdateContext;->instance:Landroid/hardware/scontext/SContextUpdateContext;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeListener()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/scontext/SContextUpdateContext;->mListener:Landroid/hardware/scontext/ISContextListener;

    .line 66
    return-void
.end method


# virtual methods
.method public addListener(Landroid/hardware/scontext/ISContextListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 53
    sget-object v0, Landroid/hardware/scontext/SContextUpdateContext;->mListener:Landroid/hardware/scontext/ISContextListener;

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Landroid/hardware/scontext/SContextUpdateContext;->removeListener()V

    .line 57
    :cond_0
    sput-object p1, Landroid/hardware/scontext/SContextUpdateContext;->mListener:Landroid/hardware/scontext/ISContextListener;

    .line 58
    return-void
.end method

.method reportMessage(ILandroid/hardware/scontext/ISContextContexts;)V
    .locals 3
    .parameter "event"
    .parameter "scontext"

    .prologue
    .line 75
    sget-object v0, Landroid/hardware/scontext/SContextUpdateContext;->mListener:Landroid/hardware/scontext/ISContextListener;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Landroid/hardware/scontext/SContextUpdateContext;->mListener:Landroid/hardware/scontext/ISContextListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/scontext/ISContextListener;->sendEvent(ILandroid/hardware/scontext/ISContextContexts;)V

    .line 77
    const-string v0, "SContextUpdateContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportMessage : Service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    return-void
.end method