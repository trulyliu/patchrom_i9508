.class public Lcom/samsung/wfd/WfdDevice;
.super Ljava/lang/Object;
.source "WfdDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/wfd/WfdDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WfdDevice"


# instance fields
.field public p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public wfdInfo:Lcom/samsung/wfd/WfdInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/samsung/wfd/WfdDevice$1;

    invoke-direct {v0}, Lcom/samsung/wfd/WfdDevice$1;-><init>()V

    sput-object v0, Lcom/samsung/wfd/WfdDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 37
    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdDevice;->readFromParcel(Landroid/os/Parcel;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/samsung/wfd/WfdDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 50
    iget-object v0, p1, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/samsung/wfd/WfdInfo;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .parameter "winfo"
    .parameter "device"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v0, p1}, Lcom/samsung/wfd/WfdInfo;-><init>(Lcom/samsung/wfd/WfdInfo;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 42
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, p2}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 43
    iget-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    iget-object v1, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/wfd/WfdInfo;->coupledDeviceAddress:Ljava/lang/String;

    .line 46
    :cond_0
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdInfo;

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getP2PDevice()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    return-object v0
.end method

.method public setP2PDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 79
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 80
    return-void
.end method

.method public setWfdInfo(Lcom/samsung/wfd/WfdInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 87
    new-instance v0, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v0, p1}, Lcom/samsung/wfd/WfdInfo;-><init>(Lcom/samsung/wfd/WfdInfo;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 88
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/wfd/WfdDevice;->wfdInfo:Lcom/samsung/wfd/WfdInfo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/wfd/WfdDevice;->p2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
