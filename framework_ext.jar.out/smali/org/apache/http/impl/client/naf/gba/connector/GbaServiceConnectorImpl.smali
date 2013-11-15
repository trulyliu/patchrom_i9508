.class Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;
.super Ljava/lang/Object;
.source "GbaServiceConnectorImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;


# static fields
.field private static final ATTEMPTS_NUM:I = 0x96

.field private static final ESTIMATED_TOTAL_TIME:I = 0x3a98

.field public static final GBA_SERVICE_CONNECTOR_CLASS_NAME:Ljava/lang/String; = "javax.microedition.gba.android.GbaServiceConnector"

.field public static final GBA_SERVICE_INTERFACE_NAME:Ljava/lang/String; = "javax.microedition.gba.android.IGbaService"

.field public static final GBA_SERVICE_STUB_NAME:Ljava/lang/String; = "javax.microedition.gba.android.IGbaService.Stub"

.field private static final SLEEP_TIMEOUT_MS:I = 0x64


# instance fields
.field private final androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

.field private final gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

.field private final gbaServiceConnectionImplInstanceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V
    .locals 2
    .parameter "androidApplicationContext"
    .parameter "gbaServiceClassLoader"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceConnectionImplInstanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "androidApplicationContext must be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    if-nez p2, :cond_1

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gbaServiceClassLoader must be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    .line 71
    iput-object p2, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    .line 72
    return-void
.end method

