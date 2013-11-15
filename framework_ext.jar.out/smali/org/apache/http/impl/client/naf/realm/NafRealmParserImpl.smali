.class public Lorg/apache/http/impl/client/naf/realm/NafRealmParserImpl;
.super Ljava/lang/Object;
.source "NafRealmParserImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/realm/NafRealmParser;


# static fields
.field public static final REALM_SEPARATOR:Ljava/lang/String; = ";"

.field public static final URI_SEPARATOR:Ljava/lang/String; = "@"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmParserImpl;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;
    .locals 17
    .parameter "nafRealm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/realm/NafRealmException;
        }
    .end annotation

    .prologue
    .line 36
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_1

    .line 37
    :cond_0
    new-instance v14, Lorg/apache/http/impl/client/naf/realm/NafRealmException;

    const-string v15, "NAF\'s realm can\'t be null or empty."

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 40
    :cond_1
    const-string v14, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 42
    .local v9, nafRealmStrParts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 43
    .local v10, nafRealmStrPartsNum:I
    const/4 v14, 0x1

    if-ge v10, v14, :cond_2

    .line 44
    new-instance v14, Lorg/apache/http/impl/client/naf/realm/NafRealmException;

    const-string v15, "At least one part should be here!"

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 47
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v7, nafRealPartsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/impl/client/naf/realm/NafRealmPart;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 51
    .local v12, realmItem:Ljava/lang/String;
    if-nez v12, :cond_4

    const/4 v1, 0x0

    .line 53
    .local v1, currentNafRealmPartStrTrimmed:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_5

    .line 55
    :cond_3
    new-instance v14, Lorg/apache/http/impl/client/naf/realm/NafRealmException;

    const-string v15, "Wrong input data format! Empty realm part!"

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 51
    .end local v1           #currentNafRealmPartStrTrimmed:Ljava/lang/String;
    :cond_4
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 58
    .restart local v1       #currentNafRealmPartStrTrimmed:Ljava/lang/String;
    :cond_5
    const-string v14, "@"

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 59
    .local v11, partsOfRealm:[Ljava/lang/String;
    if-eqz v11, :cond_6

    array-length v14, v11

    const/4 v15, 0x2

    if-eq v14, v15, :cond_7

    .line 60
    :cond_6
    new-instance v14, Lorg/apache/http/impl/client/naf/realm/NafRealmException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Incorrect format of NAF\'s realm. realmItem="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 64
    :cond_7
    const/4 v14, 0x0

    aget-object v14, v11, v14

    if-nez v14, :cond_9

    const/4 v2, 0x0

    .line 65
    .local v2, gbaTypeMarkerStr:Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_a

    .line 66
    :cond_8
    new-instance v14, Lorg/apache/http/impl/client/naf/realm/NafRealmException;

    const-string v15, "GBA type marker shouldn\'t be empty."

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 64
    .end local v2           #gbaTypeMarkerStr:Ljava/lang/String;
    :cond_9
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 69
    .restart local v2       #gbaTypeMarkerStr:Ljava/lang/String;
    :cond_a
    const/4 v14, 0x1

    aget-object v14, v11, v14

    if-nez v14, :cond_c

    const/4 v4, 0x0

    .line 70
    .local v4, nafFqdn:Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_d

    .line 71
    :cond_b
    new-instance v14, Lorg/apache/http/impl/client/naf/realm/NafRealmException;

    const-string v15, "NAF\'s FQDN shouldn\'t be empty."

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 69
    .end local v4           #nafFqdn:Ljava/lang/String;
    :cond_c
    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 74
    .restart local v4       #nafFqdn:Ljava/lang/String;
    :cond_d
    invoke-static {v2}, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->getTypeByName(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    move-result-object v8

    .line 76
    .local v8, nafRealmGbaTypeMarker:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    if-nez v8, :cond_e

    .line 77
    new-instance v14, Lorg/apache/http/impl/client/naf/realm/NafRealmException;

    const-string v15, "Unknown realm type!"

    invoke-direct {v14, v15}, Lorg/apache/http/impl/client/naf/realm/NafRealmException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 80
    :cond_e
    new-instance v5, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;

    invoke-direct {v5, v1, v8, v4}, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;-><init>(Ljava/lang/String;Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;Ljava/lang/String;)V

    .line 82
    .local v5, nafRealPart:Lorg/apache/http/impl/client/naf/realm/NafRealmPart;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 85
    .end local v1           #currentNafRealmPartStrTrimmed:Ljava/lang/String;
    .end local v2           #gbaTypeMarkerStr:Ljava/lang/String;
    .end local v4           #nafFqdn:Ljava/lang/String;
    .end local v5           #nafRealPart:Lorg/apache/http/impl/client/naf/realm/NafRealmPart;
    .end local v8           #nafRealmGbaTypeMarker:Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;
    .end local v11           #partsOfRealm:[Ljava/lang/String;
    .end local v12           #realmItem:Ljava/lang/String;
    :cond_f
    const/4 v14, 0x0

    new-array v14, v14, [Lorg/apache/http/impl/client/naf/realm/NafRealmPart;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/http/impl/client/naf/realm/NafRealmPart;

    .line 87
    .local v6, nafRealParts:[Lorg/apache/http/impl/client/naf/realm/NafRealmPart;
    new-instance v13, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v6}, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;-><init>(Ljava/lang/String;[Lorg/apache/http/impl/client/naf/realm/NafRealmPart;)V

    .line 91
    .local v13, result:Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;
    return-object v13
.end method
