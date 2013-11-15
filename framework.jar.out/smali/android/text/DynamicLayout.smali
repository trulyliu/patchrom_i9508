.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field public static final INVALID_BLOCK_INDEX:I = -0x1

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBlockEndLines:[I

.field private mBlockIndices:[I

.field private mBottomPadding:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mIncludePad:Z

.field private mInts:Landroid/text/PackedIntVector;

.field private mNumberOfBlocks:I

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector",
            "<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 757
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 759
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .parameter "base"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 67
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 12
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 84
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 19
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 103
    if-nez p10, :cond_2

    move-object/from16 v3, p2

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 110
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 111
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 113
    if-eqz p10, :cond_4

    .line 114
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 115
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 116
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 123
    :goto_1
    new-instance v2, Landroid/text/PackedObjectVector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 125
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 135
    if-eqz p10, :cond_0

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Layout$Ellipsizer;

    .line 138
    .local v13, e:Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 139
    move/from16 v0, p11

    iput v0, v13, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 140
    move-object/from16 v0, p10

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 141
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    .line 150
    .end local v13           #e:Landroid/text/Layout$Ellipsizer;
    :cond_0
    if-eqz p10, :cond_5

    .line 151
    const/4 v2, 0x5

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 152
    .local v18, start:[I
    const/4 v2, 0x3

    const/high16 v3, -0x8000

    aput v3, v18, v2

    .line 157
    :goto_2
    const/4 v2, 0x1

    new-array v12, v2, [Landroid/text/Layout$Directions;

    const/4 v2, 0x0

    sget-object v3, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    aput-object v3, v12, v2

    .line 159
    .local v12, dirs:[Landroid/text/Layout$Directions;
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    .line 160
    .local v14, fm:Landroid/graphics/Paint$FontMetricsInt;
    iget v10, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 161
    .local v10, asc:I
    iget v11, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 163
    .local v11, desc:I
    const/4 v2, 0x0

    const/high16 v3, 0x4000

    aput v3, v18, v2

    .line 164
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v18, v2

    .line 165
    const/4 v2, 0x2

    aput v11, v18, v2

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 168
    const/4 v2, 0x1

    sub-int v3, v11, v10

    aput v3, v18, v2

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 174
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 176
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_7

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v2, :cond_1

    .line 178
    new-instance v2, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    :cond_1
    move-object/from16 v16, p1

    .line 181
    check-cast v16, Landroid/text/Spannable;

    .line 182
    .local v16, sp:Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface/range {v16 .. v16}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 183
    .local v17, spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v15, v2, :cond_6

    .line 184
    aget-object v2, v17, v15

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 183
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 103
    .end local v10           #asc:I
    .end local v11           #desc:I
    .end local v12           #dirs:[Landroid/text/Layout$Directions;
    .end local v14           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v15           #i:I
    .end local v16           #sp:Landroid/text/Spannable;
    .end local v17           #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    .end local v18           #start:[I
    :cond_2
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 118
    :cond_4
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 119
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 120
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_1

    .line 154
    :cond_5
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .restart local v18       #start:[I
    goto/16 :goto_2

    .line 186
    .restart local v10       #asc:I
    .restart local v11       #desc:I
    .restart local v12       #dirs:[Landroid/text/Layout$Directions;
    .restart local v14       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v15       #i:I
    .restart local v16       #sp:Landroid/text/Spannable;
    .restart local v17       #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const v5, 0x800012

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 190
    .end local v15           #i:I
    .end local v16           #sp:Landroid/text/Spannable;
    .end local v17           #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_7
    return-void
.end method

.method static synthetic access$000(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private addBlockAtOffset(I)V
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    .line 453
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v1

    .line 455
    .local v1, line:I
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    if-nez v3, :cond_1

    .line 457
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 458
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v4, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput v1, v3, v4

    .line 459
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v4, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v4, v4, -0x1

    aget v2, v3, v4

    .line 464
    .local v2, previousBlockEndLine:I
    if-le v1, v2, :cond_0

    .line 465
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    iget-object v4, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 467
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v3

    new-array v0, v3, [I

    .line 468
    .local v0, blockEndLines:[I
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v4, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 471
    .end local v0           #blockEndLines:[I
    :cond_2
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v4, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput v1, v3, v4

    .line 472
    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    goto :goto_0
.end method

.method private createBlocks()V
    .locals 5

    .prologue
    .line 425
    const/16 v1, 0x190

    .line 426
    .local v1, offset:I
    const/4 v3, 0x0

    iput v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 427
    iget-object v2, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 430
    .local v2, text:Ljava/lang/CharSequence;
    :goto_0
    const/16 v3, 0xa

    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    .line 431
    if-gez v1, :cond_0

    .line 432
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 441
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 442
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 443
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 435
    .end local v0           #i:I
    :cond_0
    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 436
    add-int/lit16 v1, v1, 0x190

    goto :goto_0

    .line 445
    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method private invalidateBlocks()V
    .locals 3

    .prologue
    .line 412
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    if-ge v0, v1, :cond_1

    .line 413
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 414
    iget-object v1, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 412
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 47
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    if-eq v0, v5, :cond_0

    .line 408
    :goto_0
    return-void

    .line 196
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 197
    .local v4, text:Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v32

    .line 200
    .local v32, len:I
    sget-boolean v5, Landroid/text/TextUtils;->IS_THAI_VIET_RESHAPING:Z

    if-eqz v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 202
    add-int/lit8 v5, p3, 0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_1

    move/from16 v0, p4

    move/from16 v1, p3

    if-ne v0, v1, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spannable;

    if-eqz v5, :cond_2

    if-ltz p2, :cond_2

    .line 204
    invoke-interface/range {p1 .. p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v29

    .line 206
    .local v29, insertedText:C
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isThaiVowel(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 207
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v38, v0

    .line 209
    .local v38, sp:Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface/range {v38 .. v38}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/UnderlineSpan;

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v46

    check-cast v46, [Landroid/text/style/UnderlineSpan;

    .line 210
    .local v46, us:[Landroid/text/style/UnderlineSpan;
    const/16 v28, 0x0

    .local v28, i:I
    :goto_1
    move-object/from16 v0, v46

    array-length v5, v0

    move/from16 v0, v28

    if-ge v0, v5, :cond_2

    .line 211
    aget-object v5, v46, v28

    move-object/from16 v0, v38

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v45

    .line 212
    .local v45, underLineSpenStartPos:I
    aget-object v5, v46, v28

    move-object/from16 v0, v38

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v44

    .line 214
    .local v44, underLineSpenEndPos:I
    if-lez v45, :cond_6

    move/from16 v0, v45

    move/from16 v1, p2

    if-ne v0, v1, :cond_6

    add-int/lit8 v5, v45, 0x1

    move/from16 v0, v44

    if-ne v5, v0, :cond_6

    .line 216
    aget-object v5, v46, v28

    move-object/from16 v0, v38

    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v28           #i:I
    .end local v29           #insertedText:C
    .end local v38           #sp:Landroid/text/Spannable;
    .end local v44           #underLineSpenEndPos:I
    .end local v45           #underLineSpenStartPos:I
    .end local v46           #us:[Landroid/text/style/UnderlineSpan;
    :cond_2
    :goto_2
    const/16 v5, 0xa

    add-int/lit8 v6, p2, -0x1

    invoke-static {v4, v5, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v25

    .line 231
    .local v25, find:I
    if-gez v25, :cond_7

    .line 232
    const/16 v25, 0x0

    .line 237
    :goto_3
    sub-int v20, p2, v25

    .line 238
    .local v20, diff:I
    add-int p3, p3, v20

    .line 239
    add-int p4, p4, v20

    .line 240
    sub-int p2, p2, v20

    .line 245
    const/16 v5, 0xa

    add-int v6, p2, p4

    invoke-static {v4, v5, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v33

    .line 246
    .local v33, look:I
    if-gez v33, :cond_8

    .line 247
    move/from16 v33, v32

    .line 251
    :goto_4
    add-int v5, p2, p4

    sub-int v18, v33, v5

    .line 252
    .local v18, change:I
    add-int p3, p3, v18

    .line 253
    add-int p4, p4, v18

    .line 257
    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_a

    move-object/from16 v38, v4

    .line 258
    check-cast v38, Landroid/text/Spanned;

    .line 262
    .local v38, sp:Landroid/text/Spanned;
    :cond_3
    const/16 v16, 0x0

    .line 264
    .local v16, again:Z
    add-int v5, p2, p4

    const-class v6, Landroid/text/style/WrapTogetherSpan;

    move-object/from16 v0, v38

    move/from16 v1, p2

    invoke-interface {v0, v1, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    .line 267
    .local v26, force:[Ljava/lang/Object;
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_5
    move-object/from16 v0, v26

    array-length v5, v0

    move/from16 v0, v28

    if-ge v0, v5, :cond_9

    .line 268
    aget-object v5, v26, v28

    move-object/from16 v0, v38

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v39

    .line 269
    .local v39, st:I
    aget-object v5, v26, v28

    move-object/from16 v0, v38

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v22

    .line 271
    .local v22, en:I
    move/from16 v0, v39

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    .line 272
    const/16 v16, 0x1

    .line 274
    sub-int v20, p2, v39

    .line 275
    add-int p3, p3, v20

    .line 276
    add-int p4, p4, v20

    .line 277
    sub-int p2, p2, v20

    .line 280
    :cond_4
    add-int v5, p2, p4

    move/from16 v0, v22

    if-le v0, v5, :cond_5

    .line 281
    const/16 v16, 0x1

    .line 283
    add-int v5, p2, p4

    sub-int v20, v22, v5

    .line 284
    add-int p3, p3, v20

    .line 285
    add-int p4, p4, v20

    .line 267
    :cond_5
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 210
    .end local v16           #again:Z
    .end local v18           #change:I
    .end local v20           #diff:I
    .end local v22           #en:I
    .end local v25           #find:I
    .end local v26           #force:[Ljava/lang/Object;
    .end local v33           #look:I
    .end local v39           #st:I
    .restart local v29       #insertedText:C
    .local v38, sp:Landroid/text/Spannable;
    .restart local v44       #underLineSpenEndPos:I
    .restart local v45       #underLineSpenStartPos:I
    .restart local v46       #us:[Landroid/text/style/UnderlineSpan;
    :cond_6
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 222
    .end local v28           #i:I
    .end local v29           #insertedText:C
    .end local v38           #sp:Landroid/text/Spannable;
    .end local v44           #underLineSpenEndPos:I
    .end local v45           #underLineSpenStartPos:I
    .end local v46           #us:[Landroid/text/style/UnderlineSpan;
    :catch_0
    move-exception v21

    .line 223
    .local v21, e:Ljava/lang/Exception;
    const-string v5, "Dynamiclayout"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 234
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v25       #find:I
    :cond_7
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 249
    .restart local v20       #diff:I
    .restart local v33       #look:I
    :cond_8
    add-int/lit8 v33, v33, 0x1

    goto :goto_4

    .line 288
    .restart local v16       #again:Z
    .restart local v18       #change:I
    .restart local v26       #force:[Ljava/lang/Object;
    .restart local v28       #i:I
    .local v38, sp:Landroid/text/Spanned;
    :cond_9
    if-nez v16, :cond_3

    .line 293
    .end local v16           #again:Z
    .end local v26           #force:[Ljava/lang/Object;
    .end local v28           #i:I
    .end local v38           #sp:Landroid/text/Spanned;
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v40

    .line 294
    .local v40, startline:I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v41

    .line 296
    .local v41, startv:I
    add-int v5, p2, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v23

    .line 297
    .local v23, endline:I
    add-int v5, p2, p4

    move/from16 v0, v32

    if-ne v5, v0, :cond_b

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v23

    .line 299
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v24

    .line 300
    .local v24, endv:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v5

    move/from16 v0, v23

    if-ne v0, v5, :cond_12

    const/16 v31, 0x1

    .line 306
    .local v31, islast:Z
    :goto_6
    sget-object v6, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v6

    .line 307
    :try_start_1
    sget-object v3, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 308
    .local v3, reflowed:Landroid/text/StaticLayout;
    const/4 v5, 0x0

    sput-object v5, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 309
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    if-nez v3, :cond_13

    .line 312
    new-instance v3, Landroid/text/StaticLayout;

    .end local v3           #reflowed:Landroid/text/StaticLayout;
    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .line 318
    .restart local v3       #reflowed:Landroid/text/StaticLayout;
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v37

    .line 320
    .local v37, oldLine:I
    add-int v6, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    int-to-float v14, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v15}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 324
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v34

    .line 330
    .local v34, n:I
    add-int v5, p2, p4

    move/from16 v0, v32

    if-eq v5, v0, :cond_c

    add-int/lit8 v5, v34, -0x1

    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    add-int v6, p2, p4

    if-ne v5, v6, :cond_c

    .line 331
    add-int/lit8 v34, v34, -0x1

    .line 334
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    sub-int v6, v23, v40

    move/from16 v0, v40

    invoke-virtual {v5, v0, v6}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 335
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    sub-int v6, v23, v40

    move/from16 v0, v40

    invoke-virtual {v5, v0, v6}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 339
    move/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v27

    .line 340
    .local v27, ht:I
    const/16 v43, 0x0

    .local v43, toppad:I
    const/16 v17, 0x0

    .line 342
    .local v17, botpad:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v5, :cond_d

    if-nez v40, :cond_d

    .line 343
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v43

    .line 344
    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    .line 345
    sub-int v27, v27, v43

    .line 347
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    if-eqz v5, :cond_e

    if-eqz v31, :cond_e

    .line 348
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v17

    .line 349
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mBottomPadding:I

    .line 350
    add-int v27, v27, v17

    .line 353
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v6, 0x0

    sub-int v7, p4, p3

    move/from16 v0, v40

    invoke-virtual {v5, v0, v6, v7}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 354
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v6, 0x1

    sub-int v7, v41, v24

    add-int v7, v7, v27

    move/from16 v0, v40

    invoke-virtual {v5, v0, v6, v7}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 360
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v5, :cond_14

    .line 361
    const/4 v5, 0x5

    new-array v0, v5, [I

    move-object/from16 v30, v0

    .line 362
    .local v30, ints:[I
    const/4 v5, 0x3

    const/high16 v6, -0x8000

    aput v6, v30, v5

    .line 367
    :goto_8
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/text/Layout$Directions;

    move-object/from16 v36, v0

    .line 369
    .local v36, objects:[Landroid/text/Layout$Directions;
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_9
    move/from16 v0, v28

    move/from16 v1, v34

    if-ge v0, v1, :cond_16

    .line 370
    const/4 v6, 0x0

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x1e

    or-int/2addr v7, v5

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v5

    if-eqz v5, :cond_15

    const/high16 v5, 0x2000

    :goto_a
    or-int/2addr v5, v7

    aput v5, v30, v6

    .line 374
    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    add-int v42, v5, v41

    .line 375
    .local v42, top:I
    if-lez v28, :cond_f

    .line 376
    sub-int v42, v42, v43

    .line 377
    :cond_f
    const/4 v5, 0x1

    aput v42, v30, v5

    .line 379
    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v19

    .line 380
    .local v19, desc:I
    add-int/lit8 v5, v34, -0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_10

    .line 381
    add-int v19, v19, v17

    .line 383
    :cond_10
    const/4 v5, 0x2

    aput v19, v30, v5

    .line 384
    const/4 v5, 0x0

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    aput-object v6, v36, v5

    .line 386
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    if-eqz v5, :cond_11

    .line 387
    const/4 v5, 0x3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v6

    aput v6, v30, v5

    .line 388
    const/4 v5, 0x4

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v6

    aput v6, v30, v5

    .line 391
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    add-int v6, v40, v28

    move-object/from16 v0, v30

    invoke-virtual {v5, v6, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    add-int v6, v40, v28

    move-object/from16 v0, v36

    invoke-virtual {v5, v6, v0}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 369
    add-int/lit8 v28, v28, 0x1

    goto :goto_9

    .line 300
    .end local v3           #reflowed:Landroid/text/StaticLayout;
    .end local v17           #botpad:I
    .end local v19           #desc:I
    .end local v27           #ht:I
    .end local v28           #i:I
    .end local v30           #ints:[I
    .end local v31           #islast:Z
    .end local v34           #n:I
    .end local v36           #objects:[Landroid/text/Layout$Directions;
    .end local v37           #oldLine:I
    .end local v42           #top:I
    .end local v43           #toppad:I
    :cond_12
    const/16 v31, 0x0

    goto/16 :goto_6

    .line 309
    .restart local v31       #islast:Z
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 314
    .restart local v3       #reflowed:Landroid/text/StaticLayout;
    :cond_13
    invoke-virtual {v3}, Landroid/text/StaticLayout;->prepare()V

    goto/16 :goto_7

    .line 364
    .restart local v17       #botpad:I
    .restart local v27       #ht:I
    .restart local v34       #n:I
    .restart local v37       #oldLine:I
    .restart local v43       #toppad:I
    :cond_14
    const/4 v5, 0x3

    new-array v0, v5, [I

    move-object/from16 v30, v0

    .restart local v30       #ints:[I
    goto/16 :goto_8

    .line 370
    .restart local v28       #i:I
    .restart local v36       #objects:[Landroid/text/Layout$Directions;
    :cond_15
    const/4 v5, 0x0

    goto :goto_a

    .line 396
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v35

    .line 397
    .local v35, newLine:I
    move/from16 v0, v37

    move/from16 v1, v35

    if-eq v0, v1, :cond_17

    .line 398
    invoke-direct/range {p0 .. p0}, Landroid/text/DynamicLayout;->invalidateBlocks()V

    .line 402
    :cond_17
    add-int/lit8 v5, v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v34

    invoke-virtual {v0, v1, v5, v2}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    .line 404
    sget-object v6, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v6

    .line 405
    :try_start_3
    sput-object v3, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 406
    invoke-virtual {v3}, Landroid/text/StaticLayout;->finish()V

    .line 407
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method


# virtual methods
.method public getBlockEndLines()[I
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    return-object v0
.end method

.method public getBlockIndices()[I
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    return-object v0
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 723
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 724
    const/4 v0, 0x0

    .line 727
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 714
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 715
    const/4 v0, 0x0

    .line 718
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .parameter "line"

    .prologue
    const/4 v0, 0x0

    .line 637
    iget-object v1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v1, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v1

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 627
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 2
    .parameter "line"

    .prologue
    .line 647
    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 632
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 622
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfBlocks()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 642
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method

.method setBlocksDataForTest([I[II)V
    .locals 3
    .parameter "blockEndLines"
    .parameter "blockIndices"
    .parameter "numberOfBlocks"

    .prologue
    const/4 v2, 0x0

    .line 587
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 588
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 589
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 591
    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 592
    return-void
.end method

.method updateBlocks(III)V
    .locals 24
    .parameter "startLine"
    .parameter "endLine"
    .parameter "newLineCount"

    .prologue
    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 497
    invoke-direct/range {p0 .. p0}, Landroid/text/DynamicLayout;->createBlocks()V

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    const/4 v11, -0x1

    .line 502
    .local v11, firstBlock:I
    const/4 v13, -0x1

    .line 503
    .local v13, lastBlock:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v12

    move/from16 v0, v19

    move/from16 v1, p1

    if-lt v0, v1, :cond_7

    .line 505
    move v11, v12

    .line 509
    :cond_2
    move v12, v11

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_3

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v12

    move/from16 v0, v19

    move/from16 v1, p2

    if-lt v0, v1, :cond_8

    .line 511
    move v13, v12

    .line 515
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v14, v19, v13

    .line 517
    .local v14, lastBlockEndLine:I
    if-nez v11, :cond_9

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, p1

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    const/4 v9, 0x1

    .line 519
    .local v9, createBlockBefore:Z
    :goto_4
    if-lez p3, :cond_b

    const/4 v7, 0x1

    .line 520
    .local v7, createBlock:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v13

    move/from16 v0, p2

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    const/4 v8, 0x1

    .line 522
    .local v8, createBlockAfter:Z
    :goto_6
    const/16 v17, 0x0

    .line 523
    .local v17, numAddedBlocks:I
    if-eqz v9, :cond_4

    add-int/lit8 v17, v17, 0x1

    .line 524
    :cond_4
    if-eqz v7, :cond_5

    add-int/lit8 v17, v17, 0x1

    .line 525
    :cond_5
    if-eqz v8, :cond_6

    add-int/lit8 v17, v17, 0x1

    .line 527
    :cond_6
    sub-int v19, v13, v11

    add-int/lit8 v18, v19, 0x1

    .line 528
    .local v18, numRemovedBlocks:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    add-int v19, v19, v17

    sub-int v15, v19, v18

    .line 530
    .local v15, newNumberOfBlocks:I
    if-nez v15, :cond_d

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, -0x1

    aput v21, v19, v20

    .line 534
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    goto/16 :goto_0

    .line 503
    .end local v7           #createBlock:Z
    .end local v8           #createBlockAfter:Z
    .end local v9           #createBlockBefore:Z
    .end local v14           #lastBlockEndLine:I
    .end local v15           #newNumberOfBlocks:I
    .end local v17           #numAddedBlocks:I
    .end local v18           #numRemovedBlocks:I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 509
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 517
    .restart local v14       #lastBlockEndLine:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, -0x1

    aget v19, v19, v20

    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    .line 519
    .restart local v9       #createBlockBefore:Z
    :cond_b
    const/4 v7, 0x0

    goto :goto_5

    .line 520
    .restart local v7       #createBlock:Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    .line 538
    .restart local v8       #createBlockAfter:Z
    .restart local v15       #newNumberOfBlocks:I
    .restart local v17       #numAddedBlocks:I
    .restart local v18       #numRemovedBlocks:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v15, v0, :cond_e

    .line 539
    invoke-static {v15}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v16

    .line 540
    .local v16, newSize:I
    move/from16 v0, v16

    new-array v4, v0, [I

    .line 541
    .local v4, blockEndLines:[I
    move/from16 v0, v16

    new-array v6, v0, [I

    .line 542
    .local v6, blockIndices:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v4, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v6, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    add-int v21, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v22, v0

    sub-int v22, v22, v13

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    add-int v21, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v22, v0

    sub-int v22, v22, v13

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 549
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 557
    .end local v4           #blockEndLines:[I
    .end local v6           #blockIndices:[I
    .end local v16           #newSize:I
    :goto_7
    move-object/from16 v0, p0

    iput v15, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 558
    sub-int v19, p2, p1

    add-int/lit8 v19, v19, 0x1

    sub-int v10, p3, v19

    .line 559
    .local v10, deltaLines:I
    add-int v12, v11, v17

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_f

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v20, v19, v12

    add-int v20, v20, v10

    aput v20, v19, v12

    .line 559
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 551
    .end local v10           #deltaLines:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    add-int v22, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v21, v0

    add-int v22, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 563
    .restart local v10       #deltaLines:I
    :cond_f
    move v5, v11

    .line 564
    .local v5, blockIndex:I
    if-eqz v9, :cond_10

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, p1, -0x1

    aput v20, v19, v5

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    .line 567
    add-int/lit8 v5, v5, 0x1

    .line 570
    :cond_10
    if-eqz v7, :cond_11

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int v20, p1, p3

    add-int/lit8 v20, v20, -0x1

    aput v20, v19, v5

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    .line 573
    add-int/lit8 v5, v5, 0x1

    .line 576
    :cond_11
    if-eqz v8, :cond_0

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int v20, v14, v10

    aput v20, v19, v5

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    goto/16 :goto_0
.end method
