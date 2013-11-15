.class public abstract Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;
.super Ljava/lang/Object;
.source "GbaSupportIndicatorRequestUpdaterAbstract.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdater;


# static fields
.field public static final USER_AGENT_HEADER_DELIMITER:Ljava/lang/String; = " "

.field public static final USER_AGENT_HEADER_NAME:Ljava/lang/String; = "User-Agent"

.field public static final USER_AGENT_HEADER_NAME_LOWECASE:Ljava/lang/String;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final userHeaderPredefined:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "User-Agent"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->USER_AGENT_HEADER_NAME_LOWECASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "userHeaderPredefined"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    .line 33
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->userHeaderPredefined:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method dumpAllHeaders(Lorg/apache/http/HttpRequest;)V
    .locals 10
    .parameter "httpRequest"

    .prologue
    .line 162
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 163
    .local v0, allHeaders:[Lorg/apache/http/Header;
    if-eqz v0, :cond_3

    array-length v7, v0

    if-lez v7, :cond_3

    .line 164
    move-object v1, v0

    .local v1, arr$:[Lorg/apache/http/Header;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v1, v3

    .line 165
    .local v2, headerItem:Lorg/apache/http/Header;
    if-eqz v2, :cond_2

    .line 166
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, name:Ljava/lang/String;
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, value:Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HEADER:   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v5, :cond_0

    const-string v5, "null"

    .end local v5           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v6, :cond_1

    const-string v6, "null"

    .end local v6           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 164
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_2
    iget-object v7, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "HEADER:   null"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_1

    .line 175
    .end local v1           #arr$:[Lorg/apache/http/Header;
    .end local v2           #headerItem:Lorg/apache/http/Header;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    return-void
.end method

.method protected abstract getContent(Lorg/apache/http/impl/client/naf/gba/GbaType;)Ljava/lang/String;
.end method

.method getUserAgentHeader(Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 3
    .parameter "httpRequest"

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, userAgentHeader:Lorg/apache/http/Header;
    if-eqz p1, :cond_2

    .line 145
    const-string v1, "User-Agent"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 147
    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->getUserAgentHeaderCaseInsensitive(Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v0

    .line 151
    :cond_0
    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->dumpAllHeaders(Lorg/apache/http/HttpRequest;)V

    .line 158
    :cond_1
    :goto_0
    return-object v0

    .line 155
    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "httpRequest is null."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getUserAgentHeaderCaseInsensitive(Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 11
    .parameter "httpRequest"

    .prologue
    .line 110
    const/4 v7, 0x0

    .line 112
    .local v7, userAgentHeader:Lorg/apache/http/Header;
    if-eqz p1, :cond_3

    .line 114
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 115
    .local v0, allHeaders:[Lorg/apache/http/Header;
    if-eqz v0, :cond_2

    array-length v8, v0

    if-lez v8, :cond_2

    .line 117
    move-object v1, v0

    .local v1, arr$:[Lorg/apache/http/Header;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v1, v5

    .line 118
    .local v2, headerItem:Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, headerItemName:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, headerItemNameTrimLowerCase:Ljava/lang/String;
    sget-object v8, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->USER_AGENT_HEADER_NAME_LOWECASE:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 124
    move-object v7, v2

    .line 137
    .end local v0           #allHeaders:[Lorg/apache/http/Header;
    .end local v1           #arr$:[Lorg/apache/http/Header;
    .end local v2           #headerItem:Lorg/apache/http/Header;
    .end local v3           #headerItemName:Ljava/lang/String;
    .end local v4           #headerItemNameTrimLowerCase:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_0
    :goto_1
    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserAgentHeaderCaseInsensitive()#finished   userAgentHeader="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 139
    return-object v7

    .line 117
    .restart local v0       #allHeaders:[Lorg/apache/http/Header;
    .restart local v1       #arr$:[Lorg/apache/http/Header;
    .restart local v2       #headerItem:Lorg/apache/http/Header;
    .restart local v3       #headerItemName:Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 130
    .end local v1           #arr$:[Lorg/apache/http/Header;
    .end local v2           #headerItem:Lorg/apache/http/Header;
    .end local v3           #headerItemName:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_2
    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "allHeaders is empty or null. Let\'s try another way of searching header."

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_1

    .line 134
    .end local v0           #allHeaders:[Lorg/apache/http/Header;
    :cond_3
    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "httpRequest is null."

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public update(Lorg/apache/http/HttpRequest;Lorg/apache/http/impl/client/naf/gba/GbaType;)V
    .locals 6
    .parameter "httpRequest"
    .parameter "gbaType"

    .prologue
    .line 54
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->getContent(Lorg/apache/http/impl/client/naf/gba/GbaType;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, newContent:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 57
    if-eqz p1, :cond_3

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->getUserAgentHeader(Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v2

    .line 63
    .local v2, userAgentHeader:Lorg/apache/http/Header;
    move-object v1, v0

    .line 65
    .local v1, newUserAgentHeaderValue:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 67
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER-AGENT header has been updated with new value ... newUserAgentHeaderValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 100
    .end local v1           #newUserAgentHeaderValue:Ljava/lang/String;
    .end local v2           #userAgentHeader:Lorg/apache/http/Header;
    :goto_0
    return-void

    .line 78
    .restart local v1       #newUserAgentHeaderValue:Ljava/lang/String;
    .restart local v2       #userAgentHeader:Lorg/apache/http/Header;
    :cond_1
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->userHeaderPredefined:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 79
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "User-Agent header hasn\'t been found, we need to create it and we have predefined value for it and it will be used"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->userHeaderPredefined:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_2
    const-string v3, "User-Agent"

    invoke-interface {p1, v3, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER-AGENT header has been CREATED with ... newUserAgentHeaderValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    .end local v1           #newUserAgentHeaderValue:Ljava/lang/String;
    .end local v2           #userAgentHeader:Lorg/apache/http/Header;
    :cond_3
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "httpRequest is null."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_4
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "newContent is null."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method
