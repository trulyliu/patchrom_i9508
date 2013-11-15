.class public Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;
.super Ljava/lang/Object;
.source "RemoteAbstractClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CachedMethod"
.end annotation


# instance fields
.field private final origMethod:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;


# direct methods
.method public varargs constructor <init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 231
    .local p3, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->this$0:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;

    .line 232
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iget-object v0, p1, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;->cls:Ljava/lang/Class;

    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->origMethod:Ljava/lang/reflect/Method;

    .line 234
    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 239
    .local v1, result:Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->origMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->this$0:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;

    iget-object v3, v3, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 247
    .end local v1           #result:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 240
    .restart local v1       #result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->this$0:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 242
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/IllegalAccessException;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->this$0:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 244
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->this$0:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
