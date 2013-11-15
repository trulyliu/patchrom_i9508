.class public Lcom/android/server/ssrm/Monitor$SIOPLevel;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SIOPLevel"
.end annotation


# instance fields
.field private LcdFPS:I

.field private aclOn:Z

.field private cpuMaxCore:I

.field private displayBrightness:I

.field private flashLedDisable:Z

.field private limitChargingCurrent:I

.field private lockFrequency:I

.field private name:Ljava/lang/String;

.field private realOPFreq:I

.field private recordingStop:Z

.field private temperatureThreshold:I

.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZ)V
    .locals 3
    .parameter
    .parameter "_name"
    .parameter "_temperature"
    .parameter "_frequency"
    .parameter "_cpuMaxCore"
    .parameter "_limitChargingCurrent"
    .parameter "_brightness"
    .parameter "_LcdFPS"
    .parameter "_flashLedDisable"
    .parameter "_aclOn"
    .parameter "_recordingStop"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 533
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->realOPFreq:I

    .line 537
    iput-object p2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;

    .line 538
    iput p3, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I

    .line 539
    iput p4, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I

    .line 540
    iput p5, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I

    .line 541
    iput p6, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I

    .line 542
    iput p7, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I

    .line 543
    iput p8, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I

    .line 544
    iput-boolean p9, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z

    .line 545
    iput-boolean p10, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z

    .line 546
    iput-boolean p11, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z

    .line 548
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIOPLevel:: Name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ArmFreq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->realOPFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ArmCoreNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ChargeCurrent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", LCDBrightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Flash = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ACL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Temp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", recordingStop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 522
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 522
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 522
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 522
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/ssrm/Monitor$SIOPLevel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 522
    iput p1, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 522
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/ssrm/Monitor$SIOPLevel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 522
    iput p1, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 522
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 522
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->realOPFreq:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 567
    instance-of v2, p1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-nez v2, :cond_1

    .line 572
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 571
    check-cast v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 572
    .local v0, secondObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z

    iget-boolean v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z

    iget-boolean v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z

    iget-boolean v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->realOPFreq:I

    iget v3, v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->realOPFreq:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method getLcdFrequency()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I

    return v0
.end method

.method getLockFrequency()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I

    return v0
.end method
