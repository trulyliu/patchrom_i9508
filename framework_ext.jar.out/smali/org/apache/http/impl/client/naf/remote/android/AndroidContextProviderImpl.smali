.class Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;
.super Ljava/lang/Object;
.source "AndroidContextProviderImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;


# instance fields
.field private final androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    return-void
.end method


# virtual methods
.method getApplicationContextFromActivityThread(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "currentActivityThread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 429
    const/4 v2, 0x0

    .line 431
    .local v2, applicationContext:Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 434
    .local v0, activityThreadClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "activityThreadClass"

    invoke-static {v6, v7, v0}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 436
    const-string v6, "getApplication"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 437
    .local v5, getApplicationMethod:Ljava/lang/reflect/Method;
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "getApplicationMethod"

    invoke-static {v6, v7, v5}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 440
    .local v3, currentApplication:Ljava/lang/Object;
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "currentApplication"

    invoke-static {v6, v7, v3}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 442
    const-string v6, "android.app.Application"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 443
    .local v1, applicationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "applicationClass"

    invoke-static {v6, v7, v1}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    const-string v6, "getApplicationContext"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 447
    .local v4, getApplicationContextMethod:Ljava/lang/reflect/Method;
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "getApplicationContextMethod"

    invoke-static {v6, v7, v4}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 458
    .end local v0           #activityThreadClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #applicationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #applicationContext:Ljava/lang/Object;
    .end local v3           #currentApplication:Ljava/lang/Object;
    .end local v4           #getApplicationContextMethod:Ljava/lang/reflect/Method;
    .end local v5           #getApplicationMethod:Ljava/lang/reflect/Method;
    :cond_0
    return-object v2
.end method

.method public getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->obtainContextViaCurrentActivityThreadFromMainUiThread()Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, contextRef:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 56
    .end local v0           #contextRef:Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 58
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->obtainContextViaActivityThreadFromNotMainUiThread()Ljava/lang/Object;

    move-result-object v0

    .line 59
    .restart local v0       #contextRef:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 68
    .end local v0           #contextRef:Ljava/lang/Object;
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 70
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->obtainContextViaCurrentActivityThreadFromLoadedApk()Ljava/lang/Object;

    move-result-object v0

    .line 71
    .restart local v0       #contextRef:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 81
    .end local v0           #contextRef:Ljava/lang/Object;
    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 83
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->obtainSystemContextViaSystemMainActivityThread()Ljava/lang/Object;

    move-result-object v0

    .line 84
    .restart local v0       #contextRef:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 95
    .end local v0           #contextRef:Ljava/lang/Object;
    :cond_3
    :goto_3
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    return-object v1

    .line 85
    :catch_0
    move-exception v1

    goto :goto_3

    .line 72
    :catch_1
    move-exception v1

    goto :goto_2

    .line 60
    :catch_2
    move-exception v1

    goto :goto_1

    .line 48
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method obtainContextViaActivityThreadFromNotMainUiThread()Ljava/lang/Object;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v4, 0x0

    .line 271
    .local v4, applicationContext:Ljava/lang/Object;
    const-string v31, "android.app.ActivityThread"

    invoke-static/range {v31 .. v31}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 272
    .local v3, activityThreadClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "activityThreadClass"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v3}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    const-string v31, "android.os.Looper"

    invoke-static/range {v31 .. v31}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 275
    .local v12, looperClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "looperClass"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v12}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    const-string v31, "myLooper"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    .line 280
    .local v20, myLooperMethod:Ljava/lang/reflect/Method;
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 284
    .local v19, myLooperInstance:Ljava/lang/Object;
    const-string v31, "getMainLooper"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 285
    .local v5, getMainLooperMethod:Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "getMainLooperMethod"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v5}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 288
    .local v14, mainLooperInstance:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "mainLooperInstance"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v14}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    const-string v31, "getThread"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 291
    .local v6, getThreadMethod:Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "getThreadMethod"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v6}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v6, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 294
    .local v15, mainThreadInstance:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "mainThreadInstance"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v15}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    const-string v31, "sThreadLocal"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v23

    .line 297
    .local v23, sThreadLocalField:Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "sThreadLocalField"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    const/16 v31, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 300
    const/16 v31, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 301
    .local v24, sThreadLocalInstance:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "sThreadLocalInstance"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    .line 304
    .local v27, threadClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "threadClass"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    const-string v31, "localValues"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 307
    .local v11, localValuesField:Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "localValuesField"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v11}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 310
    invoke-virtual {v11, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 311
    .local v29, values:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "values"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    if-eqz v29, :cond_0

    .line 314
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    .line 315
    .local v30, valuesClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "valuesClass"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    const-string v31, "table"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v26

    .line 318
    .local v26, tableField:Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "tableField"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    const/16 v31, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 321
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Ljava/lang/Object;

    move-object/from16 v25, v31

    check-cast v25, [Ljava/lang/Object;

    .line 322
    .local v25, table:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "table"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    .line 325
    .local v28, threadLocalClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "threadLocalClass"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    const-string v31, "hash"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 328
    .local v8, hashField:Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "hashField"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v8}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 331
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 332
    .local v9, hashInstance:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "hashInstance"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v9}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    check-cast v9, Ljava/lang/Integer;

    .end local v9           #hashInstance:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 338
    .local v7, hash:I
    const-string v31, "mask"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 339
    .local v17, maskField:Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "maskField"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    const/16 v31, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 342
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 343
    .local v18, maskInstance:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "maskInstance"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    check-cast v18, Ljava/lang/Integer;

    .end local v18           #maskInstance:Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 349
    .local v16, mask:I
    and-int v10, v7, v16

    .line 353
    .local v10, index:I
    const-string v31, "reference"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v21

    .line 354
    .local v21, referenceField:Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "referenceField"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    const/16 v31, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 357
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 358
    .local v22, referenceInstance:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "referenceInstance"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    aget-object v31, v25, v10

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 361
    add-int/lit8 v31, v10, 0x1

    aget-object v13, v25, v31

    .line 363
    .local v13, mainActivityThreadInstance:Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->getApplicationContextFromActivityThread(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 371
    .end local v4           #applicationContext:Ljava/lang/Object;
    .end local v7           #hash:I
    .end local v8           #hashField:Ljava/lang/reflect/Field;
    .end local v10           #index:I
    .end local v13           #mainActivityThreadInstance:Ljava/lang/Object;
    .end local v16           #mask:I
    .end local v17           #maskField:Ljava/lang/reflect/Field;
    .end local v21           #referenceField:Ljava/lang/reflect/Field;
    .end local v22           #referenceInstance:Ljava/lang/Object;
    .end local v25           #table:[Ljava/lang/Object;
    .end local v26           #tableField:Ljava/lang/reflect/Field;
    .end local v28           #threadLocalClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v30           #valuesClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    return-object v4
.end method

.method obtainContextViaCurrentActivityThreadFromLoadedApk()Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v6, 0x0

    .line 118
    .local v6, applicationContext:Ljava/lang/Object;
    const-string v28, "android.app.ActivityThread"

    invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 119
    .local v4, activityThreadClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "activityThreadClass"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v4}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v28, "currentActivityThread"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 123
    .local v16, currentActivityThreadMethod:Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "currentActivityThreadMethod"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 126
    .local v15, currentActivityThread:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "   currentActivityThread="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 130
    const/4 v5, 0x0

    .line 131
    .local v5, appBindDataClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v19

    .line 132
    .local v19, declaredClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object/from16 v7, v19

    .local v7, arr$:[Ljava/lang/Class;
    array-length v0, v7

    move/from16 v26, v0

    .local v26, len$:I
    const/16 v23, 0x0

    .local v23, i$:I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    aget-object v10, v7, v23

    .line 133
    .local v10, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v28, "android.app.ActivityThread.AppBindData"

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 134
    move-object v5, v10

    .line 138
    .end local v10           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "appBindDataClass"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v5}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    const/4 v9, 0x0

    .line 141
    .local v9, boundApplicationField:Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v17

    .line 142
    .local v17, declaredActivityThreadFields:[Ljava/lang/reflect/Field;
    move-object/from16 v7, v17

    .local v7, arr$:[Ljava/lang/reflect/Field;
    array-length v0, v7

    move/from16 v26, v0

    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    aget-object v22, v7, v23

    .line 143
    .local v22, field:Ljava/lang/reflect/Field;
    const-string v28, "mBoundApplication"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 144
    move-object/from16 v9, v22

    .line 148
    .end local v22           #field:Ljava/lang/reflect/Field;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "boundApplicationField"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v9}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 151
    invoke-virtual {v9, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 152
    .local v8, boundApplication:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "   boundApplication="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 154
    const/16 v25, 0x0

    .line 155
    .local v25, infoField:Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v18

    .line 156
    .local v18, declaredAppBindDataFields:[Ljava/lang/reflect/Field;
    move-object/from16 v7, v18

    array-length v0, v7

    move/from16 v26, v0

    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    aget-object v22, v7, v23

    .line 157
    .restart local v22       #field:Ljava/lang/reflect/Field;
    const-string v28, "info"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 158
    move-object/from16 v25, v22

    .line 162
    .end local v22           #field:Ljava/lang/reflect/Field;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "infoField"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    const/16 v28, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 165
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 166
    .local v24, info:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "   info="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 170
    const-string v28, "android.app.ContextImpl"

    invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 171
    .local v3, ContextImplClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "ContextImplClass"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v3}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    const/4 v13, 0x0

    .line 174
    .local v13, contextImplConstructor:Ljava/lang/reflect/Constructor;
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v20

    .line 175
    .local v20, declaredContextImplConstructors:[Ljava/lang/reflect/Constructor;
    move-object/from16 v7, v20

    .local v7, arr$:[Ljava/lang/reflect/Constructor;
    array-length v0, v7

    move/from16 v26, v0

    const/16 v23, 0x0

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    aget-object v11, v7, v23

    .line 176
    .local v11, constructor:Ljava/lang/reflect/Constructor;
    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    if-nez v28, :cond_8

    .line 177
    move-object v13, v11

    .line 181
    .end local v11           #constructor:Ljava/lang/reflect/Constructor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "contextImplConstructor"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v13}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 184
    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 185
    .local v12, contextImpl:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "   contextImpl="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 187
    const/4 v14, 0x0

    .line 188
    .local v14, contextImplInitMethod:Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v21

    .line 189
    .local v21, declaredContextImplMethods:[Ljava/lang/reflect/Method;
    move-object/from16 v7, v21

    .local v7, arr$:[Ljava/lang/reflect/Method;
    array-length v0, v7

    move/from16 v26, v0

    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    aget-object v27, v7, v23

    .line 190
    .local v27, method:Ljava/lang/reflect/Method;
    const-string v28, "init"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 191
    move-object/from16 v14, v27

    .line 195
    .end local v27           #method:Ljava/lang/reflect/Method;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "contextImplInitMethod"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v14}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 198
    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v24, v28, v29

    const/16 v29, 0x1

    const/16 v30, 0x0

    aput-object v30, v28, v29

    const/16 v29, 0x2

    aput-object v15, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v14, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "   contextImpl init complete"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 200
    move-object v6, v12

    .line 205
    return-object v6

    .line 132
    .end local v3           #ContextImplClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #boundApplication:Ljava/lang/Object;
    .end local v9           #boundApplicationField:Ljava/lang/reflect/Field;
    .end local v12           #contextImpl:Ljava/lang/Object;
    .end local v13           #contextImplConstructor:Ljava/lang/reflect/Constructor;
    .end local v14           #contextImplInitMethod:Ljava/lang/reflect/Method;
    .end local v17           #declaredActivityThreadFields:[Ljava/lang/reflect/Field;
    .end local v18           #declaredAppBindDataFields:[Ljava/lang/reflect/Field;
    .end local v20           #declaredContextImplConstructors:[Ljava/lang/reflect/Constructor;
    .end local v21           #declaredContextImplMethods:[Ljava/lang/reflect/Method;
    .end local v24           #info:Ljava/lang/Object;
    .end local v25           #infoField:Ljava/lang/reflect/Field;
    .local v7, arr$:[Ljava/lang/Class;
    .restart local v10       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_5
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 142
    .end local v10           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local v7, arr$:[Ljava/lang/reflect/Field;
    .restart local v9       #boundApplicationField:Ljava/lang/reflect/Field;
    .restart local v17       #declaredActivityThreadFields:[Ljava/lang/reflect/Field;
    .restart local v22       #field:Ljava/lang/reflect/Field;
    :cond_6
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 156
    .restart local v8       #boundApplication:Ljava/lang/Object;
    .restart local v18       #declaredAppBindDataFields:[Ljava/lang/reflect/Field;
    .restart local v25       #infoField:Ljava/lang/reflect/Field;
    :cond_7
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 175
    .end local v22           #field:Ljava/lang/reflect/Field;
    .restart local v3       #ContextImplClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local v7, arr$:[Ljava/lang/reflect/Constructor;
    .restart local v11       #constructor:Ljava/lang/reflect/Constructor;
    .restart local v13       #contextImplConstructor:Ljava/lang/reflect/Constructor;
    .restart local v20       #declaredContextImplConstructors:[Ljava/lang/reflect/Constructor;
    .restart local v24       #info:Ljava/lang/Object;
    :cond_8
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    .line 189
    .end local v11           #constructor:Ljava/lang/reflect/Constructor;
    .local v7, arr$:[Ljava/lang/reflect/Method;
    .restart local v12       #contextImpl:Ljava/lang/Object;
    .restart local v14       #contextImplInitMethod:Ljava/lang/reflect/Method;
    .restart local v21       #declaredContextImplMethods:[Ljava/lang/reflect/Method;
    .restart local v27       #method:Ljava/lang/reflect/Method;
    :cond_9
    add-int/lit8 v23, v23, 0x1

    goto :goto_4
.end method

.method obtainContextViaCurrentActivityThreadFromMainUiThread()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 391
    const/4 v1, 0x0

    .line 393
    .local v1, applicationContext:Ljava/lang/Object;
    const-string v4, "android.app.ActivityThread"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 394
    .local v0, activityThreadClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "activityThreadClass"

    invoke-static {v4, v5, v0}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    const-string v4, "currentActivityThread"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 398
    .local v3, currentActivityThreadMethod:Ljava/lang/reflect/Method;
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "currentActivityThreadMethod"

    invoke-static {v4, v5, v3}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    const/4 v4, 0x0

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 401
    .local v2, currentActivityThread:Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   currentActivityThread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 403
    if-eqz v2, :cond_0

    .line 404
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->getApplicationContextFromActivityThread(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 410
    .end local v1           #applicationContext:Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method obtainSystemContextViaSystemMainActivityThread()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 227
    const/4 v1, 0x0

    .line 229
    .local v1, applicationContext:Ljava/lang/Object;
    const-string v6, "android.app.ActivityThread"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 230
    .local v0, activityThreadClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "activityThreadClass"

    invoke-static {v6, v7, v0}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    const-string v6, "systemMain"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 233
    .local v5, systemMainMethod:Ljava/lang/reflect/Method;
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "systemMainMethod"

    invoke-static {v6, v7, v5}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    const/4 v6, 0x0

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 236
    .local v3, systemMainActivityThread:Ljava/lang/Object;
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "systemMainActivityThread"

    invoke-static {v6, v7, v3}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    const-string v6, "getSystemContext"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 239
    .local v2, getSystemContextMethod:Ljava/lang/reflect/Method;
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "getSystemContextMethod"

    invoke-static {v6, v7, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 242
    .local v4, systemMainContext:Ljava/lang/Object;
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "systemMainContext"

    invoke-static {v6, v7, v4}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    move-object v1, v4

    .line 249
    return-object v1
.end method
