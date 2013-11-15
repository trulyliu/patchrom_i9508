.class public Lorg/apache/http/impl/client/naf/wrapper/Qop;
.super Ljava/lang/Object;
.source "Qop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;
    }
.end annotation


# static fields
.field private static final QOP_AUTH_INT_NAME:Ljava/lang/String; = "auth-int"

.field private static final QOP_AUTH_NAME:Ljava/lang/String; = "auth"

.field private static final QOP_DEFAULT:Ljava/lang/String; = "auth-int"


# instance fields
.field private value:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;


# direct methods
.method private constructor <init>(Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/wrapper/Qop;->value:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    .line 40
    return-void
.end method

.method public static parseServerQop(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/Qop;
    .locals 4
    .parameter "qopFromResponse"

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, qopRes:Lorg/apache/http/impl/client/naf/wrapper/Qop;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 81
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Qop;

    .end local v0           #qopRes:Lorg/apache/http/impl/client/naf/wrapper/Qop;
    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_UNSPECIFIED:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/naf/wrapper/Qop;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;)V

    .line 102
    .restart local v0       #qopRes:Lorg/apache/http/impl/client/naf/wrapper/Qop;
    :cond_1
    :goto_0
    return-object v0

    .line 83
    :cond_2
    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Qop;

    .end local v0           #qopRes:Lorg/apache/http/impl/client/naf/wrapper/Qop;
    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/naf/wrapper/Qop;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;)V

    .restart local v0       #qopRes:Lorg/apache/http/impl/client/naf/wrapper/Qop;
    goto :goto_0

    .line 86
    :cond_3
    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH_INT:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 87
    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Qop;

    .end local v0           #qopRes:Lorg/apache/http/impl/client/naf/wrapper/Qop;
    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH_INT:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/naf/wrapper/Qop;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;)V

    .restart local v0       #qopRes:Lorg/apache/http/impl/client/naf/wrapper/Qop;
    goto :goto_0

    .line 89
    :cond_4
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 90
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v1, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v1, tk:Ljava/util/StringTokenizer;
    :cond_5
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, token:Ljava/lang/String;
    const-string v3, "auth-int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 94
    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Qop;

    .end local v0           #qopRes:Lorg/apache/http/impl/client/naf/wrapper/Qop;
    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH_INT:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/naf/wrapper/Qop;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;)V

    .line 95
    .restart local v0       #qopRes:Lorg/apache/http/impl/client/naf/wrapper/Qop;
    goto :goto_0

    .line 100
    .end local v1           #tk:Ljava/util/StringTokenizer;
    .end local v2           #token:Ljava/lang/String;
    :cond_6
    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Qop;

    .end local v0           #qopRes:Lorg/apache/http/impl/client/naf/wrapper/Qop;
    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_UNKNOWN_NOT_EMPTY:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/naf/wrapper/Qop;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;)V

    .restart local v0       #qopRes:Lorg/apache/http/impl/client/naf/wrapper/Qop;
    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Qop;->value:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->getName()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, res:Ljava/lang/String;
    return-object v0
.end method

.method public isAuth()Z
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Qop;->value:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    sget-object v2, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 47
    .local v0, res:Z
    :goto_0
    return v0

    .line 46
    .end local v0           #res:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthInt()Z
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Qop;->value:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    sget-object v2, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH_INT:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 55
    .local v0, res:Z
    :goto_0
    return v0

    .line 54
    .end local v0           #res:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnspecified()Z
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Qop;->value:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    sget-object v2, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_UNSPECIFIED:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 63
    .local v0, res:Z
    :goto_0
    return v0

    .line 62
    .end local v0           #res:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Qop [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Qop;->value:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
