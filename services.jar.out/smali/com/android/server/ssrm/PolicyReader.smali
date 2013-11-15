.class public Lcom/android/server/ssrm/PolicyReader;
.super Ljava/lang/Object;
.source "PolicyReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;,
        Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;,
        Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "XMLPolicyReader"

.field private static policyReader:Lcom/android/server/ssrm/PolicyReader;


# instance fields
.field private final APP_STATUS_TRIGGER:Ljava/lang/String;

.field private final FOREGROUND_TRIGGER:Ljava/lang/String;

.field exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

.field in:Ljava/io/InputStream;

.field isAppStatusTrigger:Z

.field isException:Z

.field isForegroundTrigger:Z

.field isTemperture:Z

.field mActionTriggerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;",
            ">;"
        }
    .end annotation
.end field

.field mBoostMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mExceptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;",
            ">;"
        }
    .end annotation
.end field

.field mPackageName:Ljava/lang/String;

.field mThermisterDataListAP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;",
            ">;"
        }
    .end annotation
.end field

.field mThermisterDataListCP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;",
            ">;"
        }
    .end annotation
.end field

.field mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

.field private mthermistorObserverAPTag:Z

.field private mthermistorObserverCPTag:Z

.field parser:Lorg/xmlpull/v1/XmlPullParser;

.field stepLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/PolicyReader;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->isException:Z

    .line 56
    const-string v0, "ForegroundTrigger"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->FOREGROUND_TRIGGER:Ljava/lang/String;

    .line 57
    const-string v0, "AppStatusTrigger"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->APP_STATUS_TRIGGER:Ljava/lang/String;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    .line 72
    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListAP:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListCP:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    .line 86
    return-void
.end method

