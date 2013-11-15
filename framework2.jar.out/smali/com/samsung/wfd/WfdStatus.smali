.class public Lcom/samsung/wfd/WfdStatus;
.super Ljava/lang/Object;
.source "WfdStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/wfd/WfdStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public connectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public sessionId:I

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/samsung/wfd/WfdStatus$1;

    invoke-direct {v0}, Lcom/samsung/wfd/WfdStatus$1;-><init>()V

    sput-object v0, Lcom/samsung/wfd/WfdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/samsung/wfd/WfdEnums$SessionState;->INVALID:Lcom/samsung/wfd/WfdEnums$SessionState;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdEnums$SessionState;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/samsung/wfd/WfdStatus;->state:I

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/wfd/WfdStatus;->sessionId:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/wfd/WfdStatus;->connectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/wfd/WfdStatus;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/samsung/wfd/WfdStatus;->sessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/samsung/wfd/WfdStatus;->connectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
