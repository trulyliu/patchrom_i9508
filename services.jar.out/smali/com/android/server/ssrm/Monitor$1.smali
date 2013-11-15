.class Lcom/android/server/ssrm/Monitor$1;
.super Landroid/os/Handler;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const-wide/16 v2, 0x2710

    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 349
    :pswitch_0
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:: unhandled message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 250
    :pswitch_1
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Lcom/android/server/ssrm/PolicyCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyCreator;->isPolicyFileCreated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$108()I

    .line 253
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$100()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 255
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Lcom/android/server/ssrm/PolicyCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyCreator;->createPolicyFile()V

    .line 256
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 257
    .local v10, newMsg:Landroid/os/Message;
    const/4 v0, 0x5

    iput v0, v10, Landroid/os/Message;->what:I

    .line 258
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 263
    .end local v10           #newMsg:Landroid/os/Message;
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #getter for: Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$300(Lcom/android/server/ssrm/Monitor;)Lcom/android/server/ssrm/PolicyReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader;->readXML()V

    .line 266
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 267
    .local v9, msgNew:Landroid/os/Message;
    const/4 v0, 0x6

    iput v0, v9, Landroid/os/Message;->what:I

    .line 268
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$200()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v9, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 270
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #getter for: Lcom/android/server/ssrm/Monitor;->thermistorObeserver:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$500(Lcom/android/server/ssrm/Monitor;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #getter for: Lcom/android/server/ssrm/Monitor;->thermistorObeserverTask:Ljava/util/TimerTask;
    invoke-static {v1}, Lcom/android/server/ssrm/Monitor;->access$400(Lcom/android/server/ssrm/Monitor;)Ljava/util/TimerTask;

    move-result-object v1

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getThermistorTimerDuration()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 275
    .end local v9           #msgNew:Landroid/os/Message;
    :pswitch_2
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$600()[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->createSIOPLevels()V
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$700(Lcom/android/server/ssrm/Monitor;)V

    goto :goto_0

    .line 282
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->readThermistorFile()Z
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$800(Lcom/android/server/ssrm/Monitor;)Z

    .line 283
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->setCurrentLevelfromTemp()V
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$900(Lcom/android/server/ssrm/Monitor;)V

    goto :goto_0

    .line 290
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #getter for: Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$300(Lcom/android/server/ssrm/Monitor;)Lcom/android/server/ssrm/PolicyReader;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #getter for: Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$300(Lcom/android/server/ssrm/Monitor;)Lcom/android/server/ssrm/PolicyReader;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/PolicyReader;->getBoostParameters(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 292
    .local v7, commonTriggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    if-eqz v7, :cond_3

    .line 293
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    .line 294
    .local v6, attr:Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->checkException(Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z
    invoke-static {v0, v6}, Lcom/android/server/ssrm/Monitor;->access$1000(Lcom/android/server/ssrm/Monitor;Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1100()Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-result-object v3

    invoke-static {v0, v6, v1, v2, v3}, Lcom/android/server/ssrm/Controller;->boost(Ljava/lang/String;Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;JLcom/android/server/ssrm/Monitor$SIOPLevel;)V

    goto :goto_1

    .line 297
    :cond_2
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ***** FORE GROUND TRIGGER ***** Based on Exception List we are not boosting for package name :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 301
    .end local v6           #attr:Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Policy Registered for AMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in XML"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    .end local v7           #commonTriggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    :cond_4
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FORE GROUND TRIGGER : XML Policy Reader is null"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 310
    :pswitch_5
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 311
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "In Handler:: APPSTATUSTRIGGER Boost Request from App"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 313
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #getter for: Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$300(Lcom/android/server/ssrm/Monitor;)Lcom/android/server/ssrm/PolicyReader;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 314
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package Name :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #getter for: Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$300(Lcom/android/server/ssrm/Monitor;)Lcom/android/server/ssrm/PolicyReader;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/PolicyReader;->getBoostParameters(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 316
    .restart local v7       #commonTriggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    if-eqz v7, :cond_7

    .line 317
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    .line 319
    .restart local v6       #attr:Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->checkException(Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z
    invoke-static {v0, v6}, Lcom/android/server/ssrm/Monitor;->access$1000(Lcom/android/server/ssrm/Monitor;Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 320
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1100()Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-result-object v3

    invoke-static {v0, v6, v1, v2, v3}, Lcom/android/server/ssrm/Controller;->boost(Ljava/lang/String;Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;JLcom/android/server/ssrm/Monitor$SIOPLevel;)V

    goto :goto_2

    .line 322
    :cond_6
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** APP STATUS TRIGGER *****  Based on Exception List we are not boosting for package name :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 327
    .end local v6           #attr:Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_7
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Policy Registered for APP Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in XML"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    .end local v7           #commonTriggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    :cond_8
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP STATUS TRIGGER XML Policy Reader is null"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 333
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 334
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "In Handler:: REMOVEBOOSTREQUEST from APP"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ssrm/Controller;->removeBoost(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ssrm/Controller;->removeBoost(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
