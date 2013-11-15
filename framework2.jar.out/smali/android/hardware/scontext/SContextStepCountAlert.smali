.class public Landroid/hardware/scontext/SContextStepCountAlert;
.super Ljava/lang/Object;
.source "SContextStepCountAlert.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextStepCountAlert;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlert:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlert$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepCountAlert$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextStepCountAlert;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mAlert:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextStepCountAlert;->readFromParcel(Landroid/os/Parcel;)V

    .line 39
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mAlert:I

    .line 86
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getAlert()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mAlert:I

    return v0
.end method

.method setAlert(I)V
    .locals 0
    .parameter "alert"

    .prologue
    .line 56
    iput p1, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mAlert:I

    .line 57
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 76
    iget v0, p0, Landroid/hardware/scontext/SContextStepCountAlert;->mAlert:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
