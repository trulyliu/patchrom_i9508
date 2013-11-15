.class public Lcom/sec/knox/container/EnterpriseContainerObjectParam;
.super Ljava/lang/Object;
.source "EnterpriseContainerObjectParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/knox/container/EnterpriseContainerObjectParam;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EnterpriseContainerObjectParam"


# instance fields
.field private mAdmin:I

.field private mApkInstallPath:Ljava/lang/String;

.field private mContainerCreationRequestId:I

.field private mEmail:Ljava/lang/String;

.field private mLockType:I

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mSecurityIcon:Landroid/graphics/Bitmap;

.field private mSecurityText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;

    invoke-direct {v0}, Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;-><init>()V

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    .line 20
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 22
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 23
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    .line 20
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 22
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 23
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getAdmin()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    return v0
.end method

.method public getApkInstallPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getLockType()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    return v0
.end method

.method public getSecurityIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSecurityText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    return-object v0
.end method

.method public setAdmin(I)V
    .locals 0
    .parameter "admin"

    .prologue
    .line 104
    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    .line 105
    return-void
.end method

.method public setApkInstallPath(Ljava/lang/String;)V
    .locals 0
    .parameter "apkPath"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setLockType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 112
    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 113
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setRequestId(I)V
    .locals 0
    .parameter "requestId"

    .prologue
    .line 96
    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 97
    return-void
.end method

.method public setSecurityIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "securityIcon"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 89
    return-void
.end method

.method public setSecurityText(Ljava/lang/String;)V
    .locals 0
    .parameter "securityText"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    :goto_1
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    :goto_2
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    :goto_3
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 161
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    :goto_4
    return-void

    .line 139
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    const-string v0, "EnterpriseContainerObjectParam"

    const-string v1, "writeToParcel Password null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    const-string v0, "EnterpriseContainerObjectParam"

    const-string v1, "writeToParcel Password null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 151
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    const-string v0, "EnterpriseContainerObjectParam"

    const-string v1, "writeToParcel Email null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 157
    :cond_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    const-string v0, "EnterpriseContainerObjectParam"

    const-string v1, "writeToParcel Security Text null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 167
    :cond_4
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    const-string v0, "EnterpriseContainerObjectParam"

    const-string v1, "writeToParcel mApkInstallPath null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
