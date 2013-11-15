.class final Lcom/samsung/wfd/WfdInfo$1;
.super Ljava/lang/Object;
.source "WfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/wfd/WfdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wfd/WfdInfo;
    .locals 4
    .parameter "in"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 296
    new-instance v0, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v0}, Lcom/samsung/wfd/WfdInfo;-><init>()V

    .line 297
    .local v0, wfdInfo:Lcom/samsung/wfd/WfdInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->sessionMgmtCtrlPort:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->maxThroughput:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->deviceType:I

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->preferredConnectivity:I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdInfo;->coupledSinkStatus:I

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/wfd/WfdInfo;->coupledDeviceAddress:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySink:Z

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isAvailableForSession:Z

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isCoupledSinkSupportedBySource:Z

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isContentProtectionSupported:Z

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_5
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isTimeSynchronizationSupported:Z

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_6
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_7
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isAudioOnlySupportedAtSource:Z

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_8
    iput-boolean v1, v0, Lcom/samsung/wfd/WfdInfo;->isTDLSPersistentGroupIntended:Z

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_9

    :goto_9
    iput-boolean v2, v0, Lcom/samsung/wfd/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    .line 318
    return-object v0

    :cond_0
    move v1, v3

    .line 308
    goto :goto_0

    :cond_1
    move v1, v3

    .line 309
    goto :goto_1

    :cond_2
    move v1, v3

    .line 310
    goto :goto_2

    :cond_3
    move v1, v3

    .line 311
    goto :goto_3

    :cond_4
    move v1, v3

    .line 312
    goto :goto_4

    :cond_5
    move v1, v3

    .line 313
    goto :goto_5

    :cond_6
    move v1, v3

    .line 314
    goto :goto_6

    :cond_7
    move v1, v3

    .line 315
    goto :goto_7

    :cond_8
    move v1, v3

    .line 316
    goto :goto_8

    :cond_9
    move v2, v3

    .line 317
    goto :goto_9
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/samsung/wfd/WfdInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wfd/WfdInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/wfd/WfdInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 322
    new-array v0, p1, [Lcom/samsung/wfd/WfdInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/samsung/wfd/WfdInfo$1;->newArray(I)[Lcom/samsung/wfd/WfdInfo;

    move-result-object v0

    return-object v0
.end method
