.class Lcom/samsung/wfd/WFDSourceService$1;
.super Lcom/samsung/wfd/IWfdSourceService$Stub;
.source "WFDSourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WFDSourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WFDSourceService;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WFDSourceService;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService$1;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-direct {p0}, Lcom/samsung/wfd/IWfdSourceService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public WFDGetSubtitleStatus()Z
    .locals 2

    .prologue
    .line 151
    const-string v0, "WFDSourceService"

    const-string v1, "WFDGetSubtitleStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->WFDGetSubtitleStatus()Z

    move-result v0

    return v0
.end method

.method public WFDGetSuspendStatus()Z
    .locals 2

    .prologue
    .line 156
    const-string v0, "WFDSourceService"

    const-string v1, "WFDGetSuspendStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->WFDGetSuspendStatus()Z

    move-result v0

    return v0
.end method

.method public WFDPostSubtitle(Ljava/lang/String;I)Z
    .locals 1
    .parameter "subtitle"
    .parameter "nFontSize"

    .prologue
    .line 142
    invoke-static {p1, p2}, Lcom/samsung/wfd/WFDNative;->WFDPostSubtitle(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public WFDPostSuspend(Ljava/lang/String;)Z
    .locals 3
    .parameter "subtitle"

    .prologue
    .line 166
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WFDPostSuspend : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->WFDPostSuspend(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public WFDSetSubtitleStatus(Z)Z
    .locals 3
    .parameter "bStatus"

    .prologue
    .line 146
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WFDSetSubtitleStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->WFDSetSubtitleStatus(Z)Z

    move-result v0

    return v0
.end method

.method public WFDSetSuspendStatus(Z)Z
    .locals 3
    .parameter "bStatus"

    .prologue
    .line 161
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WFDSetSuspendStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->WFDSetSuspendStatus(Z)Z

    move-result v0

    return v0
.end method

.method public isDongleRenameAvailable()Z
    .locals 2

    .prologue
    .line 176
    const-string v0, "WFDSourceService"

    const-string v1, "isDongleRenameAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->isDongleRenameAvailable()Z

    move-result v0

    return v0
.end method

.method public renameSink(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 171
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renameSink : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {p1}, Lcom/samsung/wfd/WFDNative;->renameSink(Ljava/lang/String;)V

    .line 173
    return-void
.end method
