.class public Lcom/samsung/wfd/WFDNative;
.super Ljava/lang/Object;
.source "WFDNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WFDNative$WfdActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WFDNative_JAVA"

.field public static listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

.field private static localIpAddress:Ljava/lang/String;

.field private static localMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "uibc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    const-string v0, "WFDNative_JAVA"

    const-string v1, "try to load libwfdrtsp.so"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v0, "wfdrtsp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    const-string v0, "WFDNative_JAVA"

    const-string v1, "libwfdrtsp.so loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v0, "WFDNative_JAVA"

    const-string v1, "try to load libwfdnative.so"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v0, "wfdnative"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    const-string v0, "WFDNative_JAVA"

    const-string v1, "libwfdnative.so loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "00:00:00:00:00:00"

    sput-object v0, Lcom/samsung/wfd/WFDNative;->localMacAddress:Ljava/lang/String;

    .line 124
    const-string v0, ""

    sput-object v0, Lcom/samsung/wfd/WFDNative;->localIpAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 382
    return-void
.end method

.method public static native WFDGetSubtitleStatus()Z
.end method

.method public static native WFDGetSuspendStatus()Z
.end method

.method public static native WFDPostSubtitle(Ljava/lang/String;I)Z
.end method

.method public static native WFDPostSuspend(Ljava/lang/String;)Z
.end method

.method public static native WFDSetSubtitleStatus(Z)Z
.end method

.method public static native WFDSetSuspendStatus(Z)Z
.end method

.method public static native audioReroute(I)V
.end method

.method public static native changeParams(IIII)Z
.end method

.method public static native disableUIBC(I)V
.end method

.method public static native disableWfd()Z
.end method

.method public static native enableUIBC(I)V
.end method

.method public static native enableWfd(Lcom/samsung/wfd/WfdDevice;)Z
.end method

