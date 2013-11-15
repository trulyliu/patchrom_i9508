.class public Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;
.super Ljava/lang/Exception;
.source "GbaBootstrappingNoKeysException.java"


# static fields
.field public static final NO_AUTH_DATA_AT_ALL:Ljava/lang/String; = "Obtained GBA authentication parameters are empty."

.field public static final SOME_AUTH_DATA_IS_MISSED:Ljava/lang/String; = "B-TID or keys were missed."

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method
