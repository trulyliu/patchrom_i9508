.class Landroid/webkit/HTML5VideoViewProxy;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;,
        Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
    }
.end annotation


# static fields
.field private static final BUFFERING_END:I = 0x6a

.field private static final BUFFERING_START:I = 0x69

.field private static final ENDED:I = 0xc9

.field private static final ENTER_FULLSCREEN:I = 0x6b

.field private static final ERROR:I = 0x67

.field private static final LOAD_DEFAULT_POSTER:I = 0x68

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoViewProxy"

.field private static final PAUSE:I = 0x66

.field private static final PAUSED:I = 0xcb

.field private static final PLAY:I = 0x64

.field private static final POSTER_FETCHED:I = 0xca

.field private static final PREPARED:I = 0xc8

.field private static final RESTORESTATE:I = 0xcd

.field private static final SEEK:I = 0x65

.field private static final SET_VOLUME:I = 0x6c

.field private static final STOPFULLSCREEN:I = 0xcc

.field private static final TIMEUPDATE:I = 0x12c


# instance fields
.field private mDuration:I

.field mNativePointer:I

.field private mPoster:Landroid/graphics/Bitmap;

.field private mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

.field private mSeekPosition:I

.field private mWebCoreHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;I)V
    .locals 1
    .parameter "webView"
    .parameter "nativePtr"

    .prologue
    .line 716
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mDuration:I

    .line 718
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    .line 722
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p0}, Landroid/webkit/WebViewClassic;->setHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 724
    iput p2, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 726
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->createWebCoreHandler()V

    .line 727
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Landroid/webkit/HTML5VideoViewProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    return p1
.end method

