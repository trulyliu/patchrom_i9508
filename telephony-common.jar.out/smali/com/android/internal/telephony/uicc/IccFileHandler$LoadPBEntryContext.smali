.class Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadPBEntryContext"
.end annotation


# instance fields
.field countRecords:I

.field efid:I

.field loadAll:Z

.field onLoaded:Landroid/os/Message;

.field recordNum:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field totalRecords:I

.field usedRecords:I


# direct methods
.method constructor <init>(IILandroid/os/Message;)V
    .locals 1
    .parameter "efid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->efid:I

    .line 220
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 221
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    .line 223
    return-void
.end method

.method constructor <init>(ILandroid/os/Message;)V
    .locals 1
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v0, 0x1

    .line 225
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->efid:I

    .line 227
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 228
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    .line 229
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    .line 230
    return-void
.end method
