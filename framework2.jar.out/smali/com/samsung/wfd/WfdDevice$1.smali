.class final Lcom/samsung/wfd/WfdDevice$1;
.super Ljava/lang/Object;
.source "WfdDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdDevice;
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
        "Lcom/samsung/wfd/WfdDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wfd/WfdDevice;
    .locals 1
    .parameter "in"

    .prologue
    .line 27
    new-instance v0, Lcom/samsung/wfd/WfdDevice;

    invoke-direct {v0, p1}, Lcom/samsung/wfd/WfdDevice;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/wfd/WfdDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wfd/WfdDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/wfd/WfdDevice;
    .locals 1
    .parameter "size"

    .prologue
    .line 31
    new-array v0, p1, [Lcom/samsung/wfd/WfdDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/wfd/WfdDevice$1;->newArray(I)[Lcom/samsung/wfd/WfdDevice;

    move-result-object v0

    return-object v0
.end method
