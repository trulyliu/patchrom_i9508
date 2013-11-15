.class public Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
.super Ljava/lang/Object;
.source "GbaAuthData.java"


# instance fields
.field private final btid:Ljava/lang/String;

.field private final ksNaf:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .parameter "btid"
    .parameter "ksNaf"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;->btid:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;->ksNaf:[B

    .line 24
    return-void
.end method


# virtual methods
.method public getBtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;->btid:Ljava/lang/String;

    return-object v0
.end method

.method public getKsNaf()[B
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;->ksNaf:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method
