.class public Lcom/sec/knox/container/signapk/CertificateManager;
.super Ljava/lang/Object;
.source "CertificateManager.java"


# static fields
.field public static final CERTIFICATE_PREFIX:Ljava/lang/String; = "cert-"

.field public static final CERT_PATH:Ljava/lang/String; = "/data/system/container/certs"

.field public static final PRIVATEKEY_PREFIX:Ljava/lang/String; = "privatekey-"

.field private static TAG:Ljava/lang/String;

.field private static mCertificateManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<[",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/signapk/CertificateManager;",
            ">;"
        }
    .end annotation
.end field

.field private static mManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/knox/container/signapk/CertificateManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mCreationTime:Ljava/lang/String;

.field private mOriginalCert:[Ljava/lang/String;

.field private mPrivateKey:Ljava/security/PrivateKey;

.field private mX509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "EnterpriseContainerPolicy"

    sput-object v0, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/knox/container/signapk/CertificateManager;->mManagers:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/knox/container/signapk/CertificateManager;->mCertificateManagers:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .parameter "containerid"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    .line 87
    iput-object p2, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContext:Landroid/content/Context;

    .line 88
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 89
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 90
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "containerid"
    .parameter "originalCert"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    .line 94
    iput-object p2, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mOriginalCert:[Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContext:Landroid/content/Context;

    .line 96
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 97
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 98
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private cleanupCertificates()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 167
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 168
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/container/certs"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cert-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 169
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/container/certs"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "privatekey-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pk8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 170
    return-void
.end method

.method private cleanupCertificatesForApk()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 174
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 175
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/container/certs"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cert-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 176
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/container/certs"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "privatekey-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pk8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 177
    return-void
.end method

.method private static decryptPrivateKey([BLjava/lang/String;)Ljava/security/spec/KeySpec;
    .locals 8
    .parameter "encryptedPrivateKey"
    .parameter "passwordStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 222
    :try_start_0
    new-instance v1, Ljavax/crypto/EncryptedPrivateKeyInfo;

    invoke-direct {v1, p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .local v1, epkInfo:Ljavax/crypto/EncryptedPrivateKeyInfo;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 230
    .local v4, password:[C
    invoke-virtual {v1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 231
    .local v5, skFactory:Ljavax/crypto/SecretKeyFactory;
    new-instance v6, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v6, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v5, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 233
    .local v3, key:Ljava/security/Key;
    invoke-virtual {v1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 234
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgParameters()Ljava/security/AlgorithmParameters;

    move-result-object v7

    invoke-virtual {v0, v6, v3, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 237
    :try_start_1
    invoke-virtual {v1, v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpec(Ljavax/crypto/Cipher;)Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #epkInfo:Ljavax/crypto/EncryptedPrivateKeyInfo;
    .end local v3           #key:Ljava/security/Key;
    .end local v4           #password:[C
    .end local v5           #skFactory:Ljavax/crypto/SecretKeyFactory;
    :goto_0
    return-object v6

    .line 223
    :catch_0
    move-exception v2

    .line 225
    .local v2, ex:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_0

    .line 238
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v0       #cipher:Ljavax/crypto/Cipher;
    .restart local v1       #epkInfo:Ljavax/crypto/EncryptedPrivateKeyInfo;
    .restart local v3       #key:Ljava/security/Key;
    .restart local v4       #password:[C
    .restart local v5       #skFactory:Ljavax/crypto/SecretKeyFactory;
    :catch_1
    move-exception v2

    .line 239
    .local v2, ex:Ljava/security/spec/InvalidKeySpecException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "signapk: Password may be bad."

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    throw v2
.end method

.method public static getInstance(ILandroid/content/Context;)Lcom/sec/knox/container/signapk/CertificateManager;
    .locals 3
    .parameter "containerId"
    .parameter "context"

    .prologue
    .line 103
    sget-object v1, Lcom/sec/knox/container/signapk/CertificateManager;->mManagers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Lcom/sec/knox/container/signapk/CertificateManager;->mManagers:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/signapk/CertificateManager;

    .line 108
    :goto_0
    return-object v1

    .line 106
    :cond_0
    new-instance v0, Lcom/sec/knox/container/signapk/CertificateManager;

    invoke-direct {v0, p0, p1}, Lcom/sec/knox/container/signapk/CertificateManager;-><init>(ILandroid/content/Context;)V

    .line 107
    .local v0, mgr:Lcom/sec/knox/container/signapk/CertificateManager;
    sget-object v1, Lcom/sec/knox/container/signapk/CertificateManager;->mManagers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 108
    goto :goto_0
.end method

.method private initializeKeysForApk(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 153
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/knox/container/signapk/CertificateManager;->readPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 154
    invoke-direct {p0}, Lcom/sec/knox/container/signapk/CertificateManager;->readCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private readCertificate()Ljava/security/cert/X509Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/container/certs"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cert-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pem"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .local v0, certFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 298
    .local v3, input:Ljava/io/FileInputStream;
    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 299
    .local v1, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 309
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 312
    .end local v1           #cf:Ljava/security/cert/CertificateFactory;
    .end local v3           #input:Ljava/io/FileInputStream;
    :goto_0
    return-object v4

    .line 300
    .restart local v3       #input:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 301
    .local v2, ex:Ljava/security/cert/CertificateException;
    :try_start_1
    sget-object v4, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 312
    .end local v2           #ex:Ljava/security/cert/CertificateException;
    .end local v3           #input:Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 303
    .restart local v3       #input:Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 304
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    :try_start_2
    sget-object v4, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 306
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 307
    .local v2, ex:Ljava/lang/NullPointerException;
    :try_start_3
    sget-object v4, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .end local v2           #ex:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v4
.end method

.method private readCertificateForApk()Ljava/security/cert/X509Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/container/certs"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cert-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pem"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .local v0, certFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 320
    .local v3, input:Ljava/io/FileInputStream;
    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 321
    .local v1, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 331
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 334
    .end local v1           #cf:Ljava/security/cert/CertificateFactory;
    .end local v3           #input:Ljava/io/FileInputStream;
    :goto_0
    return-object v4

    .line 322
    .restart local v3       #input:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 323
    .local v2, ex:Ljava/security/cert/CertificateException;
    :try_start_1
    sget-object v4, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 334
    .end local v2           #ex:Ljava/security/cert/CertificateException;
    .end local v3           #input:Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 325
    .restart local v3       #input:Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 326
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    :try_start_2
    sget-object v4, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 328
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 329
    .local v2, ex:Ljava/lang/NullPointerException;
    :try_start_3
    sget-object v4, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .end local v2           #ex:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v4
.end method

.method private readPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 8
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/container/certs"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "privatekey-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".pk8"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .local v2, file:Ljava/io/File;
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 250
    .local v3, input:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v0, v5, [B

    .line 251
    .local v0, bytes:[B
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 253
    invoke-static {v0, p1}, Lcom/sec/knox/container/signapk/CertificateManager;->decryptPrivateKey([BLjava/lang/String;)Ljava/security/spec/KeySpec;

    move-result-object v4

    .line 254
    .local v4, spec:Ljava/security/spec/KeySpec;
    if-nez v4, :cond_0

    .line 255
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local v4           #spec:Ljava/security/spec/KeySpec;
    invoke-direct {v4, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    .restart local v4       #spec:Ljava/security/spec/KeySpec;
    :cond_0
    :try_start_1
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 266
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 268
    .end local v0           #bytes:[B
    .end local v4           #spec:Ljava/security/spec/KeySpec;
    :goto_0
    return-object v5

    .line 260
    .restart local v0       #bytes:[B
    .restart local v4       #spec:Ljava/security/spec/KeySpec;
    :catch_0
    move-exception v1

    .line 261
    .local v1, ex:Ljava/security/spec/InvalidKeySpecException;
    :try_start_2
    const-string v5, "DSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 266
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    goto :goto_0

    .line 263
    .end local v0           #bytes:[B
    .end local v1           #ex:Ljava/security/spec/InvalidKeySpecException;
    .end local v4           #spec:Ljava/security/spec/KeySpec;
    :catch_1
    move-exception v1

    .line 264
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_3
    sget-object v5, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 268
    const/4 v5, 0x0

    goto :goto_0

    .line 266
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    throw v5
.end method

.method private readPrivateKeyForApk(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 8
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 272
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/container/certs"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "privatekey-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".pk8"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .local v2, file:Ljava/io/File;
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 275
    .local v3, input:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v0, v5, [B

    .line 276
    .local v0, bytes:[B
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 278
    invoke-static {v0, p1}, Lcom/sec/knox/container/signapk/CertificateManager;->decryptPrivateKey([BLjava/lang/String;)Ljava/security/spec/KeySpec;

    move-result-object v4

    .line 279
    .local v4, spec:Ljava/security/spec/KeySpec;
    if-nez v4, :cond_0

    .line 280
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local v4           #spec:Ljava/security/spec/KeySpec;
    invoke-direct {v4, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .restart local v4       #spec:Ljava/security/spec/KeySpec;
    :cond_0
    :try_start_1
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 289
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    :goto_0
    return-object v5

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, ex:Ljava/security/spec/InvalidKeySpecException;
    :try_start_2
    const-string v5, "DSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 289
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    goto :goto_0

    .end local v0           #bytes:[B
    .end local v1           #ex:Ljava/security/spec/InvalidKeySpecException;
    .end local v4           #spec:Ljava/security/spec/KeySpec;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    throw v5
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .prologue
    .line 161
    sget-object v0, Lcom/sec/knox/container/signapk/CertificateManager;->mManagers:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-direct {p0}, Lcom/sec/knox/container/signapk/CertificateManager;->cleanupCertificates()V

    .line 163
    return-void
.end method

.method public generateSelfSignedX509CertificateForApk(Ljava/lang/String;)V
    .locals 0
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 492
    return-void
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    .line 199
    iget-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_0

    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/sec/knox/container/signapk/CertificateManager;->readCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    return v0
.end method

.method public getCreationTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public initializeKeyStore(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 144
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/knox/container/signapk/CertificateManager;->readPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 145
    invoke-direct {p0}, Lcom/sec/knox/container/signapk/CertificateManager;->readCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setContainerId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 187
    iput p1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    .line 188
    return-void
.end method

.method public setUpKeys(Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerDatabase;)V
    .locals 3
    .parameter "password"
    .parameter "database"

    .prologue
    .line 117
    sget-object v1, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "in setUpKeys"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_2

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mOriginalCert:[Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getCertificateManagerSignatureCreationTime(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    .line 123
    :try_start_0
    sget-object v1, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "in setUpKeys generating certificate"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/signapk/CertificateManager;->generateSelfSignedX509CertificateForApk(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/knox/container/signapk/CertificateManager;->initializeKeysForApk(Ljava/lang/String;)V

    .line 135
    :goto_1
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    sget-object v1, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Keys are already loaded"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unload()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 181
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 182
    sget-object v0, Lcom/sec/knox/container/signapk/CertificateManager;->mManagers:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    .line 184
    return-void
.end method
