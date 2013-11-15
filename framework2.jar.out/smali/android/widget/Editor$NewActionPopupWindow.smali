.class Landroid/widget/Editor$NewActionPopupWindow;
.super Landroid/widget/Editor$NewPinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewActionPopupWindow"
.end annotation


# static fields
.field private static final TW_NEW_POPUP_DIVIDER_LAYOUT:I = 0x109013d

.field private static final TW_NEW_POPUP_TEXT_LAYOUT:I = 0x109013f

.field private static final TW_POPUP_HORIZONTAL_SCROLL_LAYOUT:I = 0x109013e


# instance fields
.field private mActionBarHeight:I

.field private mClipboardTextView:Landroid/widget/TextView;

.field private mContentViewHeight:I

.field private mContentViewWidth:I

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mDividerImageView1:Landroid/widget/ImageView;

.field private mDividerImageView2:Landroid/widget/ImageView;

.field private mDividerImageView3:Landroid/widget/ImageView;

.field private mDividerImageView4:Landroid/widget/ImageView;

.field private mDividerImageView5:Landroid/widget/ImageView;

.field private mDividerImageView6:Landroid/widget/ImageView;

.field private mHandlerHeight:I

.field private mPasteTextView:Landroid/widget/TextView;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mShareTextView:Landroid/widget/TextView;

.field private mStatusbarHeight:I

.field private mTranslateTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 3920
    iput-object p1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$NewPinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3920
    invoke-direct {p0, p1}, Landroid/widget/Editor$NewActionPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method protected createPopupWindow()V
    .locals 3

    .prologue
    .line 3953
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3954
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3955
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextEditNewActionPopupBackGroundRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3956
    return-void
.end method

