.class final Landroid/content/pm/ContainerEncryptionParams$1;
.super Ljava/lang/Object;
.source "ContainerEncryptionParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ContainerEncryptionParams;
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
        "Landroid/content/pm/ContainerEncryptionParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 376
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ContainerEncryptionParams;
    .locals 4
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 379
    :try_start_0
    new-instance v1, Landroid/content/pm/ContainerEncryptionParams;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Landroid/os/Parcel;Landroid/content/pm/ContainerEncryptionParams$1;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-object v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    const-string v1, "ContainerEncryptionParams"

    const-string v3, "Invalid algorithm parameters specified"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 382
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Landroid/content/pm/ContainerEncryptionParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ContainerEncryptionParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/ContainerEncryptionParams;
    .locals 1
    .parameter "size"

    .prologue
    .line 387
    new-array v0, p1, [Landroid/content/pm/ContainerEncryptionParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Landroid/content/pm/ContainerEncryptionParams$1;->newArray(I)[Landroid/content/pm/ContainerEncryptionParams;

    move-result-object v0

    return-object v0
.end method
