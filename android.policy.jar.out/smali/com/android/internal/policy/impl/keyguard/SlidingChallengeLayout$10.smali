.class Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;
.super Ljava/lang/Object;
.source "SlidingChallengeLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V
    .locals 0

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1361
    const/4 v0, 0x1

    .line 1363
    .local v0, DEBUG_TOUCH:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$400(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1372
    :goto_0
    :pswitch_0
    const/4 v5, 0x1

    .line 1431
    :goto_1
    return v5

    .line 1367
    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$402(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z

    goto :goto_0

    .line 1375
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$500(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1376
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1377
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$502(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z

    .line 1379
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .line 1382
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 1383
    .local v3, touchedEventX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 1385
    .local v4, touchedEventY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1431
    :cond_3
    :goto_2
    :pswitch_2
    const/4 v5, 0x1

    goto :goto_1

    .line 1387
    :pswitch_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mStartX:F
    invoke-static {v5, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$602(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;F)F

    .line 1388
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mStartY:F
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$702(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;F)F

    .line 1389
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const-wide/16 v6, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$802(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;D)D

    .line 1392
    :pswitch_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1393
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-interface {v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 1396
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mStartX:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$600(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)F

    move-result v5

    sub-float v5, v3, v5

    float-to-int v1, v5

    .line 1397
    .local v1, diffX:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mStartY:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$700(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)F

    move-result v5

    sub-float v5, v4, v5

    float-to-int v2, v5

    .line 1399
    .local v2, diffY:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    int-to-double v6, v1

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v2

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    #setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$802(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;D)D

    .line 1400
    if-eqz v0, :cond_5

    .line 1401
    const-string v5, "SlidingChallengeLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_MOVE mDistance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$800(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$800(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mSecondBorder:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)I

    move-result v7

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_3

    .line 1404
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$402(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z

    .line 1405
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1406
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_2

    .line 1411
    .end local v1           #diffX:I
    .end local v2           #diffY:I
    :pswitch_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$502(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z

    .line 1413
    :pswitch_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const-wide/16 v6, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$802(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;D)D

    goto/16 :goto_2

    .line 1416
    :pswitch_7
    if-eqz v0, :cond_6

    .line 1417
    const-string v5, "SlidingChallengeLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_UP mDistance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$800(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFirstBorder:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1100(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)I

    move-result v5

    int-to-double v5, v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$800(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$800(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mSecondBorder:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$1000(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_3

    .line 1420
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v6, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsFirst:Z
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$402(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z

    .line 1421
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1422
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$900(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_2

    .line 1364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1385
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
