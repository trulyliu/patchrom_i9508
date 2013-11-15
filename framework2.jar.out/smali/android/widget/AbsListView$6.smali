.class Landroid/widget/AbsListView$6;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->registerSmartScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 8319
    iput-object p1, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/sec/android/smartface/FaceInfo;I)V
    .locals 11
    .parameter "data"
    .parameter "service_type"

    .prologue
    .line 8321
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-boolean v8, v8, Landroid/widget/AbsListView;->mSmartScrollSettingOn:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-boolean v8, v8, Landroid/widget/AbsListView;->mOverrideSmartScroll:Z

    if-eqz v8, :cond_1

    .line 8400
    :cond_0
    :goto_0
    return-void

    .line 8325
    :cond_1
    iget v7, p1, Lcom/sec/android/smartface/FaceInfo;->verticalMovement:I

    .line 8328
    .local v7, y:I
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v9, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 8332
    const/4 v5, 0x0

    .line 8333
    .local v5, offset:I
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 8338
    .local v4, count:I
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget v8, v8, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, v4

    iget-object v9, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget v9, v9, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v8, v9, :cond_5

    const/4 v1, 0x1

    .line 8340
    .local v1, canScrollDown:Z
    :goto_1
    if-nez v1, :cond_3

    if-lez v4, :cond_3

    .line 8341
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8342
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AdapterView;->mBottom:I
    invoke-static {v9}, Landroid/widget/AbsListView;->access$6700(Landroid/widget/AbsListView;)I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-gt v8, v9, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-le v8, v9, :cond_6

    :cond_2
    const/4 v1, 0x1

    .line 8347
    .end local v3           #child:Landroid/view/View;
    :cond_3
    :goto_2
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget v8, v8, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v8, :cond_7

    const/4 v2, 0x1

    .line 8349
    .local v2, canScrollUp:Z
    :goto_3
    if-nez v2, :cond_4

    .line 8350
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 8351
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8352
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-ge v8, v9, :cond_8

    const/4 v2, 0x1

    .line 8356
    .end local v3           #child:Landroid/view/View;
    :cond_4
    :goto_4
    const/4 v8, -0x1

    if-gt v7, v8, :cond_9

    if-eqz v2, :cond_9

    .line 8357
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/16 v9, -0x28

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 8358
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/4 v9, 0x0

    #setter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v8, v9}, Landroid/widget/AbsListView;->access$6502(Landroid/widget/AbsListView;Z)Z

    goto/16 :goto_0

    .line 8338
    .end local v1           #canScrollDown:Z
    .end local v2           #canScrollUp:Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 8342
    .restart local v1       #canScrollDown:Z
    .restart local v3       #child:Landroid/view/View;
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 8347
    .end local v3           #child:Landroid/view/View;
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 8352
    .restart local v2       #canScrollUp:Z
    .restart local v3       #child:Landroid/view/View;
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 8359
    .end local v3           #child:Landroid/view/View;
    :cond_9
    const/4 v8, 0x1

    if-lt v7, v8, :cond_a

    if-eqz v1, :cond_a

    .line 8360
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/16 v9, 0x28

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 8363
    :cond_a
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-boolean v8, v8, Landroid/widget/AbsListView;->mEndEffectEnabled:Z

    if-eqz v8, :cond_c

    .line 8364
    if-nez v7, :cond_b

    .line 8365
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-boolean v8, v8, Landroid/widget/AbsListView;->mOverscrollRun:Z

    if-eqz v8, :cond_0

    .line 8366
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    .line 8367
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/widget/AbsListView;->mOverscrollRun:Z

    goto/16 :goto_0

    .line 8370
    :cond_b
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget v9, v8, Landroid/widget/BounceController;->mBounceExtent:F

    neg-int v10, v7

    mul-int/lit8 v10, v10, 0x46

    int-to-float v10, v10

    add-float/2addr v9, v10

    iput v9, v8, Landroid/widget/BounceController;->mBounceExtent:F

    .line 8371
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    iget-object v9, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v9}, Landroid/widget/BounceController;->adjustBounceExtent()F

    move-result v9

    iput v9, v8, Landroid/widget/BounceController;->mBounceExtent:F

    .line 8372
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->postInvalidate()V

    .line 8373
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/widget/AbsListView;->mOverscrollRun:Z

    goto/16 :goto_0

    .line 8377
    :cond_c
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v6

    .line 8378
    .local v6, overscrollMode:I
    if-eqz v6, :cond_d

    const/4 v8, 0x1

    if-ne v6, v8, :cond_10

    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v8}, Landroid/widget/AbsListView;->access$2400(Landroid/widget/AbsListView;)Z

    move-result v8

    if-nez v8, :cond_10

    :cond_d
    const/4 v0, 0x1

    .line 8380
    .local v0, canOverscroll:Z
    :goto_5
    if-eqz v0, :cond_0

    .line 8381
    if-gez v7, :cond_11

    .line 8382
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v8}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v8

    const v9, 0x3ecccccd

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 8383
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v8}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_e

    .line 8384
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v8}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 8393
    :cond_e
    :goto_6
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v8}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v8}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v8}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_0

    .line 8395
    :cond_f
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->postInvalidate()V

    goto/16 :goto_0

    .line 8378
    .end local v0           #canOverscroll:Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_5

    .line 8386
    .restart local v0       #canOverscroll:Z
    :cond_11
    if-lez v7, :cond_e

    .line 8387
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v8}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v8

    const v9, 0x3ecccccd

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 8388
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v8}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_e

    .line 8389
    iget-object v8, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v8}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6
.end method
