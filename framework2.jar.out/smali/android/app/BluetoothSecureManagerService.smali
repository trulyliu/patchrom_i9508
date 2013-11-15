.class public Landroid/app/BluetoothSecureManagerService;
.super Landroid/bluetooth/IBluetoothSecureManagerService$Stub;
.source "BluetoothSecureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BluetoothSecureManagerService$1;,
        Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final CHANGE_SETTING:I = 0x1

.field private static final DBG:Z = true

.field public static final Name:Ljava/lang/String; = "bluetooth_secure_mode_manager"

.field public static final SECURE_MANAGER_ENABLE:Ljava/lang/String; = "secure_mode_enable"

.field public static final SECURE_MANAGER_WHITE_LIST_ENABLE:Ljava/lang/String; = "white_list_enable"

.field public static final SECURE_MANAGER_WHITE_LIST_MAX:Ljava/lang/String; = "white_list_max_index"

.field public static final SECURE_MANAGER_WHITE_LIST_PREFIX:Ljava/lang/String; = "white_list"

.field private static final TAG:Ljava/lang/String; = "BluetoothSecureManagerService"


# instance fields
.field private final SECURE_APP_KEY_PATH:Ljava/lang/String;

.field private final SECURE_CONFIG_PATH:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mPrefs:Landroid/app/SharedPreferencesImpl;

