.class Lcom/android/server/DrmEventService$6;
.super Ljava/lang/Object;
.source "DrmEventService.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DrmEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DrmEventService;


# direct methods
.method constructor <init>(Lcom/android/server/DrmEventService;)V
    .locals 0
    .parameter

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V
    .locals 12
    .parameter "drmManager"
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 1247
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_0

    .line 1248
    const-string v8, "DrmEventService_CMCC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wap push receiver:acquireDrmInfo In"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result v8

    const/16 v9, 0x3ea

    if-ne v8, v9, :cond_12

    .line 1251
    const/4 v4, 0x0

    .line 1253
    .local v4, result:Landroid/drm/DrmInfo;
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_1

    .line 1254
    const-string v8, "DrmEventService_CMCC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wap push receiver:acquireDrmInfo In  1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_1
    const-string v8, "drm_info_status_object"

    invoke-virtual {p2, v8}, Landroid/drm/DrmEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/drm/DrmInfoStatus;

    .line 1258
    .local v6, status:Landroid/drm/DrmInfoStatus;
    if-eqz v6, :cond_8

    iget-object v8, v6, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    if-eqz v8, :cond_8

    .line 1259
    iget-object v8, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    new-instance v9, Ljava/lang/String;

    iget-object v10, v6, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v10}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    iput-object v9, v8, Lcom/android/server/DrmEventService;->contentId:Ljava/lang/String;

    .line 1260
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_2

    .line 1261
    const-string v8, "DrmEventService_CMCC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wap push receiver:acquireDrmInfo contentId"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    iget-object v10, v10, Lcom/android/server/DrmEventService;->contentId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_2
    iget-object v8, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    iget-object v8, v8, Lcom/android/server/DrmEventService;->contentId:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 1274
    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/16 v8, 0x9

    const-string v9, "application/vnd.oma.drm.content"

    invoke-direct {v3, v8, v9}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1275
    .local v3, request:Landroid/drm/DrmInfoRequest;
    const-string v8, "cid"

    iget-object v9, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    iget-object v9, v9, Lcom/android/server/DrmEventService;->contentId:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1277
    iget-object v8, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    iget-object v8, v8, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v8, v3}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v4

    .line 1279
    if-eqz v4, :cond_a

    .line 1280
    const-string v8, "status"

    invoke-virtual {v4, v8}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1281
    .local v7, status_req1:Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_3

    .line 1282
    const-string v8, "DrmEventService_CMCC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wap push receiver:  processRequest status is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_3
    const-string v8, "success"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1285
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_4

    .line 1286
    const-string v8, "DrmEventService_CMCC"

    const-string v9, "Wap push receiver: acquireDrmInfo Success"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_4
    const-string v8, "drm_path"

    invoke-virtual {v4, v8}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1316
    .local v1, file_path_object:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 1318
    .local v0, filePath:Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 1319
    const-string v8, "drm_path"

    invoke-virtual {v4, v8}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1326
    :cond_5
    :goto_0
    if-eqz v0, :cond_11

    .line 1327
    const/4 v5, 0x1

    .line 1329
    .local v5, rightStatus:I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    iget-object v8, v8, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v8, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1336
    :goto_1
    if-nez v5, :cond_e

    .line 1341
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_6

    .line 1342
    const-string v8, "DrmEventService_CMCC"

    const-string v9, " Rights Valid , Show Popup"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_6
    iget-object v8, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v0}, Lcom/android/server/DrmEventService;->InitializeOmaIntent(ILjava/lang/String;)V

    .line 1376
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #file_path_object:Ljava/lang/Object;
    .end local v3           #request:Landroid/drm/DrmInfoRequest;
    .end local v4           #result:Landroid/drm/DrmInfo;
    .end local v5           #rightStatus:I
    .end local v6           #status:Landroid/drm/DrmInfoStatus;
    .end local v7           #status_req1:Ljava/lang/String;
    :cond_7
    :goto_2
    return-void

    .line 1263
    .restart local v4       #result:Landroid/drm/DrmInfo;
    .restart local v6       #status:Landroid/drm/DrmInfoStatus;
    :cond_8
    const-string v8, "DrmEventService_CMCC"

    const-string v9, "Wap push receiver:acquireDrmInfo Fail  0"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1289
    .restart local v3       #request:Landroid/drm/DrmInfoRequest;
    .restart local v7       #status_req1:Ljava/lang/String;
    :cond_9
    const-string v8, "DrmEventService_CMCC"

    const-string v9, "Wap push receiver:acquireDrmInfo Fail 1"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1301
    .end local v7           #status_req1:Ljava/lang/String;
    :cond_a
    const-string v8, "DrmEventService_CMCC"

    const-string v9, "Wap push receiver:acquireDrmInfo result is NULL "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1305
    .end local v3           #request:Landroid/drm/DrmInfoRequest;
    :cond_b
    const-string v8, "DrmEventService_CMCC"

    const-string v9, "Wap push receiver:acquireDrmInfo Fail  2"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1322
    .restart local v0       #filePath:Ljava/lang/String;
    .restart local v1       #file_path_object:Ljava/lang/Object;
    .restart local v3       #request:Landroid/drm/DrmInfoRequest;
    .restart local v7       #status_req1:Ljava/lang/String;
    :cond_c
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_5

    .line 1323
    const-string v8, "DrmEventService_CMCC"

    const-string v9, "Wap push receiver:acquireDrmInfo FILE Object not available"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1330
    .restart local v5       #rightStatus:I
    :catch_0
    move-exception v2

    .line 1331
    .local v2, ie:Ljava/lang/IllegalArgumentException;
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_d

    .line 1332
    const-string v8, "DrmEventService_CMCC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IllegalArgumentException is raised."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_d
    const/4 v5, 0x1

    goto :goto_1

    .line 1345
    .end local v2           #ie:Ljava/lang/IllegalArgumentException;
    :cond_e
    if-ne v5, v11, :cond_10

    .line 1347
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_f

    .line 1348
    const-string v8, "DrmEventService_CMCC"

    const-string v9, " Rights are not yet active: Show Popup"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_f
    iget-object v8, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    invoke-virtual {v8, v11, v0}, Lcom/android/server/DrmEventService;->InitializeOmaIntent(ILjava/lang/String;)V

    goto :goto_2

    .line 1358
    :cond_10
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_7

    .line 1359
    const-string v8, "DrmEventService_CMCC"

    const-string v9, "Unknown right status. Exit"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1361
    .end local v5           #rightStatus:I
    :cond_11
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_7

    .line 1362
    const-string v8, "DrmEventService_CMCC"

    const-string v9, "Wap push receiver: No File Path "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1373
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #file_path_object:Ljava/lang/Object;
    .end local v3           #request:Landroid/drm/DrmInfoRequest;
    .end local v4           #result:Landroid/drm/DrmInfo;
    .end local v6           #status:Landroid/drm/DrmInfoStatus;
    .end local v7           #status_req1:Ljava/lang/String;
    :cond_12
    sget-boolean v8, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v8, :cond_7

    .line 1374
    const-string v8, "DrmEventService_CMCC"

    const-string v9, "DRM PUSH RECEIVER : mimeType is not valid for WAp Push Received"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