.method protected getNewActionPopupPosition([I)V
    .locals 30
    .parameter "position"

    .prologue
    .line 4189
    if-nez p1, :cond_0

    .line 4190
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 p1, v0

    .line 4193
    :cond_0
    const/4 v14, 0x1

    .line 4194
    .local v14, menuItemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    .line 4195
    .local v5, canCut:Z
    if-eqz v5, :cond_1

    add-int/lit8 v14, v14, 0x1

    .line 4196
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->canCopy()Z

    move-result v4

    .line 4197
    .local v4, canCopy:Z
    if-eqz v4, :cond_2

    add-int/lit8 v14, v14, 0x1

    .line 4198
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->canPaste()Z

    move-result v6

    .line 4199
    .local v6, canPaste:Z
    if-eqz v6, :cond_3

    add-int/lit8 v14, v14, 0x1

    .line 4200
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v26

    const-string v27, "clipboardEx"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/ClipboardExManager;

    .line 4201
    .local v8, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v26

    if-eqz v26, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/text/Editable;

    move/from16 v26, v0

    if-eqz v26, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v26

    if-eqz v26, :cond_c

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v26

    if-lez v26, :cond_c

    const/4 v3, 0x1

    .line 4205
    .local v3, canClipboard:Z
    :goto_0
    if-eqz v3, :cond_4

    add-int/lit8 v14, v14, 0x1

    .line 4206
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->canTranslate()Z

    move-result v26

    if-eqz v26, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/widget/Editor;->mTranslateEnable:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    const/4 v7, 0x1

    .line 4207
    .local v7, canTranslate:Z
    :goto_1
    if-eqz v7, :cond_5

    add-int/lit8 v14, v14, 0x1

    .line 4209
    :cond_5
    const/4 v15, 0x0

    .line 4210
    .local v15, menuLimit:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 4211
    const/4 v15, 0x4

    .line 4216
    :goto_2
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 4217
    .local v16, screen:[I
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 4218
    .local v25, window:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 4219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4220
    const/16 v2, 0xf

    .line 4221
    .local v2, PADDING_WIDTH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    .line 4222
    .local v18, screenWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    .line 4223
    .local v17, screenHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v20

    .line 4224
    .local v20, selStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v19

    .line 4225
    .local v19, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v21

    .line 4226
    .local v21, startLine:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    .line 4227
    .local v9, endLine:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v26

    const/16 v27, 0x1

    aget v27, v25, v27

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v27

    add-int v23, v26, v27

    .line 4228
    .local v23, startLineTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v26

    const/16 v27, 0x1

    aget v27, v25, v27

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v27

    add-int v22, v26, v27

    .line 4229
    .local v22, startLineBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v26

    const/16 v27, 0x1

    aget v27, v25, v27

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v27

    add-int v11, v26, v27

    .line 4230
    .local v11, endLineTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v26

    const/16 v27, 0x1

    aget v27, v25, v27

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v27

    add-int v10, v26, v27

    .line 4231
    .local v10, endLineBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v26

    const/16 v27, 0x0

    aget v27, v25, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 4232
    .local v24, startX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v26

    const/16 v27, 0x0

    aget v27, v25, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v12, v0

    .line 4233
    .local v12, endX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/text/Layout;->getWidth()I

    move-result v13

    .line 4234
    .local v13, maxWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v26

    const/high16 v27, 0x4120

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    .line 4236
    if-ge v14, v15, :cond_f

    .line 4237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v26, v0

    mul-int/lit8 v27, v14, 0x47

    add-int/lit8 v27, v27, 0xf

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    .line 4246
    :goto_3
    const/16 v26, 0x0

    aget v26, v25, v26

    const/16 v27, 0x0

    aget v27, v16, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_6

    const/16 v26, 0x1

    aget v26, v25, v26

    const/16 v27, 0x1

    aget v27, v16, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    :cond_6
    move/from16 v0, v24

    move/from16 v1, v18

    if-gt v0, v1, :cond_7

    move/from16 v0, v18

    if-le v12, v0, :cond_11

    .line 4247
    :cond_7
    const/16 v26, 0x0

    div-int/lit8 v27, v18, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    aput v27, p1, v26

    .line 4248
    const/16 v26, 0x0

    aget v27, p1, v26

    const/16 v28, 0x0

    aget v28, v16, v28

    const/16 v29, 0x0

    aget v29, v25, v29

    sub-int v28, v28, v29

    sub-int v27, v27, v28

    aput v27, p1, v26

    .line 4265
    :cond_8
    :goto_4
    const/16 v26, 0x0

    aget v26, v25, v26

    const/16 v27, 0x0

    aget v27, v16, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_16

    const/16 v26, 0x1

    aget v26, v25, v26

    const/16 v27, 0x1

    aget v27, v16, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_16

    .line 4266
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v26, v0

    sub-int v26, v23, v26

    const/16 v27, 0x1

    aget v27, v16, v27

    const/16 v28, 0x1

    aget v28, v25, v28

    sub-int v27, v27, v28

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_15

    .line 4267
    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v27, v0

    sub-int v27, v23, v27

    aput v27, p1, v26

    .line 4268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v26

    if-eqz v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v26

    if-eqz v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v26

    if-eqz v26, :cond_9

    .line 4269
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandleToTop()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 4270
    const/16 v26, 0x1

    aget v27, p1, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    aput v27, p1, v26

    .line 4299
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1a

    .line 4300
    if-gez v23, :cond_a

    const/16 v26, 0x1

    aget v26, p1, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 4301
    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v27, v0

    add-int v27, v27, v10

    aput v27, p1, v26

    .line 4303
    :cond_a
    const/16 v26, 0x1

    aget v26, p1, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    move/from16 v1, v17

    if-le v0, v1, :cond_b

    .line 4304
    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v27, v0

    sub-int v27, v17, v27

    aput v27, p1, v26

    .line 4315
    :cond_b
    :goto_6
    return-void

    .line 4201
    .end local v2           #PADDING_WIDTH:I
    .end local v3           #canClipboard:Z
    .end local v7           #canTranslate:Z
    .end local v9           #endLine:I
    .end local v10           #endLineBottom:I
    .end local v11           #endLineTop:I
    .end local v12           #endX:I
    .end local v13           #maxWidth:I
    .end local v15           #menuLimit:I
    .end local v16           #screen:[I
    .end local v17           #screenHeight:I
    .end local v18           #screenWidth:I
    .end local v19           #selEnd:I
    .end local v20           #selStart:I
    .end local v21           #startLine:I
    .end local v22           #startLineBottom:I
    .end local v23           #startLineTop:I
    .end local v24           #startX:I
    .end local v25           #window:[I
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 4206
    .restart local v3       #canClipboard:Z
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 4213
    .restart local v7       #canTranslate:Z
    .restart local v15       #menuLimit:I
    :cond_e
    const/4 v15, 0x6

    goto/16 :goto_2

    .line 4239
    .restart local v2       #PADDING_WIDTH:I
    .restart local v9       #endLine:I
    .restart local v10       #endLineBottom:I
    .restart local v11       #endLineTop:I
    .restart local v12       #endX:I
    .restart local v13       #maxWidth:I
    .restart local v16       #screen:[I
    .restart local v17       #screenHeight:I
    .restart local v18       #screenWidth:I
    .restart local v19       #selEnd:I
    .restart local v20       #selStart:I
    .restart local v21       #startLine:I
    .restart local v22       #startLineBottom:I
    .restart local v23       #startLineTop:I
    .restart local v24       #startX:I
    .restart local v25       #window:[I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    .line 4240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v26, v0

    const v27, 0x43958000

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    goto/16 :goto_3

    .line 4242
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v26, v0

    const v27, 0x43dd8000

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    goto/16 :goto_3

    .line 4249
    :cond_11
    move/from16 v0, v21

    if-eq v0, v9, :cond_13

    .line 4250
    const/16 v26, 0x0

    const/16 v27, 0x0

    aget v27, v25, v27

    div-int/lit8 v28, v13, 0x2

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    aput v27, p1, v26

    .line 4251
    const/16 v26, 0x0

    aget v26, p1, v26

    if-gez v26, :cond_12

    .line 4252
    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, p1, v26

    goto/16 :goto_4

    .line 4253
    :cond_12
    const/16 v26, 0x0

    aget v26, p1, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    .line 4254
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v27, v0

    sub-int v27, v18, v27

    aput v27, p1, v26

    goto/16 :goto_4

    .line 4257
    :cond_13
    const/16 v26, 0x0

    sub-int v27, v12, v24

    div-int/lit8 v27, v27, 0x2

    add-int v27, v27, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    aput v27, p1, v26

    .line 4258
    const/16 v26, 0x0

    aget v26, p1, v26

    if-gez v26, :cond_14

    .line 4259
    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, p1, v26

    goto/16 :goto_4

    .line 4260
    :cond_14
    const/16 v26, 0x0

    aget v26, p1, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    .line 4261
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v27, v0

    sub-int v27, v18, v27

    aput v27, p1, v26

    goto/16 :goto_4

    .line 4274
    :cond_15
    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v27, v0

    add-int v27, v27, v10

    aput v27, p1, v26

    goto/16 :goto_5

    .line 4276
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v26, v0

    sub-int v26, v23, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_17

    .line 4277
    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v27, v0

    sub-int v27, v23, v27

    aput v27, p1, v26

    .line 4278
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v26

    if-eqz v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v26

    if-eqz v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v26

    if-eqz v26, :cond_9

    .line 4279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandleToTop()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 4280
    const/16 v26, 0x1

    aget v27, p1, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    aput v27, p1, v26

    goto/16 :goto_5

    .line 4283
    :cond_17
    move/from16 v0, v23

    if-eq v0, v11, :cond_19

    .line 4284
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v26, v0

    add-int v26, v26, v22

    sub-int v26, v10, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_18

    .line 4285
    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v27, v0

    add-int v27, v27, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v28, v0

    add-int v28, v28, v22

    sub-int v28, v10, v28

    div-int/lit8 v28, v28, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v28, v28, v29

    add-int v27, v27, v28

    aput v27, p1, v26

    .line 4287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v26

    if-eqz v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v26

    if-eqz v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v26

    if-eqz v26, :cond_9

    .line 4288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandleToTop()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 4289
    const/16 v26, 0x1

    aget v27, p1, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    aput v27, p1, v26

    goto/16 :goto_5

    .line 4293
    :cond_18
    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v27, v0

    add-int v27, v27, v10

    aput v27, p1, v26

    goto/16 :goto_5

    .line 4296
    :cond_19
    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v27, v0

    add-int v27, v27, v10

    aput v27, p1, v26

    goto/16 :goto_5

    .line 4307
    :cond_1a
    if-gez v23, :cond_1b

    const/16 v26, 0x1

    aget v26, p1, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1b

    .line 4308
    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    move/from16 v27, v0

    add-int v27, v27, v10

    aput v27, p1, v26

    .line 4311
    :cond_1b
    const/16 v26, 0x1

    aget v26, p1, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    move/from16 v1, v17

    if-le v0, v1, :cond_b

    .line 4312
    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v27, v0

    sub-int v27, v17, v27

    aput v27, p1, v26

    goto/16 :goto_6
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 4174
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected initContentView()V
    .locals 17

    .prologue
    .line 3960
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v1, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3963
    .local v1, dividerImageViewLayout:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 3966
    .local v9, inflater:Landroid/view/LayoutInflater;
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    const/high16 v14, 0x428e

    mul-float/2addr v13, v14

    float-to-int v13, v13

    const/4 v14, -0x2

    invoke-direct {v11, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3969
    .local v11, textLayout:Landroid/view/ViewGroup$LayoutParams;
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3972
    .local v12, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3973
    .local v10, linearLayout:Landroid/widget/LinearLayout;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3974
    const/16 v13, 0x11

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3975
    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3976
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3978
    const v13, 0x109013e

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 3979
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3982
    const v13, 0x109013f

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 3983
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3984
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const v14, 0x104000d

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 3985
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3986
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    iget v14, v14, Landroid/widget/TextView;->mTextEditNewActionPopupSelectAllRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3987
    .local v2, drawable1:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v2, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3988
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3991
    const v13, 0x109013d

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    .line 3992
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3993
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3996
    const v13, 0x109013f

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    .line 3997
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3998
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const v14, 0x1040003

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 3999
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4000
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    iget v14, v14, Landroid/widget/TextView;->mTextEditNewActionPopupCutRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4001
    .local v3, drawable2:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v3, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4002
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4005
    const v13, 0x109013d

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    .line 4006
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4007
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4010
    const v13, 0x109013f

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 4011
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4012
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const v14, 0x1040001

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 4013
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4014
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    iget v14, v14, Landroid/widget/TextView;->mTextEditNewActionPopupCopyRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4015
    .local v4, drawable3:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v4, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4016
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4019
    const v13, 0x109013d

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    .line 4020
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4021
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4024
    const v13, 0x109013f

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 4025
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4026
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v14, 0x104000b

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 4027
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4028
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    iget v14, v14, Landroid/widget/TextView;->mTextEditNewActionPopupPasteRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4029
    .local v5, drawable4:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v5, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4030
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4033
    const v13, 0x109013d

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    .line 4034
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4035
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4038
    const v13, 0x109013f

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 4039
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4040
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    const v14, 0x1040018

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 4041
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4042
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    iget v14, v14, Landroid/widget/TextView;->mTextEditNewActionPopupClipboardRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 4043
    .local v6, drawable5:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v6, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4044
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4047
    const v13, 0x109013d

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    .line 4048
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4049
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4052
    const v13, 0x109013f

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    .line 4053
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4054
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    const v14, 0x104089d

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 4055
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4056
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    iget v14, v14, Landroid/widget/TextView;->mTextEditNewActionPopupTranslateRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 4057
    .local v7, drawable6:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v7, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4058
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4061
    const v13, 0x109013d

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    .line 4062
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4063
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4066
    const v13, 0x109013f

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    .line 4067
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4068
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    const v14, 0x10406d8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 4069
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4070
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    iget v14, v14, Landroid/widget/TextView;->mTextEditNewActionPopupShareRes:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4071
    .local v8, drawable7:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v8, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4072
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4074
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v13, v14}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 4075
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 4121
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 4122
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4142
    :cond_0
    :goto_0
    return-void

    .line 4123
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4124
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4125
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_0

    .line 4126
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4127
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4128
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_0

    .line 4129
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4130
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4131
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_0

    .line 4132
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    .line 4133
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102027a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4134
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_0

    .line 4135
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canTranslate()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTranslateEnable:Z

    if-eqz v0, :cond_6

    .line 4136
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102027b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4137
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto/16 :goto_0

    .line 4138
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v0, :cond_0

    .line 4139
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102027c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4140
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 4146
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4169
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 4148
    :pswitch_0
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4149
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4150
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->removeAllNewActionPopupHider()V

    goto :goto_0

    .line 4156
    :pswitch_1
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4157
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4158
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4159
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    #getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$100(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    #getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$100(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_0

    .line 4160
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    #getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$100(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4161
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    #getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$100(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hideNewActionPopupWindowAfterDelay()V

    goto/16 :goto_0

    .line 4146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setHeight()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4179
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Landroid/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4181
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    .line 4183
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    .line 4184
    const/high16 v1, 0x41c8

    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    .line 4185
    return-void
.end method

.method public show()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 4079
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    instance-of v10, v10, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v10, :cond_0

    .line 4117
    :goto_0
    return-void

    .line 4083
    :cond_0
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canCut()Z

    move-result v2

    .line 4084
    .local v2, canCut:Z
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    .line 4085
    .local v1, canCopy:Z
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canPaste()Z

    move-result v3

    .line 4086
    .local v3, canPaste:Z
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canTranslate()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mTranslateEnable:Z

    if-eqz v10, :cond_2

    move v5, v7

    .line 4087
    .local v5, canTranslate:Z
    :goto_1
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v10}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v4, v7

    .line 4088
    .local v4, canSuggest:Z
    :goto_2
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "clipboardEx"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/sec/clipboard/ClipboardExManager;

    .line 4089
    .local v6, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v10}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    instance-of v10, v10, Landroid/text/Editable;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v10

    if-eqz v10, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v10

    if-lez v10, :cond_4

    move v0, v7

    .line 4094
    .local v0, canClipboard:Z
    :goto_3
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4096
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4097
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4099
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    move v7, v8

    :goto_6
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4100
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    move v7, v8

    :goto_7
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4102
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    move v7, v8

    :goto_8
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4103
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    move v7, v8

    :goto_9
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4105
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    move v7, v8

    :goto_a
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4106
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    move v7, v8

    :goto_b
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4108
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView5:Landroid/widget/ImageView;

    if-eqz v5, :cond_d

    move v7, v8

    :goto_c
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4109
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_e

    move v7, v8

    :goto_d
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4111
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerImageView6:Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v7, :cond_f

    move v7, v8

    :goto_e
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4112
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v10, :cond_1

    move v9, v8

    :cond_1
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4114
    iget-object v7, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7, v8, v8}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 4116
    invoke-super {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->show()V

    goto/16 :goto_0

    .end local v0           #canClipboard:Z
    .end local v4           #canSuggest:Z
    .end local v5           #canTranslate:Z
    .end local v6           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_2
    move v5, v8

    .line 4086
    goto/16 :goto_1

    .restart local v5       #canTranslate:Z
    :cond_3
    move v4, v8

    .line 4087
    goto/16 :goto_2

    .restart local v4       #canSuggest:Z
    .restart local v6       #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_4
    move v0, v8

    .line 4089
    goto :goto_3

    .restart local v0       #canClipboard:Z
    :cond_5
    move v7, v9

    .line 4096
    goto :goto_4

    :cond_6
    move v7, v9

    .line 4097
    goto :goto_5

    :cond_7
    move v7, v9

    .line 4099
    goto :goto_6

    :cond_8
    move v7, v9

    .line 4100
    goto :goto_7

    :cond_9
    move v7, v9

    .line 4102
    goto :goto_8

    :cond_a
    move v7, v9

    .line 4103
    goto :goto_9

    :cond_b
    move v7, v9

    .line 4105
    goto :goto_a

    :cond_c
    move v7, v9

    .line 4106
    goto :goto_b

    :cond_d
    move v7, v9

    .line 4108
    goto :goto_c

    :cond_e
    move v7, v9

    .line 4109
    goto :goto_d

    :cond_f
    move v7, v9

    .line 4111
    goto :goto_e
.end method