.method private connectBlocking()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 159
    :try_start_0
    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    invoke-interface {v5}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->startService()V

    .line 161
    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    invoke-static {v5}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerFactory;->newInstsance(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;

    move-result-object v3

    .line 163
    .local v3, gbaServiceConnectionImplInstance:Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;
    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceConnectionImplInstanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 165
    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    invoke-interface {v5, v3}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->bindService(Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;)Ljava/lang/Boolean;

    move-result-object v1

    .line 167
    .local v1, bindServiceResult:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 168
    new-instance v5, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    const-string v6, "Something wrong with GBA service binding."

    invoke-direct {v5, v6}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 195
    .end local v1           #bindServiceResult:Ljava/lang/Boolean;
    .end local v3           #gbaServiceConnectionImplInstance:Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;
    :catch_0
    move-exception v2

    .line 196
    .local v2, e:Lorg/apache/http/impl/client/naf/remote/RemoteException;
    new-instance v5, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/remote/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 171
    .end local v2           #e:Lorg/apache/http/impl/client/naf/remote/RemoteException;
    .restart local v1       #bindServiceResult:Ljava/lang/Boolean;
    .restart local v3       #gbaServiceConnectionImplInstance:Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;
    :cond_0
    const/4 v4, 0x0

    .line 172
    .local v4, iGbaService:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    const/4 v0, 0x1

    .line 177
    .local v0, attempt:I
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->sleepBetweenAttempts()V

    .line 179
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->getGbaServiceConnection()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;

    move-result-object v4

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 183
    if-nez v4, :cond_2

    const/16 v5, 0x96

    if-lt v0, v5, :cond_1

    .line 185
    :cond_2
    if-eqz v4, :cond_3

    .line 188
    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 207
    return-void

    .line 192
    :cond_3
    new-instance v5, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    const-string v6, "FAILURE during connection to GBA service"

    invoke-direct {v5, v6}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException; {:try_start_1 .. :try_end_1} :catch_3

    .line 197
    .end local v0           #attempt:I
    .end local v1           #bindServiceResult:Ljava/lang/Boolean;
    .end local v3           #gbaServiceConnectionImplInstance:Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;
    .end local v4           #iGbaService:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    :catch_1
    move-exception v2

    .line 198
    .local v2, e:Ljava/lang/SecurityException;
    new-instance v5, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 199
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 200
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v5, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 201
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 202
    .local v2, e:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;
    new-instance v5, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private getGbaServiceConnection()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 237
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceConnectionImplInstanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;

    .line 240
    .local v36, remoteGbaServiceConnectionListener:Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;
    invoke-interface/range {v36 .. v36}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;->getService()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;

    move-result-object v16

    .line 241
    .local v16, iGbaService:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    if-eqz v16, :cond_0

    .line 424
    .end local v16           #iGbaService:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    :goto_0
    return-object v16

    .line 247
    .restart local v16       #iGbaService:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    :cond_0
    const-string v38, "android.os.Looper"

    invoke-static/range {v38 .. v38}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    .line 248
    .local v22, looperClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "looperClass"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    const-string v38, "getMainLooper"

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v39, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 251
    .local v13, getMainLooperMethod:Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "getMainLooperMethod"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v13}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 254
    .local v30, mainLooper:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "mainLooper"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    const-string v38, "mQueue"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v27

    .line 257
    .local v27, mQueueField:Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "mQueueField"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    const/16 v38, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 259
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 260
    .local v26, mQueue:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "mQueue"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    .line 263
    .local v32, messageQueueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "messageQueueClass"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    if-eqz v26, :cond_7

    .line 266
    monitor-enter v26
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_0 .. :try_end_0} :catch_8

    .line 267
    :try_start_1
    const-string v38, "mMessages"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v23

    .line 268
    .local v23, mMessagesField:Ljava/lang/reflect/Field;
    const/16 v38, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 269
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .line 272
    .local v33, msg:Ljava/lang/Object;
    const/16 v31, 0x0

    .line 273
    .local v31, messageClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v33, :cond_1

    .line 274
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "messageClass"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    :cond_1
    const/16 v34, 0x0

    .line 279
    .local v34, n:I
    :goto_1
    if-eqz v33, :cond_6

    .line 282
    add-int/lit8 v34, v34, 0x1

    .line 284
    const-string v38, "getCallback"

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v39, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 285
    .local v11, getCallbackMethod:Ljava/lang/reflect/Method;
    const/16 v38, 0x0

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 287
    .local v6, callback:Ljava/lang/Object;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v38

    const-string v39, "RunConnection"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_4

    .line 293
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    .line 300
    .local v37, runConnectionClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v38, "mName"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v24

    .line 301
    .local v24, mNameField:Ljava/lang/reflect/Field;
    const/16 v38, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 302
    const-string v38, "mService"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v28

    .line 304
    .local v28, mServiceField:Ljava/lang/reflect/Field;
    const/16 v38, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 310
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 311
    .local v25, mNameValue:Ljava/lang/Object;
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 313
    .local v29, mServiceValue_BinderProxy:Ljava/lang/Object;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 314
    .local v8, componentNameClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v38, "getClassName"

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 316
    .local v12, getClassNameMethod:Ljava/lang/reflect/Method;
    const/16 v38, 0x0

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 322
    .local v5, bindedClassName:Ljava/lang/String;
    const-string v38, "javax.microedition.gba.android.GbaServiceConnector"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_5

    .line 323
    if-eqz v29, :cond_5

    .line 328
    const-string v38, "android.os.IBinder"

    invoke-static/range {v38 .. v38}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .line 335
    .local v15, iBinderClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    move-object/from16 v38, v0

    const-string v39, "javax.microedition.gba.android.IGbaService"

    invoke-interface/range {v38 .. v39}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    .line 340
    .local v17, iGbaServiceClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v18

    .line 346
    .local v18, iGbaServiceClass_getClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/16 v20, 0x0

    .line 347
    .local v20, iGbaServiceStubClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v3, v18

    .local v3, arr$:[Ljava/lang/Class;
    array-length v0, v3

    move/from16 v21, v0

    .local v21, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_2
    move/from16 v0, v21

    if-ge v14, v0, :cond_2

    aget-object v7, v3, v14

    .line 350
    .local v7, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v38, "javax.microedition.gba.android.IGbaService.Stub"

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_3

    .line 351
    move-object/from16 v20, v7

    .line 360
    .end local v7           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    const-string v38, "asInterface"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v15, v39, v40

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 366
    .local v4, asInterfaceDescriptorMethod:Ljava/lang/reflect/Method;
    const/16 v38, 0x0

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v29, v39, v40

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 371
    .local v10, gbaService:Ljava/lang/Object;
    new-instance v19, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-direct {v0, v10, v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;-><init>(Ljava/lang/Object;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V

    .line 377
    .local v19, iGbaServiceFromQueue:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    monitor-exit v26

    move-object/from16 v16, v19

    goto/16 :goto_0

    .line 347
    .end local v4           #asInterfaceDescriptorMethod:Ljava/lang/reflect/Method;
    .end local v10           #gbaService:Ljava/lang/Object;
    .end local v19           #iGbaServiceFromQueue:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    .restart local v7       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 386
    .end local v3           #arr$:[Ljava/lang/Class;
    .end local v5           #bindedClassName:Ljava/lang/String;
    .end local v7           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #componentNameClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v12           #getClassNameMethod:Ljava/lang/reflect/Method;
    .end local v14           #i$:I
    .end local v15           #iBinderClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v17           #iGbaServiceClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v18           #iGbaServiceClass_getClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v20           #iGbaServiceStubClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v21           #len$:I
    .end local v24           #mNameField:Ljava/lang/reflect/Field;
    .end local v25           #mNameValue:Ljava/lang/Object;
    .end local v28           #mServiceField:Ljava/lang/reflect/Field;
    .end local v29           #mServiceValue_BinderProxy:Ljava/lang/Object;
    .end local v37           #runConnectionClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    if-eqz v6, :cond_5

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "-----callback.getClass().getCanonicalName()="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 392
    :cond_5
    const-string v38, "next"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v35

    .line 393
    .local v35, nextField:Ljava/lang/reflect/Field;
    const/16 v38, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 394
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .line 396
    goto/16 :goto_1

    .line 399
    .end local v6           #callback:Ljava/lang/Object;
    .end local v11           #getCallbackMethod:Ljava/lang/reflect/Method;
    .end local v35           #nextField:Ljava/lang/reflect/Field;
    :cond_6
    monitor-exit v26

    .line 424
    .end local v23           #mMessagesField:Ljava/lang/reflect/Field;
    .end local v31           #messageClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v33           #msg:Ljava/lang/Object;
    .end local v34           #n:I
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 399
    :catchall_0
    move-exception v38

    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v38
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_2 .. :try_end_2} :catch_8

    .line 402
    .end local v13           #getMainLooperMethod:Ljava/lang/reflect/Method;
    .end local v16           #iGbaService:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    .end local v22           #looperClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v26           #mQueue:Ljava/lang/Object;
    .end local v27           #mQueueField:Ljava/lang/reflect/Field;
    .end local v30           #mainLooper:Ljava/lang/Object;
    .end local v32           #messageQueueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v36           #remoteGbaServiceConnectionListener:Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;
    :catch_0
    move-exception v9

    .line 403
    .local v9, e:Ljava/lang/SecurityException;
    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    .line 404
    .end local v9           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v9

    .line 405
    .local v9, e:Ljava/lang/NoSuchFieldException;
    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    .line 406
    .end local v9           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v9

    .line 407
    .local v9, e:Ljava/lang/IllegalArgumentException;
    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    .line 408
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v9

    .line 409
    .local v9, e:Ljava/lang/IllegalAccessException;
    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    .line 410
    .end local v9           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v9

    .line 411
    .local v9, e:Ljava/lang/ClassNotFoundException;
    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    .line 412
    .end local v9           #e:Ljava/lang/ClassNotFoundException;
    :catch_5
    move-exception v9

    .line 413
    .local v9, e:Ljava/lang/NoSuchMethodException;
    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    .line 414
    .end local v9           #e:Ljava/lang/NoSuchMethodException;
    :catch_6
    move-exception v9

    .line 415
    .local v9, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    .line 416
    .end local v9           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_7
    move-exception v9

    .line 417
    .local v9, e:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;
    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    .line 418
    .end local v9           #e:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;
    :catch_8
    move-exception v9

    .line 419
    .local v9, e:Lorg/apache/http/impl/client/naf/remote/RemoteException;
    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Lorg/apache/http/impl/client/naf/remote/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38
.end method

.method private sleepBetweenAttempts()V
    .locals 3

    .prologue
    .line 216
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getConnectorState()Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;->RELEASED:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    .line 138
    .local v0, gbaServiceConnectorState:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    sget-object v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;->CONNECTED:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    .line 145
    :cond_0
    return-object v0
.end method

.method public getIGbaServiceInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 84
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->connectBlocking()V

    .line 87
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;

    .line 93
    .local v0, iGbaServiceInstance:Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    return-object v0
.end method

.method public release()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->getConnectorState()Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    move-result-object v2

    sget-object v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;->CONNECTED:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    if-ne v2, v3, :cond_0

    .line 110
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceConnectionImplInstanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;

    .line 113
    .local v1, serviceConnectionListener:Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    invoke-interface {v2, v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->unbindService(Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 120
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceConnectionImplInstanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 126
    .end local v1           #serviceConnectionListener:Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;
    :cond_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Lorg/apache/http/impl/client/naf/remote/RemoteException;
    :try_start_1
    new-instance v2, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/remote/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v0           #e:Lorg/apache/http/impl/client/naf/remote/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 120
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceConnectionImplInstanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v2
.end method