.method public static eventCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 29
    .parameter "eventName"
    .parameter "objectArray"

    .prologue
    .line 194
    const-string v2, "WFDNative_JAVA"

    const-string v3, "eventCallback triggered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 196
    :cond_0
    const-string v2, "WFDNative_JAVA"

    const-string v3, "No event info, ignore."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    move-object/from16 v0, p1

    array-length v14, v0

    .line 200
    .local v14, array_length:I
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallbackEvent \""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\" --- objectArray length="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v14, :cond_3

    .line 202
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tobjectArray["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "] = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v8, p1, v21

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 204
    :cond_3
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    if-nez v2, :cond_4

    .line 205
    const-string v2, "WFDNative_JAVA"

    const-string v3, "Listener is destroyed, can\'t notify"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_4
    const-string v2, "Error"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 210
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eventName: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    move-object/from16 v0, p1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 212
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 213
    .local v20, errorCode:Ljava/lang/String;
    const-string v2, "ERROR_CMD"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 214
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, 0x0

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 215
    :cond_5
    const-string v2, "RTSPCloseCallback"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    const-string v2, "WFDNative_JAVA"

    const-string v3, "RTSP close callback, treat as TEARDOWN start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->TEARDOWN_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 220
    .end local v20           #errorCode:Ljava/lang/String;
    :cond_6
    const-string v2, "ServiceStateChanged"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    .line 221
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    const/16 v19, 0x1

    .line 222
    .local v19, enabled:Z
    :goto_2
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " WFD service isActive:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-eqz v19, :cond_8

    .line 224
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WFD_SERVICE_ENABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, 0x0

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    .line 225
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " WFD_SERVICE_ENABLED"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 221
    .end local v19           #enabled:Z
    :cond_7
    const/16 v19, 0x0

    goto :goto_2

    .line 227
    .restart local v19       #enabled:Z
    :cond_8
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WFD_SERVICE_DISABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, 0x0

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    .line 228
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " WFD_SERVICE_DISABLED"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    .end local v19           #enabled:Z
    :cond_9
    const-string v2, "SessionStateChanged"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    .line 231
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 232
    .local v22, sessionState:Ljava/lang/String;
    const/4 v4, 0x0

    .line 233
    .local v4, sessionId:I
    const/4 v2, 0x2

    if-le v14, v2, :cond_a

    .line 234
    add-int/lit8 v2, v14, -0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 236
    :cond_a
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " SessionState: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v2, "STANDBY"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 238
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->STANDBY_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-interface {v2, v3, v4}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 239
    :cond_b
    const-string v2, "STOPPED"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 240
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->TEARDOWN:Lcom/samsung/wfd/WfdEnums$SessionState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->updateState(Lcom/samsung/wfd/WfdEnums$SessionState;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :cond_c
    const-string v2, "ESTABLISHING"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 242
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHING:Lcom/samsung/wfd/WfdEnums$SessionState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->updateState(Lcom/samsung/wfd/WfdEnums$SessionState;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :cond_d
    const-string v2, "ESTABLISHED"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 244
    const-string v2, "WFDNative_JAVA"

    const-string v3, "WFD client connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 246
    .local v5, audiomode:I
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, version:Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, ipaddr:Ljava/lang/String;
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHED:Lcom/samsung/wfd/WfdEnums$SessionState;

    invoke-interface/range {v2 .. v7}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->updateState(Lcom/samsung/wfd/WfdEnums$SessionState;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    .end local v5           #audiomode:I
    .end local v6           #version:Ljava/lang/String;
    .end local v7           #ipaddr:Ljava/lang/String;
    :cond_e
    const-string v2, "ERROR"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 250
    const-string v2, "WFDNative_JAVA"

    const-string v3, "WFD client ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-interface {v2, v3, v4}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 252
    :cond_f
    const-string v2, "SINK_RESPOND"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    .line 254
    .local v25, url:Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    .line 255
    .local v28, ver:Ljava/lang/String;
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " url:  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ver: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->SINK_RESPOND:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v2, v3, v0, v1}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->sinkResponse(Lcom/samsung/wfd/WfdEnums$WfdEvent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    .end local v4           #sessionId:I
    .end local v22           #sessionState:Ljava/lang/String;
    .end local v25           #url:Ljava/lang/String;
    .end local v28           #ver:Ljava/lang/String;
    :cond_10
    const-string v2, "StreamControlCompleted"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 259
    const-string v2, "WFDNative_JAVA"

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 261
    const/4 v2, 0x1

    aget-object v23, p1, v2

    check-cast v23, Ljava/lang/String;

    .line 262
    .local v23, state:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 263
    .restart local v4       #sessionId:I
    const-string v2, "PLAY"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 264
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->PLAY_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-interface {v2, v3, v4}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 265
    :cond_11
    const-string v2, "PLAY_DONE"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 266
    sget-object v8, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v9, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v10, v4

    invoke-interface/range {v8 .. v13}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->updateState(Lcom/samsung/wfd/WfdEnums$SessionState;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :cond_12
    const-string v2, "PAUSE"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 268
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->PAUSE_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-interface {v2, v3, v4}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 269
    :cond_13
    const-string v2, "PAUSE_DONE"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 270
    sget-object v8, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v9, Lcom/samsung/wfd/WfdEnums$SessionState;->PAUSE:Lcom/samsung/wfd/WfdEnums$SessionState;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v10, v4

    invoke-interface/range {v8 .. v13}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->updateState(Lcom/samsung/wfd/WfdEnums$SessionState;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :cond_14
    const-string v2, "TEARDOWN"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->TEARDOWN_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-interface {v2, v3, v4}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 280
    .end local v4           #sessionId:I
    .end local v23           #state:Ljava/lang/String;
    :cond_15
    const-string v2, "UIBCControlCompleted"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 281
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 282
    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 283
    .restart local v4       #sessionId:I
    const/4 v2, 0x1

    aget-object v23, p1, v2

    check-cast v23, Ljava/lang/String;

    .line 284
    .restart local v23       #state:Ljava/lang/String;
    const-string v2, "ENABLED"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 285
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->UIBC_ENABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-interface {v2, v3, v4}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    .line 286
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ENABLED"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 288
    :cond_16
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->UIBC_DISABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-interface {v2, v3, v4}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    .line 289
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " DISABLED"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 292
    .end local v4           #sessionId:I
    .end local v23           #state:Ljava/lang/String;
    :cond_17
    const-string v2, "MMEvent"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 293
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 294
    const/4 v2, 0x0

    aget-object v27, p1, v2

    check-cast v27, Ljava/lang/String;

    .line 295
    .local v27, var:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v26, p1, v2

    check-cast v26, Ljava/lang/String;

    .line 296
    .local v26, value:Ljava/lang/String;
    const-string v2, "HDCP_CONNECT"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 297
    const-string v2, "SUCCESS"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 298
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_CONNECT_SUCCESS:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 300
    :cond_18
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_CONNECT_FAIL:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 302
    :cond_19
    const-string v2, "MM_RTP_EVENT"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    const-string v2, "FAIL"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->MM_RTP_EVENT_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 308
    .end local v26           #value:Ljava/lang/String;
    .end local v27           #var:Ljava/lang/String;
    :cond_1a
    const-string v2, "VideoEvent"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 309
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1d

    .line 310
    const/4 v2, 0x0

    aget-object v18, p1, v2

    check-cast v18, Ljava/lang/String;

    .line 311
    .local v18, desc:Ljava/lang/String;
    const-string v2, "RuntimeError"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 312
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->VIDEO_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 313
    :cond_1b
    const-string v2, "ConfigureFailure"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 314
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->VIDEO_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 316
    :cond_1c
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown description:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 319
    .end local v18           #desc:Ljava/lang/String;
    :cond_1d
    const-string v2, "WFDNative_JAVA"

    const-string v3, "No description for VideoEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 321
    :cond_1e
    const-string v2, "AudioEvent"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 322
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_23

    .line 323
    const/4 v2, 0x0

    aget-object v18, p1, v2

    check-cast v18, Ljava/lang/String;

    .line 324
    .restart local v18       #desc:Ljava/lang/String;
    const-string v2, "RuntimeError"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 325
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIO_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 326
    :cond_1f
    const-string v2, "ConfigureFailure"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 327
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIO_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 328
    :cond_20
    const-string v2, "AudioProxyOpened"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 329
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIOPROXY_OPENED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 330
    :cond_21
    const-string v2, "AudioProxyClosed"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 331
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIOPROXY_CLOSED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 333
    :cond_22
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown description:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    .end local v18           #desc:Ljava/lang/String;
    :cond_23
    const-string v2, "WFDNative_JAVA"

    const-string v3, "No description for AudioEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 338
    :cond_24
    const-string v2, "HdcpEvent"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 339
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_26

    .line 340
    const/4 v2, 0x0

    aget-object v18, p1, v2

    check-cast v18, Ljava/lang/String;

    .line 341
    .restart local v18       #desc:Ljava/lang/String;
    const-string v2, "RuntimeError"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 342
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 344
    :cond_25
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown description:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 347
    .end local v18           #desc:Ljava/lang/String;
    :cond_26
    const-string v2, "WFDNative_JAVA"

    const-string v3, "No description for AudioEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 349
    :cond_27
    const-string v2, "NetworkEvent"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 350
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2d

    .line 351
    const/4 v2, 0x0

    aget-object v18, p1, v2

    check-cast v18, Ljava/lang/String;

    .line 352
    .restart local v18       #desc:Ljava/lang/String;
    const-string v2, "RuntimeError"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 353
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->NETWORK_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 354
    :cond_28
    const-string v2, "ConfigureFailure"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 355
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->NETWORK_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 356
    :cond_29
    const-string v2, "RtpTransportNegotiationSuccess"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 357
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->RTP_TRANSPORT_NEGOTIATED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 358
    :cond_2a
    const-string v2, "BufferingUpdate"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2b

    .line 359
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 360
    .local v15, audioTimestamp:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 361
    .local v16, bufferLength:Ljava/lang/String;
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->BUFFER_UPDATE_EVENT:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v15, v0}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->updateEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    .end local v15           #audioTimestamp:Ljava/lang/String;
    .end local v16           #bufferLength:Ljava/lang/String;
    :cond_2b
    const-string v2, "PlaybackControl"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 363
    const/4 v2, 0x1

    aget-object v17, p1, v2

    check-cast v17, Ljava/lang/String;

    .line 364
    .local v17, cmd:Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v24, p1, v2

    check-cast v24, Ljava/lang/String;

    .line 365
    .local v24, status:Ljava/lang/String;
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->TCP_PLAYBACK_CONTROL:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v2, v3, v0, v1}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->updateEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    .end local v17           #cmd:Ljava/lang/String;
    .end local v24           #status:Ljava/lang/String;
    :cond_2c
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown description:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 370
    .end local v18           #desc:Ljava/lang/String;
    :cond_2d
    const-string v2, "WFDNative_JAVA"

    const-string v3, "No description for NetworkEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 373
    :cond_2e
    const-string v2, "WeakNetwork"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 374
    const-string v2, "WFDNative_JAVA"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WEAK_NETWORK:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, 0x0

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_0

    .line 377
    :cond_2f
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receive unrecognized event from WFDNative.cpp: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static native eventWiFiStateChanged()V
.end method

.method public static native executeRuntimeCommand(I)V
.end method

.method public static native getEngineStatus()I
.end method

.method public static getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "macAddr"

    .prologue
    .line 147
    const-string v1, "0.0.0.0"

    .line 148
    .local v1, peerIP:Ljava/lang/String;
    const/4 v0, 0x0

    .line 150
    .local v0, devIndex:I
    const-string v2, "WFDNative_JAVA"

    const-string v3, "getIpAddress() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "peerIP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-ltz v0, :cond_0

    .line 153
    const-string v2, "WFDNative_JAVA"

    const-string v3, "ip info in deviceList = "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    if-ltz v0, :cond_1

    .line 160
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 166
    .end local v1           #peerIP:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v1

    .line 162
    .restart local v1       #peerIP:Ljava/lang/String;
    :cond_3
    if-gez v0, :cond_2

    .line 166
    const-string v1, ""

    goto :goto_0
.end method

.method public static getLinkSpeed()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/samsung/wfd/WFDNative;->localIpAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-string v0, "192.168.49.1"

    sput-object v0, Lcom/samsung/wfd/WFDNative;->localIpAddress:Ljava/lang/String;

    .line 138
    :cond_0
    sget-object v0, Lcom/samsung/wfd/WFDNative;->localIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static getWfdDeviceCoupleSinkStatusBitmap(Ljava/lang/String;)I
    .locals 1
    .parameter "macAddr"

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public static getWfdDeviceInfoBitmap(Ljava/lang/String;)J
    .locals 2
    .parameter "macAddr"

    .prologue
    .line 172
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getWfdDeviceMaxThroughput(Ljava/lang/String;)I
    .locals 1
    .parameter "macAddr"

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public static getWfdDeviceRtspPort(Ljava/lang/String;)I
    .locals 1
    .parameter "macAddr"

    .prologue
    .line 178
    const/16 v0, 0x356

    return v0
.end method

.method public static native getWfdIeInfo()[I
.end method

.method public static native handleDown(I[I[I[I)V
.end method

.method public static native handleMove(I[I[I[I)V
.end method

.method public static native handleUp(I[I[I[I)V
.end method

.method public static native isActiveUIBC()Z
.end method

.method public static native isDongleRenameAvailable()Z
.end method

.method public static native keyDown(II)V
.end method

.method public static native keyUp(II)V
.end method

.method public static native negotiateRtpTransport(III)V
.end method

.method public static native pause(IZ)V
.end method

.method public static native pauseMuxer()V
.end method

.method public static native play(IZ)V
.end method

.method public static renameSink(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceName"

    .prologue
    .line 131
    invoke-static {p0}, Lcom/samsung/wfd/WFDNative;->setDongleName(Ljava/lang/String;)Z

    .line 132
    return-void
.end method

.method public static native resumeMuxer()V
.end method

.method public static native sendUIBCKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public static native sendUIBCMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public static native sendUpdateUserInput(I)Z
.end method

.method public static native setAvPlaybackMode(I)Z
.end method

.method public static native setBitrate(I)V
.end method

.method public static native setBuffering(I)V
.end method

.method public static native setCapability(ILjava/lang/String;)V
.end method

.method public static native setDongleName(Ljava/lang/String;)Z
.end method

.method public static native setResolution(II)V
.end method

.method public static native setRtpTransport(I)V
.end method

.method public static native setVideoSurface(Landroid/view/Surface;)V
.end method

.method public static native standby(I)V
.end method

.method public static native startUIBC(Ljava/lang/Object;)V
.end method

.method public static native startWfdSession(Lcom/samsung/wfd/WfdDevice;)V
.end method

.method public static native stopUIBC()V
.end method

.method public static native stopWfdSession(I)V
.end method

.method public static native tcpPlaybackControl(II)V
.end method

.method public static native teardown(IZ)V
.end method
