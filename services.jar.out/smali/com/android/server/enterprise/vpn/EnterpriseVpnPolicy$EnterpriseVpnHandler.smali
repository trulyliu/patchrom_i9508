.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;
.super Landroid/os/Handler;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseVpnHandler"
.end annotation


# static fields
.field private static final ACTION_IPTABLE_EXECUTE:I = 0x5

.field private static final ACTION_NOTIFY_APP_LAUNCH:I = 0x7

.field private static final ACTION_PACKAGE_ADDED:I = 0x2

.field private static final ACTION_PACKAGE_REMOVED:I = 0x3

.field private static final ACTION_RETRY_VPN_CONNECTION:I = 0x6

.field private static final ACTION_VPN_INITIALIZE_BIND:I = 0x8

.field private static final CONNECTIVITY_ACTION:I = 0x4

.field private static final ENTERPRISE_STATUS_CALLBACK:I = 0x1

.field private static final GET_STATUS_IDLE:I = 0x1

.field private static final VPN_CONNECT_FAILURE:I = 0x5

.field private static final VPN_CONNECT_READY:I = 0x1

.field private static final VPN_CONNECT_SUCCESS:I = 0x4

.field private static final VPN_PROFILE_CONNECTING:I = 0x2

.field private static final VPN_PROFILE_DELETE:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 2162
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 50
    .parameter "msg"

    .prologue
    .line 2182
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> Message received"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 2184
    .local v26, map:Landroid/os/Bundle;
    const/16 v38, -0x1

    .line 2185
    .local v38, uid:I
    const/16 v42, 0x0

    .line 2186
    .local v42, vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    const/16 v28, 0x0

    .local v28, packageName:Ljava/lang/String;
    const/16 v31, 0x0

    .local v31, profileName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 2187
    .local v15, errorString:Ljava/lang/String;
    const/16 v37, -0x1

    .line 2190
    .local v37, status:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    packed-switch v43, :pswitch_data_0

    .line 2600
    :cond_0
    :goto_0
    return-void

    .line 2192
    :pswitch_0
    const-string v43, "status"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v37

    .line 2193
    const-string v43, "profileName"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2194
    const-string v43, "errorString"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2195
    if-nez v15, :cond_1

    .line 2196
    const-string v15, "Empty"

    .line 2198
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ENTERPRISE_STATUS_CALLBACK >> Error String Value is"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    const-string v43, "state"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v36

    .line 2200
    .local v36, state:I
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ENTERPRISE_STATUS_CALLBACK >> { state : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", status: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " , profile:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "}"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    const/16 v16, 0x0

    .line 2203
    .local v16, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    .line 2204
    .local v41, vpnEntry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    if-eqz v41, :cond_15

    .line 2205
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v23

    .line 2206
    .local v23, list:Ljava/util/ArrayList;
    if-eqz v23, :cond_0

    .line 2207
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 2208
    .local v5, array:[Ljava/lang/Object;
    array-length v0, v5

    move/from16 v22, v0

    .line 2209
    .local v22, length:I
    if-nez v36, :cond_10

    .line 2210
    packed-switch v37, :pswitch_data_1

    :pswitch_1
    goto/16 :goto_0

    .line 2263
    :pswitch_2
    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 2264
    aget-object v42, v5, v16

    .end local v42           #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2265
    .restart local v42       #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_2

    .line 2266
    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2267
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v38

    .line 2268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move/from16 v1, v38

    move-object/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    .line 2271
    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2272
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2310()I

    .line 2273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2300()I

    move-result v44

    const/16 v45, 0x0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->UpdateFINACKIPtableRule(IZ)V
    invoke-static/range {v43 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;IZ)V

    .line 2263
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 2212
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getRunningPackages()Ljava/util/List;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/List;

    move-result-object v35

    .line 2213
    .local v35, runningPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 2214
    aget-object v42, v5, v16

    .end local v42           #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2216
    .restart local v42       #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v43

    if-lez v43, :cond_3

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v43

    if-lez v43, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v35

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;Ljava/util/List;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/util/List;)Z

    move-result v43

    if-eqz v43, :cond_4

    .line 2220
    :cond_3
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_4

    .line 2221
    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2222
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2223
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v38

    .line 2224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move/from16 v1, v38

    move-object/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move/from16 v2, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    .line 2227
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2308()I

    .line 2228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2300()I

    move-result v44

    const/16 v45, 0x1

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->UpdateFINACKIPtableRule(IZ)V
    invoke-static/range {v43 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;IZ)V

    .line 2213
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 2232
    :cond_5
    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    .line 2235
    .local v30, profileErrorMessageSuccess:Z
    if-eqz v30, :cond_0

    .line 2236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v43

    if-lez v43, :cond_6

    .line 2238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2240
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2245
    .end local v30           #profileErrorMessageSuccess:Z
    .end local v35           #runningPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 2246
    aget-object v42, v5, v16

    .end local v42           #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2247
    .restart local v42       #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_7

    .line 2248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static/range {v43 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    .line 2251
    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2252
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2310()I

    .line 2253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2300()I

    move-result v44

    const/16 v45, 0x0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->UpdateFINACKIPtableRule(IZ)V
    invoke-static/range {v43 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;IZ)V

    .line 2255
    :cond_7
    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2245
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 2257
    :cond_8
    const/16 v43, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2260
    :cond_9
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2276
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    const/16 v43, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2278
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2279
    :cond_b
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2285
    :pswitch_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "Handling VPN CONNECTING state on Network Change"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const-string v43, "Network Changed"

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_e

    .line 2287
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "Handling VPN CONNECTING state on Network Change"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 2289
    aget-object v42, v5, v16

    .end local v42           #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2290
    .restart local v42       #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_c

    .line 2291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static/range {v43 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    .line 2294
    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2296
    :cond_c
    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2288
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 2298
    :cond_d
    const/16 v43, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    :cond_e
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2302
    :cond_f
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2305
    :pswitch_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "The Start Connection callback for removeEnterpriseVpnConnection is recieved and its state is  "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "Status is "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2309
    :cond_10
    sparse-switch v37, :sswitch_data_0

    goto/16 :goto_0

    .line 2313
    :goto_5
    :sswitch_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ENTERPRISE_STATUS_CALLBACK >> VPN disconnect successfully"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    .line 2315
    aget-object v42, v5, v16

    .end local v42           #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2316
    .restart local v42       #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_11

    .line 2317
    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2318
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v38

    .line 2319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move/from16 v1, v38

    move-object/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v44

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    .line 2322
    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2323
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2310()I

    .line 2324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2300()I

    move-result v44

    const/16 v45, 0x0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->UpdateFINACKIPtableRule(IZ)V
    invoke-static/range {v43 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;IZ)V

    .line 2314
    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 2311
    :sswitch_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ENTERPRISE_STATUS_CALLBACK >> VPN disconnect failure. damn :( :"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2327
    :cond_12
    const/16 v43, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    .line 2329
    .restart local v30       #profileErrorMessageSuccess:Z
    if-eqz v30, :cond_13

    .line 2330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v43

    if-lez v43, :cond_14

    .line 2332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2337
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runAllVpnService()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2334
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto :goto_7

    .line 2342
    .end local v5           #array:[Ljava/lang/Object;
    .end local v22           #length:I
    .end local v23           #list:Ljava/util/ArrayList;
    .end local v30           #profileErrorMessageSuccess:Z
    :cond_15
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ENTERPRISE_STATUS_CALLBACK >> ProfileNameVpnEntry returned null in handleMessage"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2347
    .end local v16           #i:I
    .end local v36           #state:I
    .end local v41           #vpnEntry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    :pswitch_7
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> Handle MSG ACTION_PACKAGE_ADDED"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    const-string v43, "uid"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v38

    .line 2349
    const-string v43, "package"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2350
    if-eqz v28, :cond_0

    .line 2351
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_16

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> PackageName and UID : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    :cond_16
    const-string v43, "com.mocana.vpn.android"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_17

    .line 2354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindMocanaVpnInterface()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2355
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    move/from16 v2, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->updatePackageData(Ljava/lang/String;I)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)Z

    move-result v43

    if-eqz v43, :cond_0

    .line 2356
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> Package found in DB with rule proceed with logic"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getVpnObjectFromDB(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    move-result-object v40

    .line 2359
    .local v40, vpn:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    if-eqz v40, :cond_0

    .line 2360
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v31

    .line 2361
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v10

    .line 2362
    .local v10, containerId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addToHashMap(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;)V

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v43

    if-eqz v43, :cond_1e

    if-lez v10, :cond_18

    if-lez v10, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_1e

    .line 2366
    :cond_18
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> Network is connected via isNetworkConnected()"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v43, v0

    if-eqz v43, :cond_0

    .line 2369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    const-string v44, "key_vpn"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v34

    .line 2370
    .local v34, responseData:Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v39, 0x0

    .line 2371
    .local v39, value:Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v43

    if-nez v43, :cond_19

    .line 2372
    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v39

    .end local v39           #value:Ljava/lang/String;
    check-cast v39, Ljava/lang/String;

    .line 2375
    .restart local v39       #value:Ljava/lang/String;
    :cond_19
    if-eqz v39, :cond_0

    .line 2376
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_1a

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> Callback state: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    :cond_1a
    const-string v43, "CONNECTED"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1c

    .line 2378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    .line 2379
    .restart local v41       #vpnEntry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    if-eqz v41, :cond_1b

    .line 2380
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v19

    .line 2381
    .local v19, interfaceName:Ljava/lang/String;
    if-eqz v19, :cond_0

    .line 2382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move/from16 v1, v38

    move-object/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2384
    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2385
    const/16 v43, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2407
    .end local v19           #interfaceName:Ljava/lang/String;
    .end local v34           #responseData:Landroid/app/enterprise/EnterpriseResponseData;
    .end local v39           #value:Ljava/lang/String;
    .end local v41           #vpnEntry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    :catch_0
    move-exception v13

    .line 2408
    .local v13, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> Exception at mocana:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2389
    .end local v13           #e:Landroid/os/RemoteException;
    .restart local v34       #responseData:Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v39       #value:Ljava/lang/String;
    .restart local v41       #vpnEntry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    :cond_1b
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "Profilename not found in the map"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2391
    .end local v41           #vpnEntry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    :cond_1c
    const-string v43, "CONNECTING"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_0

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v43, v0

    new-instance v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-direct/range {v44 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v45

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move-object/from16 v2, v44

    move/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v43

    if-nez v43, :cond_0

    .line 2394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    const-string v44, "key_vpn"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v34

    .line 2395
    const/16 v39, 0x0

    .line 2396
    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v43

    if-nez v43, :cond_1d

    .line 2397
    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v39

    .end local v39           #value:Ljava/lang/String;
    check-cast v39, Ljava/lang/String;

    .line 2398
    .restart local v39       #value:Ljava/lang/String;
    if-eqz v39, :cond_1d

    .line 2399
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move-object/from16 v2, v39

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> Cannot start vpn, mocana returned error"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2411
    .end local v34           #responseData:Landroid/app/enterprise/EnterpriseResponseData;
    .end local v39           #value:Ljava/lang/String;
    :cond_1e
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_PACKAGE_ADDED >> Network is not connected via isNetworkConnected()"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2418
    .end local v10           #containerId:I
    .end local v40           #vpn:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    :pswitch_8
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> Handle MSG ACTION_PACKAGE_REMOVED"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    const-string v43, "package"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    .end local v42           #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2422
    .restart local v42       #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    if-eqz v42, :cond_0

    .line 2423
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v31

    .line 2424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->deleteUIDFromPackageData(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_0

    .line 2425
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> Handle MSG ACTION_PACKAGE_REMOVED >> Remove from iptable/hashmap"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeFromHashMapByPackageName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2431
    :pswitch_9
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> CONNECTIVITY_ACTION >> Handle MSG CONNECTIVITY_ACTION"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    const-string v43, "status"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    .line 2433
    .local v27, networkState:Z
    const/16 v43, 0x1

    move/from16 v0, v27

    move/from16 v1, v43

    if-ne v0, v1, :cond_1f

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runAllVpnService()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2438
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto/16 :goto_0

    .line 2443
    .end local v27           #networkState:Z
    :pswitch_a
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_IPTABLE_EXECUTE >> Handle MSG ACTION_IPTABLE_EXECUTE"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    const-string v43, "command"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2445
    .local v6, command:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 2446
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2447
    .local v9, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v43, " "

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2448
    .local v8, commandArray:[Ljava/lang/String;
    move-object v4, v8

    .local v4, arr$:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_8
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_20

    aget-object v7, v4, v17

    .line 2449
    .local v7, commandArg:Ljava/lang/String;
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2448
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 2452
    .end local v7           #commandArg:Ljava/lang/String;
    :cond_20
    :try_start_2
    new-instance v43, Ljava/lang/ProcessBuilder;

    const/16 v44, 0x0

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-direct/range {v43 .. v44}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v43

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v29

    .line 2454
    .local v29, process:Ljava/lang/Process;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2455
    .end local v29           #process:Ljava/lang/Process;
    :catch_1
    move-exception v13

    .line 2456
    .local v13, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_IPTABLE_EXECUTE >> IOException iptables command failed "

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2457
    .end local v13           #e:Ljava/io/IOException;
    :catch_2
    move-exception v13

    .line 2458
    .local v13, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_IPTABLE_EXECUTE >> InterruptedException iptables command failed "

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2463
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #command:Ljava/lang/String;
    .end local v8           #commandArray:[Ljava/lang/String;
    .end local v9           #commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #e:Ljava/lang/InterruptedException;
    .end local v17           #i$:I
    .end local v21           #len$:I
    :pswitch_b
    const-string v43, "uid"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v38

    .line 2464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v43

    if-eqz v43, :cond_0

    .line 2465
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> notifyContainerAppLaunch network on"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v43

    const-string v44, "EnterpriseVpn"

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "UID_APP"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-string v49, "profileName"

    aput-object v49, v47, v48

    const/16 v48, 0x1

    const-string v49, "applicationInfo"

    aput-object v49, v47, v48

    invoke-virtual/range {v43 .. v47}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 2476
    .local v12, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v43

    if-lez v43, :cond_0

    .line 2477
    const/16 v43, 0x0

    move/from16 v0, v43

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    .line 2478
    .local v11, cv:Landroid/content/ContentValues;
    const-string v43, "profileName"

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2479
    const-string v43, "applicationInfo"

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2480
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_21

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> packageName : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " profileName :"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "interface: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v43, v0

    if-eqz v43, :cond_0

    .line 2484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    const-string v44, "key_vpn"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v33

    .line 2485
    .local v33, response:Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v39, 0x0

    .line 2486
    .restart local v39       #value:Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v43

    if-nez v43, :cond_22

    .line 2487
    invoke-virtual/range {v33 .. v33}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v39

    .end local v39           #value:Ljava/lang/String;
    check-cast v39, Ljava/lang/String;

    .line 2489
    .restart local v39       #value:Ljava/lang/String;
    :cond_22
    if-eqz v39, :cond_0

    .line 2490
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Value is not null and going inside start connection"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    .line 2493
    .local v14, entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_23

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Callback state: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    :cond_23
    const-string v43, "IDLE"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_24

    const-string v43, "FAILED"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_26

    .line 2495
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v43, v0

    new-instance v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-direct/range {v44 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v45

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move-object/from16 v2, v44

    move/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v43

    if-nez v43, :cond_0

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    const-string v44, "key_vpn"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v33

    .line 2498
    const/16 v39, 0x0

    .line 2499
    invoke-virtual/range {v33 .. v33}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v43

    if-nez v43, :cond_25

    .line 2500
    invoke-virtual/range {v33 .. v33}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v39

    .end local v39           #value:Ljava/lang/String;
    check-cast v39, Ljava/lang/String;

    .line 2502
    .restart local v39       #value:Ljava/lang/String;
    if-eqz v39, :cond_25

    .line 2503
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_25

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    move-object/from16 v2, v39

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Cannot start vpn, mocana returned error"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 2526
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v14           #entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .end local v33           #response:Landroid/app/enterprise/EnterpriseResponseData;
    .end local v39           #value:Ljava/lang/String;
    :catch_3
    move-exception v13

    .line 2528
    .local v13, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> Exceptionin notify: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2509
    .end local v13           #e:Landroid/os/RemoteException;
    .restart local v11       #cv:Landroid/content/ContentValues;
    .restart local v12       #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v14       #entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .restart local v33       #response:Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v39       #value:Ljava/lang/String;
    :cond_26
    :try_start_4
    const-string v43, "CONNECTED"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_0

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v43

    if-eqz v43, :cond_0

    .line 2510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2511
    .restart local v40       #vpn:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    if-eqz v40, :cond_0

    .line 2512
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v43

    if-nez v43, :cond_27

    .line 2513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move/from16 v1, v38

    move-object/from16 v2, v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2515
    const/16 v43, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2516
    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v38

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2519
    :cond_27
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v43

    if-eqz v43, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Already running application ignoring:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 2533
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v14           #entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .end local v33           #response:Landroid/app/enterprise/EnterpriseResponseData;
    .end local v39           #value:Ljava/lang/String;
    .end local v40           #vpn:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    :pswitch_c
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Handle MSG ACTION_RETRY_VPN_CONNECTION"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v43

    if-eqz v43, :cond_32

    .line 2536
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Network is connected via isNetworkConnected()"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v43, v0

    if-eqz v43, :cond_0

    .line 2539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_28
    :goto_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_31

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 2540
    .local v20, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    .line 2541
    .restart local v14       #entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v24

    .line 2542
    .local v24, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;>;"
    const/16 v32, 0x1

    .line 2545
    .local v32, removeProfileError:Z
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_29
    :goto_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_2b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2546
    .local v25, localState:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v43

    if-lez v43, :cond_2a

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v43

    if-lez v43, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v44

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;)Z
    invoke-static/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_29

    .line 2549
    :cond_2a
    const/16 v32, 0x0

    goto :goto_a

    .line 2552
    .end local v25           #localState:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    :cond_2b
    if-eqz v32, :cond_2c

    .line 2553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    .line 2584
    .end local v14           #entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #key:Ljava/lang/String;
    .end local v24           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;>;"
    .end local v32           #removeProfileError:Z
    :catch_4
    move-exception v13

    .line 2585
    .restart local v13       #e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Exception at mocana:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2555
    .end local v13           #e:Landroid/os/RemoteException;
    .restart local v14       #entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v20       #key:Ljava/lang/String;
    .restart local v24       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;>;"
    .restart local v32       #removeProfileError:Z
    :cond_2c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    const-string v44, "key_vpn"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v34

    .line 2556
    .restart local v34       #responseData:Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v39, 0x0

    .line 2557
    .restart local v39       #value:Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v43

    if-nez v43, :cond_2d

    .line 2558
    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v39

    .end local v39           #value:Ljava/lang/String;
    check-cast v39, Ljava/lang/String;

    .line 2561
    .restart local v39       #value:Ljava/lang/String;
    :cond_2d
    if-eqz v39, :cond_28

    .line 2562
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Callback state: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    const-string v43, "IDLE"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_2e

    const-string v43, "FAILED"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_28

    .line 2564
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v43

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v43, v0

    new-instance v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-direct/range {v44 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v45

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    move-object/from16 v2, v44

    move/from16 v3, v45

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v43

    if-nez v43, :cond_30

    .line 2566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    const-string v44, "key_vpn"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v34

    .line 2568
    const/16 v39, 0x0

    .line 2569
    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v43

    if-nez v43, :cond_2f

    .line 2570
    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v39

    .end local v39           #value:Ljava/lang/String;
    check-cast v39, Ljava/lang/String;

    .line 2571
    .restart local v39       #value:Ljava/lang/String;
    if-eqz v39, :cond_2f

    .line 2572
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "EnterpriseVpnHandler >> handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    :cond_2f
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Cannot start vpn, mocana returned error"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2576
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 2582
    .end local v14           #entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #key:Ljava/lang/String;
    .end local v24           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;>;"
    .end local v32           #removeProfileError:Z
    .end local v34           #responseData:Landroid/app/enterprise/EnterpriseResponseData;
    .end local v39           #value:Ljava/lang/String;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 2588
    :cond_32
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Network is not connected via isNetworkConnected()"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2592
    :pswitch_d
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v43

    const-string v44, "EnterpriseVpnHandler >> handleMessage >> ACTION_VPN_INITIALIZE_BIND >> Handle MSG ACTION_VPN_INITIALIZE_BIND"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindMocanaVpnInterface()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->initializeHashtable()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v43, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkPackagesOnStartup()V
    invoke-static/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_d
    .end packed-switch

    .line 2210
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 2309
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
