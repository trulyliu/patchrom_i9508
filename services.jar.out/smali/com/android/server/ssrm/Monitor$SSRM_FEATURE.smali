.class public Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSRM_FEATURE"
.end annotation


# static fields
.field public static SIOP_FOR_BROWSER_BRIGHTNESS:Z

.field public static SIOP_FOR_CAMERA_DRAMA_SHOT:Z

.field public static SIOP_FOR_CAMERA_DUAL_RECORD:Z

.field public static SSRM_BROWSER_BOOSTER:Z

.field public static SSRM_TOUCH_BUS_QOS_BOOSTER:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-boolean v0, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CAMERA_DUAL_RECORD:Z

    .line 68
    sput-boolean v0, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CAMERA_DRAMA_SHOT:Z

    .line 70
    sput-boolean v0, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_BROWSER_BRIGHTNESS:Z

    .line 72
    sput-boolean v0, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    .line 74
    sput-boolean v0, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_BROWSER_BOOSTER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
