.class Landroid/widget/FHoverPopupWindow$FHPopupContainer;
.super Landroid/widget/HoverPopupWindow$HoverPopupContainer;
.source "FHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FHoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FHPopupContainer"
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "FHPopupContainer"


# instance fields
.field private POPUPSTATE_CENTER:I

.field private POPUPSTATE_LEFT:I

.field private POPUPSTATE_RIGHT:I

.field private ani:Landroid/view/animation/Animation;

.field private isFHmoveAnimation:Z

.field private mAnimationAreaOffset:I

.field private mFHPopCContext:Landroid/content/Context;

.field private mLeftLimit:I

.field private mPickerLineColor:I

.field private mPickerSpaceColor:I

.field private mPopupState:I

.field private mRightLimit:I

.field private mTopPickerOffset:I

.field private mTotalLeftLimit:F

.field private mTotalRightLimit:F

.field private misMovetoRight:Z

.field final synthetic this$0:Landroid/widget/FHoverPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/FHoverPopupWindow;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 722
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    .line 723
    invoke-direct {p0, p1, p2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    .line 690
    iput-boolean v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->isFHmoveAnimation:Z

    .line 692
    iput-object v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->ani:Landroid/view/animation/Animation;

    .line 694
    iput-object v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mFHPopCContext:Landroid/content/Context;

    .line 696
    iput-boolean v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->misMovetoRight:Z

    .line 698
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    .line 700
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    .line 702
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 704
    iput v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    .line 706
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    .line 708
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    .line 710
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    .line 712
    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    .line 714
    iput v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTopPickerOffset:I

    .line 716
    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    .line 718
    iput v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    .line 720
    iput v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    .line 724
    iput-object p2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mFHPopCContext:Landroid/content/Context;

    .line 725
    iget v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 729
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 730
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x13c

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    .line 731
    const/16 v1, 0x13d

    const v2, -0xa29283

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    .line 733
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 760
    invoke-super {p0, p1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->draw(Landroid/graphics/Canvas;)V

    .line 765
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v7, v7, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v7, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    if-nez v7, :cond_1

    .line 772
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v8, v8, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v8}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getWidth()I

    move-result v8

    int-to-float v8, v8

    #setter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static {v7, v8}, Landroid/widget/FHoverPopupWindow;->access$1002(Landroid/widget/FHoverPopupWindow;F)F

    .line 777
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    new-instance v8, Landroid/graphics/PointF;

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1000(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    iget-object v10, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->H:F
    invoke-static {v10}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)F

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    #setter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7, v8}, Landroid/widget/FHoverPopupWindow;->access$902(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 778
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    new-instance v8, Landroid/graphics/PointF;

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1000(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    iget-object v10, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->TW:F
    invoke-static {v10}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    #setter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7, v8}, Landroid/widget/FHoverPopupWindow;->access$1202(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 779
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    new-instance v8, Landroid/graphics/PointF;

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1000(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    iget-object v10, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->TW:F
    invoke-static {v10}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    #setter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7, v8}, Landroid/widget/FHoverPopupWindow;->access$1402(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 783
    :cond_1
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->getLineEndX()I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 785
    iget-boolean v7, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v7, :cond_6

    .line 786
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->getLineStartY()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->getLineOverlappedHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->H:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x4120

    sub-float/2addr v8, v9

    const/high16 v9, 0x40a0

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 797
    :goto_1
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->getLineEndX()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1000(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    iget-object v10, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->TW:F
    invoke-static {v10}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static {v10}, Landroid/widget/FHoverPopupWindow;->access$1000(Landroid/widget/FHoverPopupWindow;)F

    move-result v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 799
    iget-boolean v7, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v7, :cond_7

    .line 800
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->getLineStartY()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->getLineOverlappedHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x19

    add-int/lit8 v8, v8, -0x5

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 810
    :goto_2
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->TW:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 811
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 826
    iget-boolean v7, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v7, v7, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-eqz v7, :cond_8

    .line 830
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v7, v7, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    .line 831
    .local v1, contentViewHalfWidth:I
    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    add-int/2addr v7, v1

    int-to-float v7, v7

    iput v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    .line 832
    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, 0xa

    int-to-float v7, v7

    iput v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    .line 846
    .end local v1           #contentViewHalfWidth:I
    :goto_3
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v7, v7, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v8, v8, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v2, v7, 0x2

    .line 855
    .local v2, movelength:I
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    if-ne v7, v8, :cond_2

    .line 858
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v6, v7, Landroid/graphics/PointF;->x:F

    .line 859
    .local v6, previousRightX:F
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v5, v7, Landroid/graphics/PointF;->x:F

    .line 860
    .local v5, previousLeftX:F
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v4, v7, Landroid/graphics/PointF;->x:F

    .line 868
    .local v4, previousCenterX:F
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 869
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->TW:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 870
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 872
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v7, v7, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_9

    if-gtz v2, :cond_9

    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v7, v7, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-eqz v7, :cond_9

    .line 878
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iput v6, v7, Landroid/graphics/PointF;->x:F

    .line 879
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iput v5, v7, Landroid/graphics/PointF;->x:F

    .line 880
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iput v4, v7, Landroid/graphics/PointF;->x:F

    .line 895
    .end local v4           #previousCenterX:F
    .end local v5           #previousLeftX:F
    .end local v6           #previousRightX:F
    :cond_2
    :goto_4
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    if-ne v7, v8, :cond_3

    .line 898
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v6, v7, Landroid/graphics/PointF;->x:F

    .line 899
    .restart local v6       #previousRightX:F
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v5, v7, Landroid/graphics/PointF;->x:F

    .line 900
    .restart local v5       #previousLeftX:F
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v4, v7, Landroid/graphics/PointF;->x:F

    .line 908
    .restart local v4       #previousCenterX:F
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 909
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->TW:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 910
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 913
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v7, v7, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)I

    move-result v8

    sub-int/2addr v7, v8

    if-lez v7, :cond_a

    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v7, v7, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_a

    if-gtz v2, :cond_a

    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-boolean v7, v7, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-eqz v7, :cond_a

    .line 920
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iput v6, v7, Landroid/graphics/PointF;->x:F

    .line 921
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iput v5, v7, Landroid/graphics/PointF;->x:F

    .line 922
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iput v4, v7, Landroid/graphics/PointF;->x:F

    .line 933
    .end local v4           #previousCenterX:F
    .end local v5           #previousLeftX:F
    .end local v6           #previousRightX:F
    :cond_3
    :goto_5
    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    if-ne v7, v8, :cond_4

    .line 943
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_b

    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_b

    .line 945
    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    iput v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 947
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v7, v7, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 960
    :cond_4
    :goto_6
    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    if-ne v7, v8, :cond_5

    .line 970
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_c

    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_c

    .line 972
    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    iput v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 973
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v7, v7, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1011
    :cond_5
    :goto_7
    new-instance v0, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 1012
    .local v0, Pnt:Landroid/graphics/Paint;
    const/high16 v7, 0x40c0

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1015
    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1016
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1019
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 1020
    .local v3, path:Landroid/graphics/Path;
    sget-object v7, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v7}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1021
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1022
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1023
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1024
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 1026
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1027
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1032
    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1033
    const/high16 v7, 0x40c0

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1034
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1036
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1037
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1038
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1039
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1041
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1044
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1045
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x4040

    sub-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1046
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x4040

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1049
    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1050
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1051
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 790
    .end local v0           #Pnt:Landroid/graphics/Paint;
    .end local v2           #movelength:I
    .end local v3           #path:Landroid/graphics/Path;
    :cond_6
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->getLineStartY()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->getLineOverlappedHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->H:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40a0

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    .line 804
    :cond_7
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->getLineStartY()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->getLineOverlappedHeight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, 0xd

    add-int/lit8 v8, v8, 0x5

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/PointF;->y:F

    goto/16 :goto_2

    .line 837
    :cond_8
    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)F

    move-result v8

    add-float/2addr v7, v8

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    .line 838
    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)F

    move-result v8

    sub-float/2addr v7, v8

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    goto/16 :goto_3

    .line 886
    .restart local v2       #movelength:I
    .restart local v4       #previousCenterX:F
    .restart local v5       #previousLeftX:F
    .restart local v6       #previousRightX:F
    :cond_9
    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    iput v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 887
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v7, v7, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 928
    :cond_a
    iget v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    iput v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 929
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v7, v7, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 954
    .end local v4           #previousCenterX:F
    .end local v5           #previousLeftX:F
    .end local v6           #previousRightX:F
    :cond_b
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 955
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->TW:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 956
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iput v8, v7, Landroid/graphics/PointF;->x:F

    goto/16 :goto_6

    .line 981
    :cond_c
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    int-to-float v8, v8

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 982
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->TW:F
    invoke-static {v9}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 983
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v7}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v8}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iput v8, v7, Landroid/graphics/PointF;->x:F

    goto/16 :goto_7
.end method

.method public setFHmoveAnimation(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 736
    iput-boolean p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->isFHmoveAnimation:Z

    .line 737
    return-void
.end method

.method public setFHmoveAnimationOffset(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 753
    const-string v0, "FHPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FHPopupContainer(): setFHmoveAnimationOffset: offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    .line 755
    const-string v0, "FHPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FHPopupContainer(): setFHmoveAnimationOffset: mAnimationAreaOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 745
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTopPickerOffset:I

    .line 746
    return-void
.end method

.method public setPickerLimit(II)V
    .locals 0
    .parameter "leftlimit"
    .parameter "rightlimit"

    .prologue
    .line 740
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    .line 741
    iput p2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    .line 742
    return-void
.end method

.method public setPopupState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 749
    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    .line 750
    return-void
.end method
