.class public Lcom/sec/knox/container/manager/StateManager;
.super Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;
.source "StateManager.java"


# static fields
.field private static mInstance:Lcom/sec/knox/container/manager/StateManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field mClientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/knox/container/manager/IStateManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerState:Lcom/sec/knox/container/constants/CSState;

.field private mCtx:Landroid/content/Context;

.field private mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

.field private mStateHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStateTable:[[Lcom/sec/knox/container/constants/CSState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/knox/container/manager/StateManager;->mInstance:Lcom/sec/knox/container/manager/StateManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "ctx"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;-><init>(Landroid/content/Context;)V

    .line 20
    const-string v0, "StateManager"

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [[Lcom/sec/knox/container/constants/CSState;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/sec/knox/container/constants/CSState;

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/sec/knox/container/constants/CSState;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    .line 54
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mContainerState:Lcom/sec/knox/container/constants/CSState;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mCtx:Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateHashMap:Ljava/util/HashMap;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mClientList:Ljava/util/ArrayList;

    .line 63
    const-string v0, "ECS_Statemanager"

    const-string v1, "StateManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-object p1, p0, Lcom/sec/knox/container/manager/StateManager;->mCtx:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    invoke-direct {v0}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    .line 66
    iget-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "  *******  ECS_StateManager"

    const-string v1, "HashMap is not null, clearing ................"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 70
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mStateHashMap:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mClientList:Ljava/util/ArrayList;

    .line 72
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/knox/container/manager/StateManager;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 75
    sget-object v0, Lcom/sec/knox/container/manager/StateManager;->mInstance:Lcom/sec/knox/container/manager/StateManager;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/sec/knox/container/manager/StateManager;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/manager/StateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/knox/container/manager/StateManager;->mInstance:Lcom/sec/knox/container/manager/StateManager;

    .line 78
    :cond_0
    sget-object v0, Lcom/sec/knox/container/manager/StateManager;->mInstance:Lcom/sec/knox/container/manager/StateManager;

    return-object v0
.end method

.method private updateStateChangeToClients(ILcom/sec/knox/container/constants/CSState;)I
    .locals 5
    .parameter "containerId"
    .parameter "newState"

    .prologue
    .line 93
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, "_ECS_ECS updateStateChangeToClients"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/manager/IStateManagerCallback;

    .line 95
    .local v0, cb:Lcom/sec/knox/container/manager/IStateManagerCallback;
    const-string v2, "ECS_Statemanager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling Client callback function id["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], state["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-interface {v0, p1, p2}, Lcom/sec/knox/container/manager/IStateManagerCallback;->onContainerStateChange(ILcom/sec/knox/container/constants/CSState;)V

    goto :goto_0

    .line 99
    .end local v0           #cb:Lcom/sec/knox/container/manager/IStateManagerCallback;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;
    .locals 5
    .parameter "containerId"

    .prologue
    .line 146
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " V-1: Container Id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v0, -0x1

    .line 148
    .local v0, currState:I
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(IZ)I

    move-result v0

    .line 149
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, " Got the currState in HASH"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Current Status in DB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {v0}, Lcom/sec/knox/container/constants/CSState;->getState(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v1

    .line 157
    .local v1, state:Lcom/sec/knox/container/constants/CSState;
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NewState :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-object v1

    .line 152
    .end local v1           #state:Lcom/sec/knox/container/constants/CSState;
    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, " ************ no entry in HASH **********"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->mCtx:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getContainerStatus(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method public registerClientCallback(Lcom/sec/knox/container/manager/IStateManagerCallback;)I
    .locals 2
    .parameter "callbackObj"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v1, "_ECS_ECS registerCallbackClient"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/sec/knox/container/manager/StateManager;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;
    .locals 6
    .parameter "containerId"
    .parameter "currentState"
    .parameter "event"

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Container Id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " transitState currentState Id   :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Event Id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getting new State  of State["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], Event ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] from mStateTable["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    array-length v2, v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v2

    if-gez v2, :cond_1

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, "Invalid array index passed, returning"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_0
    monitor-exit p0

    return-object v2

    .line 117
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->mStateTable:[[Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p3}, Lcom/sec/knox/container/constants/CSEvent;->getId()I

    move-result v3

    aget-object v1, v2, v3

    .line 118
    .local v1, newState:Lcom/sec/knox/container/constants/CSState;
    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v1, v2}, Lcom/sec/knox/container/constants/CSState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State Transit from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ====>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "activestatus"

    invoke-virtual {v1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    iget-object v3, p0, Lcom/sec/knox/container/manager/StateManager;->mCtx:Landroid/content/Context;

    sget-object v4, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v0, p1}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, " Updated into DB"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    move-object p2, v1

    .line 139
    invoke-virtual {p2}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/sec/knox/container/manager/StateManager;->setContainerStatus(II)V

    .line 140
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, "_ECS_ECS updateStateChangeToClients"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/knox/container/manager/StateManager;->updateStateChangeToClients(ILcom/sec/knox/container/constants/CSState;)I

    move-object v2, p2

    .line 142
    goto :goto_0

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, "Saving STATE into DB FAILED"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    goto/16 :goto_0

    .line 134
    .end local v0           #contentValues:Landroid/content/ContentValues;
    :cond_3
    iget-object v2, p0, Lcom/sec/knox/container/manager/StateManager;->TAG:Ljava/lang/String;

    const-string v3, "New State is CSSTATE_INVALID"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 103
    .end local v1           #newState:Lcom/sec/knox/container/constants/CSState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public unRegisterClientCallback(Lcom/sec/knox/container/manager/IStateManagerCallback;)I
    .locals 1
    .parameter "callbackObj"

    .prologue
    .line 89
    const/4 v0, -0x1

    return v0
.end method
