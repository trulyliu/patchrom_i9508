.class Lcom/android/server/BackupManagerService$PerformBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformBackupTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformBackupTask"


# instance fields
.field mBackupData:Landroid/os/ParcelFileDescriptor;

.field mBackupDataName:Ljava/io/File;

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field mCurrentState:Lcom/android/server/BackupManagerService$BackupState;

.field mFinished:Z

.field mJournal:Ljava/io/File;

.field mNewState:Landroid/os/ParcelFileDescriptor;

.field mNewStateName:Ljava/io/File;

.field mOriginalQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSavedState:Landroid/os/ParcelFileDescriptor;

.field mSavedStateName:Ljava/io/File;

.field mStateDir:Ljava/io/File;

.field mStatus:I

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 3
    .parameter
    .parameter "transport"
    .parameter
    .parameter "journal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/backup/IBackupTransport;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1862
    .local p3, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1863
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 1864
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    .line 1865
    iput-object p4, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    .line 1868
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1873
    :goto_0
    sget-object v0, Lcom/android/server/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/BackupManagerService$BackupState;

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/BackupManagerService$BackupState;

    .line 1874
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mFinished:Z

    .line 1876
    const-string v0, "STATE => INITIAL"

    invoke-virtual {p1, v0}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1877
    return-void

    .line 1869
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method agentErrorCleanup()V
    .locals 1

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2397
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2398
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->clearAgentState()V

    .line 2400
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/BackupManagerService$BackupState;)V

    .line 2401
    return-void

    .line 2400
    :cond_0
    sget-object v0, Lcom/android/server/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$BackupState;

    goto :goto_0
.end method

