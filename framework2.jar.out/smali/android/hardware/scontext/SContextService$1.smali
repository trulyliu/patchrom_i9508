.class Landroid/hardware/scontext/SContextService$1;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/ContextAwareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextService;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "type"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 720
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    if-ne p1, v0, :cond_1

    .line 721
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    move-result-object v0

    iput v3, v0, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;->mApproach:I

    .line 722
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    iget-object v1, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    move-result-object v1

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v0, v3, v1}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    if-ne p1, v0, :cond_2

    .line 724
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v0

    const-string v1, "Calorie"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mCalorie:D

    .line 725
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v0

    const-string v1, "Distance"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mDistance:D

    .line 726
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v0

    const-string v1, "Speed"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mSpeed:D

    .line 727
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v0

    const-string v1, "StepStatus"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mStepStatus:I

    .line 728
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v0

    const-string v1, "TotalStepCount"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mTotalStepCount:J

    .line 729
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v0

    const-string v1, "WalkStepCount"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mWalkStepCount:J

    .line 730
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v0

    const-string v1, "RunStepCount"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mRunStepCount:J

    .line 731
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v0

    const-string v1, "UpDownStepCount"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;->mUpDownStepCount:J

    .line 732
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPedometerContext:Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPedometerContext;

    move-result-object v2

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v0, v1, v2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0

    .line 733
    :cond_2
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    if-ne p1, v0, :cond_3

    .line 734
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$500(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    move-result-object v0

    iput v3, v0, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->mAlert:I

    .line 735
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$500(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    move-result-object v2

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v0, v1, v2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0

    .line 736
    :cond_3
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    if-ne p1, v0, :cond_4

    .line 737
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    move-result-object v0

    const-string v1, "Type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/scontext/SContextContexts$SContextMotionContext;->mType:I

    .line 738
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextMotionContext:Landroid/hardware/scontext/SContextContexts$SContextMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMotionContext;

    move-result-object v2

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v0, v1, v2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0

    .line 739
    :cond_4
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    if-ne p1, v0, :cond_5

    .line 740
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    move-result-object v0

    const-string v1, "Action"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;->mAction:I

    .line 741
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v1, 0x5

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    move-result-object v2

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v0, v1, v2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0

    .line 742
    :cond_5
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    if-ne p1, v0, :cond_6

    .line 743
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$800(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    move-result-object v0

    const-string v1, "Angle"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;->mAngle:I

    .line 744
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v1, 0x6

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAutoRotationContext:Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$800(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAutoRotationContext;

    move-result-object v2

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v0, v1, v2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0

    .line 745
    :cond_6
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    if-ne p1, v0, :cond_7

    .line 746
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextEnvironmentContext:Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;->mBundleInfo:Landroid/os/Bundle;

    const-string v1, "Temperature"

    const-string v2, "Temperature"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 747
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextEnvironmentContext:Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;->mBundleInfo:Landroid/os/Bundle;

    const-string v1, "Humidity"

    const-string v2, "Humidity"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 748
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextEnvironmentContext:Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;

    move-result-object v0

    iput v3, v0, Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;->mSensorType:I

    .line 749
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v1, 0x8

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextEnvironmentContext:Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextEnvironmentContext;

    move-result-object v2

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v0, v1, v2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0

    .line 750
    :cond_7
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    if-ne p1, v0, :cond_8

    .line 751
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextMovementForPositioningContext:Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$1000(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;

    move-result-object v0

    const-string v1, "Alert"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;->mAlert:I

    .line 752
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v1, 0x9

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextMovementForPositioningContext:Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1000(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMovementForPositioningContext;

    move-result-object v2

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v0, v1, v2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0

    .line 753
    :cond_8
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->CURRENT_STATUS_FOR_POSITIONING_SERVICE:I

    if-ne p1, v0, :cond_9

    .line 754
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$1100(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;

    move-result-object v0

    const-string v1, "Status"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;->mStatus:I

    .line 755
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v1, 0xa

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1100(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextCurrentStatusForPositioningContext;

    move-result-object v2

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v0, v1, v2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0

    .line 756
    :cond_9
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    if-ne p1, v0, :cond_a

    .line 757
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextCallPoseContext:Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;

    move-result-object v0

    const-string v1, "Pose"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;->mPose:I

    .line 758
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v1, 0xb

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextCallPoseContext:Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextCallPoseContext;

    move-result-object v2

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v0, v1, v2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0

    .line 759
    :cond_a
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    if-ne p1, v0, :cond_b

    .line 760
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextShakeMotionContext:Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$1300(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;

    move-result-object v0

    const-string v1, "Action"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;->mShakeStatus:I

    .line 761
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v1, 0xc

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextShakeMotionContext:Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1300(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextShakeMotionContext;

    move-result-object v2

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v0, v1, v2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0

    .line 762
    :cond_b
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    if-ne p1, v0, :cond_c

    .line 763
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextFlipCoverActionContext:Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$1400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;

    move-result-object v0

    const-string v1, "Action"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;->mAction:I

    .line 764
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v1, 0xd

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextFlipCoverActionContext:Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;

    move-result-object v2

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v0, v1, v2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0

    .line 765
    :cond_c
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    if-ne p1, v0, :cond_d

    .line 766
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextGyroTemperatureContext:Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$1500(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;

    move-result-object v0

    const-string v1, "GyroTemperature"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;->mGyroTemperature:D

    .line 767
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v1, 0xe

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextGyroTemperatureContext:Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1500(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextGyroTemperatureContext;

    move-result-object v2

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v0, v1, v2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0

    .line 768
    :cond_d
    sget v0, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    if-ne p1, v0, :cond_0

    .line 769
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPutDownMotionContext:Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;
    invoke-static {v0}, Landroid/hardware/scontext/SContextService;->access$1600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;

    move-result-object v0

    const-string v1, "Action"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;->mAction:I

    .line 770
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    const/16 v1, 0xf

    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextPutDownMotionContext:Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$1600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;

    move-result-object v2

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v0, v1, v2}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    goto/16 :goto_0
.end method
