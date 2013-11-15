.class public abstract Lcom/movial/ipphone/IIPService$Stub;
.super Landroid/os/Binder;
.source "IIPService.java"

# interfaces
.implements Lcom/movial/ipphone/IIPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/IIPService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.movial.ipphone.IIPService"

.field static final TRANSACTION_accept:I = 0xa

.field static final TRANSACTION_acknowledgeLastIncomingIpSms:I = 0x19

.field static final TRANSACTION_clearDisconnected:I = 0x1e

.field static final TRANSACTION_conference:I = 0xd

.field static final TRANSACTION_connect:I = 0x2

.field static final TRANSACTION_dial:I = 0x6

.field static final TRANSACTION_dialEmergencyCall:I = 0x7

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_doSubscribe:I = 0x3

.field static final TRANSACTION_getContactUri:I = 0x1f

.field static final TRANSACTION_hangup:I = 0x8

.field static final TRANSACTION_hangupForegroundResumeBackground:I = 0x9

.field static final TRANSACTION_hold:I = 0xc

.field static final TRANSACTION_queryLastRegisterFailureCode:I = 0x5

.field static final TRANSACTION_registerForCallStates:I = 0x15

.field static final TRANSACTION_registerForConnectionState:I = 0x13

.field static final TRANSACTION_registerForEmergencyCallPref:I = 0x16

.field static final TRANSACTION_registerForIncomingSMS:I = 0x17

.field static final TRANSACTION_registerForIncomingUSSD:I = 0x11

.field static final TRANSACTION_registerForSubscription:I = 0x14

.field static final TRANSACTION_reject:I = 0xb

.field static final TRANSACTION_sendDtmf:I = 0x1a

.field static final TRANSACTION_sendSMS:I = 0x18

.field static final TRANSACTION_sendUssd:I = 0x12

.field static final TRANSACTION_setCW:I = 0x10

.field static final TRANSACTION_setCallForward:I = 0xf

.field static final TRANSACTION_setCellLocation:I = 0x1d

.field static final TRANSACTION_setMute:I = 0xe

.field static final TRANSACTION_startDtmf:I = 0x1b

.field static final TRANSACTION_stopDtmf:I = 0x1c

