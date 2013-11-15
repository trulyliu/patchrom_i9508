.class public Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;
.super Landroid/widget/RelativeLayout;
.source "LockscreenHelpOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static DEBUG:Z = false

.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final TAG:Ljava/lang/String; = "LockscreenHelpOverlay"


# instance fields
.field private final FIRST_OVERLAY:I

.field private final LIMIT_COUNT:I

.field private final SCREEN_UPDATE:I

.field private dm:Landroid/util/DisplayMetrics;

.field private isHelpOverlayUSA:Z

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mChecked:I

.field private mContext:Landroid/content/Context;

.field private mEntireLayout:Landroid/widget/RelativeLayout;

.field private mHelpButton1:Landroid/widget/Button;

.field private mHelpButton2:Landroid/widget/Button;

.field private mHelpCheckBox1:Landroid/widget/CheckBox;

.field private mHelpCheckBox2:Landroid/widget/CheckBox;

.field private mOverlayLayout1:Landroid/widget/RelativeLayout;

.field private mOverlayLayout2:Landroid/widget/RelativeLayout;

.field private mPopupLayout1:Landroid/widget/LinearLayout;

.field private mPopupLayout2:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    .line 61
    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->SCREEN_UPDATE:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->FIRST_OVERLAY:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->LIMIT_COUNT:I

    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    .line 61
    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->SCREEN_UPDATE:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->FIRST_OVERLAY:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->LIMIT_COUNT:I

    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    .line 61
    const/16 v0, 0x12c3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->SCREEN_UPDATE:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->FIRST_OVERLAY:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->LIMIT_COUNT:I

    .line 77
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private castingDpi(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 276
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private checkPortrait()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 251
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public checkOverlayCondition()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    if-gt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->isLargePhone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->checkPortrait()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 131
    :cond_1
    return v0
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 221
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    return-void
.end method

.method public isHelpOverlayVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 266
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 270
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLargePhone()Z
    .locals 3

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 258
    .local v0, deviceSW:I
    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 259
    const/4 v1, 0x0

    .line 261
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/16 v3, 0x8

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 231
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setHelpLayoutFlag()V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 235
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->removeCallback()V

    goto :goto_0

    .line 239
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setHelpLayoutFlag()V

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 243
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->removeCallback()V

    goto :goto_0

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020332 -> :sswitch_0
        0x1020339 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_overlay_checked"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    .line 91
    const-string v0, "LockscreenHelpOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->isHelpOverlayUSA:Z

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->checkOverlayCondition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->removeCallback()V

    .line 125
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 102
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sput-boolean v4, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    .line 105
    :cond_1
    const v0, 0x102032c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mEntireLayout:Landroid/widget/RelativeLayout;

    .line 106
    const v0, 0x102032d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    .line 107
    const v0, 0x1020334

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    .line 108
    const v0, 0x102032f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout1:Landroid/widget/LinearLayout;

    .line 109
    const v0, 0x1020336

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    .line 110
    const v0, 0x1020331

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    .line 111
    const v0, 0x1020338

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    .line 112
    const v0, 0x1020332

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpButton1:Landroid/widget/Button;

    .line 113
    const v0, 0x1020339

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpButton2:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpButton1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mHelpButton2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->showHelpTip()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 217
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 213
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 170
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 200
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 174
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 196
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v3, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v3, 0x1388

    invoke-interface {v1, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    move v1, v2

    .line 198
    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 178
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_1

    .line 179
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 180
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_1

    .line 186
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 187
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_1

    .line 188
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 189
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mPopupLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_1

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public removeCallback()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 210
    return-void
.end method

.method public setCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 206
    return-void
.end method

.method public setHelpLayoutFlag()V
    .locals 4

    .prologue
    .line 156
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    .line 157
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 158
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "displayed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "help_overlay_checked"

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->checkOverlayCondition()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public showHelpTip()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 135
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kg_multiple_lockscreen"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 137
    .local v0, isMultipleLockscreen:Z
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mChecked:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 138
    const-string v2, "LockscreenHelpOverlay"

    const-string v3, "1st view show"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    :goto_1
    return-void

    .end local v0           #isMultipleLockscreen:Z
    :cond_0
    move v0, v1

    .line 135
    goto :goto_0

    .line 141
    .restart local v0       #isMultipleLockscreen:Z
    :cond_1
    if-eqz v0, :cond_2

    .line 142
    const-string v2, "LockscreenHelpOverlay"

    const-string v3, "2nd view show"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 146
    :cond_2
    const-string v1, "LockscreenHelpOverlay"

    const-string v2, "3rd all view GONE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->mOverlayLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 149
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->removeCallback()V

    goto :goto_1
.end method
