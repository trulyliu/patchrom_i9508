.class public Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
.super Landroid/app/enterprise/IVpnInfoPolicy$Stub;
.source "VpnInfoPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    }
.end annotation


# static fields
.field private static final DNS_SERVERS:I = 0x0

.field private static final FORWARD_ROUTES:I = 0x2

.field private static final SEARCH_DOMAINS:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "ctx"

    .prologue
    const/4 v8, 0x0

    .line 140
    invoke-direct {p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;-><init>()V

    .line 102
    const-string v6, "VpnPolicy"

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->TAG:Ljava/lang/String;

    .line 104
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 108
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 110
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 112
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 142
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    .line 143
    new-instance v6, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 144
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 145
    .local v5, vpnProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    const-string v6, "setup_wizard_has_run"

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 147
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "VPN"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 150
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 151
    .local v4, p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    const-string v6, "VpnID"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 155
    :cond_2
    iget-object v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 156
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 157
    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    .line 159
    :cond_3
    iget-object v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 160
    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    goto :goto_0

    .line 166
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :cond_4
    return-void
.end method

.method private addProfile(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    .locals 2
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1372
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1376
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private checkDuplicateName(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;I)Z
    .locals 6
    .parameter "p"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 1349
    if-lez p2, :cond_1

    .line 1350
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1351
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1352
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1353
    iget-object v5, p1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1354
    const/4 v3, 0x1

    .line 1364
    .end local v1           #i:I
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_1
    return v3

    .line 1352
    .restart local v1       #i:I
    .restart local v2       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    move v3, v4

    .line 1359
    goto :goto_1

    .line 1361
    :catch_0
    move-exception v0

    .line 1362
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 1364
    goto :goto_1
.end method

.method private declared-synchronized disconnect()V
    .locals 6

    .prologue
    .line 1503
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v3, :cond_0

    .line 1504
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 1506
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v3, :cond_1

    .line 1507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1508
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    const-string v4, "[Legacy VPN]"

    const-string v5, "[Legacy VPN]"

    invoke-interface {v3, v4, v5}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1509
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1514
    .end local v1           #token:J
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1511
    :catch_0
    move-exception v0

    .line 1512
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1503
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    return-void
.end method

.method private enforceVpnPermission()I
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_VPN"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getProfileIndexFromName(Ljava/lang/String;)I
    .locals 4
    .parameter "Name"

    .prologue
    .line 1328
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1329
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1330
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1331
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1339
    .end local v1           #i:I
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_1
    return v1

    .line 1330
    .restart local v1       #i:I
    .restart local v2       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1336
    .end local v1           #i:I
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 1337
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1339
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getProfileProperty(Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .parameter "profileName"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1173
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1175
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v8

    .line 1176
    .local v8, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 1177
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 1178
    .local v7, p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v9, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1179
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    packed-switch p2, :pswitch_data_0

    .line 1202
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v8           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    :goto_0
    return-object v6

    .line 1182
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v6       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v8       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :pswitch_0
    iget-object v9, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    .line 1183
    .local v2, lDnsServer:Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1187
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #lDnsServer:Ljava/lang/String;
    .end local v5           #len$:I
    .local v1, i$:Ljava/util/Iterator;
    :pswitch_1
    iget-object v9, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v5, :cond_1

    aget-object v4, v0, v1

    .line 1188
    .local v4, lSearchDomain:Ljava/lang/String;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1192
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #lSearchDomain:Ljava/lang/String;
    .end local v5           #len$:I
    .local v1, i$:Ljava/util/Iterator;
    :pswitch_2
    iget-object v9, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v5, :cond_1

    aget-object v3, v0, v1

    .line 1193
    .local v3, lRoutes:Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1202
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #lRoutes:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v8           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isCredentialsLocked()Z
    .locals 2

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeProfileFromStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    .locals 7
    .parameter "p"

    .prologue
    .line 1435
    const/4 v4, 0x1

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "VpnID"

    aput-object v5, v0, v4

    .line 1438
    .local v0, Column:[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v5, v1, v4

    .line 1441
    .local v1, Value:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "VPN"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1442
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1443
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1444
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    .end local v0           #Column:[Ljava/lang/String;
    .end local v1           #Value:[Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1446
    :catch_0
    move-exception v2

    .line 1447
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    .locals 5
    .parameter "index"
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1454
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 1455
    .local v1, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1456
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 1457
    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 1458
    .local v0, oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v0, :cond_0

    .line 1459
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)Z

    .line 1462
    .end local v0           #oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :cond_0
    return-void
.end method

.method private retrieveVpnListFromStorage()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .local v0, ProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v7

    if-nez v7, :cond_1

    .line 920
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 921
    .local v4, keys:[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v7, v4

    if-lez v7, :cond_1

    .line 922
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v1, v2

    .line 923
    .local v3, key:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 924
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VPN_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    move-result-object v6

    .line 925
    .local v6, profile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v6, :cond_0

    .line 926
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    .end local v6           #profile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 931
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #keys:[Ljava/lang/String;
    .end local v5           #len$:I
    :cond_1
    return-object v0
.end method

.method private saveProfileToStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)Z
    .locals 12
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1404
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VPN_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->encode()[B

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1405
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1406
    .local v3, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1407
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v5

    .line 1409
    .local v5, uid:I
    iget-object v9, p1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1410
    .local v6, username:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1411
    .local v4, pwd:Ljava/lang/String;
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 1414
    .local v0, columns:[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 1417
    .local v7, values:[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1418
    .local v1, cv:Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1419
    const-string v9, "VpnID"

    iget-object v10, p1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    const-string v9, "UsrName"

    invoke-virtual {v1, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-string v9, "UsrPwd"

    invoke-virtual {v1, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1427
    .end local v0           #columns:[Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pwd:Ljava/lang/String;
    .end local v5           #uid:I
    .end local v6           #username:Ljava/lang/String;
    .end local v7           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 1424
    :catch_0
    move-exception v2

    .line 1425
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setProfileId()J
    .locals 7

    .prologue
    .line 1383
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1384
    .local v3, millis:J
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1385
    .local v2, keys:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 1386
    aget-object v5, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 1387
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 1388
    const/4 v1, 0x0

    .line 1385
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1392
    .end local v1           #i:I
    .end local v2           #keys:[Ljava/lang/String;
    .end local v3           #millis:J
    :catch_0
    move-exception v0

    .line 1393
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1395
    const-wide/16 v3, -0x1

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-wide v3
.end method

.method private setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 11
    .parameter "profileName"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, value:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1118
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    if-nez p2, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return v8

    .line 1124
    :cond_1
    const-string v1, ""

    .line 1125
    .local v1, endListAddress:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1126
    .local v2, endListAddressBuilder:Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1127
    .local v5, listAddresses:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1130
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1133
    .end local v5           #listAddresses:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1134
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v9, :cond_3

    .line 1135
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1137
    :cond_3
    if-nez p3, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    invoke-direct {p0, v1, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1140
    :cond_4
    const/4 v10, 0x2

    if-ne p3, v10, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1144
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v4

    .line 1145
    .local v4, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v7

    .line 1146
    .local v7, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 1147
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 1148
    .local v6, profile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v6, :cond_0

    .line 1149
    packed-switch p3, :pswitch_data_0

    .line 1161
    :goto_2
    :try_start_0
    invoke-direct {p0, v4, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 1166
    goto :goto_0

    .line 1151
    :pswitch_0
    iput-object v1, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    goto :goto_2

    .line 1154
    :pswitch_1
    iput-object v1, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    goto :goto_2

    .line 1157
    :pswitch_2
    iput-object v1, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    goto :goto_2

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    .local v0, e:Ljava/io/IOException;
    const-string v9, "VpnPolicy"

    const-string v10, "VpnInfoPolicy.setProfileProperty() - Error to save profile !"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized startVpnService()V
    .locals 2

    .prologue
    .line 1493
    monitor-enter p0

    :try_start_0
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    :goto_0
    monitor-exit p0

    return-void

    .line 1495
    :catch_0
    move-exception v0

    .line 1496
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1493
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .parameter "addresses"
    .parameter "cidr"

    .prologue
    .line 1207
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 1208
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1207
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1212
    :cond_1
    const/16 v8, 0x20

    .line 1213
    .local v8, prefixLength:I
    if-eqz p2, :cond_2

    .line 1214
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 1215
    .local v7, parts:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 1216
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1218
    .end local v7           #parts:[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 1219
    .local v2, bytes:[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 1221
    .local v5, integer:I
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-ltz v8, :cond_3

    const/16 v9, 0x20

    if-gt v8, v9, :cond_3

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    shl-int v9, v5, v8

    if-eqz v9, :cond_0

    .line 1223
    :cond_3
    const/4 v9, 0x0

    .line 1229
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bytes:[B
    .end local v4           #i$:I
    .end local v5           #integer:I
    .end local v6           #len$:I
    .end local v8           #prefixLength:I
    :goto_1
    return v9

    .line 1226
    :catch_0
    move-exception v3

    .line 1227
    .local v3, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 1229
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public allowOnlySecureConnections(Z)Z
    .locals 7
    .parameter "enable"

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v3

    .line 1276
    .local v3, uid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1277
    .local v2, profileList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1278
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 1279
    .local v1, profile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PPTP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CONNECTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1281
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    goto :goto_0

    .line 1286
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #profile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "allowOnlySecureVPN"

    invoke-virtual {v4, v3, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    return v4
.end method

.method public checkRacoonSecurity([Ljava/lang/String;)Z
    .locals 5
    .parameter "racoon"

    .prologue
    const/4 v4, 0x2

    .line 1298
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1299
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v0, i:Landroid/content/Intent;
    const/4 v1, 0x1

    .line 1301
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isOnlySecureConnectionsAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1302
    if-eqz p1, :cond_2

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    aget-object v2, p1, v4

    if-eqz v2, :cond_2

    aget-object v2, p1, v4

    const-string v3, "udprsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p1, v4

    const-string v3, "xauthrsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p1, v4

    const-string v3, "hybridrsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p1, v4

    const-string v3, "udppsk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p1, v4

    const-string v3, "xauthpsk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1309
    :cond_0
    const/4 v1, 0x1

    .line 1313
    :goto_0
    if-nez v1, :cond_1

    .line 1314
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    const v4, 0x1040246

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1315
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1318
    :cond_1
    return v1

    .line 1311
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized createProfile(Landroid/app/enterprise/VpnAdminProfile;)Z
    .locals 14
    .parameter "adminProfile"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 939
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v10, :cond_0

    .line 944
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 946
    :cond_0
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v10, :cond_1

    .line 947
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 948
    .local v6, token:J
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v10}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 949
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 950
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v10, v10, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v10, v12, :cond_1

    .line 951
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 955
    .end local v6           #token:J
    :cond_1
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xe

    if-ge v10, v12, :cond_2

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v12, 0x40

    if-gt v10, v12, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-nez v10, :cond_4

    .line 1084
    :cond_3
    :goto_0
    monitor-exit p0

    return v9

    .line 964
    :cond_4
    :try_start_2
    new-instance v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;-><init>(Ljava/lang/String;)V

    .line 965
    .local v8, vpnProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v8, :cond_3

    .line 966
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    .line 967
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;

    .line 968
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    move v10, v11

    :goto_1
    iput-boolean v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 970
    const-string v0, ""

    .line 971
    .local v0, addresses:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 972
    .local v1, addressesBuilder:Ljava/lang/StringBuilder;
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->dnsServers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 973
    .local v5, listAddresses:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 976
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1077
    .end local v0           #addresses:Ljava/lang/String;
    .end local v1           #addressesBuilder:Ljava/lang/StringBuilder;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #listAddresses:Ljava/lang/String;
    .end local v8           #vpnProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :catch_0
    move-exception v2

    .line 1078
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 939
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .restart local v8       #vpnProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :cond_5
    move v10, v9

    .line 968
    goto :goto_1

    .line 979
    .restart local v0       #addresses:Ljava/lang/String;
    .restart local v1       #addressesBuilder:Ljava/lang/StringBuilder;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 980
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_7

    .line 981
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 983
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    const/4 v10, 0x0

    invoke-direct {p0, v0, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 986
    :cond_8
    iput-object v0, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    .line 988
    const-string v0, ""

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #addressesBuilder:Ljava/lang/StringBuilder;
    const-string v10, ""

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 990
    .restart local v1       #addressesBuilder:Ljava/lang/StringBuilder;
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->forwardRoutes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 991
    .restart local v5       #listAddresses:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 994
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 1080
    .end local v0           #addresses:Ljava/lang/String;
    .end local v1           #addressesBuilder:Ljava/lang/StringBuilder;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #listAddresses:Ljava/lang/String;
    .end local v8           #vpnProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :catch_1
    move-exception v2

    .line 1081
    .local v2, e:Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 997
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #addresses:Ljava/lang/String;
    .restart local v1       #addressesBuilder:Ljava/lang/StringBuilder;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v8       #vpnProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :cond_9
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 998
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_a

    .line 999
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1001
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_b

    const/4 v10, 0x1

    invoke-direct {p0, v0, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1004
    :cond_b
    iput-object v0, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    .line 1006
    const-string v0, ""

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #addressesBuilder:Ljava/lang/StringBuilder;
    const-string v10, ""

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1008
    .restart local v1       #addressesBuilder:Ljava/lang/StringBuilder;
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->searchDomains:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1009
    .restart local v5       #listAddresses:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1012
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1015
    .end local v5           #listAddresses:Ljava/lang/String;
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_d

    .line 1017
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1019
    :cond_d
    iput-object v0, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    .line 1021
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 1022
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    .line 1024
    :cond_e
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    if-eqz v10, :cond_f

    .line 1025
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    .line 1028
    :cond_f
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "PPTP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1029
    const/4 v10, 0x0

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    .line 1030
    iget-boolean v10, p1, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    iput-boolean v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->mppe:Z

    .line 1072
    :goto_5
    iget-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v4

    .line 1073
    .local v4, index:I
    if-gez v4, :cond_3

    invoke-direct {p0, v8, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1074
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)Z

    move-result v9

    goto/16 :goto_0

    .line 1031
    .end local v4           #index:I
    :cond_10
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "L2TP_IPSEC_PSK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1032
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1035
    const/4 v10, 0x1

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    .line 1036
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1037
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_5

    .line 1039
    :cond_11
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "L2TP_IPSEC"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1040
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1043
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1044
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1045
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    goto :goto_5

    .line 1049
    :cond_12
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "IPSEC_HYBRID_RSA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1050
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1051
    const/4 v10, 0x5

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    goto :goto_5

    .line 1052
    :cond_13
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "IPSEC_XAUTH_PSK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1053
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1056
    const/4 v10, 0x3

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    .line 1057
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1058
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_5

    .line 1060
    :cond_14
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "IPSEC_XAUTH_RSA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1061
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1064
    const/4 v10, 0x4

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    .line 1065
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1066
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5
.end method

.method public declared-synchronized deleteProfile(Ljava/lang/String;)Z
    .locals 8
    .parameter "name"

    .prologue
    .line 673
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 677
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 678
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 679
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 680
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 681
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 682
    .local v2, p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v6, :cond_0

    .line 683
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 685
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v6, :cond_2

    .line 686
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 687
    .local v4, token:J
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 688
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 689
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v6, v6, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 690
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 692
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->removeProfileFromStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 693
    const/4 v6, 0x1

    .line 702
    .end local v1           #i:I
    .end local v2           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    .end local v4           #token:J
    :goto_1
    monitor-exit p0

    return v6

    .line 679
    .restart local v1       #i:I
    .restart local v3       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
    .end local v1           #i:I
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 700
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 702
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 673
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public disconnectActiveVpnConnections()V
    .locals 0

    .prologue
    .line 1621
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 1622
    return-void
.end method

.method public declared-synchronized getCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "profileName"

    .prologue
    const/4 v4, 0x0

    .line 629
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, certificate:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 642
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 634
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 635
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 636
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 637
    .local v2, p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v5, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 638
    iget-object v4, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 629
    .end local v0           #certificate:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDnsDomains(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "profileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1106
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "profileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1098
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForwardRoutes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "profileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1114
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerName"

    .prologue
    const/4 v3, 0x0

    .line 430
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 442
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 434
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 435
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 436
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 437
    .local v1, p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 438
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 430
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getIpSecIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    .line 1256
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1258
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1259
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1260
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 1261
    .local v1, p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1262
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1267
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    const/4 v3, 0x0

    .line 765
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 766
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 778
    :goto_0
    return-object v2

    .line 769
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 770
    .local v1, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 771
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 772
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 774
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;

    goto :goto_0

    .line 771
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_2
    move-object v2, v3

    .line 778
    goto :goto_0
.end method

.method public declared-synchronized getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerId"

    .prologue
    const/4 v3, 0x0

    .line 392
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    if-nez p1, :cond_1

    .line 404
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 396
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 397
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 398
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 399
    .local v1, p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 400
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 392
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getPresharedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "providerName"

    .prologue
    .line 585
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 587
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 588
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 589
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 590
    .local v1, p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 591
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 585
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getServerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerName"

    .prologue
    const/4 v3, 0x0

    .line 411
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 423
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 415
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 416
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 417
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 418
    .local v1, p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 419
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 411
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getState(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "providerName"

    .prologue
    const/4 v4, 0x0

    .line 449
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    if-nez p1, :cond_0

    .line 489
    :goto_0
    monitor-exit p0

    return-object v4

    .line 454
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v5, :cond_1

    .line 455
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 457
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v5, :cond_4

    .line 458
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 459
    .local v2, token:J
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 460
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 461
    const/4 v1, 0x0

    .line 462
    .local v1, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v5, :cond_2

    .line 463
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v5, v5, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 466
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v5, v5, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    packed-switch v5, :pswitch_data_0

    .line 480
    const-string v4, "IDLE"

    goto :goto_0

    .line 468
    :pswitch_0
    const-string v4, "DISCONNECTED"

    goto :goto_0

    .line 470
    :pswitch_1
    const-string v4, "INITIALIZING"

    goto :goto_0

    .line 472
    :pswitch_2
    const-string v4, "CONNECTING"

    goto :goto_0

    .line 474
    :pswitch_3
    const-string v4, "CONNECTED"

    goto :goto_0

    .line 476
    :pswitch_4
    const-string v4, "TIMEOUT"

    goto :goto_0

    .line 478
    :pswitch_5
    const-string v4, "FAILED"

    goto :goto_0

    .line 483
    :cond_3
    const-string v4, "IDLE"

    goto :goto_0

    .line 486
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #token:J
    :cond_4
    const-string v4, "IDLE"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 449
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 466
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 364
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 365
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 366
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 367
    .local v1, p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    iget v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0
    const-string v3, "PPTP"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :goto_1
    monitor-exit p0

    return-object v3

    .line 372
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :pswitch_1
    :try_start_1
    const-string v3, "L2TP_IPSEC_PSK"

    goto :goto_1

    .line 374
    :pswitch_2
    const-string v3, "L2TP_IPSEC"

    goto :goto_1

    .line 376
    :pswitch_3
    const-string v3, "IPSEC_XAUTH_PSK"

    goto :goto_1

    .line 378
    :pswitch_4
    const-string v3, "IPSEC_XAUTH_RSA"

    goto :goto_1

    .line 380
    :pswitch_5
    const-string v3, "IPSEC_HYBRID_RSA"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 385
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 363
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 368
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized getUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "profileName"

    .prologue
    const/4 v3, 0x0

    .line 709
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 710
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 721
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 713
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 714
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 715
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 716
    .local v1, p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 717
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 709
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerName"

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v3

    .line 498
    .local v3, uid:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 499
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 500
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 501
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 502
    .local v1, p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 503
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 497
    .end local v3           #uid:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getUserNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 516
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 517
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrName"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserPwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerName"

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v3

    .line 536
    .local v3, uid:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 537
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 538
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 539
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 540
    .local v1, p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 535
    .end local v3           #uid:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getUserPwdById(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 527
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrPwd"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVPNList()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 886
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v4

    .line 887
    .local v4, uid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 889
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-nez v3, :cond_1

    .line 905
    :cond_0
    return-object v0

    .line 893
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 897
    const/4 v2, 0x0

    .line 899
    .local v2, position:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 901
    .local v0, VpnList:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 902
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v5, v5, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    aput-object v5, v0, v2

    .line 903
    add-int/lit8 v2, v2, 0x1

    .line 901
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isAdminProfile(Ljava/lang/String;)Z
    .locals 7
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 861
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 862
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "VPN"

    const-string v6, "VpnID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 864
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 879
    :cond_0
    :goto_0
    return v3

    .line 867
    :cond_1
    if-eqz p1, :cond_0

    .line 870
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 872
    .local v0, AdminVpnId:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 875
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 876
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isL2TPSecretEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileName"

    .prologue
    const/4 v3, 0x0

    .line 785
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 786
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 798
    :cond_0
    :goto_0
    return v3

    .line 789
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 790
    .local v1, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 791
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 792
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 794
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 791
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isOnlySecureConnectionsAllowed()Z
    .locals 3

    .prologue
    .line 1292
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1293
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string v2, "allowOnlySecureVPN"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileName"

    .prologue
    const/4 v3, 0x0

    .line 835
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 837
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 853
    :goto_0
    return v2

    .line 840
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 841
    .local v1, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 842
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 843
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 845
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    if-nez v2, :cond_1

    .line 846
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-boolean v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->mppe:Z

    goto :goto_0

    :cond_1
    move v2, v3

    .line 848
    goto :goto_0

    .line 842
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_3
    move v2, v3

    .line 853
    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1627
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1633
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1644
    return-void
.end method

.method public declared-synchronized setCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "profileName"
    .parameter "certificate"

    .prologue
    .line 604
    monitor-enter p0

    const/4 v4, 0x0

    .line 605
    .local v4, ret:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 606
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 609
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 610
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 611
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 612
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 613
    .local v2, newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 616
    const/4 v4, 0x1

    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    move v5, v4

    .line 622
    :goto_0
    monitor-exit p0

    return v5

    .line 617
    .restart local v1       #index:I
    .restart local v2       #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v3       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 618
    .local v0, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 604
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setDnsDomains(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .parameter "profileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1102
    .local p2, searchDomains:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public setDnsServers(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .parameter "profileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1094
    .local p2, dnsServers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setEncryptionEnabledForPPTP(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "profileName"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    .line 807
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 808
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 828
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 812
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 813
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 814
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 815
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 816
    .local v3, oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_0

    iget v6, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    if-nez v6, :cond_0

    .line 817
    move-object v2, v3

    .line 818
    .local v2, newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iput-boolean p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->mppe:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    :try_start_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 821
    const/4 v5, 0x1

    goto :goto_0

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 807
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setForwardRoutes(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .parameter "profileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1110
    .local p2, forwardRoutes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "profileName"
    .parameter "Id"

    .prologue
    const/4 v8, 0x0

    .line 176
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    .line 207
    :cond_0
    :goto_0
    monitor-exit p0

    return v8

    .line 179
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v6

    .line 180
    .local v6, uid:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .local v1, cv:Landroid/content/ContentValues;
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 184
    .local v3, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 185
    .local v5, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 186
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 187
    .local v4, profile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 188
    iput-object p2, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    .line 189
    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 190
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V

    .line 191
    const-string v9, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 194
    .local v0, columns:[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 197
    .local v7, values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    goto :goto_0

    .line 203
    .end local v0           #columns:[Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #profile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v5           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    .end local v7           #values:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 204
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 176
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #uid:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public setIpSecIdentifier(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "profileName"
    .parameter "ipSecIdentifier"

    .prologue
    const/4 v5, 0x0

    .line 1233
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p2, :cond_1

    .line 1235
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 1236
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1237
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 1238
    .local v3, p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iget-object v6, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1239
    iput-object p2, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1240
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v2

    .line 1242
    .local v2, index:I
    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    const/4 v5, 0x1

    .line 1252
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #index:I
    .end local v3           #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    :goto_0
    return v5

    .line 1243
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #index:I
    .restart local v3       #p:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v4       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 1244
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "VpnPolicy"

    const-string v7, "VpnInfoPolicy.setIpSecIdentifier() - failed to save profile !"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 7
    .parameter "profileName"
    .parameter "enabled"
    .parameter "secret"

    .prologue
    const/4 v5, 0x0

    .line 730
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 731
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 732
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 733
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 734
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 735
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 736
    .local v3, oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 737
    .local v2, newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_0

    .line 738
    move-object v2, v3

    .line 739
    if-eqz p2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 740
    iput-object p3, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    :goto_0
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 748
    const/4 v5, 0x1

    .line 757
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    :goto_1
    monitor-exit p0

    return v5

    .line 741
    .restart local v1       #index:I
    .restart local v2       #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v3       #oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v4       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    if-nez p2, :cond_0

    .line 742
    :try_start_2
    const-string v6, ""

    iput-object v6, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 730
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 749
    .restart local v1       #index:I
    .restart local v2       #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v3       #oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v4       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 750
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "profileName"
    .parameter "name"

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_1

    .line 218
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 219
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 220
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 221
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 222
    .local v3, oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 223
    .local v2, newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_1

    .line 224
    move-object v2, v3

    .line 225
    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    .line 226
    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 227
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    const/4 v5, 0x1

    .line 236
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return v5

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPresharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "profileName"
    .parameter "psk"

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 556
    const/4 v5, 0x0

    .line 557
    .local v5, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 558
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 561
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 562
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 563
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 564
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 565
    .local v3, oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 566
    .local v2, newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_0

    .line 567
    move-object v2, v3

    .line 568
    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 569
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 571
    :cond_0
    const/4 v5, 0x1

    .line 578
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return v5

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 555
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #ret:Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized setServerName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "profileName"
    .parameter "name"

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 246
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 247
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 248
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 249
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 250
    .local v3, oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 251
    .local v2, newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_0

    .line 252
    move-object v2, v3

    .line 253
    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;

    .line 254
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    const/4 v5, 0x1

    .line 262
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return v5

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "profileName"
    .parameter "certificate"

    .prologue
    .line 650
    monitor-enter p0

    const/4 v4, 0x0

    .line 651
    .local v4, ret:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    .line 652
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 655
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 656
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 657
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 658
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 659
    .local v2, newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 662
    const/4 v4, 0x1

    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    move v5, v4

    .line 668
    :goto_0
    monitor-exit p0

    return v5

    .line 663
    .restart local v1       #index:I
    .restart local v2       #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v3       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 664
    .local v0, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 650
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "profileName"
    .parameter "userName"

    .prologue
    const/4 v8, 0x0

    .line 270
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v6

    .line 271
    .local v6, uid:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 272
    .local v1, cv:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_0

    .line 274
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 275
    .local v3, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 276
    .local v5, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 277
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 278
    .local v4, profile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v4, :cond_2

    .line 279
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 280
    iput-object p2, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    .line 281
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 286
    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V

    .line 287
    const-string v9, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v9, "UsrName"

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 293
    .local v0, columns:[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 298
    .local v7, values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 323
    .end local v0           #columns:[Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #profile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v5           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    .end local v7           #values:[Ljava/lang/String;
    :cond_0
    :goto_1
    monitor-exit p0

    return v8

    .line 283
    .restart local v3       #index:I
    .restart local v4       #profile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v5       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    const/4 v9, 0x0

    :try_start_2
    iput-boolean v9, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 284
    const-string v9, ""

    iput-object v9, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 319
    .end local v3           #index:I
    .end local v4           #profile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v5           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v2

    .line 320
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 270
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #uid:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 301
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v3       #index:I
    .restart local v4       #profile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .restart local v5       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    .restart local v6       #uid:I
    :cond_2
    const/4 v9, 0x0

    :try_start_4
    iput-boolean v9, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 302
    const-string v9, ""

    iput-object v9, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    .line 303
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V

    .line 304
    const-string v9, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v9, "UsrName"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 310
    .restart local v0       #columns:[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 315
    .restart local v7       #values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v8

    goto :goto_1
.end method

.method public declared-synchronized setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "profileName"
    .parameter "pwd"

    .prologue
    const/4 v9, 0x0

    .line 331
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 333
    .local v7, uid:I
    if-eqz p2, :cond_0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 335
    .local v3, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v6

    .line 336
    .local v6, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 337
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    .line 338
    .local v5, oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    const/4 v4, 0x0

    .line 339
    .local v4, newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    if-eqz v5, :cond_0

    .line 340
    move-object v4, v5

    .line 341
    iput-object p2, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    .line 342
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V

    .line 343
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v1, cv:Landroid/content/ContentValues;
    const-string v10, "UsrPwd"

    iget-object v11, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v10, "adminUid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    const-string v10, "VpnID"

    iget-object v11, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v0, v10

    const/4 v10, 0x1

    const-string v11, "VpnID"

    aput-object v11, v0, v10

    .line 348
    .local v0, columns:[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    iget-object v11, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v11, v8, v10

    .line 349
    .local v8, values:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "VPN"

    invoke-virtual {v10, v11, v0, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 356
    .end local v0           #columns:[Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #index:I
    .end local v4           #newProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v5           #oldProfile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v6           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;>;"
    .end local v8           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return v9

    .line 353
    :catch_0
    move-exception v2

    .line 354
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 331
    .end local v2           #e:Ljava/lang/Exception;
    .end local v7           #uid:I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized setVpnProfile(Ljava/lang/String;)Z
    .locals 1
    .parameter "sName"

    .prologue
    .line 1470
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1639
    return-void
.end method
