.class Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;
.super Ljava/util/ArrayList;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrequencyRequestList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1184
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    return-void
.end method


# virtual methods
.method addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V
    .locals 4
    .parameter "req"

    .prologue
    .line 1186
    iget-object v1, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget v2, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v3, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    .line 1187
    .local v0, index:I
    if-gez v0, :cond_1

    .line 1188
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "FrequencyrequestList.addReqest:: insert new request."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->add(Ljava/lang/Object;)Z

    .line 1193
    :cond_1
    return-void
.end method

.method dumpFrequencyList()V
    .locals 6

    .prologue
    .line 1399
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    #getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;
    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$200(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    move-result-object v3

    monitor-enter v3

    .line 1400
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v0

    .line 1401
    .local v0, N:I
    if-nez v0, :cond_0

    .line 1402
    monitor-exit v3

    .line 1421
    :goto_0
    return-void

    .line 1404
    :cond_0
    const-string v2, "CustomFrequencyManagerService"

    const-string v4, "############################ Start : LCD BUS GPU ###############################"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 1406
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1407
    const-string v4, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GPU     "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  Frequency = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v4, 0xb

    if-ne v2, v4, :cond_3

    .line 1410
    :cond_2
    const-string v4, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BUS     "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  Frequency = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    .line 1413
    const-string v4, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPU CORE "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  Frequency = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    .line 1416
    const-string v4, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LCD     "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  Frequency = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1419
    :cond_6
    const-string v2, "CustomFrequencyManagerService"

    const-string v4, "############################ End :  LCD BUS GPU ###############################"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    monitor-exit v3

    goto/16 :goto_0

    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getAllCPUCoreLocks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v0

    .line 1223
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1224
    .local v2, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1225
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1226
    .local v3, tempLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v3, :cond_1

    .line 1227
    iget-object v4, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget v4, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 1228
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1232
    .end local v3           #tempLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_2
    return-object v2
.end method

.method getIndex(Landroid/os/IBinder;ILjava/lang/String;)I
    .locals 5
    .parameter "binder"
    .parameter "reqType"
    .parameter "pkgName"

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v1

    .line 1209
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1210
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    if-ne v2, p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1211
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1212
    const-string v2, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FrequencyrequestList.getIndex:: i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v0

    .line 1209
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1217
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method getNextMaxCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1367
    .local v5, size:I
    const/4 v2, -0x1

    .line 1368
    .local v2, indexMaxCPUCoreRequest:I
    const/4 v4, -0x1

    .line 1372
    .local v4, maxFrequency:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1373
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 1374
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1376
    .local v0, frequency:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 1377
    move v4, v0

    .line 1378
    move v2, v1

    .line 1372
    .end local v0           #frequency:I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1380
    .restart local v0       #frequency:I
    :cond_1
    if-le v0, v4, :cond_0

    .line 1381
    move v4, v0

    .line 1382
    move v2, v1

    goto :goto_1

    .line 1388
    .end local v0           #frequency:I
    :cond_2
    if-ltz v2, :cond_3

    .line 1389
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxCPUCoreRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1395
    .local v3, maxCPUCoreRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v3

    .line 1392
    .end local v3           #maxCPUCoreRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #maxCPUCoreRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method getNextMaxGPURequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1236
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1237
    .local v5, size:I
    const/4 v2, -0x1

    .line 1238
    .local v2, indexMaxGPURequest:I
    const/4 v3, -0x1

    .line 1242
    .local v3, maxFrequency:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1243
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1244
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1246
    .local v0, frequency:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 1247
    move v3, v0

    .line 1248
    move v2, v1

    .line 1242
    .end local v0           #frequency:I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1250
    .restart local v0       #frequency:I
    :cond_1
    if-le v0, v3, :cond_0

    .line 1251
    move v3, v0

    .line 1252
    move v2, v1

    goto :goto_1

    .line 1258
    .end local v0           #frequency:I
    :cond_2
    if-ltz v2, :cond_4

    .line 1259
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$300()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1260
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxGPURequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1267
    .local v4, maxGPURequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v4

    .line 1264
    .end local v4           #maxGPURequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #maxGPURequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method getNextMaxSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1271
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1272
    .local v5, size:I
    const/4 v2, -0x1

    .line 1273
    .local v2, indexMaxSysBusRequest:I
    const/4 v3, -0x1

    .line 1277
    .local v3, maxFrequency:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1278
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    .line 1279
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1281
    .local v0, frequency:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 1282
    move v3, v0

    .line 1283
    move v2, v1

    .line 1277
    .end local v0           #frequency:I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1285
    .restart local v0       #frequency:I
    :cond_1
    if-le v0, v3, :cond_0

    .line 1286
    move v3, v0

    .line 1287
    move v2, v1

    goto :goto_1

    .line 1293
    .end local v0           #frequency:I
    :cond_2
    if-ltz v2, :cond_4

    .line 1294
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$300()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1295
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxSysBusRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1301
    .local v4, maxSysBusRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v4

    .line 1299
    .end local v4           #maxSysBusRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #maxSysBusRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method getNextMinCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1334
    .local v5, size:I
    const/4 v2, -0x1

    .line 1335
    .local v2, indexMinCPUCoreRequest:I
    const/4 v4, -0x1

    .line 1339
    .local v4, minFrequency:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1340
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 1341
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1343
    .local v0, frequency:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 1344
    move v4, v0

    .line 1345
    move v2, v1

    .line 1339
    .end local v0           #frequency:I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1347
    .restart local v0       #frequency:I
    :cond_1
    if-ge v0, v4, :cond_0

    .line 1348
    move v4, v0

    .line 1349
    move v2, v1

    goto :goto_1

    .line 1355
    .end local v0           #frequency:I
    :cond_2
    if-ltz v2, :cond_3

    .line 1356
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMinCPUCoreRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1362
    .local v3, minCPUCoreRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v3

    .line 1359
    .end local v3           #minCPUCoreRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #minCPUCoreRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method getNextMinSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1305
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1306
    .local v5, size:I
    const/4 v2, -0x1

    .line 1307
    .local v2, indexMinSysBusRequest:I
    const/4 v3, -0x1

    .line 1310
    .local v3, minFrequency:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1311
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_0

    .line 1312
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1313
    .local v0, frequency:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 1314
    move v3, v0

    .line 1315
    move v2, v1

    .line 1310
    .end local v0           #frequency:I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1317
    .restart local v0       #frequency:I
    :cond_1
    if-ge v0, v3, :cond_0

    .line 1318
    move v3, v0

    .line 1319
    move v2, v1

    goto :goto_1

    .line 1324
    .end local v0           #frequency:I
    :cond_2
    if-ltz v2, :cond_3

    .line 1325
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMinSysBusRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1330
    .local v4, minSysBusRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v4

    .line 1328
    .end local v4           #minSysBusRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #minSysBusRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .locals 4
    .parameter "binder"
    .parameter "type"
    .parameter "pkgName"

    .prologue
    .line 1196
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    .line 1197
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 1198
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1199
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrequencyrequestList.removeRequest:: index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1203
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
