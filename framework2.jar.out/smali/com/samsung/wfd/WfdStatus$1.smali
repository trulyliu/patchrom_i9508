.class final Lcom/samsung/wfd/WfdStatus$1;
.super Ljava/lang/Object;
.source "WfdStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdStatus;
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
        "Lcom/samsung/wfd/WfdStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wfd/WfdStatus;
    .locals 2
    .parameter "source"

    .prologue
    .line 32
    new-instance v0, Lcom/samsung/wfd/WfdStatus;

    invoke-direct {v0}, Lcom/samsung/wfd/WfdStatus;-><init>()V

    .line 33
    .local v0, ret:Lcom/samsung/wfd/WfdStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdStatus;->state:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/wfd/WfdStatus;->sessionId:I

    .line 35
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v1, v0, Lcom/samsung/wfd/WfdStatus;->connectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 36
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/wfd/WfdStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wfd/WfdStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/wfd/WfdStatus;
    .locals 1
    .parameter "size"

    .prologue
    .line 41
    new-array v0, p1, [Lcom/samsung/wfd/WfdStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/wfd/WfdStatus$1;->newArray(I)[Lcom/samsung/wfd/WfdStatus;

    move-result-object v0

    return-object v0
.end method