.method beginBackup()V
    .locals 17

    .prologue
    .line 1906
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService;->clearBackupTrace()V

    .line 1907
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1908
    .local v7, b:Ljava/lang/StringBuilder;
    const-string v1, "beginBackup: ["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 1910
    .local v13, req:Lcom/android/server/BackupManagerService$BackupRequest;
    const/16 v1, 0x20

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1911
    iget-object v1, v13, Lcom/android/server/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1913
    .end local v13           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_0
    const-string v1, " ]"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1917
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 1920
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1921
    const-string v1, "PerformBackupTask"

    const-string v2, "Backup begun with an empty queue - nothing to do."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v2, "queue empty at begin"

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1923
    sget-object v1, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/BackupManagerService$BackupState;)V

    .line 1925
    const-string v10, "unknown"

    .line 1926
    .local v10, pack:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1927
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1929
    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Performing user data backup of package "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " failed"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2026
    .end local v10           #pack:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1939
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    .line 1943
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v2, "@pm@"

    invoke-direct {v12, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1945
    .local v12, pmState:Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v14

    .line 1946
    .local v14, transportName:Ljava/lang/String;
    const/16 v1, 0xb05

    invoke-static {v1, v14}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1949
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v1, :cond_4

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    .line 1950
    const-string v1, "PerformBackupTask"

    const-string v2, "Initializing (wiping) backup state and transport storage"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializing transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1952
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 1953
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 1955
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transport.initializeDevice() == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1956
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v1, :cond_8

    .line 1957
    const/16 v1, 0xb0b

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1978
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v1, :cond_5

    .line 1979
    new-instance v11, Lcom/android/server/PackageManagerBackupAgent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Lcom/android/server/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 1981
    .local v11, pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    const-string v1, "@pm@"

    invoke-virtual {v11}, Lcom/android/server/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService$PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 1983
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PMBA invoke: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1986
    .end local v11           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1990
    const/16 v1, 0xb0a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2009
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exiting prelim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2010
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v1, :cond_2

    .line 2012
    const-string v10, "unknown"

    .line 2013
    .restart local v10       #pack:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 2014
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2016
    :cond_7
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Performing user data backup of package "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " failed"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2022
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2023
    sget-object v1, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    .end local v14           #transportName:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/BackupManagerService$BackupState;)V

    goto/16 :goto_1

    .line 1960
    .end local v10           #pack:Ljava/lang/String;
    .restart local v14       #transportName:Ljava/lang/String;
    :cond_8
    :try_start_1
    const-string v10, "unknown"

    .line 1961
    .restart local v10       #pack:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1962
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1964
    :cond_9
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Performing user data backup of package "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " failed"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1968
    const/16 v1, 0xb06

    const-string v2, "(initialize)"

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1969
    const-string v1, "PerformBackupTask"

    const-string v2, "Transport error in initializeDevice()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1992
    .end local v10           #pack:Ljava/lang/String;
    .end local v14           #transportName:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1994
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v10, "unknown"

    .line 1995
    .restart local v10       #pack:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1996
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1998
    :cond_a
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Performing user data backup of package "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " failed"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2002
    const-string v1, "PerformBackupTask"

    const-string v2, "Error in backup thread"

    invoke-static {v1, v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2003
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in backup thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2004
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2009
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exiting prelim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2010
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v1, :cond_2

    .line 2012
    const-string v10, "unknown"

    .line 2013
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 2014
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2016
    :cond_b
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Performing user data backup of package "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " failed"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2022
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2023
    sget-object v1, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    goto/16 :goto_3

    .line 2009
    .end local v8           #e:Ljava/lang/Exception;
    .end local v10           #pack:Ljava/lang/String;
    :catchall_0
    move-exception v1

    move-object v15, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exiting prelim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2010
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v1, :cond_d

    .line 2012
    const-string v10, "unknown"

    .line 2013
    .restart local v10       #pack:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 2014
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2016
    :cond_c
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Performing user data backup of package "

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, " failed"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2022
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2023
    sget-object v1, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/BackupManagerService$BackupState;)V

    .line 2009
    .end local v10           #pack:Ljava/lang/String;
    :cond_d
    throw v15
.end method

.method clearAgentState()V
    .locals 3

    .prologue
    .line 2405
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2406
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2407
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2408
    :cond_2
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 2409
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2410
    :try_start_3
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2411
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2414
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    .line 2415
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbinding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2417
    :try_start_4
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2420
    :cond_3
    :goto_3
    return-void

    .line 2411
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 2418
    :catch_0
    move-exception v0

    goto :goto_3

    .line 2407
    :catch_1
    move-exception v0

    goto :goto_2

    .line 2406
    :catch_2
    move-exception v0

    goto :goto_1

    .line 2405
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method clearMetadata()V
    .locals 3

    .prologue
    .line 2202
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v2, "@pm@"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2203
    .local v0, pmState:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2204
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 1883
    sget-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$BackupState:[I

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/BackupManagerService$BackupState;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$BackupState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1900
    :goto_0
    return-void

    .line 1885
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->beginBackup()V

    goto :goto_0

    .line 1889
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->invokeNextAgent()V

    goto :goto_0

    .line 1893
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->finalizeBackup()V

    .line 1897
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mFinished:Z

    goto :goto_0

    .line 1895
    :cond_0
    const-string v0, "PerformBackupTask"

    const-string v1, "Duplicate finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1883
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/BackupManagerService$BackupState;)V
    .locals 4
    .parameter "nextState"

    .prologue
    .line 2434
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeNextState => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2435
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/BackupManagerService$BackupState;

    .line 2436
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p0}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2437
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2438
    return-void
.end method