.method private addActionList()V
    .locals 6

    .prologue
    .line 212
    const/4 v2, 0x0

    .line 215
    .local v2, tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 216
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    invoke-virtual {v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, hashMapKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    check-cast v2, Ljava/util/HashMap;

    .line 220
    .restart local v2       #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    if-eqz v3, :cond_3

    .line 222
    if-eqz v2, :cond_2

    const-string v3, "ForegroundTrigger"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    const-string v3, "ForegroundTrigger"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .end local v0           #hashMapKey:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 226
    .restart local v0       #hashMapKey:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v1, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 229
    .restart local v2       #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    const-string v3, "ForegroundTrigger"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 233
    .end local v1           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    if-eqz v3, :cond_1

    .line 235
    if-eqz v2, :cond_5

    .line 237
    const-string v3, "AppStatusTrigger"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 238
    const-string v3, "AppStatusTrigger"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :goto_1
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 240
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .restart local v1       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v3, "AppStatusTrigger"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 246
    .end local v1           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .restart local v1       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 249
    .restart local v2       #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    const-string v3, "AppStatusTrigger"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 254
    .end local v0           #hashMapKey:Ljava/lang/String;
    .end local v1           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    :cond_6
    const-string v3, "XMLPolicyReader"

    const-string v4, "Action Attribute is null"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private addExceptionList(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter "parser"

    .prologue
    const/4 v2, 0x0

    .line 260
    new-instance v0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;-><init>(Lcom/android/server/ssrm/PolicyReader;)V

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    .line 261
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    const-string v1, "packageName"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->setPackageName(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    const-string v1, "statusName"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->setStatusName(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    const-string v1, "value"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->setValue(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mExceptionList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method private extractScenarioAction(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .parameter "parser"

    .prologue
    const/4 v4, 0x0

    .line 299
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 300
    const-string v1, "type"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, actionType:Ljava/lang/String;
    const-string v1, "CPU_MIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x0

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    .line 311
    :cond_0
    :goto_0
    const-string v1, "CPU_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 312
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x1

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    .line 325
    .end local v0           #actionType:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 304
    .restart local v0       #actionType:Ljava/lang/String;
    :cond_2
    const-string v1, "GPU_MIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x2

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_3
    const-string v1, "BUS_MIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x4

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_4
    const-string v1, "GPU_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 315
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x3

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    goto :goto_1

    .line 317
    :cond_5
    const-string v1, "BUS_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x5

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 322
    .end local v0           #actionType:Ljava/lang/String;
    :cond_6
    const-string v1, "XMLPolicyReader"

    const-string v2, "Expected Parent not present"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private extractStep(Lorg/xmlpull/v1/XmlPullParser;ZZ)V
    .locals 4
    .parameter "parser"
    .parameter "thermistorObserverAPTag"
    .parameter "thermistorObserverCPTag"

    .prologue
    .line 328
    const-string v1, "XMLPolicyReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractStep :: thermistorObserverAPTag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z

    if-eqz v1, :cond_5

    .line 331
    new-instance v1, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;-><init>(Lcom/android/server/ssrm/PolicyReader;)V

    iput-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    .line 332
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 333
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setLevel(Ljava/lang/String;)V

    .line 332
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_1
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "temp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setSurfaceTemp(Ljava/lang/String;)V

    goto :goto_1

    .line 340
    :cond_2
    if-eqz p2, :cond_4

    .line 341
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListAP:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v1, "XMLPolicyReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractStep :: thermistorObserverAPTag true Adding into : mThermisterDataListAP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListAP:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .end local v0           #i:I
    :cond_3
    :goto_2
    return-void

    .line 343
    .restart local v0       #i:I
    :cond_4
    if-eqz p3, :cond_3

    .line 344
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListCP:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v1, "XMLPolicyReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractStep :: thermistorObserverCPTag true Adding into : mThermisterDataListCP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListCP:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 349
    .end local v0           #i:I
    :cond_5
    const/4 v1, 0x0

    const-string v2, "level"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    goto :goto_2
.end method

.method private extractType(Lorg/xmlpull/v1/XmlPullParser;ZZ)V
    .locals 6
    .parameter "parser"
    .parameter "thermistorObserverAPTag"
    .parameter "thermistorObserverCPTag"

    .prologue
    const/4 v5, 0x0

    .line 268
    const-string v2, "XMLPolicyReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractType :: thermistorObserverAPTag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, tempSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListAP:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListCP:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 273
    if-eqz p2, :cond_2

    .line 274
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListAP:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tempSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    check-cast v0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    .line 278
    .restart local v0       #tempSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    :cond_0
    :goto_0
    const-string v2, "name"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, type:Ljava/lang/String;
    const-string v2, "ARMFreq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    const-string v2, "value"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setArmFreq(Ljava/lang/String;)V

    .line 296
    .end local v1           #type:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 275
    :cond_2
    if-eqz p3, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListCP:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tempSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    check-cast v0, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    .restart local v0       #tempSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    goto :goto_0

    .line 281
    .restart local v1       #type:Ljava/lang/String;
    :cond_3
    const-string v2, "ACL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 282
    const-string v2, "value"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setAcl(Ljava/lang/String;)V

    goto :goto_1

    .line 283
    :cond_4
    const-string v2, "Flash"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 284
    const-string v2, "value"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setFlash(Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :cond_5
    const-string v2, "ARMCore"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 286
    const-string v2, "value"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setArmCore(Ljava/lang/String;)V

    goto :goto_1

    .line 287
    :cond_6
    const-string v2, "LCDBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 288
    const-string v2, "value"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setLcdBrightness(Ljava/lang/String;)V

    goto :goto_1

    .line 289
    :cond_7
    const-string v2, "ChargeCurrent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 290
    const-string v2, "value"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setChargeCurrent(Ljava/lang/String;)V

    goto :goto_1

    .line 291
    :cond_8
    const-string v2, "RecordingStop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    const-string v2, "value"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setRecordingStop(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/server/ssrm/PolicyReader;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/server/ssrm/PolicyReader;->policyReader:Lcom/android/server/ssrm/PolicyReader;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/server/ssrm/PolicyReader;

    invoke-direct {v0}, Lcom/android/server/ssrm/PolicyReader;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/PolicyReader;->policyReader:Lcom/android/server/ssrm/PolicyReader;

    .line 78
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/PolicyReader;->policyReader:Lcom/android/server/ssrm/PolicyReader;

    return-object v0
.end method

.method static readFingerPrint()Ljava/lang/String;
    .locals 14

    .prologue
    .line 661
    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->getDecryptedPolicyPath()Ljava/lang/String;

    move-result-object v9

    .line 662
    .local v9, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 664
    .local v3, fingerprint:Ljava/lang/String;
    const/4 v6, 0x0

    .line 666
    .local v6, in:Ljava/io/InputStream;
    if-eqz v9, :cond_3

    .line 667
    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Reading XML from path -----> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 670
    .end local v6           #in:Ljava/io/InputStream;
    .local v7, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 671
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 672
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 673
    .local v1, eventType:I
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v10, 0x1

    if-eq v1, v10, :cond_4

    .line 674
    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 678
    :pswitch_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PowerFramework"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result v10

    if-eqz v10, :cond_0

    .line 680
    const/4 v10, 0x0

    :try_start_2
    const-string v11, "fingerprint"

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v3

    .line 698
    if-eqz v7, :cond_1

    .line 699
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_1
    move-object v6, v7

    .end local v7           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    move-object v4, v3

    .line 708
    .end local v1           #eventType:I
    .end local v3           #fingerprint:Ljava/lang/String;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .local v4, fingerprint:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 682
    .end local v4           #fingerprint:Ljava/lang/String;
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v1       #eventType:I
    .restart local v3       #fingerprint:Ljava/lang/String;
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v5

    .line 683
    .local v5, ie:Ljava/lang/IndexOutOfBoundsException;
    :try_start_4
    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_0

    .line 691
    .end local v1           #eventType:I
    .end local v5           #ie:Ljava/lang/IndexOutOfBoundsException;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    move-object v6, v7

    .line 692
    .end local v7           #in:Ljava/io/InputStream;
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6       #in:Ljava/io/InputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 698
    if-eqz v6, :cond_2

    .line 699
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 706
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_4
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_3
    move-object v4, v3

    .line 708
    .end local v3           #fingerprint:Ljava/lang/String;
    .restart local v4       #fingerprint:Ljava/lang/String;
    goto :goto_2

    .line 698
    .end local v4           #fingerprint:Ljava/lang/String;
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v1       #eventType:I
    .restart local v3       #fingerprint:Ljava/lang/String;
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    if-eqz v7, :cond_5

    .line 699
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_5
    :goto_5
    move-object v6, v7

    .line 704
    .end local v7           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    goto :goto_4

    .line 693
    .end local v1           #eventType:I
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    .line 694
    .local v2, ex:Ljava/io/IOException;
    :goto_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 698
    if-eqz v6, :cond_2

    .line 699
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    .line 700
    :catch_3
    move-exception v0

    .line 701
    .local v0, e:Ljava/io/IOException;
    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .end local v2           #ex:Ljava/io/IOException;
    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 697
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 698
    :goto_8
    if-eqz v6, :cond_6

    .line 699
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 697
    :cond_6
    :goto_9
    throw v10

    .line 700
    :catch_4
    move-exception v0

    .line 701
    .restart local v0       #e:Ljava/io/IOException;
    const-string v11, "XMLPolicyReader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 700
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v0

    .line 701
    .local v0, e:Ljava/io/IOException;
    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 700
    .end local v0           #e:Ljava/io/IOException;
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v1       #eventType:I
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v0

    .line 701
    .restart local v0       #e:Ljava/io/IOException;
    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 700
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 701
    .restart local v0       #e:Ljava/io/IOException;
    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 697
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #eventType:I
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    goto/16 :goto_8

    .line 693
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    :catch_8
    move-exception v2

    move-object v6, v7

    .end local v7           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    goto/16 :goto_6

    .line 691
    :catch_9
    move-exception v0

    goto/16 :goto_3

    .line 674
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getBoostParameters(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 5
    .parameter "packageName"
    .parameter "isForeground"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 622
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 623
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 624
    .local v0, tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    if-eqz p2, :cond_2

    .line 625
    const-string v2, "ForegroundTrigger"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 626
    const-string v1, "ForegroundTrigger"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 640
    .end local v0           #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 628
    .restart local v0       #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    :cond_1
    const-string v2, "XMLPolicyReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Key Associated with the given package name in Foreground Trigger :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_2
    const-string v2, "AppStatusTrigger"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 633
    const-string v1, "AppStatusTrigger"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0

    .line 635
    :cond_3
    const-string v2, "XMLPolicyReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Key Associated with the given package name in Appstatus Trigger:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getThermistorDataListAP()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListAP:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThermistorDataListCP()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataListCP:Ljava/util/ArrayList;

    return-object v0
.end method

.method public logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 650
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void
.end method

.method public logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 654
    sget-boolean v0, Lcom/android/server/ssrm/PolicyReader;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 655
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    return-void
.end method

.method public readXML()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 90
    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->getDecryptedPolicyPath()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, path:Ljava/lang/String;
    const-string v6, "XMLPolicyReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readXML:: read XML policy from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    .line 94
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 95
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 96
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 97
    .local v1, eventType:I
    :goto_0
    if-eq v1, v9, :cond_16

    .line 98
    packed-switch v1, :pswitch_data_0

    .line 185
    :cond_0
    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TemperatureTable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_7

    .line 104
    :try_start_1
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "pollingTimeOut"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, time:Ljava/lang/String;
    const-string v6, "XMLPolicyReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Thermistor Duration is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 107
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/ssrm/Monitor;->setThermistorTimerDuration(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    .end local v5           #time:Ljava/lang/String;
    :goto_2
    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 187
    .end local v1           #eventType:I
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "XMLPolicyReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readXML:: Exception e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    :try_start_4
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    if-eqz v6, :cond_1

    .line 192
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 197
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    const-string v6, "/data/system/temp.xml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 198
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 199
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 203
    :cond_2
    const-string v6, "XMLPolicyReader"

    const-string v7, "Reading XML -- Done---"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    if-eqz v4, :cond_3

    const-string v6, "/data/system/temp.xml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 206
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 208
    :cond_3
    return-void

    .line 109
    .restart local v1       #eventType:I
    .restart local v5       #time:Ljava/lang/String;
    :cond_4
    const-wide/16 v6, 0x0

    :try_start_5
    invoke-static {v6, v7}, Lcom/android/server/ssrm/Monitor;->setThermistorTimerDuration(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 111
    .end local v5           #time:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 112
    .local v2, ie:Ljava/lang/IndexOutOfBoundsException;
    :try_start_6
    const-string v6, "XMLPolicyReader"

    const-string v7, "Index Out of Bounds Exception Handling for Thermistor Duration"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Lcom/android/server/ssrm/Monitor;->setThermistorTimerDuration(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 190
    .end local v1           #eventType:I
    .end local v2           #ie:Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v6

    .line 191
    :try_start_7
    iget-object v7, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    if-eqz v7, :cond_5

    .line 192
    iget-object v7, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 197
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    const-string v7, "/data/system/temp.xml"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 198
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 199
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 190
    :cond_6
    throw v6

    .line 116
    .restart local v1       #eventType:I
    :cond_7
    :try_start_8
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "step"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 117
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-boolean v7, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    iget-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/ssrm/PolicyReader;->extractStep(Lorg/xmlpull/v1/XmlPullParser;ZZ)V

    goto/16 :goto_1

    .line 118
    :cond_8
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 119
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-boolean v7, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    iget-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/ssrm/PolicyReader;->extractType(Lorg/xmlpull/v1/XmlPullParser;ZZ)V

    goto/16 :goto_1

    .line 120
    :cond_9
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 121
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isException:Z

    .line 122
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mExceptionList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 124
    :cond_a
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ForegroundTrigger"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 125
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    .line 126
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "packageName"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mPackageName:Ljava/lang/String;

    .line 127
    new-instance v3, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;-><init>(Lcom/android/server/ssrm/PolicyReader;)V

    .line 128
    .local v3, mActionAttr:Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setPackageName(Ljava/lang/String;)V

    .line 129
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 131
    .end local v3           #mActionAttr:Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;
    :cond_b
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppStatusTrigger"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 132
    iget-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    if-nez v6, :cond_c

    iget-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    if-nez v6, :cond_c

    .line 133
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    .line 134
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "packageName"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mPackageName:Ljava/lang/String;

    .line 135
    new-instance v3, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    invoke-direct {v3, p0}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;-><init>(Lcom/android/server/ssrm/PolicyReader;)V

    .line 136
    .restart local v3       #mActionAttr:Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setPackageName(Ljava/lang/String;)V

    .line 137
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "statusName"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setStatusName(Ljava/lang/String;)V

    .line 139
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    const-string v8, "value"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 142
    .end local v3           #mActionAttr:Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;
    :cond_c
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v6}, Lcom/android/server/ssrm/PolicyReader;->addExceptionList(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 145
    :cond_d
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "action"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 146
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v6}, Lcom/android/server/ssrm/PolicyReader;->extractScenarioAction(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 147
    :cond_e
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ThermistorObserverAP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 148
    const-string v6, "XMLPolicyReader"

    const-string v7, "ThermistorObserver AP Statring"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    goto/16 :goto_1

    .line 150
    :cond_f
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ThermistorObserverCP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 151
    const-string v6, "XMLPolicyReader"

    const-string v7, "ThermistorObserver CP Statring"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z

    goto/16 :goto_1

    .line 156
    :pswitch_2
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TemperatureTable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 157
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z

    goto/16 :goto_1

    .line 158
    :cond_10
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ForegroundTrigger"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 160
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyReader;->addActionList()V

    .line 161
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    goto/16 :goto_1

    .line 162
    :cond_11
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppStatusTrigger"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 164
    iget-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isException:Z

    if-nez v6, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyReader;->addActionList()V

    .line 166
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    goto/16 :goto_1

    .line 168
    :cond_12
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "step"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 169
    iget-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z

    if-nez v6, :cond_0

    .line 170
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    goto/16 :goto_1

    .line 172
    :cond_13
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 173
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->isException:Z

    .line 174
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    iget-object v7, p0, Lcom/android/server/ssrm/PolicyReader;->mExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setExceptionList(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 176
    :cond_14
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ThermistorObserverAP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 177
    const-string v6, "XMLPolicyReader"

    const-string v7, "ThermistorObserver Ends"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    goto/16 :goto_1

    .line 179
    :cond_15
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ThermistorObserverCP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    const-string v6, "XMLPolicyReader"

    const-string v7, "ThermistorObserver CP Ends"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    .line 194
    .end local v1           #eventType:I
    :catch_2
    move-exception v0

    .line 195
    .local v0, e:Ljava/io/IOException;
    const-string v7, "XMLPolicyReader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readXML:: Exception e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 194
    .local v0, e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 195
    .local v0, e:Ljava/io/IOException;
    const-string v6, "XMLPolicyReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readXML:: Exception e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 191
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #eventType:I
    :cond_16
    :try_start_9
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    if-eqz v6, :cond_17

    .line 192
    iget-object v6, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 197
    :cond_17
    :goto_6
    if-eqz v4, :cond_2

    const-string v6, "/data/system/temp.xml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 198
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 199
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 194
    :catch_4
    move-exception v0

    .line 195
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "XMLPolicyReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readXML:: Exception e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
