.class public Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;
.super Ljava/lang/Object;
.source "RemoteAbstractClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CachedField"
.end annotation


# instance fields
.field private final origField:Ljava/lang/reflect/Field;

.field final synthetic this$0:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 256
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;->this$0:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;

    .line 257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iget-object v0, p1, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;->cls:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;->origField:Ljava/lang/reflect/Field;

    .line 259
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, result:Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;->origField:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;->this$0:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;

    iget-object v3, v3, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 270
    .end local v1           #result:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 265
    .restart local v1       #result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;->this$0:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 267
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/IllegalAccessException;
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedField;->this$0:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