.field private mSecureKey:[B

.field private mSecureKeyFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;-><init>()V

    .line 87
    const-string v1, "/etc/bluetooth/bt_secure_manager_app_pub_key"

    iput-object v1, p0, Landroid/app/BluetoothSecureManagerService;->SECURE_APP_KEY_PATH:Ljava/lang/String;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/bt_secure_manager_config.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BluetoothSecureManagerService;->SECURE_CONFIG_PATH:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    .line 90
    new-instance v1, Landroid/app/SharedPreferencesImpl;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->SECURE_CONFIG_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/app/SharedPreferencesImpl;-><init>(Ljava/io/File;I)V

    iput-object v1, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    .line 92
    :try_start_0
    const-string v1, "BluetoothSecureManagerService"

    const-string v2, "Loading secure app public key..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Landroid/app/BluetoothSecureManagerService;->SECURE_APP_KEY_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->loadSecurePublicKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothSecureManagerService"

    const-string v2, "Loading secure app public key failed:  "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    iput-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mSecureKey:[B

    .line 98
    iput-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mSecureKeyFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method private final checkKeysEqual(Ljava/security/PublicKey;)Z
    .locals 4
    .parameter "appKey"

    .prologue
    const/4 v1, 0x0

    .line 181
    const-string v2, "App pub key"

    invoke-static {v2, p1}, Landroid/app/BluetoothSecureManagerService;->dumpKey(Ljava/lang/String;Ljava/security/PublicKey;)V

    .line 182
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mSecureKeyFormat:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mSecureKeyFormat:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mSecureKey:[B

    if-nez v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 185
    :cond_1
    invoke-interface {p1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, format:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mSecureKeyFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mSecureKey:[B

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static dumpKey(Ljava/lang/String;Ljava/security/PublicKey;)V
    .locals 7
    .parameter "title"
    .parameter "key"

    .prologue
    .line 157
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 158
    .local v3, k:[B
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    .local v1, hexString:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 160
    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, h:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 162
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v0           #h:Ljava/lang/String;
    :cond_1
    const-string v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": key format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": key modules: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method private final findWhiteListFreeIndex()I
    .locals 6

    .prologue
    .line 206
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string v4, "white_list_max_index"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 208
    .local v2, max:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 209
    invoke-direct {p0, v0}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v3, v1}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return v0

    .line 208
    .restart local v1       #key:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final findWhiteListIndex(Ljava/lang/String;I)I
    .locals 7
    .parameter "name"
    .parameter "cod"

    .prologue
    .line 194
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string v5, "white_list_max_index"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 195
    .local v2, max:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_1

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "white_list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v4, v1}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string v5, ""

    invoke-virtual {v4, v1, v5}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v3

    .line 199
    .local v3, v:Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->cod:I

    if-ne v4, p2, :cond_0

    .line 203
    .end local v0           #i:I
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #v:Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    :goto_1
    return v0

    .line 195
    .restart local v0       #i:I
    .restart local v1       #key:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getAppSignature(I)[Landroid/content/pm/Signature;
    .locals 6
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    const-string v3, "BluetoothSecureManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppSignature in, uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 104
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, callingApp:Ljava/lang/String;
    const-string v3, "BluetoothSecureManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppSignature , calling app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 107
    .local v1, info:Landroid/content/pm/PackageInfo;
    const-string v3, "BluetoothSecureManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppSignature out, signatures: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    return-object v3
.end method

.method public static final getSecureSettingName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "valueName"

    .prologue
    .line 191
    return-object p0
.end method

.method private final getWhiteListKey(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "white_list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 171
    .local v2, len:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 172
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 173
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 172
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 176
    :cond_0
    return-object v0
.end method

.method private loadSecurePublicKey(Ljava/lang/String;)V
    .locals 8
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const-string v5, "BluetoothSecureManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadSecurePublicKey, path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v2, 0x0

    .line 117
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 120
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/BluetoothSecureManagerService;->mSecureKeyFormat:Ljava/lang/String;

    .line 121
    const-string v5, "BluetoothSecureManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadSecurePublicKey, line 1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/BluetoothSecureManagerService;->mSecureKeyFormat:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v5, p0, Landroid/app/BluetoothSecureManagerService;->mSecureKeyFormat:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/BluetoothSecureManagerService;->mSecureKeyFormat:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, line:Ljava/lang/String;
    const-string v5, "BluetoothSecureManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadSecurePublicKey, line 2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz v4, :cond_0

    .line 126
    invoke-static {v4}, Landroid/app/BluetoothSecureManagerService;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p0, Landroid/app/BluetoothSecureManagerService;->mSecureKey:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 136
    .end local v4           #line:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    move-object v2, v3

    .line 140
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_1
    return-void

    .line 129
    :catch_0
    move-exception v1

    .line 131
    .local v1, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v5, "BluetoothSecureManagerService"

    const-string v6, "loadSecurePublicKey failed:  "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 137
    :catch_1
    move-exception v5

    goto :goto_1

    .line 135
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 136
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 135
    :goto_4
    throw v5

    .line 137
    :catch_2
    move-exception v6

    goto :goto_4

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    goto :goto_0

    .line 135
    .end local v0           #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 129
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private final packWhiteListValue(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "name"
    .parameter "cod"
    .parameter "uuids"

    .prologue
    const/16 v6, 0x3b

    .line 219
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v5, 0x100

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 220
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 224
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 225
    .local v4, u:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v4           #u:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private final unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    .locals 10
    .parameter "packedValues"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 236
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, values:[Ljava/lang/String;
    const-string v5, "BluetoothSecureManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unpackWhiteListValue v: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; split len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    array-length v5, v3

    if-nez v5, :cond_1

    move-object v2, v4

    .line 251
    :cond_0
    return-object v2

    .line 240
    :cond_1
    new-instance v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    invoke-direct {v2, v4}, Landroid/app/BluetoothSecureManagerService$WhiteListValue;-><init>(Landroid/app/BluetoothSecureManagerService$1;)V

    .line 241
    .local v2, v:Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    array-length v4, v3

    if-lt v4, v8, :cond_2

    .line 242
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iput-object v4, v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->name:Ljava/lang/String;

    .line 243
    :cond_2
    array-length v4, v3

    if-lt v4, v9, :cond_3

    .line 244
    aget-object v4, v3, v8

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->cod:I

    .line 245
    :cond_3
    array-length v4, v3

    if-le v4, v9, :cond_0

    .line 246
    array-length v4, v3

    add-int/lit8 v1, v4, -0x2

    .line 247
    .local v1, size:I
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->uuids:[Ljava/lang/String;

    .line 248
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 249
    iget-object v4, v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->uuids:[Ljava/lang/String;

    add-int/lit8 v5, v0, -0x2

    aget-object v6, v3, v0

    aput-object v6, v4, v5

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final verifySecureApp(I)Z
    .locals 9
    .parameter "uid"

    .prologue
    .line 142
    const-string v6, "BluetoothSecureManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "verifySecureApp: uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/BluetoothSecureManagerService;->getAppSignature(I)[Landroid/content/pm/Signature;

    move-result-object v5

    .line 145
    .local v5, sigs:[Landroid/content/pm/Signature;
    move-object v0, v5

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 146
    .local v4, sig:Landroid/content/pm/Signature;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/app/BluetoothSecureManagerService;->checkKeysEqual(Ljava/security/PublicKey;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    const-string v6, "BluetoothSecureManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found public key match for app uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    const/4 v6, 0x1

    return v6

    .line 145
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #sig:Landroid/content/pm/Signature;
    .end local v5           #sigs:[Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 151
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "BluetoothSecureManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "verifySecureApp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Application is not authorized for BluetoothSecureManagerService"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 8
    .parameter "name"
    .parameter "cod"
    .parameter "uuids"

    .prologue
    const/4 v4, 0x0

    .line 331
    const-string v5, "BluetoothSecureManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addWhiteList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; cod: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-nez p3, :cond_1

    .line 334
    const-string v5, "BluetoothSecureManagerService"

    const-string v6, "addWhiteList: uuids is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    :goto_0
    return v4

    .line 339
    :cond_1
    const-string v5, "BluetoothSecureManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addWhiteList: uuids: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v5, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    const-string v7, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/app/BluetoothSecureManagerService;->verifySecureApp(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v4}, Landroid/app/SharedPreferencesImpl;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 348
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "BluetoothSecureManagerService"

    const-string v5, "addWhiteList 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct {p0, p1, p2}, Landroid/app/BluetoothSecureManagerService;->findWhiteListIndex(Ljava/lang/String;I)I

    move-result v1

    .line 350
    .local v1, index:I
    const-string v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWhiteList findWhiteListIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-gez v1, :cond_2

    .line 352
    invoke-direct {p0}, Landroid/app/BluetoothSecureManagerService;->findWhiteListFreeIndex()I

    move-result v1

    .line 353
    :cond_2
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string v5, "white_list_max_index"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 354
    .local v2, max:I
    const-string v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWhiteList max index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-le v1, v2, :cond_3

    .line 356
    const-string v4, "white_list_max_index"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 357
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Landroid/app/BluetoothSecureManagerService;->packWhiteListValue(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, v:Ljava/lang/String;
    const-string v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWhiteList index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; packed v:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 360
    const/4 v4, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 361
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v1           #index:I
    .end local v2           #max:I
    .end local v3           #v:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public enableSecureMode(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 259
    const-string v0, "BluetoothSecureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableSecureMode enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "secure_mode_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/app/BluetoothSecureManagerService;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableWhiteList(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 311
    const-string v0, "BluetoothSecureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableWhiteList, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v1, "white_list_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/app/BluetoothSecureManagerService;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecureModeSetting(Ljava/lang/String;)I
    .locals 5
    .parameter "valueName"

    .prologue
    const/4 v1, 0x0

    .line 279
    const-string v2, "BluetoothSecureManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecureModeSetting, name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :try_start_0
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-static {p1}, Landroid/app/BluetoothSecureManagerService;->getSecureSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 287
    :goto_0
    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "BluetoothSecureManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecureModeSetting name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWhiteListCod(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 446
    const-string v2, "BluetoothSecureManagerService"

    const-string v3, "getWhiteListCod"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, values:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v0

    .line 451
    .local v0, v:Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    if-eqz v0, :cond_0

    .line 452
    iget v2, v0, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->cod:I

    .line 453
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWhiteListFirstIndex()I
    .locals 6

    .prologue
    .line 392
    const-string v3, "BluetoothSecureManagerService"

    const-string v4, "getWhiteListFirstIndex"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string v4, "white_list_max_index"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 397
    .local v2, max:I
    const-string v3, "BluetoothSecureManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWhiteListFirstIndex: max: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_1

    .line 399
    invoke-direct {p0, v0}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v3, v1}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    monitor-exit p0

    .line 403
    .end local v0           #i:I
    .end local v1           #key:Ljava/lang/String;
    :goto_1
    return v0

    .line 398
    .restart local v0       #i:I
    .restart local v1       #key:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    monitor-exit p0

    goto :goto_1

    .line 404
    .end local v0           #i:I
    .end local v2           #max:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getWhiteListName(I)Ljava/lang/String;
    .locals 5
    .parameter "index"

    .prologue
    .line 431
    const-string v2, "BluetoothSecureManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWhiteListName, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, values:Ljava/lang/String;
    const-string v2, "BluetoothSecureManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWhiteListName, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v0

    .line 437
    .local v0, v:Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    if-eqz v0, :cond_0

    .line 438
    iget-object v2, v0, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->name:Ljava/lang/String;

    .line 439
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWhiteListNextIndex(I)I
    .locals 7
    .parameter "currentIndex"

    .prologue
    const/4 v3, -0x1

    .line 411
    const-string v4, "BluetoothSecureManagerService"

    const-string v5, "getWhiteListNextIndex"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    if-ne p1, v3, :cond_0

    move v0, v3

    .line 424
    :goto_0
    return v0

    .line 416
    :cond_0
    monitor-enter p0

    .line 417
    :try_start_0
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string v5, "white_list_max_index"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 418
    .local v2, max:I
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_1
    if-gt v0, v2, :cond_2

    .line 419
    invoke-direct {p0, v0}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v4, v1}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 421
    monitor-exit p0

    goto :goto_0

    .line 423
    .end local v0           #i:I
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #max:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 418
    .restart local v0       #i:I
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #max:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 423
    .end local v1           #key:Ljava/lang/String;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 424
    goto :goto_0
.end method

.method public getWhiteListUuids(I)[Ljava/lang/String;
    .locals 5
    .parameter "index"

    .prologue
    .line 460
    const-string v2, "BluetoothSecureManagerService"

    const-string v3, "getWhiteListUuids"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, values:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v0

    .line 465
    .local v0, v:Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    if-eqz v0, :cond_0

    .line 466
    iget-object v2, v0, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->uuids:[Ljava/lang/String;

    .line 467
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSecureModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 269
    const-string v1, "BluetoothSecureManagerService"

    const-string v2, "isSecureModeEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "secure_mode_enable"

    invoke-virtual {p0, v1}, Landroid/app/BluetoothSecureManagerService;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhiteListEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 321
    const-string v1, "BluetoothSecureManagerService"

    const-string v2, "isWhiteListEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "white_list_enable"

    invoke-virtual {p0, v1}, Landroid/app/BluetoothSecureManagerService;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeWhiteList(Ljava/lang/String;I)Z
    .locals 7
    .parameter "name"
    .parameter "cod"

    .prologue
    const/4 v3, 0x0

    .line 369
    const-string v4, "BluetoothSecureManagerService"

    const-string v5, "removeWhiteList"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/app/BluetoothSecureManagerService;->verifySecureApp(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 385
    :goto_0
    return v3

    .line 374
    :cond_0
    monitor-enter p0

    .line 375
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/app/BluetoothSecureManagerService;->findWhiteListIndex(Ljava/lang/String;I)I

    move-result v1

    .line 376
    .local v1, index:I
    if-ltz v1, :cond_2

    .line 377
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v3}, Landroid/app/SharedPreferencesImpl;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 378
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string v4, "white_list_max_index"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 379
    .local v2, max:I
    if-ne v2, v1, :cond_1

    .line 380
    const-string v3, "white_list_max_index"

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 381
    :cond_1
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 382
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .line 384
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v1           #index:I
    .end local v2           #max:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #index:I
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setSecureModeSetting(Ljava/lang/String;I)Z
    .locals 4
    .parameter "valueName"
    .parameter "value"

    .prologue
    .line 294
    const-string v1, "BluetoothSecureManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSecureModeSetting, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->verifySecureApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    const/4 v1, 0x0

    .line 304
    :goto_0
    return v1

    .line 299
    :cond_0
    iget-object v1, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v1}, Landroid/app/SharedPreferencesImpl;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Landroid/app/BluetoothSecureManagerService;->getSecureSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 301
    const-string v1, "BluetoothSecureManagerService"

    const-string v2, "setSecureModeSetting calling apply()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 303
    const-string v1, "BluetoothSecureManagerService"

    const-string v2, "setSecureModeSetting apply() returned"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v1, 0x1

    goto :goto_0
.end method
