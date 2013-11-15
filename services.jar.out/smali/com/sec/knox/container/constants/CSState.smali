.class public final enum Lcom/sec/knox/container/constants/CSState;
.super Ljava/lang/Enum;
.source "CSState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/knox/container/constants/CSState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

.field public static final enum CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_DOESNOT_EXISTS"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    .line 6
    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_CREATION_INPROGRESS"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    .line 7
    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_ACTIVE"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    .line 8
    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_LOCK"

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    .line 9
    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_LOCK_RESET_PWD"

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    .line 10
    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_INACTIVE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    .line 11
    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_VERIFY_PWD"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    .line 12
    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_RESET_PWD"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    .line 13
    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_INACTIVE_RESET_PWD"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    .line 14
    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_UNINSTALL_INPROGRESS"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    .line 15
    new-instance v0, Lcom/sec/knox/container/constants/CSState;

    const-string v1, "CSSTATE_INVALID"

    const/16 v2, 0xa

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/knox/container/constants/CSState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    .line 3
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/sec/knox/container/constants/CSState;

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/knox/container/constants/CSState;->$VALUES:[Lcom/sec/knox/container/constants/CSState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/constants/CSState;->id:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/knox/container/constants/CSState;->id:I

    return-void
.end method

.method public static getState(I)Lcom/sec/knox/container/constants/CSState;
    .locals 1
    .parameter "id"

    .prologue
    .line 23
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    .line 24
    .local v0, t:Lcom/sec/knox/container/constants/CSState;
    packed-switch p0, :pswitch_data_0

    .line 60
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    .line 63
    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    .line 28
    goto :goto_0

    .line 30
    :pswitch_1
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    .line 31
    goto :goto_0

    .line 33
    :pswitch_2
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    .line 34
    goto :goto_0

    .line 36
    :pswitch_3
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    .line 37
    goto :goto_0

    .line 39
    :pswitch_4
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK:Lcom/sec/knox/container/constants/CSState;

    .line 40
    goto :goto_0

    .line 42
    :pswitch_5
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_LOCK_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    .line 43
    goto :goto_0

    .line 45
    :pswitch_6
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE:Lcom/sec/knox/container/constants/CSState;

    .line 46
    goto :goto_0

    .line 48
    :pswitch_7
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    .line 49
    goto :goto_0

    .line 51
    :pswitch_8
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    .line 52
    goto :goto_0

    .line 54
    :pswitch_9
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INACTIVE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    .line 55
    goto :goto_0

    .line 57
    :pswitch_a
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    .line 58
    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch -0x1
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/knox/container/constants/CSState;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/sec/knox/container/constants/CSState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/constants/CSState;

    return-object v0
.end method

.method public static values()[Lcom/sec/knox/container/constants/CSState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/sec/knox/container/constants/CSState;->$VALUES:[Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v0}, [Lcom/sec/knox/container/constants/CSState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/knox/container/constants/CSState;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/knox/container/constants/CSState;->id:I

    return v0
.end method
