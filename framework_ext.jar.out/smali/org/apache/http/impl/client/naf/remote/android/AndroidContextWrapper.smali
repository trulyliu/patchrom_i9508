.class Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;
.super Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.source "AndroidContextWrapper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;


# instance fields
.field private final bindServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final getPackageManagerMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final getPackageNameMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final isContextOfGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field private final packageMnagerholder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;",
            ">;"
        }
    .end annotation
.end field

.field private final requestedPermissionsHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final startServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final unbindServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 8
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;-><init>(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->log:Lorg/apache/commons/logging/Log;

    .line 41
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->requestedPermissionsHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->isContextOfGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->packageMnagerholder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    new-instance v2, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v3, "getPackageName"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->getPackageNameMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 54
    const-string v2, "android.content.ServiceConnection"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    .local v1, serviceConnectionClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v2, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v3, "unbindService"

    new-array v4, v5, [Ljava/lang/Class;

    aput-object v1, v4, v7

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->unbindServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 56
    const-string v2, "android.content.Intent"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    .local v0, intentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v2, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v3, "startService"

    new-array v4, v5, [Ljava/lang/Class;

    aput-object v0, v4, v7

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->startServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 58
    new-instance v2, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v3, "bindService"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v0, v4, v7

    aput-object v1, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->bindServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 60
    new-instance v2, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v3, "getPackageManager"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->getPackageManagerMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    .line 61
    return-void
.end method


# virtual methods
.method public bindService(Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;)Ljava/lang/Boolean;
    .locals 6
    .parameter "connectionListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->createGbaServiceIntent()Ljava/lang/Object;

    move-result-object v1

    .line 123
    .local v1, intentInstance:Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->bindServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;->getObjRef()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 129
    .local v0, bindServiceResult:Ljava/lang/Boolean;
    return-object v0
.end method

.method createGbaServiceIntent()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v3, 0x0

    .line 150
    .local v3, intentInstance:Ljava/lang/Object;
    :try_start_0
    const-string v4, "android.content.Intent"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 154
    .local v1, intentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 155
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 159
    .local v2, intentConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    if-eqz v2, :cond_0

    .line 160
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "javax.microedition.gba.android.IGbaService"

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v3

    .line 181
    .end local v1           #intentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #intentConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #intentInstance:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v3

    .line 165
    .restart local v3       #intentInstance:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 167
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 169
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 171
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 173
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 175
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 177
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_6
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCurrentProcessPackageName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->getPackageNameMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, packageName:Ljava/lang/String;
    return-object v0
.end method

.method public getCurrentProcessPermissionRequests()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->requestedPermissionsHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 193
    .local v3, requestedPermissions:[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 194
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->getCurrentProcessPackageName()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->getPackageManager()Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;

    move-result-object v1

    .line 197
    .local v1, packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 199
    const/16 v4, 0x1000

    invoke-interface {v1, v2, v4}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;->getPackageInfo(Ljava/lang/String;I)Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;

    move-result-object v0

    .line 204
    .local v0, packageInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;
    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;->getRequestedPermissions()[Ljava/lang/String;

    move-result-object v3

    .line 211
    .end local v0           #packageInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;
    :cond_0
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->requestedPermissionsHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 214
    .end local v1           #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .end local v2           #packageName:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    const-string v0, "android.content.Context"

    .line 290
    .local v0, fullName:Ljava/lang/String;
    const-string v1, "android.content.Context"

    return-object v1
.end method

.method public getPackageManager()Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->packageMnagerholder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;

    .line 227
    .local v1, packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    if-nez v1, :cond_0

    .line 229
    :try_start_0
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->getPackageManagerMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 230
    .local v3, packageManagerRef:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 231
    new-instance v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManagerWrapper;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    .end local v1           #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .local v2, packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    :try_start_1
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->packageMnagerholder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .line 243
    .end local v2           #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .end local v3           #packageManagerRef:Ljava/lang/Object;
    .restart local v1       #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    :cond_0
    :goto_0
    return-object v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/SecurityException;
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 236
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/NoSuchMethodException;
    :goto_2
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 236
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    .end local v1           #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .restart local v2       #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .restart local v3       #packageManagerRef:Ljava/lang/Object;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .restart local v1       #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    goto :goto_2

    .line 234
    .end local v1           #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .restart local v2       #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .restart local v1       #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    goto :goto_1
.end method

.method public isThisContextOfGbaService()Z
    .locals 5

    .prologue
    .line 255
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->isContextOfGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 257
    .local v1, isContextOfGbaService:Ljava/lang/Boolean;
    if-nez v1, :cond_1

    .line 258
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->getCurrentProcessPackageName()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, packageName:Ljava/lang/String;
    const-string v3, "javax.microedition.gba.android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 264
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 266
    invoke-static {}, Lorg/apache/commons/logging/impl/AndroidLogger;->indicateGbaService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->isContextOfGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 280
    .end local v2           #packageName:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->isContextOfGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->isContextOfGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v3
.end method

.method public startService()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->createGbaServiceIntent()Ljava/lang/Object;

    move-result-object v1

    .line 106
    .local v1, intentInstance:Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->startServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, componentName:Ljava/lang/Object;
    return-void
.end method

.method public unbindService(Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;)V
    .locals 4
    .parameter "connectionListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;->unbindServiceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;->getObjRef()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public validateClass(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-void
.end method
