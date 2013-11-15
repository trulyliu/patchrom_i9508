.class Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;
.super Lcom/samsung/wfd/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevEvent:Landroid/view/MotionEvent;

.field public volatile running:Z

.field final synthetic this$0:Lcom/samsung/wfd/WFDUibcManager;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WFDUibcManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 95
    iput-object p1, p0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    invoke-direct {p0, p1, v1}, Lcom/samsung/wfd/WFDUibcManager$EventQueue;-><init>(Lcom/samsung/wfd/WFDUibcManager;Lcom/samsung/wfd/WFDUibcManager$1;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->running:Z

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->mMap:Ljava/util/HashMap;

    .line 99
    iput-object v1, p0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->mPrevEvent:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    .prologue
    .line 104
    const/16 v2, 0xa

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 105
    .local v8, aPonterProp:[Landroid/view/MotionEvent$PointerProperties;
    const/16 v2, 0xa

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 106
    .local v9, aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    const/16 v2, 0xa

    move/from16 v0, v21

    if-ge v0, v2, :cond_0

    .line 107
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v8, v21

    .line 108
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v9, v21

    .line 106
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 110
    :cond_0
    new-instance v19, Landroid/util/DisplayMetrics;

    invoke-direct/range {v19 .. v19}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    .local v19, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #getter for: Lcom/samsung/wfd/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WFDUibcManager;->access$100(Lcom/samsung/wfd/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/WindowManager;

    .line 112
    .local v32, wm:Landroid/view/WindowManager;
    const v23, 0x38d1b717

    .line 113
    .local v23, kX:F
    const v24, 0x38d1b717

    .line 115
    .local v24, kY:F
    const/high16 v22, 0x3f10

    .line 117
    .local v22, kR:F
    const/16 v26, 0x0

    .line 119
    .local v26, me:Landroid/view/MotionEvent;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->running:Z

    if-eqz v2, :cond_8

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wfd/WFDUibcManager$EventDispatcher;->getNextEvent()Landroid/view/InputEvent;

    move-result-object v20

    .line 121
    .local v20, ev:Landroid/view/InputEvent;
    if-eqz v20, :cond_1

    .line 128
    move-object/from16 v0, v20

    instance-of v2, v0, Landroid/view/MotionEvent;

    if-eqz v2, :cond_7

    .line 130
    invoke-interface/range {v32 .. v32}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 131
    invoke-interface/range {v32 .. v32}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v31

    .line 132
    .local v31, rotation:I
    const v2, 0x38d1b717

    move-object/from16 v0, v19

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float v23, v2, v3

    .line 133
    const v2, 0x38d1b717

    move-object/from16 v0, v19

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v24, v2, v3

    move-object/from16 v27, v20

    .line 135
    check-cast v27, Landroid/view/MotionEvent;

    .line 136
    .local v27, newEv:Landroid/view/MotionEvent;
    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v18

    .line 138
    .local v18, count:I
    const/16 v21, 0x0

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 139
    aget-object v2, v8, v21

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 140
    aget-object v2, v9, v21

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 141
    aget-object v2, v8, v21

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 142
    aget-object v2, v9, v21

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 144
    if-eqz v31, :cond_2

    const/4 v2, 0x2

    move/from16 v0, v31

    if-ne v2, v0, :cond_5

    .line 145
    :cond_2
    move-object/from16 v0, v19

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float v28, v22, v2

    .line 146
    .local v28, newWidth:F
    move-object/from16 v0, v19

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    sub-float v2, v2, v28

    const/high16 v3, 0x4000

    div-float v30, v2, v3

    .line 147
    .local v30, pad:F
    aget-object v2, v9, v21

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v29, v24, v2

    .line 148
    .local v29, normX:F
    cmpg-float v2, v29, v28

    if-ltz v2, :cond_3

    add-float v2, v28, v30

    cmpl-float v2, v29, v2

    if-lez v2, :cond_4

    .line 138
    .end local v28           #newWidth:F
    .end local v29           #normX:F
    .end local v30           #pad:F
    :cond_3
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 149
    .restart local v28       #newWidth:F
    .restart local v29       #normX:F
    .restart local v30       #pad:F
    :cond_4
    aget-object v2, v9, v21

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v29, v30

    mul-float/2addr v4, v5

    div-float v4, v4, v28

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 150
    aget-object v2, v9, v21

    const/4 v3, 0x1

    aget-object v4, v9, v21

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v24

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_3

    .line 152
    .end local v28           #newWidth:F
    .end local v29           #normX:F
    .end local v30           #pad:F
    :cond_5
    aget-object v2, v9, v21

    const/4 v3, 0x0

    aget-object v4, v9, v21

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v4, v4, v23

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 153
    aget-object v2, v9, v21

    const/4 v3, 0x1

    aget-object v4, v9, v21

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v4, v24

    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_3

    .line 157
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v26

    .line 160
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 161
    const/16 v26, 0x0

    .line 162
    goto/16 :goto_1

    .line 163
    .end local v18           #count:I
    .end local v27           #newEv:Landroid/view/MotionEvent;
    .end local v31           #rotation:I
    :cond_7
    move-object/from16 v0, v20

    instance-of v2, v0, Landroid/view/KeyEvent;

    if-eqz v2, :cond_1

    move-object/from16 v25, v20

    .line 166
    check-cast v25, Landroid/view/KeyEvent;

    .line 167
    .local v25, ke:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    goto/16 :goto_1

    .line 171
    .end local v20           #ev:Landroid/view/InputEvent;
    .end local v25           #ke:Landroid/view/KeyEvent;
    :cond_8
    return-void
.end method
