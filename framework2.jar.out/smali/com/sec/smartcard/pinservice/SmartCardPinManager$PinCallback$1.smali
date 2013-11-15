.class Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback$1;
.super Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;
.source "SmartCardPinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;


# direct methods
.method constructor <init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;

    invoke-direct {p0}, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCancelled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;

    invoke-virtual {v0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;->onUserCancelled()V

    .line 353
    return-void
.end method

.method public onUserEnteredPin([C)V
    .locals 1
    .parameter "pin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;

    invoke-virtual {v0, p1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;->onUserEnteredPin([C)V

    .line 348
    return-void
.end method

.method public onUserPinError(I)V
    .locals 1
    .parameter "error"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;

    invoke-virtual {v0, p1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;->onUserPinError(I)V

    .line 358
    return-void
.end method
