.class Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;
.super Ljava/lang/Object;
.source "GuideRelayoutWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeoutRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)V
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;->this$1:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;->this$1:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$1820(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 968
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;->this$1:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$1800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;->this$1:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$1802(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;->this$1:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;->this$1:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$1800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 974
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;->this$1:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 975
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;->this$1:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    #getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 976
    return-void
.end method