.field static final TRANSACTION_test:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p0, p0, v0}, Lcom/movial/ipphone/IIPService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/movial/ipphone/IIPService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.movial.ipphone.IIPService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/movial/ipphone/IIPService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/movial/ipphone/IIPService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/movial/ipphone/IIPService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/movial/ipphone/IIPService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 398
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->test()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->connect(Ljava/lang/String;I)Z

    move-result v6

    .line 60
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v6, :cond_0

    move v0, v7

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_3
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->doSubscribe()Z

    move-result v6

    .line 68
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v6, :cond_1

    move v0, v7

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v6           #_result:Z
    :sswitch_4
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->disconnect()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    :sswitch_5
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->queryLastRegisterFailureCode()Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->dial(Ljava/lang/String;I)I

    move-result v6

    .line 95
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :sswitch_7
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->dialEmergencyCall(Ljava/lang/String;)I

    move-result v6

    .line 105
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 111
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_8
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 114
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->hangup(I)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    .end local v1           #_arg0:I
    :sswitch_9
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->hangupForegroundResumeBackground()V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    :sswitch_a
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->accept()V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    :sswitch_b
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->reject(I)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 143
    .end local v1           #_arg0:I
    :sswitch_c
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v1, v7

    .line 146
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->hold(Z)I

    move-result v6

    .line 147
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:I
    :cond_2
    move v1, v0

    .line 145
    goto :goto_1

    .line 153
    :sswitch_d
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->conference()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 160
    :sswitch_e
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v1, v7

    .line 163
    .restart local v1       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->setMute(Z)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_3
    move v1, v0

    .line 162
    goto :goto_2

    .line 169
    :sswitch_f
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 179
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    .local v5, _arg4:Landroid/os/Messenger;
    :goto_3
    move-object v0, p0

    .line 185
    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IIPService$Stub;->setCallForward(IILjava/lang/String;ILandroid/os/Messenger;)I

    move-result v6

    .line 186
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v5           #_arg4:Landroid/os/Messenger;
    .end local v6           #_result:I
    :cond_4
    const/4 v5, 0x0

    .restart local v5       #_arg4:Landroid/os/Messenger;
    goto :goto_3

    .line 192
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Landroid/os/Messenger;
    :sswitch_10
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v1, v7

    .line 196
    .local v1, _arg0:Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 202
    .local v2, _arg1:Landroid/os/Messenger;
    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->setCW(ZLandroid/os/Messenger;)I

    move-result v6

    .line 203
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Landroid/os/Messenger;
    .end local v6           #_result:I
    :cond_5
    move v1, v0

    .line 194
    goto :goto_4

    .line 200
    .restart local v1       #_arg0:Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Messenger;
    goto :goto_5

    .line 209
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Landroid/os/Messenger;
    :sswitch_11
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 217
    .local v1, _arg0:Landroid/os/Messenger;
    :goto_6
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForIncomingUSSD(Landroid/os/Messenger;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 215
    .end local v1           #_arg0:Landroid/os/Messenger;
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Messenger;
    goto :goto_6

    .line 223
    .end local v1           #_arg0:Landroid/os/Messenger;
    :sswitch_12
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 228
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 233
    .restart local v2       #_arg1:Landroid/os/Messenger;
    :goto_7
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->sendUssd(Ljava/lang/String;Landroid/os/Messenger;)I

    move-result v6

    .line 234
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 231
    .end local v2           #_arg1:Landroid/os/Messenger;
    .end local v6           #_result:I
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Messenger;
    goto :goto_7

    .line 240
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/Messenger;
    :sswitch_13
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 243
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 248
    .local v1, _arg0:Landroid/os/Messenger;
    :goto_8
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForConnectionState(Landroid/os/Messenger;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 246
    .end local v1           #_arg0:Landroid/os/Messenger;
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Messenger;
    goto :goto_8

    .line 254
    .end local v1           #_arg0:Landroid/os/Messenger;
    :sswitch_14
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 257
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 262
    .restart local v1       #_arg0:Landroid/os/Messenger;
    :goto_9
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForSubscription(Landroid/os/Messenger;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 260
    .end local v1           #_arg0:Landroid/os/Messenger;
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Messenger;
    goto :goto_9

    .line 268
    .end local v1           #_arg0:Landroid/os/Messenger;
    :sswitch_15
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 271
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 276
    .restart local v1       #_arg0:Landroid/os/Messenger;
    :goto_a
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForCallStates(Landroid/os/Messenger;)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 274
    .end local v1           #_arg0:Landroid/os/Messenger;
    :cond_b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Messenger;
    goto :goto_a

    .line 282
    .end local v1           #_arg0:Landroid/os/Messenger;
    :sswitch_16
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    .line 285
    sget-object v8, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 290
    .restart local v1       #_arg0:Landroid/os/Messenger;
    :goto_b
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForEmergencyCallPref(Landroid/os/Messenger;)Z

    move-result v6

    .line 291
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v6, :cond_c

    move v0, v7

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 288
    .end local v1           #_arg0:Landroid/os/Messenger;
    .end local v6           #_result:Z
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Messenger;
    goto :goto_b

    .line 297
    .end local v1           #_arg0:Landroid/os/Messenger;
    :sswitch_17
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 300
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 305
    .restart local v1       #_arg0:Landroid/os/Messenger;
    :goto_c
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForIncomingSMS(Landroid/os/Messenger;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 303
    .end local v1           #_arg0:Landroid/os/Messenger;
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Messenger;
    goto :goto_c

    .line 311
    .end local v1           #_arg0:Landroid/os/Messenger;
    :sswitch_18
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 318
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 324
    .local v3, _arg2:Landroid/os/Messenger;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 325
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/movial/ipphone/IIPService$Stub;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;I)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 321
    .end local v3           #_arg2:Landroid/os/Messenger;
    .end local v4           #_arg3:I
    :cond_f
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Messenger;
    goto :goto_d

    .line 331
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/Messenger;
    :sswitch_19
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_10

    move v1, v7

    .line 335
    .local v1, _arg0:Z
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 336
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->acknowledgeLastIncomingIpSms(ZI)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    :cond_10
    move v1, v0

    .line 333
    goto :goto_e

    .line 342
    :sswitch_1a
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 346
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v2, v0

    .line 347
    .local v2, _arg1:C
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->sendDtmf(IC)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 353
    .end local v1           #_arg0:I
    .end local v2           #_arg1:C
    :sswitch_1b
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 357
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v2, v0

    .line 358
    .restart local v2       #_arg1:C
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->startDtmf(IC)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 364
    .end local v1           #_arg0:I
    .end local v2           #_arg1:C
    :sswitch_1c
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 367
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->stopDtmf(I)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 373
    .end local v1           #_arg0:I
    :sswitch_1d
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 377
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 378
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->setCellLocation(II)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 384
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_1e
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->clearDisconnected()V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 391
    :sswitch_1f
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->getContactUri()[Ljava/lang/String;

    move-result-object v6

    .line 393
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