.method finalizeBackup()V
    .locals 6

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v1, "finishing"

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2157
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2158
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to remove backup journal file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-wide v0, v0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v0, :cond_1

    .line 2165
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v1, "success; recording token"

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2167
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/BackupManagerService;->mCurrentToken:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2169
    :goto_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 2175
    :cond_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2176
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    .line 2178
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #calls: Lcom/android/server/BackupManagerService;->warnEdmAdminOperationCompleted()V
    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$200(Lcom/android/server/BackupManagerService;)V

    .line 2180
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 2182
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->clearMetadata()V

    .line 2184
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v2, "init required; rerunning"

    invoke-virtual {v0, v2}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2185
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/BackupManagerService;->backupNow()V

    .line 2187
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2190
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Performing user data backup succeeded "

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2195
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/BackupManagerService;->clearBackupTrace()V

    .line 2196
    const-string v0, "PerformBackupTask"

    const-string v1, "Backup pass finished."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2198
    return-void

    .line 2187
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2168
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public handleTimeout()V
    .locals 4

    .prologue
    .line 2376
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout backing up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    const/16 v0, 0xb07

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "timeout"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2379
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V

    .line 2381
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$900(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    .line 2382
    return-void
.end method

.method invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I
    .locals 8
    .parameter "packageName"
    .parameter "agent"
    .parameter "transport"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2211
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2213
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    .line 2214
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    .line 2215
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    .line 2217
    iput-object v5, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 2218
    iput-object v5, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 2219
    iput-object v5, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 2221
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v4

    .line 2226
    .local v4, token:I
    :try_start_0
    const-string v0, "@pm@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2229
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 2230
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2236
    :cond_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    const/high16 v1, 0x1800

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 2240
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    const/high16 v1, 0x3c00

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 2245
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    const/high16 v1, 0x3c00

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 2251
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v1, "setting timeout"

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2252
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v4, v1, v2, p0}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V

    .line 2253
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v1, "calling agent doBackup()"

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2254
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v0, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2268
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v1, "invoke success"

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    move v0, v7

    .line 2269
    :goto_0
    return v0

    .line 2255
    :catch_0
    move-exception v6

    .line 2256
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error invoking for backup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2258
    const/16 v0, 0xb07

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v7

    const/4 v2, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2260
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->agentErrorCleanup()V

    .line 2261
    const/4 v0, 0x3

    goto :goto_0
.end method

