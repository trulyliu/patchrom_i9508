.class public Lorg/apache/commons/logging/impl/AndroidLoggerReflection;
.super Lorg/apache/commons/logging/impl/AndroidLogger;
.source "AndroidLoggerReflection.java"


# static fields
.field private static final MSG_PREFIX:Ljava/lang/String; = "(thUse=%d) "

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/AndroidLogger;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private getMsgTag()Ljava/lang/String;
    .locals 6

    .prologue
    .line 24
    const-string v1, "(thUse=%d) "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method protected androidLogErrorMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 8
    .parameter "message"
    .parameter "t"

    .prologue
    .line 86
    :try_start_0
    const-string v5, "android.util.Log"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 88
    .local v4, logClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    .line 90
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v5

    .line 94
    .local v2, eMethodParamTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v5, "e"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 96
    .local v1, eMethod:Ljava/lang/reflect/Method;
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AndroidLoggerReflection;->getLogTag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/commons/logging/impl/AndroidLoggerReflection;->getMsgTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 100
    .local v3, eMethodParams:[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v1           #eMethod:Ljava/lang/reflect/Method;
    .end local v2           #eMethodParamTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v3           #eMethodParams:[Ljava/lang/Object;
    .end local v4           #logClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 104
    .restart local v4       #logClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v2, v5

    .line 108
    .restart local v2       #eMethodParamTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v5, "e"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 110
    .restart local v1       #eMethod:Ljava/lang/reflect/Method;
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AndroidLoggerReflection;->getLogTag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/commons/logging/impl/AndroidLoggerReflection;->getMsgTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object p2, v3, v5

    .line 114
    .restart local v3       #eMethodParams:[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 117
    .end local v1           #eMethod:Ljava/lang/reflect/Method;
    .end local v2           #eMethodParamTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v3           #eMethodParams:[Ljava/lang/Object;
    .end local v4           #logClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method protected androidLogInfoMessageWithException(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 8
    .parameter "message"
    .parameter "t"

    .prologue
    .line 34
    :try_start_0
    const-string v5, "android.util.Log"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 36
    .local v4, logClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    .line 38
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v5

    .line 42
    .local v2, iMethodParamTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v5, "i"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 44
    .local v1, iMethod:Ljava/lang/reflect/Method;
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AndroidLoggerReflection;->getLogTag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/commons/logging/impl/AndroidLoggerReflection;->getMsgTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 48
    .local v3, iMethodParams:[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v1           #iMethod:Ljava/lang/reflect/Method;
    .end local v2           #iMethodParamTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v3           #iMethodParams:[Ljava/lang/Object;
    .end local v4           #logClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 52
    .restart local v4       #logClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v2, v5

    .line 56
    .restart local v2       #iMethodParamTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v5, "i"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 58
    .restart local v1       #iMethod:Ljava/lang/reflect/Method;
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/AndroidLoggerReflection;->getLogTag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/commons/logging/impl/AndroidLoggerReflection;->getMsgTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object p2, v3, v5

    .line 62
    .restart local v3       #iMethodParams:[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 65
    .end local v1           #iMethod:Ljava/lang/reflect/Method;
    .end local v2           #iMethodParamTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v3           #iMethodParams:[Ljava/lang/Object;
    .end local v4           #logClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method
