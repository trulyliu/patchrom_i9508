.class public Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;
.super Ljava/lang/Object;
.source "PolicyReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PolicyReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommonTriggerAttributeClass"
.end annotation


# static fields
.field static final BUS_MAX:I = 0x5

.field static final BUS_MIN:I = 0x4

.field static final CPU_MAX:I = 0x1

.field static final CPU_MIN:I = 0x0

.field static final GPU_MAX:I = 0x3

.field static final GPU_MIN:I = 0x2

.field static final LCD_MAX:I = 0x7

.field static final LCD_MIN:I = 0x6


# instance fields
.field private bus_max:Ljava/lang/String;

.field private bus_min:Ljava/lang/String;

.field private cpu_max:Ljava/lang/String;

.field private cpu_min:Ljava/lang/String;

.field private exceptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;",
            ">;"
        }
    .end annotation
.end field

.field private gpu_max:Ljava/lang/String;

.field private gpu_min:Ljava/lang/String;

.field isBusMax:Z

.field isGpuMax:Z

.field private lcd_max:Ljava/lang/String;

.field private lcd_min:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private statusName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ssrm/PolicyReader;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/ssrm/PolicyReader;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 475
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->this$0:Lcom/android/server/ssrm/PolicyReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_min:Ljava/lang/String;

    .line 449
    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_max:Ljava/lang/String;

    .line 453
    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_min:Ljava/lang/String;

    .line 454
    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_max:Ljava/lang/String;

    .line 458
    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_min:Ljava/lang/String;

    .line 459
    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_max:Ljava/lang/String;

    .line 463
    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_min:Ljava/lang/String;

    .line 464
    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_max:Ljava/lang/String;

    .line 470
    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->isGpuMax:Z

    .line 471
    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->isBusMax:Z

    .line 476
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->packageName:Ljava/lang/String;

    .line 477
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->statusName:Ljava/lang/String;

    .line 478
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->value:Ljava/lang/String;

    .line 479
    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/String;)V
    .locals 0
    .parameter "actionType"
    .parameter "value"

    .prologue
    .line 482
    packed-switch p1, :pswitch_data_0

    .line 508
    :goto_0
    return-void

    .line 484
    :pswitch_0
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_min:Ljava/lang/String;

    goto :goto_0

    .line 487
    :pswitch_1
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_max:Ljava/lang/String;

    goto :goto_0

    .line 490
    :pswitch_2
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_min:Ljava/lang/String;

    goto :goto_0

    .line 493
    :pswitch_3
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_max:Ljava/lang/String;

    goto :goto_0

    .line 496
    :pswitch_4
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_min:Ljava/lang/String;

    goto :goto_0

    .line 499
    :pswitch_5
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_max:Ljava/lang/String;

    goto :goto_0

    .line 502
    :pswitch_6
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_min:Ljava/lang/String;

    goto :goto_0

    .line 505
    :pswitch_7
    iput-object p2, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_max:Ljava/lang/String;

    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getActionValue(I)Ljava/lang/String;
    .locals 1
    .parameter "actionType"

    .prologue
    .line 560
    packed-switch p1, :pswitch_data_0

    .line 578
    const-string v0, ""

    :goto_0
    return-object v0

    .line 562
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_min:Ljava/lang/String;

    goto :goto_0

    .line 564
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_max:Ljava/lang/String;

    goto :goto_0

    .line 566
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_min:Ljava/lang/String;

    goto :goto_0

    .line 568
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_max:Ljava/lang/String;

    goto :goto_0

    .line 570
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_min:Ljava/lang/String;

    goto :goto_0

    .line 572
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_max:Ljava/lang/String;

    goto :goto_0

    .line 574
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_min:Ljava/lang/String;

    goto :goto_0

    .line 576
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_max:Ljava/lang/String;

    goto :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getBusMaxActionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_max:Ljava/lang/String;

    return-object v0
.end method

.method public getBusMinActionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->bus_min:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonExceptionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->exceptionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCpuMaxActionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_max:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuMinActionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->cpu_min:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuMaxActionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_max:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuMinActionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->gpu_min:Ljava/lang/String;

    return-object v0
.end method

.method public getLcdMaxActionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_max:Ljava/lang/String;

    return-object v0
.end method

.method public getLcdMinActionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->lcd_min:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->statusName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setExceptionList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, exception:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;>;"
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->exceptionList:Ljava/util/ArrayList;

    .line 521
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->packageName:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public setStatusName(Ljava/lang/String;)V
    .locals 0
    .parameter "statusName"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->statusName:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->value:Ljava/lang/String;

    .line 518
    return-void
.end method
