.class public Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;
.super Ljava/lang/Object;
.source "CurrentRuntimeDump.java"


# static fields
.field private static final instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final androidContextWrapper:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)V
    .locals 1
    .parameter "androidContextWrapper"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    .line 58
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->androidContextWrapper:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    .line 59
    return-void
.end method

.method public static dump()V
    .locals 2

    .prologue
    .line 50
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->instance(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;

    move-result-object v0

    .line 51
    .local v0, instance:Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->dumpInfo()V

    .line 54
    :cond_0
    return-void
.end method

.method public static init(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)V
    .locals 0
    .parameter "androidContextWrapper"

    .prologue
    .line 46
    invoke-static {p0}, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->instance(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;

    .line 47
    return-void
.end method

.method static declared-synchronized instance(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;
    .locals 3
    .parameter "androidContextWrapper"

    .prologue
    .line 35
    const-class v2, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;

    .line 36
    .local v0, currentRuntimeDump:Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;
    if-nez v0, :cond_0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    new-instance v0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;

    .end local v0           #currentRuntimeDump:Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;
    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;-><init>(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;)V

    .line 39
    .restart local v0       #currentRuntimeDump:Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;
    sget-object v1, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit v2

    return-object v0

    .line 35
    .end local v0           #currentRuntimeDump:Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public dumpInfo()V
    .locals 4

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->dumpProcessIdentities()V

    .line 70
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->logStackDump()V

    .line 72
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   CurrentClassLoader="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   SystemClassLoader="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->logCurrentPackage()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method dumpProcessIdentities()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 162
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v5, "android.os.Process"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 165
    .local v4, processClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   processClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    if-eqz v4, :cond_2

    .line 169
    const-string v5, "myPid"

    new-array v6, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 170
    .local v1, myPidMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   PID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :cond_0
    const-string v5, "myTid"

    new-array v6, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 175
    .local v2, myTidMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   TID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :cond_1
    const-string v5, "myUid"

    new-array v6, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 180
    .local v3, myUidMethod:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_2

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   UID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    .end local v1           #myPidMethod:Ljava/lang/reflect/Method;
    .end local v2           #myTidMethod:Ljava/lang/reflect/Method;
    .end local v3           #myUidMethod:Ljava/lang/reflect/Method;
    :cond_2
    iget-object v5, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method logCurrentPackage()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->androidContextWrapper:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    if-eqz v4, :cond_2

    .line 93
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->androidContextWrapper:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    invoke-interface {v4}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->getCurrentProcessPackageName()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 96
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->androidContextWrapper:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    invoke-interface {v4}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->getPackageManager()Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;

    move-result-object v2

    .line 97
    .local v2, packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   packageManager="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 99
    if-eqz v2, :cond_2

    .line 101
    const/16 v4, 0x1000

    invoke-interface {v2, v3, v4}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;->getPackageInfo(Ljava/lang/String;I)Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;

    move-result-object v1

    .line 103
    .local v1, packageInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   packageInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 104
    if-eqz v1, :cond_0

    .line 105
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1, v4}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;->dumpObject(Lorg/apache/commons/logging/Log;)V

    .line 108
    :cond_0
    const/16 v4, 0x80

    invoke-interface {v2, v3, v4}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;->getApplicationInfo(Ljava/lang/String;I)Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;

    move-result-object v0

    .line 110
    .local v0, applicationInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   applicationInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 111
    if-eqz v0, :cond_1

    .line 112
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, v4}, Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;->dumpObject(Lorg/apache/commons/logging/Log;)V

    .line 115
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->logPermissions(Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;)V

    .line 119
    .end local v0           #applicationInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;
    .end local v1           #packageInfo:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;
    .end local v2           #packageManager:Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method logPermissions(Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;)V
    .locals 5
    .parameter "packageInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 127
    invoke-interface {p1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;->getPermissions()[Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, permissions:[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   DeclaredPermission="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 130
    invoke-interface {p1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageInfo;->getRequestedPermissions()[Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, requestedPermissions:[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   RequestedPermissions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 134
    .end local v0           #permissions:[Ljava/lang/Object;
    .end local v1           #requestedPermissions:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method logStackDump()V
    .locals 4

    .prologue
    .line 139
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "------------IT IS NOT EXCEPTION, IT IS JUST STACK DUMP-----------start-"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 141
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 143
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 145
    .local v1, out:Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "stack dump"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 148
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 150
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 154
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/util/CurrentRuntimeDump;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "------------IT IS NOT EXCEPTION, IT IS JUST STACK DUMP-----------stop-"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 156
    return-void
.end method
