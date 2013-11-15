.class public abstract Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;
.super Landroid/os/Binder;
.source "ISmartCardPinService.java"

# interfaces
.implements Lcom/sec/smartcard/pinservice/ISmartCardPinService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/smartcard/pinservice/ISmartCardPinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.smartcard.pinservice.ISmartCardPinService"

.field static final TRANSACTION_getPin:I = 0x1

.field static final TRANSACTION_isCardRegistered:I = 0x5

.field static final TRANSACTION_isDeviceConnectedWithCard:I = 0x6

.field static final TRANSACTION_isSmartCardAuthenticationAvailable:I = 0x7

.field static final TRANSACTION_registerCard:I = 0x2

.field static final TRANSACTION_unRegisterCard:I = 0x3

.field static final TRANSACTION_verifyCard:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 44
    :sswitch_0
    const-string v3, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v3, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;

    move-result-object v0

    .line 52
    .local v0, _arg0:Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;
    invoke-virtual {p0, v0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->getPin(Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0           #_arg0:Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;
    :sswitch_2
    const-string v3, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    .line 62
    .local v0, _arg0:[C
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;

    move-result-object v1

    .line 63
    .local v1, _arg1:Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
    invoke-virtual {p0, v0, v1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->registerCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0           #_arg0:[C
    .end local v1           #_arg1:Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
    :sswitch_3
    const-string v3, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    .line 73
    .restart local v0       #_arg0:[C
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;

    move-result-object v1

    .line 74
    .restart local v1       #_arg1:Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
    invoke-virtual {p0, v0, v1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->unRegisterCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0           #_arg0:[C
    .end local v1           #_arg1:Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;
    :sswitch_4
    const-string v3, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    .line 84
    .restart local v0       #_arg0:[C
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;

    move-result-object v1

    .line 85
    .local v1, _arg1:Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;
    invoke-virtual {p0, v0, v1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    .end local v0           #_arg0:[C
    .end local v1           #_arg1:Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;
    :sswitch_5
    const-string v5, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->isCardRegistered()Z

    move-result v2

    .line 93
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v2           #_result:Z
    :sswitch_6
    const-string v5, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->isDeviceConnectedWithCard()Z

    move-result v2

    .line 101
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 107
    .end local v2           #_result:Z
    :sswitch_7
    const-string v5, "com.sec.smartcard.pinservice.ISmartCardPinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->isSmartCardAuthenticationAvailable()Z

    move-result v2

    .line 109
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method