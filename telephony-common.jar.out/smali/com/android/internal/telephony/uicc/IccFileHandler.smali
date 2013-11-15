.class public abstract Lcom/android/internal/telephony/uicc/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;,
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;,
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BIG_BINARY_SIZE_DONE:I = 0x1d

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_IMG_RECORD_SIZE_DONE:I = 0x17

.field private static final EVENT_GET_ITEM_SIZE_DONE:I = 0x15

.field private static final EVENT_GET_RECORD_INFO_DONE:I = 0x1a

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_RECORD_SIZE_IMG_DONE:I = 0xb

.field protected static final EVENT_GET_SIM_FILE_STATUS_DONE:I = 0x1b

.field protected static final EVENT_GET_USIM_PB_CAPA_DONE:I = 0x19

.field private static final EVENT_READ_ADN_DONE:I = 0x16

.field protected static final EVENT_READ_BIG_BINARY_DONE:I = 0x1e

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_IMG_RECORD_DONE:I = 0x18

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final EVENT_UPDATE_ADN_DONE:I = 0x1c

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final MAX_SEC_SIM_DATA_STRING:I = 0xfd

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected final mAid:Ljava/lang/String;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 240
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 241
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 242
    return-void
.end method

.method private processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z
    .locals 5
    .parameter "response"
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, flag:Z
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 598
    .local v2, result:Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 599
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 600
    const/4 v0, 0x1

    .line 608
    :cond_0
    :goto_0
    return v0

    .line 602
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v1

    .line 603
    .local v1, iccException:Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v1, :cond_0

    .line 604
    invoke-direct {p0, p1, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 605
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 584
    if-nez p1, :cond_0

    .line 591
    :goto_0
    return-void

    .line 588
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 590
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public getAdnLikesRecordInfo(ILandroid/os/Message;)V
    .locals 2
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 552
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 555
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 556
    return-void
.end method

.method public getAdnLikesSimStatusInfo(ILandroid/os/Message;)V
    .locals 11
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 572
    const/16 v0, 0x1b

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 574
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 576
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 2
    .parameter "efid"

    .prologue
    const/4 v1, 0x1

    .line 1234
    sparse-switch p1, :sswitch_data_0

    .line 1293
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1245
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 1250
    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    .line 1253
    :sswitch_2
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 1260
    :sswitch_3
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 1263
    :sswitch_4
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 1266
    :sswitch_5
    const-string v0, "3F007FFF5F1F"

    goto :goto_0

    .line 1268
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIntType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1269
    const-string v0, "3F007F20"

    goto :goto_0

    .line 1271
    :cond_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 1277
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIntType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1278
    const-string v0, "3F007F20"

    goto :goto_0

    .line 1280
    :cond_1
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 1290
    :sswitch_8
    const-string v0, "3F00"

    goto :goto_0

    .line 1234
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2f30 -> :sswitch_8
        0x2f40 -> :sswitch_8
        0x2f41 -> :sswitch_8
        0x2f42 -> :sswitch_8
        0x2f43 -> :sswitch_8
        0x2f50 -> :sswitch_8
        0x2fe2 -> :sswitch_1
        0x2fe7 -> :sswitch_1
        0x4f01 -> :sswitch_3
        0x4f02 -> :sswitch_3
        0x4f03 -> :sswitch_3
        0x4f04 -> :sswitch_3
        0x4f05 -> :sswitch_3
        0x4f1c -> :sswitch_5
        0x4f20 -> :sswitch_3
        0x4f30 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3e -> :sswitch_4
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
        0x6f4e -> :sswitch_0
        0x6f60 -> :sswitch_7
        0x6f61 -> :sswitch_7
        0x6f7b -> :sswitch_7
        0x6fb7 -> :sswitch_6
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    .line 352
    return-void
.end method

.method public getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "path"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 334
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 337
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 339
    return-void
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 2
    .parameter "onLoaded"

    .prologue
    .line 565
    const/16 v1, 0x19

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 567
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getUsimPBCapa(Landroid/os/Message;)V

    .line 568
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 59
    .parameter "msg"

    .prologue
    .line 620
    const/16 v51, 0x0

    .line 633
    .local v51, response:Landroid/os/Message;
    const/16 v47, 0x0

    .line 636
    .local v47, path:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v6, v47

    .line 1221
    .end local v47           #path:Ljava/lang/String;
    .local v6, path:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 638
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_1
    const-string v3, "IccFileHandler: get record size img done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 640
    .local v38, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 641
    .local v46, lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 642
    .local v52, result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 644
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 645
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 646
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto :goto_1

    .line 649
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 651
    .local v45, iccException:Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_3

    .line 652
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 653
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto :goto_1

    .line 656
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 657
    .local v40, data:[B
    const/16 v3, 0xe

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 659
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_5

    .line 661
    :cond_4
    const-string v3, "IccFileHandler: File type mismatch: Throw Exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 662
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v40           #data:[B
    .end local v45           #iccException:Lcom/android/internal/telephony/uicc/IccException;
    .end local v46           #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    :catch_0
    move-exception v41

    move-object/from16 v6, v47

    .line 1215
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    .local v41, exc:Ljava/lang/Exception;
    :goto_2
    if-eqz v51, :cond_3a

    .line 1216
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 665
    .end local v6           #path:Ljava/lang/String;
    .end local v41           #exc:Ljava/lang/Exception;
    .restart local v38       #ar:Landroid/os/AsyncResult;
    .restart local v40       #data:[B
    .restart local v45       #iccException:Lcom/android/internal/telephony/uicc/IccException;
    .restart local v46       #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .restart local v47       #path:Ljava/lang/String;
    .restart local v52       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_5
    :try_start_1
    const-string v3, "IccFileHandler: read EF IMG"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v46

    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v14, 0x9

    const/16 v15, 0x4f20

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v51

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v6, v47

    .line 671
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 674
    .end local v6           #path:Ljava/lang/String;
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v40           #data:[B
    .end local v45           #iccException:Lcom/android/internal/telephony/uicc/IccException;
    .end local v46           #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_2
    const-string v3, "read IMG done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 675
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 676
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 677
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 679
    .restart local v52       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v6, v47

    .line 680
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 682
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_6
    const-string v3, "read img success"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 683
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 684
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 685
    .restart local v45       #iccException:Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_0

    .line 686
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 691
    .end local v6           #path:Ljava/lang/String;
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v45           #iccException:Lcom/android/internal/telephony/uicc/IccException;
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_3
    const-string v3, "read icon done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 692
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 693
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 694
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 696
    .restart local v52       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v6, v47

    .line 697
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 699
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_7
    const-string v3, "read icon success"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 700
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 701
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 703
    .end local v6           #path:Ljava/lang/String;
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 704
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 705
    .restart local v46       #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 706
    .restart local v52       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 708
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v6, v47

    .line 709
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 712
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 714
    .restart local v40       #data:[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_a

    .line 716
    :cond_9
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 719
    :cond_a
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v50, v0

    .line 720
    .local v50, recordSize:[I
    const/4 v3, 0x0

    const/16 v4, 0xe

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v50, v3

    .line 721
    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x3

    aget-byte v5, v40, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    aput v4, v50, v3

    .line 723
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v50, v4

    const/4 v5, 0x0

    aget v5, v50, v5

    div-int/2addr v4, v5

    aput v4, v50, v3

    .line 725
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 726
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 728
    .end local v6           #path:Ljava/lang/String;
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v40           #data:[B
    .end local v46           #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v50           #recordSize:[I
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 729
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 730
    .restart local v46       #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 731
    .restart local v52       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 733
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v6, v47

    .line 734
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 737
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 738
    .restart local v40       #data:[B
    move-object/from16 v0, v46

    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 739
    .local v9, fileid:I
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v49, v0

    .line 740
    .local v49, recordNum:I
    move-object/from16 v0, v46

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->path:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 742
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    const/4 v3, 0x4

    const/4 v4, 0x6

    :try_start_2
    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_c

    .line 743
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1214
    .end local v9           #fileid:I
    .end local v40           #data:[B
    .end local v49           #recordNum:I
    :catch_1
    move-exception v41

    goto/16 :goto_2

    .line 746
    .restart local v9       #fileid:I
    .restart local v40       #data:[B
    .restart local v49       #recordNum:I
    :cond_c
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_d

    const/4 v3, 0x3

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_d

    .line 747
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 750
    :cond_d
    const/16 v3, 0xe

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 752
    const/4 v3, 0x2

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    add-int v13, v3, v4

    .line 755
    .local v13, size:I
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v13, v3

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 757
    move-object/from16 v0, v46

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_e

    .line 758
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v46

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 761
    :cond_e
    if-nez v6, :cond_f

    .line 762
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 764
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v46

    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .end local v9           #fileid:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v14, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .end local v13           #size:I
    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 771
    .end local v6           #path:Ljava/lang/String;
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v40           #data:[B
    .end local v46           #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v49           #recordNum:I
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_6
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 772
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 773
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 775
    .restart local v52       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v6, v47

    .line 776
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 779
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 781
    .restart local v40       #data:[B
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 783
    .restart local v9       #fileid:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_11

    .line 784
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 787
    :cond_11
    const/16 v3, 0xd

    aget-byte v3, v40, v3

    if-eqz v3, :cond_12

    .line 788
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 791
    :cond_12
    const/4 v3, 0x2

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    add-int v13, v3, v4

    .line 794
    .restart local v13       #size:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v3, v9, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v7 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v6, v47

    .line 798
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 804
    .end local v6           #path:Ljava/lang/String;
    .end local v9           #fileid:I
    .end local v13           #size:I
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v40           #data:[B
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 805
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;

    .line 806
    .local v55, tc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 807
    .restart local v52       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 809
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_13

    .line 810
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 811
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 814
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 816
    .restart local v45       #iccException:Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_14

    .line 817
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 818
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 821
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 822
    .restart local v40       #data:[B
    move-object/from16 v0, v55

    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->efid:I

    .line 824
    .restart local v9       #fileid:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_15

    .line 825
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 828
    :cond_15
    const/16 v3, 0xd

    aget-byte v3, v40, v3

    if-eqz v3, :cond_16

    .line 829
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 833
    :cond_16
    const/4 v3, 0x2

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    add-int v13, v3, v4

    .line 838
    .restart local v13       #size:I
    const/4 v3, 0x0

    move-object/from16 v0, v55

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->phaseNum:I

    .line 839
    move-object/from16 v0, v55

    iput v13, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->binSize:I

    .line 840
    div-int/lit16 v3, v13, 0xfd

    move-object/from16 v0, v55

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->countPhases:I

    .line 841
    const/16 v3, 0xfd

    if-le v13, v3, :cond_17

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, v55

    iput-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->loadAll:Z

    .line 842
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->countPhases:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v55

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    .line 843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v3, 0xfd

    if-le v13, v3, :cond_18

    const/16 v20, 0xfd

    :goto_4
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v3, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    move/from16 v16, v9

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v6, v47

    .line 850
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 841
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_17
    const/4 v3, 0x0

    goto :goto_3

    :cond_18
    move/from16 v20, v13

    .line 843
    goto :goto_4

    .line 854
    .end local v9           #fileid:I
    .end local v13           #size:I
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v40           #data:[B
    .end local v45           #iccException:Lcom/android/internal/telephony/uicc/IccException;
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v55           #tc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 855
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;

    .line 856
    .restart local v55       #tc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 857
    .restart local v52       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 859
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_19

    .line 860
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 861
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 864
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_19
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 866
    .restart local v45       #iccException:Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_1a

    .line 867
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 868
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 871
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, v55

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->loadAll:Z

    if-nez v3, :cond_1b

    .line 872
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 874
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, v55

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->phaseNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v55

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->phaseNum:I

    .line 879
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->phaseNum:I

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->countPhases:I

    if-le v3, v4, :cond_1d

    .line 880
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->binSize:I

    new-array v0, v3, [B

    move-object/from16 v53, v0

    .line 881
    .local v53, resultData:[B
    const/16 v44, 0x0

    .local v44, i:I
    :goto_5
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->phaseNum:I

    move/from16 v0, v44

    if-ge v0, v3, :cond_1c

    .line 882
    move-object/from16 v0, v55

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v56, v0

    .line 883
    .local v56, tempData:[B
    const/4 v3, 0x0

    move/from16 v0, v44

    mul-int/lit16 v4, v0, 0xfd

    move-object/from16 v0, v56

    array-length v5, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    add-int/lit8 v44, v44, 0x1

    goto :goto_5

    .line 886
    .end local v56           #tempData:[B
    :cond_1c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 887
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 888
    .end local v6           #path:Ljava/lang/String;
    .end local v44           #i:I
    .end local v53           #resultData:[B
    .restart local v47       #path:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->phaseNum:I

    mul-int/lit16 v3, v3, 0xfd

    shr-int/lit8 v18, v3, 0x8

    .line 889
    .local v18, iccIoP1:I
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->phaseNum:I

    mul-int/lit16 v3, v3, 0xfd

    and-int/lit16 v0, v3, 0xff

    move/from16 v19, v0

    .line 891
    .local v19, IccIoP2:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->efid:I

    move/from16 v16, v0

    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->phaseNum:I

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->countPhases:I

    if-ge v3, v4, :cond_1e

    const/16 v20, 0xfd

    :goto_6
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v3, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v6, v47

    .line 900
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 891
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->binSize:I

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->phaseNum:I

    mul-int/lit16 v4, v4, 0xfd

    sub-int v20, v3, v4

    goto :goto_6

    .line 905
    .end local v18           #iccIoP1:I
    .end local v19           #IccIoP2:I
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v45           #iccException:Lcom/android/internal/telephony/uicc/IccException;
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v55           #tc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 906
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 907
    .restart local v46       #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 908
    .restart local v52       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 909
    move-object/from16 v0, v46

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->path:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 911
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 915
    move-object/from16 v0, v46

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v3, :cond_1f

    .line 916
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 918
    :cond_1f
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 922
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v3, v4, :cond_20

    .line 923
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 925
    :cond_20
    if-nez v6, :cond_21

    .line 926
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 929
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    const/16 v21, 0xb2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v22, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v29, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v30

    move-object/from16 v23, v6

    invoke-interface/range {v20 .. v30}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 940
    .end local v6           #path:Ljava/lang/String;
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v46           #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_a
    :try_start_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 941
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 942
    .restart local v46       #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 943
    .restart local v52       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 945
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_22

    .line 946
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 947
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 950
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_22
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 952
    .restart local v45       #iccException:Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_23

    .line 953
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 954
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 957
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_23
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 958
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 961
    .end local v6           #path:Ljava/lang/String;
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v45           #iccException:Lcom/android/internal/telephony/uicc/IccException;
    .end local v46           #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 962
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 963
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 965
    .restart local v52       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_24

    move-object/from16 v6, v47

    .line 966
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 969
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_24
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 970
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 974
    .end local v6           #path:Ljava/lang/String;
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_c
    const-string v3, "EVENT_GET_ITEM_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 976
    const/16 v57, 0x0

    .line 977
    .local v57, total:I
    const/16 v58, 0x0

    .line 978
    .local v58, used:I
    const/16 v43, 0x0

    .line 980
    .local v43, firstIndex:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 983
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_25

    .line 984
    const-string v3, "Exception during GET_ITEM_SIZE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 995
    :goto_7
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    .line 996
    .local v48, pblc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 999
    move/from16 v0, v58

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    .line 1000
    move/from16 v0, v43

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 1002
    const/4 v3, 0x0

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 1004
    if-nez v58, :cond_26

    .line 1006
    const-string v3, "used == 0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1008
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v48

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 1013
    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1014
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 987
    .end local v6           #path:Ljava/lang/String;
    .end local v48           #pblc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    .restart local v47       #path:Ljava/lang/String;
    :cond_25
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v57, v3, v4

    .line 988
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x1

    aget v58, v3, v4

    .line 989
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x2

    aget v43, v3, v4

    .line 991
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting cnt successed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 992
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "firstIndex is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1017
    .restart local v48       #pblc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    :cond_26
    move-object/from16 v0, v48

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    if-eqz v3, :cond_27

    .line 1018
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v48

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 1021
    :cond_27
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->countRecords:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0xb2

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v23, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->recordNum:I

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v3, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    invoke-interface/range {v20 .. v26}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(Ljava/lang/String;IIILjava/lang/String;Landroid/os/Message;)V

    move-object/from16 v6, v47

    .line 1025
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1028
    .end local v6           #path:Ljava/lang/String;
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v43           #firstIndex:I
    .end local v48           #pblc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    .end local v57           #total:I
    .end local v58           #used:I
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_d
    const-string v3, "EVENT_READ_ADN_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1030
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1031
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    .line 1033
    .restart local v48       #pblc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Lcom/android/internal/telephony/SimPBEntryResult;

    .line 1034
    .local v54, resultPB:Lcom/android/internal/telephony/SimPBEntryResult;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1036
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_28

    .line 1037
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1038
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1040
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pblc EFID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->efid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", record number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->recordNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", total record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Used Record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->countRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1044
    move-object/from16 v0, v48

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    if-nez v3, :cond_29

    .line 1045
    const-string v3, "[NEO] is not loadAll"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1046
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1047
    .local v25, emails:[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v54

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aput-object v4, v25, v3

    .line 1048
    new-instance v20, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v21, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    move/from16 v22, v0

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v23, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v24, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v26, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v27, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v28, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v29, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v30, v3, v4

    invoke-direct/range {v20 .. v30}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    .local v20, adn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1053
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1054
    .end local v6           #path:Ljava/lang/String;
    .end local v20           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v25           #emails:[Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_29
    const-string v3, "[NEO] is loadAll"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1055
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1056
    .restart local v25       #emails:[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v54

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aput-object v4, v25, v3

    .line 1057
    new-instance v20, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v21, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    move/from16 v22, v0

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v23, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v24, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v26, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v27, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v28, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v29, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v30, v3, v4

    invoke-direct/range {v20 .. v30}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    .restart local v20       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    move-object/from16 v0, v54

    iget v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 1064
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->countRecords:I

    if-eq v3, v4, :cond_2a

    move-object/from16 v0, v54

    iget v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    const v4, 0xffff

    if-ne v3, v4, :cond_2b

    .line 1065
    :cond_2a
    const-string v3, "[NEO] Load all DONE!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1066
    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_8
    move-object/from16 v6, v47

    .line 1075
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1068
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_2b
    const-string v3, "[NEO] Read More Record from SIM!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1069
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->countRecords:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0xb2

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v29, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->recordNum:I

    move/from16 v30, v0

    const/16 v31, 0x0

    const/16 v3, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v32

    invoke-interface/range {v26 .. v32}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(Ljava/lang/String;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_8

    .line 1081
    .end local v20           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v25           #emails:[Ljava/lang/String;
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v48           #pblc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    .end local v54           #resultPB:Lcom/android/internal/telephony/SimPBEntryResult;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1082
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 1083
    .restart local v46       #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1084
    .restart local v52       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1086
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2c

    .line 1087
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1088
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1091
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_2c
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 1093
    .restart local v45       #iccException:Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_2d

    .line 1094
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1095
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1098
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 1099
    .restart local v40       #data:[B
    move-object/from16 v0, v46

    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 1100
    .restart local v9       #fileid:I
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v49, v0

    .line 1102
    .restart local v49       #recordNum:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_2e

    .line 1103
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1106
    :cond_2e
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_2f

    .line 1107
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1110
    :cond_2f
    const/16 v3, 0xe

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 1112
    const/4 v3, 0x2

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    add-int v13, v3, v4

    .line 1115
    .restart local v13       #size:I
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v13, v3

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 1117
    move-object/from16 v0, v46

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_30

    .line 1118
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v46

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 1121
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v26, v0

    const/16 v27, 0xb2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v28, v0

    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v30, v0

    const/16 v31, 0x4

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v3, 0x18

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v26 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v6, v47

    .line 1126
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1129
    .end local v6           #path:Ljava/lang/String;
    .end local v9           #fileid:I
    .end local v13           #size:I
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v40           #data:[B
    .end local v45           #iccException:Lcom/android/internal/telephony/uicc/IccException;
    .end local v46           #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v49           #recordNum:I
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1130
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1132
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_31

    .line 1133
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1134
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1137
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_31
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v39, v0

    .line 1138
    .local v39, capaResult:[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1139
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1142
    .end local v6           #path:Ljava/lang/String;
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v39           #capaResult:[I
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1143
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1144
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v42, v0

    .line 1145
    .local v42, fileStatus:[I
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_32

    .line 1146
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1147
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1150
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_32
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1152
    .restart local v52       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_33

    .line 1153
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1154
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1157
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_33
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 1159
    .restart local v45       #iccException:Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_34

    .line 1160
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1161
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1164
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_34
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 1166
    .restart local v40       #data:[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_35

    .line 1167
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1170
    :cond_35
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_36

    const/4 v3, 0x3

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_36

    .line 1171
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1173
    :cond_36
    const/4 v3, 0x0

    const/16 v4, 0xb

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v42, v3

    .line 1174
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1175
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1178
    .end local v6           #path:Ljava/lang/String;
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v40           #data:[B
    .end local v42           #fileStatus:[I
    .end local v45           #iccException:Lcom/android/internal/telephony/uicc/IccException;
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1179
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1181
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_37

    .line 1182
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1183
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1186
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_37
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v37, v0

    .line 1187
    .local v37, RecordInfo:[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1188
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1192
    .end local v6           #path:Ljava/lang/String;
    .end local v37           #RecordInfo:[I
    .end local v38           #ar:Landroid/os/AsyncResult;
    .restart local v47       #path:Ljava/lang/String;
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1193
    .restart local v38       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 1194
    .restart local v46       #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1195
    .restart local v52       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1197
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_38

    .line 1198
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1199
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1202
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_38
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 1204
    .restart local v45       #iccException:Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_39

    .line 1205
    const-string v3, "getException not null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 1207
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v6, v47

    .line 1208
    .end local v47           #path:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_1

    .line 1211
    .end local v6           #path:Ljava/lang/String;
    .restart local v47       #path:Ljava/lang/String;
    :cond_39
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1218
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v45           #iccException:Lcom/android/internal/telephony/uicc/IccException;
    .end local v46           #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v47           #path:Ljava/lang/String;
    .end local v52           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v6       #path:Ljava/lang/String;
    .restart local v41       #exc:Ljava/lang/Exception;
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 636
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_12
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 11
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 293
    const/16 v0, 0xb

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 297
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/16 v6, 0xa

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 301
    return-void
.end method

.method public loadEFImgLinearFixedSTK(ILandroid/os/Message;)V
    .locals 11
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 313
    const/16 v0, 0x17

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 318
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    const/4 v5, 0x4

    const/16 v6, 0xa

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 321
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    .line 442
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 445
    .local v11, response:Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccFileHandler: loadEFImgTransparent fileid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " highOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lowOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 456
    return-void
.end method

.method public loadEFImgTransparentSTK(IIIILandroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    .line 470
    const/4 v1, 0x4

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 472
    .local v11, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc0

    const-string v4, "img"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 475
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    .line 281
    return-void
.end method

.method public loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "path"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 261
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p3, p2, p4}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILjava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 265
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 267
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 1
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 365
    return-void
.end method

.method public loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "path"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 378
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 381
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 383
    return-void
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "size"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 423
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, v4, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 426
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move v6, p2

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 428
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 404
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 407
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 410
    return-void
.end method

.method loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V
    .locals 3
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 536
    const/16 v1, 0x15

    new-instance v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 539
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 540
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 505
    const/16 v1, 0x1c

    new-instance v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    move-object/from16 v0, p5

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 508
    .local v11, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    array-length v7, p3

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move-object/from16 v9, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 511
    return-void
.end method

.method public updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "path"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xdc

    const/4 v5, 0x4

    array-length v6, p4

    invoke-static {p4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 492
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 522
    return-void
.end method