.method invokeNextAgent()V
    .locals 15

    .prologue
    .line 2031
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2032
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoke q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2036
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2038
    sget-object v0, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/BackupManagerService$BackupState;)V

    .line 2148
    :goto_0
    return-void

    .line 2043
    :cond_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 2044
    .local v12, request:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2046
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting agent for backup of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch agent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/android/server/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2055
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 2057
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 2061
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/android/server/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " no longer supports backup; skipping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v1, "skipping - no agent, completion is noop"

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2064
    sget-object v0, Lcom/android/server/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$BackupState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/BackupManagerService$BackupState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2099
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2103
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_12

    .line 2104
    sget-object v10, Lcom/android/server/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$BackupState;

    .line 2107
    .local v10, nextState:Lcom/android/server/BackupManagerService$BackupState;
    const-string v11, "unknown"

    .line 2108
    .local v11, pack:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2109
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2111
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Performing user data backup of package "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " failed"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2118
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 2121
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v12, Lcom/android/server/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$900(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    .line 2122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2123
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v10, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    .line 2134
    :cond_2
    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/server/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/BackupManagerService$BackupState;)V

    goto/16 :goto_0

    .line 2069
    .end local v10           #nextState:Lcom/android/server/BackupManagerService$BackupState;
    .end local v11           #pack:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 2071
    .local v7, app:Landroid/content/pm/ApplicationInfo;
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2073
    const/4 v6, 0x0

    .line 2075
    .local v6, agent:Landroid/app/IBackupAgent;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2076
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v6

    .line 2078
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agent bound; a? = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v6, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2079
    if-eqz v6, :cond_6

    .line 2080
    iget-object v0, v12, Lcom/android/server/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {p0, v0, v6, v1}, Lcom/android/server/BackupManagerService$PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v0

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2099
    :goto_3
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2103
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_16

    .line 2104
    sget-object v10, Lcom/android/server/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$BackupState;

    .line 2107
    .restart local v10       #nextState:Lcom/android/server/BackupManagerService$BackupState;
    const-string v11, "unknown"

    .line 2108
    .restart local v11       #pack:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2109
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2111
    :cond_4
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Performing user data backup of package "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " failed"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2118
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 2121
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v12, Lcom/android/server/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$900(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    .line 2122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2123
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v10, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    goto/16 :goto_1

    .line 2078
    .end local v10           #nextState:Lcom/android/server/BackupManagerService$BackupState;
    .end local v11           #pack:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 2086
    :cond_6
    const/4 v0, 0x3

    :try_start_3
    iput v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 2088
    :catch_0
    move-exception v9

    .line 2090
    .local v9, ex:Ljava/lang/SecurityException;
    :try_start_4
    const-string v0, "PerformBackupTask"

    const-string v1, "error in bind/backup"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2091
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2092
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v1, "agent SE"

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 2094
    .end local v6           #agent:Landroid/app/IBackupAgent;
    .end local v7           #app:Landroid/content/pm/ApplicationInfo;
    .end local v9           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v8

    .line 2095
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string v0, "PerformBackupTask"

    const-string v1, "Package does not exist; skipping"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v1, "no such package"

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2097
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2099
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2103
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_e

    .line 2104
    sget-object v10, Lcom/android/server/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$BackupState;

    .line 2107
    .restart local v10       #nextState:Lcom/android/server/BackupManagerService$BackupState;
    const-string v11, "unknown"

    .line 2108
    .restart local v11       #pack:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2109
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2111
    :cond_7
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Performing user data backup of package "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " failed"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2118
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 2121
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v12, Lcom/android/server/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$900(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    .line 2122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2123
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v10, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    goto/16 :goto_1

    .line 2099
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10           #nextState:Lcom/android/server/BackupManagerService$BackupState;
    .end local v11           #pack:Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v13, v0

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2103
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_a

    .line 2104
    sget-object v10, Lcom/android/server/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$BackupState;

    .line 2107
    .restart local v10       #nextState:Lcom/android/server/BackupManagerService$BackupState;
    const-string v11, "unknown"

    .line 2108
    .restart local v11       #pack:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2109
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2111
    :cond_8
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Performing user data backup of package "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " failed"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2118
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 2121
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v12, Lcom/android/server/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$900(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    .line 2122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2123
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v10, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    .line 2134
    :cond_9
    :goto_4
    invoke-virtual {p0, v10}, Lcom/android/server/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/BackupManagerService$BackupState;)V

    .line 2099
    .end local v10           #nextState:Lcom/android/server/BackupManagerService$BackupState;
    :goto_5
    throw v13

    .line 2136
    .end local v11           #pack:Ljava/lang/String;
    :cond_a
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v1, "expecting completion/timeout callback"

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2138
    const-string v11, "unknown"

    .line 2139
    .restart local v11       #pack:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 2140
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2142
    :cond_b
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Performing user data backup of package "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " succeeded"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2124
    .restart local v10       #nextState:Lcom/android/server/BackupManagerService$BackupState;
    :cond_c
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 2127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    goto :goto_4

    .line 2130
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2131
    sget-object v10, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    goto :goto_4

    .line 2136
    .end local v10           #nextState:Lcom/android/server/BackupManagerService$BackupState;
    .end local v11           #pack:Ljava/lang/String;
    .restart local v8       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_e
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v1, "expecting completion/timeout callback"

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2138
    const-string v11, "unknown"

    .line 2139
    .restart local v11       #pack:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 2140
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2142
    :cond_f
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Performing user data backup of package "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " succeeded"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_6
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2124
    .restart local v8       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10       #nextState:Lcom/android/server/BackupManagerService$BackupState;
    :cond_10
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 2127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    goto/16 :goto_1

    .line 2130
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2131
    sget-object v10, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    goto/16 :goto_1

    .line 2136
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10           #nextState:Lcom/android/server/BackupManagerService$BackupState;
    .end local v11           #pack:Ljava/lang/String;
    :cond_12
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v1, "expecting completion/timeout callback"

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2138
    const-string v11, "unknown"

    .line 2139
    .restart local v11       #pack:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 2140
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2142
    :cond_13
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Performing user data backup of package "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " succeeded"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 2124
    .restart local v10       #nextState:Lcom/android/server/BackupManagerService$BackupState;
    :cond_14
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    .line 2127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    goto/16 :goto_1

    .line 2130
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2131
    sget-object v10, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    goto/16 :goto_1

    .line 2136
    .end local v10           #nextState:Lcom/android/server/BackupManagerService$BackupState;
    .end local v11           #pack:Ljava/lang/String;
    .restart local v6       #agent:Landroid/app/IBackupAgent;
    .restart local v7       #app:Landroid/content/pm/ApplicationInfo;
    :cond_16
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v1, "expecting completion/timeout callback"

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2138
    const-string v11, "unknown"

    .line 2139
    .restart local v11       #pack:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 2140
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2142
    :cond_17
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Performing user data backup of package "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " succeeded"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2124
    .restart local v10       #nextState:Lcom/android/server/BackupManagerService$BackupState;
    :cond_18
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 2127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    goto/16 :goto_1

    .line 2130
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2131
    sget-object v10, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    goto/16 :goto_1
.end method

.method public operationComplete()V
    .locals 13

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 2275
    const-string v9, "unknown"

    .line 2276
    .local v9, pack:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2277
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2285
    :cond_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2286
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->clearAgentState()V

    .line 2287
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v4, "operation complete"

    invoke-virtual {v3, v4}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2289
    const/4 v6, 0x0

    .line 2290
    .local v6, backupData:Landroid/os/ParcelFileDescriptor;
    iput v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2292
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v10, v3

    .line 2293
    .local v10, size:I
    if-lez v10, :cond_5

    .line 2294
    iget v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v3, :cond_1

    .line 2295
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    const/high16 v4, 0x1000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 2297
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v4, "sending data to transport"

    invoke-virtual {v3, v4}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2298
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v3, v4, v6}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    iput v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2306
    :cond_1
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data delivered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2307
    iget v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v3, :cond_2

    .line 2308
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v4, "finishing op on transport"

    invoke-virtual {v3, v4}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2309
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v3

    iput v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2310
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finished: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2320
    :cond_2
    :goto_0
    iget v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v3, :cond_6

    .line 2321
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2322
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2323
    const/16 v3, 0xb08

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v11, v4, v5

    const/4 v5, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2325
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2336
    :goto_1
    if-eqz v6, :cond_3

    :try_start_1
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2342
    .end local v10           #size:I
    :cond_3
    :goto_2
    iget v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v3, :cond_8

    .line 2344
    const-string v9, "unknown"

    .line 2345
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 2346
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2348
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Performing user data backup of package "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " failed"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2352
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 2353
    sget-object v8, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    .line 2367
    .local v8, nextState:Lcom/android/server/BackupManagerService$BackupState;
    :goto_3
    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/BackupManagerService$BackupState;)V

    .line 2368
    return-void

    .line 2314
    .end local v8           #nextState:Lcom/android/server/BackupManagerService$BackupState;
    .restart local v10       #size:I
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v4, "no data to send"

    invoke-virtual {v3, v4}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2330
    .end local v10           #size:I
    :catch_0
    move-exception v7

    .line 2331
    .local v7, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "PerformBackupTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport error backing up "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2332
    const/16 v3, 0xb06

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2334
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2336
    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2

    .line 2327
    .restart local v10       #size:I
    :cond_6
    const/16 v3, 0xb06

    :try_start_5
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 2336
    .end local v10           #size:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    :try_start_6
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_7
    :goto_4
    throw v0

    .line 2356
    :cond_8
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 2357
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2359
    :cond_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Performing user data backup of package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " succeeded"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, v12

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2364
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v8, Lcom/android/server/BackupManagerService$BackupState;->FINAL:Lcom/android/server/BackupManagerService$BackupState;

    .restart local v8       #nextState:Lcom/android/server/BackupManagerService$BackupState;
    :goto_5
    goto/16 :goto_3

    .end local v8           #nextState:Lcom/android/server/BackupManagerService$BackupState;
    :cond_a
    sget-object v8, Lcom/android/server/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$BackupState;

    goto :goto_5

    .line 2336
    :catch_2
    move-exception v1

    goto :goto_4
.end method

.method restartBackupAlarm()V
    .locals 4

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v1, "setting backup trigger"

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2424
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2426
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v2

    #calls: Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/BackupManagerService;->access$000(Lcom/android/server/BackupManagerService;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2428
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 2429
    return-void

    .line 2428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2427
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method revertAndEndBackup()V
    .locals 4

    .prologue
    .line 2386
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const-string v3, "transport error; reverting"

    invoke-virtual {v2, v3}, Lcom/android/server/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2387
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 2388
    .local v1, request:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/BackupManagerService;->access$900(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 2392
    .end local v1           #request:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformBackupTask;->restartBackupAlarm()V

    .line 2393
    return-void
.end method
