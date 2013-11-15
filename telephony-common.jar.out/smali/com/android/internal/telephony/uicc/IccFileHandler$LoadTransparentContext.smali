.class Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadTransparentContext"
.end annotation


# instance fields
.field binSize:I

.field countPhases:I

.field efid:I

.field loadAll:Z

.field onLoaded:Landroid/os/Message;

.field phaseNum:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILandroid/os/Message;)V
    .locals 1
    .parameter "efid"
    .parameter "phaseNum"
    .parameter "onLoaded"

    .prologue
    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->efid:I

    .line 193
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->phaseNum:I

    .line 194
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->loadAll:Z

    .line 196
    return-void
.end method

.method constructor <init>(ILandroid/os/Message;)V
    .locals 1
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v0, 0x1

    .line 198
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->efid:I

    .line 200
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->phaseNum:I

    .line 201
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->loadAll:Z

    .line 202
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    .line 203
    return-void
.end method
