.class Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PkgSizeObserver"
.end annotation


# instance fields
.field finished:Z

.field mPkgStats:Landroid/content/pm/PackageStats;

.field result:Z

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3259
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 3260
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->finished:Z

    .line 3262
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->result:Z

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 1
    .parameter "pStats"
    .parameter "succeeded"

    .prologue
    .line 3265
    monitor-enter p0

    .line 3266
    :try_start_0
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 3267
    iput-boolean p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->result:Z

    .line 3268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->finished:Z

    .line 3269
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3270
    monitor-exit p0

    .line 3271
    return-void

    .line 3270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