.method static synthetic access$1100(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnded(I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPaused(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V

    return-void
.end method

.method static synthetic access$1500(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnStopFullscreen(II)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnRestoreState(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$802(Landroid/webkit/HTML5VideoViewProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mDuration:I

    return p1
.end method

.method static synthetic access$900(Landroid/webkit/HTML5VideoViewProxy;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V

    return-void
.end method

.method private createWebCoreHandler()V
    .locals 1

    .prologue
    .line 730
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoViewProxy$1;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    .line 774
    return-void
.end method

.method private doSetPoster(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "poster"

    .prologue
    .line 777
    if-nez p1, :cond_0

    .line 785
    :goto_0
    return-void

    .line 781
    :cond_0
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPoster:Landroid/graphics/Bitmap;

    .line 782
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 783
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 784
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/webkit/WebViewCore;I)Landroid/webkit/HTML5VideoViewProxy;
    .locals 2
    .parameter "webViewCore"
    .parameter "nativePtr"

    .prologue
    .line 912
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/webkit/HTML5VideoViewProxy;-><init>(Landroid/webkit/WebViewClassic;I)V

    return-object v0
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnRestoreState(I)V
.end method

.method private native nativeOnStopFullscreen(II)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private static native nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
.end method

.method private sendTimeupdate()V
    .locals 3

    .prologue
    .line 788
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 789
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 790
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 791
    return-void
.end method


# virtual methods
.method public dispatchOnEnded()V
    .locals 3

    .prologue
    .line 414
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 415
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 416
    return-void
.end method

.method public dispatchOnPaused()V
    .locals 3

    .prologue
    .line 419
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 420
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 421
    return-void
.end method

.method public dispatchOnRestoreState()V
    .locals 3

    .prologue
    .line 430
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcd

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 431
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 432
    return-void
.end method

.method public dispatchOnStopFullScreen(Z)V
    .locals 3
    .parameter "stillPlaying"

    .prologue
    .line 424
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 425
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 426
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    return-void

    .line 425
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enterFullScreenVideo(ILjava/lang/String;)V
    .locals 1
    .parameter "layerId"
    .parameter "url"

    .prologue
    .line 898
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {p1, p2, p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    .line 899
    return-void
.end method

.method public enterFullscreenForVideoLayer(Ljava/lang/String;I)V
    .locals 2
    .parameter "url"
    .parameter "videoLayerID"

    .prologue
    .line 821
    if-nez p1, :cond_0

    .line 829
    :goto_0
    return-void

    .line 825
    :cond_0
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 826
    .local v0, message:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 827
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 828
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public exitFullScreenVideo()V
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    .line 903
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    .line 450
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 452
    :sswitch_0
    const-string v7, "HTML5VideoViewProxy"

    const-string v8, "handleMessage - PLAY"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 454
    .local v4, url:Ljava/lang/String;
    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 455
    .local v0, client:Landroid/webkit/WebChromeClient;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 456
    .local v5, videoLayerID:I
    if-eqz v0, :cond_0

    .line 457
    iget v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v4, v7, p0, v0, v5}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;I)V

    goto :goto_0

    .line 462
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    .end local v4           #url:Ljava/lang/String;
    .end local v5           #videoLayerID:I
    :sswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 463
    .restart local v4       #url:Ljava/lang/String;
    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 464
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 465
    .restart local v5       #videoLayerID:I
    if-eqz v0, :cond_0

    .line 466
    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {v5, v4, p0, v7}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .line 471
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    .end local v4           #url:Ljava/lang/String;
    .end local v5           #videoLayerID:I
    :sswitch_2
    const-string v7, "HTML5VideoViewProxy"

    const-string v8, "handleMessage - SEEK"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 473
    .local v3, time:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    .line 474
    iget v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v7, p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->seek(ILandroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 478
    .end local v3           #time:Ljava/lang/Integer;
    :sswitch_3
    const-string v7, "HTML5VideoViewProxy"

    const-string v8, "handleMessage - PAUSE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pause(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 483
    :sswitch_4
    const-string v7, "HTML5VideoViewProxy"

    const-string v8, "handleMessage - ENDED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v9, :cond_1

    .line 485
    invoke-static {v9}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$102(Z)Z

    .line 486
    :cond_1
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->end()V

    .line 488
    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 489
    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 490
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto/16 :goto_0

    .line 498
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :sswitch_5
    const-string v7, "HTML5VideoViewProxy"

    const-string v8, "handleMessage - ERROR"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 500
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto/16 :goto_0

    .line 506
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :sswitch_6
    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 507
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 513
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :sswitch_7
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 514
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->sendTimeupdate()V

    goto/16 :goto_0

    .line 519
    :sswitch_8
    const-string v7, "HTML5VideoViewProxy"

    const-string v8, "handleMessage - BUFFERING_START"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v9}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200(Z)V

    goto/16 :goto_0

    .line 524
    :sswitch_9
    const-string v7, "HTML5VideoViewProxy"

    const-string v8, "handleMessage - BUFFERING_END"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mDuration:I

    if-nez v7, :cond_2

    .line 529
    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v8, 0xc8

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 530
    .local v2, msg1:Landroid/os/Message;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 531
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "dur"

    new-instance v8, Ljava/lang/Integer;

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/webkit/HTML5VideoView;

    sget-object v9, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string/jumbo v7, "width"

    new-instance v8, Ljava/lang/Integer;

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/webkit/HTML5VideoView;

    sget-object v9, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v7, "height"

    new-instance v8, Ljava/lang/Integer;

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/webkit/HTML5VideoView;

    sget-object v9, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 535
    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 539
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #msg1:Landroid/os/Message;
    :cond_2
    const/4 v7, 0x0

    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v7}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$200(Z)V

    goto/16 :goto_0

    .line 544
    :sswitch_a
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 545
    .local v6, vol:F
    invoke-static {v6}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setVolume(F)V

    goto/16 :goto_0

    .line 450
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_8
        0x6a -> :sswitch_9
        0x6b -> :sswitch_1
        0x6c -> :sswitch_a
        0xc9 -> :sswitch_4
        0x12c -> :sswitch_7
    .end sparse-switch
.end method

.method public isFullScreenMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 942
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getVideoView()Landroid/webkit/HTML5VideoView;

    move-result-object v0

    .line 943
    .local v0, videoView:Landroid/webkit/HTML5VideoView;
    if-nez v0, :cond_1

    .line 946
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadPoster(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 866
    if-nez p1, :cond_0

    .line 867
    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 868
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 878
    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_1

    .line 873
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 876
    :cond_1
    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-direct {v1, p1, p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;-><init>(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    .line 877
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->start()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 395
    const/16 v0, 0xc9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 396
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 401
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surfaceTexture"

    .prologue
    .line 443
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 444
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 932
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 933
    const/16 v0, 0x69

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 937
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 934
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 935
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 378
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onPrepared()V

    .line 379
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 380
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 381
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string/jumbo v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 385
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 386
    return-void
.end method

.method public onStopFullScreen(Z)V
    .locals 0
    .parameter "isPlaying"

    .prologue
    .line 409
    invoke-static {p1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onStopFullScreen(Z)V

    .line 410
    return-void
.end method

.method public onTimeupdate()V
    .locals 1

    .prologue
    .line 435
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 436
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 845
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 846
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 847
    return-void
.end method

.method public pauseAndDispatch()V
    .locals 0

    .prologue
    .line 894
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pauseAndDispatch()V

    .line 895
    return-void
.end method

.method public play(Ljava/lang/String;II)V
    .locals 2
    .parameter "url"
    .parameter "position"
    .parameter "videoLayerID"

    .prologue
    .line 803
    if-nez p1, :cond_0

    .line 814
    :goto_0
    return-void

    .line 807
    :cond_0
    if-lez p2, :cond_1

    .line 808
    invoke-virtual {p0, p2}, Landroid/webkit/HTML5VideoViewProxy;->seek(I)V

    .line 810
    :cond_1
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 811
    .local v0, message:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 812
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 813
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public seek(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 836
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 837
    .local v0, message:Landroid/os/Message;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 838
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 839
    return-void
.end method

.method public setBaseLayer(I)V
    .locals 0
    .parameter "layer"

    .prologue
    .line 890
    invoke-static {p1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 891
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 882
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 883
    .local v0, message:Landroid/os/Message;
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 884
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 885
    return-void
.end method

.method public teardown()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 858
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 859
    return-void
.end method