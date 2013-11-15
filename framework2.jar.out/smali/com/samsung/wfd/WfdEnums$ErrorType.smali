.class public final enum Lcom/samsung/wfd/WfdEnums$ErrorType;
.super Ljava/lang/Enum;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wfd/WfdEnums$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wfd/WfdEnums$ErrorType;

.field public static final enum ALREADY_INITIALIZED:Lcom/samsung/wfd/WfdEnums$ErrorType;

.field public static final enum HDMI_CABLE_CONNECTED:Lcom/samsung/wfd/WfdEnums$ErrorType;

.field public static final enum INCORRECT_STATE_FOR_OPERATION:Lcom/samsung/wfd/WfdEnums$ErrorType;

.field public static final enum INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

.field public static final enum NOT_INITIALIZED:Lcom/samsung/wfd/WfdEnums$ErrorType;

.field public static final enum NOT_SINK_DEVICE:Lcom/samsung/wfd/WfdEnums$ErrorType;

.field public static final enum OPERATION_TIMED_OUT:Lcom/samsung/wfd/WfdEnums$ErrorType;

.field public static final enum SESSION_IN_PROGRESS:Lcom/samsung/wfd/WfdEnums$ErrorType;

.field public static final enum UIBC_ALREADY_ENABLED:Lcom/samsung/wfd/WfdEnums$ErrorType;

.field public static final enum UIBC_NOT_ENABLED:Lcom/samsung/wfd/WfdEnums$ErrorType;

.field public static final enum UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 398
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ErrorType;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ErrorType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;

    .line 399
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ErrorType;

    const-string v1, "INVALID_ARG"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ErrorType;->INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

    .line 400
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ErrorType;

    const-string v1, "HDMI_CABLE_CONNECTED"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ErrorType;->HDMI_CABLE_CONNECTED:Lcom/samsung/wfd/WfdEnums$ErrorType;

    .line 401
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ErrorType;

    const-string v1, "OPERATION_TIMED_OUT"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ErrorType;->OPERATION_TIMED_OUT:Lcom/samsung/wfd/WfdEnums$ErrorType;

    .line 402
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ErrorType;

    const-string v1, "ALREADY_INITIALIZED"

    const/16 v2, -0xa

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/wfd/WfdEnums$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ErrorType;->ALREADY_INITIALIZED:Lcom/samsung/wfd/WfdEnums$ErrorType;

    .line 403
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ErrorType;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x5

    const/16 v3, -0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ErrorType;->NOT_INITIALIZED:Lcom/samsung/wfd/WfdEnums$ErrorType;

    .line 404
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ErrorType;

    const-string v1, "SESSION_IN_PROGRESS"

    const/4 v2, 0x6

    const/16 v3, -0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ErrorType;->SESSION_IN_PROGRESS:Lcom/samsung/wfd/WfdEnums$ErrorType;

    .line 405
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ErrorType;

    const-string v1, "INCORRECT_STATE_FOR_OPERATION"

    const/4 v2, 0x7

    const/16 v3, -0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ErrorType;->INCORRECT_STATE_FOR_OPERATION:Lcom/samsung/wfd/WfdEnums$ErrorType;

    .line 406
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ErrorType;

    const-string v1, "NOT_SINK_DEVICE"

    const/16 v2, 0x8

    const/16 v3, -0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ErrorType;->NOT_SINK_DEVICE:Lcom/samsung/wfd/WfdEnums$ErrorType;

    .line 407
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ErrorType;

    const-string v1, "UIBC_NOT_ENABLED"

    const/16 v2, 0x9

    const/16 v3, -0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ErrorType;->UIBC_NOT_ENABLED:Lcom/samsung/wfd/WfdEnums$ErrorType;

    .line 408
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ErrorType;

    const-string v1, "UIBC_ALREADY_ENABLED"

    const/16 v2, 0xa

    const/16 v3, -0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/wfd/WfdEnums$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ErrorType;->UIBC_ALREADY_ENABLED:Lcom/samsung/wfd/WfdEnums$ErrorType;

    .line 397
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/samsung/wfd/WfdEnums$ErrorType;

    sget-object v1, Lcom/samsung/wfd/WfdEnums$ErrorType;->UNKNOWN:Lcom/samsung/wfd/WfdEnums$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/wfd/WfdEnums$ErrorType;->INVALID_ARG:Lcom/samsung/wfd/WfdEnums$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/wfd/WfdEnums$ErrorType;->HDMI_CABLE_CONNECTED:Lcom/samsung/wfd/WfdEnums$ErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/wfd/WfdEnums$ErrorType;->OPERATION_TIMED_OUT:Lcom/samsung/wfd/WfdEnums$ErrorType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/wfd/WfdEnums$ErrorType;->ALREADY_INITIALIZED:Lcom/samsung/wfd/WfdEnums$ErrorType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->NOT_INITIALIZED:Lcom/samsung/wfd/WfdEnums$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->SESSION_IN_PROGRESS:Lcom/samsung/wfd/WfdEnums$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->INCORRECT_STATE_FOR_OPERATION:Lcom/samsung/wfd/WfdEnums$ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->NOT_SINK_DEVICE:Lcom/samsung/wfd/WfdEnums$ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->UIBC_NOT_ENABLED:Lcom/samsung/wfd/WfdEnums$ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/wfd/WfdEnums$ErrorType;->UIBC_ALREADY_ENABLED:Lcom/samsung/wfd/WfdEnums$ErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/wfd/WfdEnums$ErrorType;->$VALUES:[Lcom/samsung/wfd/WfdEnums$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 412
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 413
    iput p3, p0, Lcom/samsung/wfd/WfdEnums$ErrorType;->code:I

    .line 414
    return-void
.end method

.method public static getValue(I)Lcom/samsung/wfd/WfdEnums$ErrorType;
    .locals 5
    .parameter "c"

    .prologue
    .line 421
    invoke-static {}, Lcom/samsung/wfd/WfdEnums$ErrorType;->values()[Lcom/samsung/wfd/WfdEnums$ErrorType;

    move-result-object v0

    .local v0, arr$:[Lcom/samsung/wfd/WfdEnums$ErrorType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 422
    .local v1, e:Lcom/samsung/wfd/WfdEnums$ErrorType;
    iget v4, v1, Lcom/samsung/wfd/WfdEnums$ErrorType;->code:I

    if-ne v4, p0, :cond_0

    .line 425
    .end local v1           #e:Lcom/samsung/wfd/WfdEnums$ErrorType;
    :goto_1
    return-object v1

    .line 421
    .restart local v1       #e:Lcom/samsung/wfd/WfdEnums$ErrorType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    .end local v1           #e:Lcom/samsung/wfd/WfdEnums$ErrorType;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wfd/WfdEnums$ErrorType;
    .locals 1
    .parameter "name"

    .prologue
    .line 397
    const-class v0, Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdEnums$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wfd/WfdEnums$ErrorType;
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lcom/samsung/wfd/WfdEnums$ErrorType;->$VALUES:[Lcom/samsung/wfd/WfdEnums$ErrorType;

    invoke-virtual {v0}, [Lcom/samsung/wfd/WfdEnums$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wfd/WfdEnums$ErrorType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/samsung/wfd/WfdEnums$ErrorType;->code:I

    return v0
.end method
