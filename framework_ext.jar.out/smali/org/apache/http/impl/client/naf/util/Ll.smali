.class public Lorg/apache/http/impl/client/naf/util/Ll;
.super Ljava/lang/Object;
.source "Ll.java"


# static fields
.field public static final AKA:I = 0x8

.field public static final ALL:I = -0x1

.field public static final BASIC:I = 0x1

.field public static final CURRENT:I = 0x10

.field public static final FINISHED:I = 0x4

.field public static final HTTP_TRAFFIC:I = 0x20

.field public static final KEYS:I = 0x40

.field public static final LOGGING_SILENCE:I = 0x0

.field public static final RUNTIME_DUMP:I = 0x10

.field public static final STARTED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static is(I)Z
    .locals 2
    .parameter "level"

    .prologue
    .line 39
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 40
    .local v0, result:Z
    :goto_0
    return v0

    .line 39
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static no(I)Z
    .locals 2
    .parameter "level"

    .prologue
    .line 50
    invoke-static {p0}, Lorg/apache/http/impl/client/naf/util/Ll;->is(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 51
    .local v0, result:Z
    :goto_0
    return v0

    .line 50
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
