.class public Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
.super Ljava/lang/Object;
.source "PolicyReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PolicyReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThermistorDataSets"
.end annotation


# instance fields
.field private ACL:Ljava/lang/String;

.field private ARMCore:I

.field private ARMFreq:I

.field private Flash:Ljava/lang/String;

.field private chargeCurent:I

.field private mLcdBrightness:I

.field private mLevel:I

.field private mRecordingStop:Ljava/lang/String;

.field private mTemprature:I

.field final synthetic this$0:Lcom/android/server/ssrm/PolicyReader;


# direct methods
.method public constructor <init>(Lcom/android/server/ssrm/PolicyReader;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 354
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->this$0:Lcom/android/server/ssrm/PolicyReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLevel:I

    .line 357
    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mTemprature:I

    .line 358
    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMFreq:I

    .line 359
    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLcdBrightness:I

    .line 360
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    .line 361
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    .line 362
    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMCore:I

    .line 363
    iput v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->chargeCurent:I

    .line 364
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mRecordingStop:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAclState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, flag:Z
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 429
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 434
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v0

    .line 432
    goto :goto_0
.end method

.method public getArmCore()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMCore:I

    return v0
.end method

.method public getArmFreq()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMFreq:I

    return v0
.end method

.method public getChargeCurrent()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->chargeCurent:I

    return v0
.end method

.method public getFlashState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, flag:Z
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    const-string v3, "OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 411
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 415
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v0

    .line 413
    goto :goto_0
.end method

.method public getLcdBrightness()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLcdBrightness:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLevel:I

    return v0
.end method

.method public getSurfaceTemp()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mTemprature:I

    return v0
.end method

.method public isRecordingStop()Z
    .locals 2

    .prologue
    .line 397
    const-string v0, "on"

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mRecordingStop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x1

    .line 400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAcl(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ACL:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setArmCore(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 385
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMCore:I

    .line 386
    return-void
.end method

.method public setArmFreq(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 376
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->ARMFreq:I

    .line 377
    return-void
.end method

.method public setChargeCurrent(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 391
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->chargeCurent:I

    .line 392
    return-void
.end method

.method public setFlash(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->Flash:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setLcdBrightness(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 379
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLcdBrightness:I

    .line 380
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mLevel:I

    .line 368
    return-void
.end method

.method public setRecordingStop(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mRecordingStop:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setSurfaceTemp(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 370
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->mTemprature:I

    .line 371
    return-void
.end method
