.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$2;,
        Landroid/graphics/Bitmap$BitmapFinalizer;,
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_NONE:I = 0x0

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static volatile sDefaultDensity:I

.field private static volatile sScaleMatrix:Landroid/graphics/Matrix;


# instance fields
.field public mBuffer:[B

.field mDensity:I

.field private final mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

.field private mHeight:I

.field private mImagePath:Ljava/lang/String;

.field private final mIsMutable:Z

.field private mLayoutBounds:[I

.field public final mNativeBitmap:I

.field private mNinePatchChunk:[B

.field private mRecycled:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 1291
    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[BZ[BI)V
    .locals 7
    .parameter "nativeBitmap"
    .parameter "buffer"
    .parameter "isMutable"
    .parameter "ninePatchChunk"
    .parameter "density"

    .prologue
    .line 128
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Bitmap;-><init>(I[BZ[B[II)V

    .line 129
    return-void
.end method

.method constructor <init>(I[BZ[B[II)V
    .locals 2
    .parameter "nativeBitmap"
    .parameter "buffer"
    .parameter "isMutable"
    .parameter "ninePatchChunk"
    .parameter "layoutBounds"
    .parameter "density"

    .prologue
    const/4 v0, -0x1

    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 64
    iput v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 68
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error: native bitmap is 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iput-object p2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 147
    iput p1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    .line 148
    new-instance v0, Landroid/graphics/Bitmap$BitmapFinalizer;

    invoke-direct {v0, p1}, Landroid/graphics/Bitmap$BitmapFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    .line 150
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    .line 151
    iput-object p4, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 152
    iput-object p5, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    .line 153
    if-ltz p6, :cond_1

    .line 154
    iput p6, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 156
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeDestructor(I)V

    return-void
.end method

.method private checkPixelAccess(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1182
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 1183
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 1187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :cond_1
    return-void
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "offset"
    .parameter "stride"
    .parameter "pixels"

    .prologue
    .line 1205
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 1206
    if-gez p3, :cond_0

    .line 1207
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1209
    :cond_0
    if-gez p4, :cond_1

    .line 1210
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1212
    :cond_1
    add-int v2, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1213
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "x + width must be <= bitmap.width()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1216
    :cond_2
    add-int v2, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 1217
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "y + height must be <= bitmap.height()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1220
    :cond_3
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p3, :cond_4

    .line 1221
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1223
    :cond_4
    add-int/lit8 v2, p4, -0x1

    mul-int/2addr v2, p6

    add-int v0, p5, v2

    .line 1224
    .local v0, lastScanline:I
    array-length v1, p7

    .line 1225
    .local v1, length:I
    if-ltz p5, :cond_5

    add-int v2, p5, p3

    if-gt v2, v1, :cond_5

    if-ltz v0, :cond_5

    add-int v2, v0, p3

    if-le v2, v1, :cond_6

    .line 1228
    :cond_5
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1230
    :cond_6
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 271
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    return-void
.end method

.method private static checkWidthHeight(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 298
    if-gtz p0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    if-gtz p1, :cond_1

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    return-void
.end method

.method private static checkXYSign(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 283
    if-gez p0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    if-gez p1, :cond_1

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 662
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "config"
    .parameter "hasAlpha"

    .prologue
    .line 695
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    .line 526
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 543
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "m"
    .parameter "filter"

    .prologue
    .line 572
    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 573
    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 574
    add-int v13, p1, p3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-le v13, v14, :cond_0

    .line 575
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "x + width must be <= bitmap.width()"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 577
    :cond_0
    add-int v13, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-le v13, v14, :cond_1

    .line 578
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "y + height must be <= bitmap.height()"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 582
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v13

    if-nez v13, :cond_3

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move/from16 v0, p3

    if-ne v0, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move/from16 v0, p4

    if-ne v0, v13, :cond_3

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 649
    .end local p0
    :cond_2
    :goto_0
    return-object p0

    .line 587
    .restart local p0
    :cond_3
    move/from16 v9, p3

    .line 588
    .local v9, neww:I
    move/from16 v8, p4

    .line 589
    .local v8, newh:I
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 593
    .local v3, canvas:Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Rect;

    add-int v13, p1, p3

    add-int v14, p2, p4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v11, v0, v1, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 594
    .local v11, srcR:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p3

    int-to-float v15, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v6, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 596
    .local v6, dstR:Landroid/graphics/RectF;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 597
    .local v7, newConfig:Landroid/graphics/Bitmap$Config;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 599
    .local v4, config:Landroid/graphics/Bitmap$Config;
    if-eqz v4, :cond_4

    .line 600
    sget-object v13, Landroid/graphics/Bitmap$2;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 611
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 616
    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 617
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v13

    invoke-static {v9, v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 618
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 643
    .end local v7           #newConfig:Landroid/graphics/Bitmap$Config;
    .local v10, paint:Landroid/graphics/Paint;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/Bitmap;->mDensity:I

    iput v13, v2, Landroid/graphics/Bitmap;->mDensity:I

    .line 645
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 646
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v11, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 647
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 p0, v2

    .line 649
    goto :goto_0

    .line 602
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #paint:Landroid/graphics/Paint;
    .restart local v7       #newConfig:Landroid/graphics/Bitmap$Config;
    :pswitch_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 603
    goto :goto_1

    .line 605
    :pswitch_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 606
    goto :goto_1

    .line 620
    :cond_7
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v13

    if-nez v13, :cond_a

    const/4 v12, 0x1

    .line 622
    .local v12, transformed:Z
    :goto_3
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 623
    .local v5, deviceR:Landroid/graphics/RectF;
    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 625
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 626
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 628
    if-eqz v12, :cond_8

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v7           #newConfig:Landroid/graphics/Bitmap$Config;
    :cond_8
    if-nez v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_9
    const/4 v13, 0x1

    :goto_4
    invoke-static {v9, v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 631
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    iget v13, v5, Landroid/graphics/RectF;->left:F

    neg-float v13, v13

    iget v14, v5, Landroid/graphics/RectF;->top:F

    neg-float v14, v14

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 632
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 634
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 635
    .restart local v10       #paint:Landroid/graphics/Paint;
    move/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 636
    if-eqz v12, :cond_6

    .line 637
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_2

    .line 620
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #deviceR:Landroid/graphics/RectF;
    .end local v10           #paint:Landroid/graphics/Paint;
    .end local v12           #transformed:Z
    .restart local v7       #newConfig:Landroid/graphics/Bitmap$Config;
    :cond_a
    const/4 v12, 0x0

    goto :goto_3

    .line 628
    .end local v7           #newConfig:Landroid/graphics/Bitmap$Config;
    .restart local v5       #deviceR:Landroid/graphics/RectF;
    .restart local v12       #transformed:Z
    :cond_b
    const/4 v13, 0x0

    goto :goto_4

    .line 600
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "display"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 678
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "display"
    .parameter "width"
    .parameter "height"
    .parameter "config"
    .parameter "hasAlpha"

    .prologue
    .line 715
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 716
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v5, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x1

    move v2, p1

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 719
    .local v7, bm:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_2

    .line 720
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v7, Landroid/graphics/Bitmap;->mDensity:I

    .line 722
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p3, v0, :cond_3

    if-nez p4, :cond_3

    .line 723
    iget v0, v7, Landroid/graphics/Bitmap;->mNativeBitmap:I

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    .line 724
    iget v0, v7, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p4}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(IZ)V

    .line 731
    :cond_3
    return-object v7
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "display"
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 780
    invoke-static/range {p4 .. p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 781
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, p4, :cond_0

    .line 782
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 784
    :cond_0
    add-int/lit8 v1, p5, -0x1

    mul-int/2addr v1, p3

    add-int v9, p2, v1

    .line 785
    .local v9, lastScanline:I
    array-length v10, p1

    .line 786
    .local v10, length:I
    if-ltz p2, :cond_1

    add-int v1, p2, p4

    if-gt v1, v10, :cond_1

    if-ltz v9, :cond_1

    add-int v1, v9, p4

    if-le v1, v10, :cond_2

    .line 788
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 790
    :cond_2
    if-lez p4, :cond_3

    if-gtz p5, :cond_4

    .line 791
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width and height must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    :cond_4
    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 795
    .local v8, bm:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_5

    .line 796
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v8, Landroid/graphics/Bitmap;->mDensity:I

    .line 798
    :cond_5
    return-object v8
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "display"
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 839
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 754
    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 817
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "src"
    .parameter "dstWidth"
    .parameter "dstHeight"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    .line 493
    const-class v2, Landroid/graphics/Bitmap;

    monitor-enter v2

    .line 495
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 496
    .local v5, m:Landroid/graphics/Matrix;
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 497
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    if-nez v5, :cond_0

    .line 500
    new-instance v5, Landroid/graphics/Matrix;

    .end local v5           #m:Landroid/graphics/Matrix;
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 503
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 504
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 505
    .local v4, height:I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v8, v0, v2

    .line 506
    .local v8, sx:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v9, v0, v2

    .line 507
    .local v9, sy:F
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v0, p0

    move v2, v1

    move v6, p3

    .line 508
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 510
    .local v7, b:Landroid/graphics/Bitmap;
    const-class v1, Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 512
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 513
    sput-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 515
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 517
    return-object v7

    .line 497
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v8           #sx:F
    .end local v9           #sy:F
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 515
    .restart local v3       #width:I
    .restart local v4       #height:I
    .restart local v5       #m:Landroid/graphics/Matrix;
    .restart local v7       #b:Landroid/graphics/Bitmap;
    .restart local v8       #sx:F
    .restart local v9       #sy:F
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static getDefaultDensity()I
    .locals 1

    .prologue
    .line 111
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_0

    .line 112
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 115
    :goto_0
    return v0

    .line 114
    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 115
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    goto :goto_0
.end method

.method private static native nativeCompress(IIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeConfig(I)I
.end method

.method private static native nativeCopy(IIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeErase(II)V
.end method

.method private static native nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(I)I
.end method

.method private static native nativeGetPixel(III)I
.end method

.method private static native nativeGetPixels(I[IIIIIII)V
.end method

.method private static native nativeHasAlpha(I)Z
.end method

.method private static native nativeHasMipMap(I)Z
.end method

.method private static native nativeHeight(I)I
.end method

.method private static native nativePrepareToDraw(I)V
.end method

.method private static native nativeRecycle(I)Z
.end method

.method private static native nativeRowBytes(I)I
.end method

.method private static native nativeSameAs(II)Z
.end method

.method private static native nativeSetHasAlpha(IZ)V
.end method

.method private static native nativeSetHasMipMap(IZ)V
.end method

.method private static native nativeSetPixel(IIII)V
.end method

.method private static native nativeSetPixels(I[IIIIIII)V
.end method

.method private static native nativeWidth(I)I
.end method

.method private static native nativeWriteToParcel(IZILandroid/os/Parcel;)Z
.end method

.method public static scaleFromDensity(III)I
    .locals 2
    .parameter "size"
    .parameter "sdensity"
    .parameter "tdensity"

    .prologue
    .line 1004
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, p2, :cond_1

    .line 1009
    .end local p0
    :cond_0
    :goto_0
    return p0

    .restart local p0
    :cond_1
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int p0, v0, p1

    goto :goto_0
.end method

.method public static setDefaultDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 107
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 108
    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 3
    .parameter "format"
    .parameter "quality"
    .parameter "stream"

    .prologue
    .line 896
    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 898
    if-nez p3, :cond_0

    .line 899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 901
    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    .line 902
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_2
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v2, 0x1000

    new-array v2, v2, [B

    invoke-static {v0, v1, p2, p3, v2}, Landroid/graphics/Bitmap;->nativeCompress(IIILjava/io/OutputStream;[B)Z

    move-result v0

    return v0
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "config"
    .parameter "isMutable"

    .prologue
    .line 470
    const-string v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 471
    iget v1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v2, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v1, v2, p2}, Landroid/graphics/Bitmap;->nativeCopy(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 472
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 473
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 475
    :cond_0
    return-object v0
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 11
    .parameter "src"

    .prologue
    .line 428
    const-string v7, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-direct {p0, v7}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 432
    .local v4, elements:I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    .line 433
    const/4 v6, 0x0

    .line 442
    .local v6, shift:I
    :goto_0
    int-to-long v7, v4

    shl-long v2, v7, v6

    .line 443
    .local v2, bufferBytes:J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v0, v7

    .line 445
    .local v0, bitmapBytes:J
    cmp-long v7, v2, v0

    if-gez v7, :cond_3

    .line 446
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 434
    .end local v0           #bitmapBytes:J
    .end local v2           #bufferBytes:J
    .end local v6           #shift:I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    .line 435
    const/4 v6, 0x1

    .restart local v6       #shift:I
    goto :goto_0

    .line 436
    .end local v6           #shift:I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    .line 437
    const/4 v6, 0x2

    .restart local v6       #shift:I
    goto :goto_0

    .line 439
    .end local v6           #shift:I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 449
    .restart local v0       #bitmapBytes:J
    .restart local v2       #bufferBytes:J
    .restart local v6       #shift:I
    :cond_3
    iget v7, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V

    .line 452
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 453
    .local v5, position:I
    int-to-long v7, v5

    shr-long v9, v0, v6

    add-long/2addr v7, v9

    long-to-int v5, v7

    .line 454
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 455
    return-void
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 11
    .parameter "dst"

    .prologue
    .line 394
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 396
    .local v2, elements:I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    .line 397
    const/4 v6, 0x0

    .line 406
    .local v6, shift:I
    :goto_0
    int-to-long v7, v2

    shl-long v0, v7, v6

    .line 407
    .local v0, bufferSize:J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v3, v7

    .line 409
    .local v3, pixelSize:J
    cmp-long v7, v0, v3

    if-gez v7, :cond_3

    .line 410
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 398
    .end local v0           #bufferSize:J
    .end local v3           #pixelSize:J
    .end local v6           #shift:I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    .line 399
    const/4 v6, 0x1

    .restart local v6       #shift:I
    goto :goto_0

    .line 400
    .end local v6           #shift:I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    .line 401
    const/4 v6, 0x2

    .restart local v6       #shift:I
    goto :goto_0

    .line 403
    .end local v6           #shift:I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 413
    .restart local v0       #bufferSize:J
    .restart local v3       #pixelSize:J
    .restart local v6       #shift:I
    :cond_3
    iget v7, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V

    .line 416
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 417
    .local v5, position:I
    int-to-long v7, v5

    shr-long v9, v3, v6

    add-long/2addr v7, v9

    long-to-int v5, v7

    .line 418
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 419
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1315
    const/4 v0, 0x0

    return v0
.end method

.method public eraseColor(I)V
    .locals 2
    .parameter "c"

    .prologue
    .line 1117
    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1121
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    .line 1122
    return-void
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1338
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "paint"
    .parameter "offsetXY"

    .prologue
    .line 1367
    const-string v2, "Can\'t extractAlpha on a recycled bitmap"

    invoke-direct {p0, v2}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1368
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    .line 1369
    .local v1, nativePaint:I
    :goto_0
    iget v2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v2, v1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1370
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1371
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to extractAlpha on Bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1368
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #nativePaint:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1373
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #nativePaint:I
    :cond_1
    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v2, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 1374
    return-object v0
.end method

.method public final getByteCount()I
    .locals 2

    .prologue
    .line 1029
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 1037
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeConfig(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getGenerationId()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeGenerationId(I)I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 2

    .prologue
    .line 943
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHeight(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    goto :goto_0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/graphics/Bitmap;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutBounds()[I
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    return-object v0
.end method

.method public getNinePatchChunk()[B
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public getPixel(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1135
    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1136
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1137
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(III)I

    move-result v0

    return v0
.end method

.method public getPixels([IIIIIII)V
    .locals 8
    .parameter "pixels"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1165
    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1166
    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1169
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1170
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeGetPixels(I[IIIIIII)V

    goto :goto_0
.end method

.method public final getRowBytes()I
    .locals 1

    .prologue
    .line 1021
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRowBytes(I)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(I)I
    .locals 2
    .parameter "targetDensity"

    .prologue
    .line 997
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/graphics/Canvas;)I
    .locals 3
    .parameter "canvas"

    .prologue
    .line 959
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/util/DisplayMetrics;)I
    .locals 3
    .parameter "metrics"

    .prologue
    .line 975
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(I)I
    .locals 2
    .parameter "targetDensity"

    .prologue
    .line 986
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/graphics/Canvas;)I
    .locals 3
    .parameter "canvas"

    .prologue
    .line 951
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/util/DisplayMetrics;)I
    .locals 3
    .parameter "metrics"

    .prologue
    .line 967
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 938
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeWidth(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    goto :goto_0
.end method

.method public final hasAlpha()Z
    .locals 1

    .prologue
    .line 1049
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHasAlpha(I)Z

    move-result v0

    return v0
.end method

.method public final hasMipMap()Z
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHasMipMap(I)Z

    move-result v0

    return v0
.end method

.method public final isMutable()Z
    .locals 1

    .prologue
    .line 912
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    return v0
.end method

.method public final isPremultiplied()Z
    .locals 2

    .prologue
    .line 933
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method final ni()I
    .locals 1

    .prologue
    .line 1473
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    return v0
.end method

.method public prepareToDraw()V
    .locals 1

    .prologue
    .line 1398
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativePrepareToDraw(I)V

    .line 1399
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_1

    .line 233
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRecycle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iput-object v1, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 239
    iput-object v1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 241
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 243
    :cond_1
    return-void
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 1383
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeSameAs(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 196
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 197
    return-void
.end method

.method public setHasAlpha(Z)V
    .locals 1
    .parameter "hasAlpha"

    .prologue
    .line 1063
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(IZ)V

    .line 1064
    return-void
.end method

.method public final setHasMipMap(Z)V
    .locals 1
    .parameter "hasMipMap"

    .prologue
    .line 1108
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(IZ)V

    .line 1109
    return-void
.end method

.method public setImagePath(Landroid/util/TypedValue;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 91
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 94
    .local v0, path:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/Bitmap;->mImagePath:Ljava/lang/String;

    .line 99
    .end local v0           #path:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 1
    .parameter "imagePath"

    .prologue
    .line 85
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    .line 86
    iput-object p1, p0, Landroid/graphics/Bitmap;->mImagePath:Ljava/lang/String;

    .line 88
    :cond_0
    return-void
.end method

.method public setLayoutBounds([I)V
    .locals 0
    .parameter "bounds"

    .prologue
    .line 217
    iput-object p1, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    .line 218
    return-void
.end method

.method public setNinePatchChunk([B)V
    .locals 0
    .parameter "chunk"

    .prologue
    .line 207
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 208
    return-void
.end method

.method public setPixel(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "color"

    .prologue
    .line 1246
    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1250
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1251
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(IIII)V

    .line 1252
    return-void
.end method

.method public setPixels([IIIIIII)V
    .locals 8
    .parameter "pixels"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1279
    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1281
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1283
    :cond_0
    if-eqz p6, :cond_1

    if-nez p7, :cond_2

    .line 1289
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1286
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1287
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeSetPixels(I[IIIIIII)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "p"
    .parameter "flags"

    .prologue
    .line 1324
    const-string v0, "Can\'t parcel a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1325
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(IZILandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1326
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1328
    :cond_0
    return-void
.end method
