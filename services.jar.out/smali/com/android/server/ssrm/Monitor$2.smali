.class Lcom/android/server/ssrm/Monitor$2;
.super Ljava/util/TimerTask;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->readThermistorFile()Z
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$800(Lcom/android/server/ssrm/Monitor;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    if-eqz v0, :cond_1

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->setCurrentLevelfromTemp()V
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$900(Lcom/android/server/ssrm/Monitor;)V

    .line 513
    invoke-static {}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getInstance()Lcom/android/server/ssrm/AmoledAdjustTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/AmoledAdjustTimer;->update()V

    .line 514
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    .line 516
    :cond_1
    return-void
.end method
