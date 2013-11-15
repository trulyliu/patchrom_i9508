.class public final Landroid/content/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SELinuxMMAC$1;,
        Landroid/content/pm/SELinuxMMAC$DenyPolicy;,
        Landroid/content/pm/SELinuxMMAC$BlackListPolicy;,
        Landroid/content/pm/SELinuxMMAC$WhiteListPolicy;,
        Landroid/content/pm/SELinuxMMAC$InstallPolicy;,
        Landroid/content/pm/SELinuxMMAC$ContainerInfo;
    }
.end annotation


# static fields
.field private static final CONTAINER_APP:Ljava/lang/String; = "container"

.field private static final CONTAINER_INFO:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTAINER_POLICY:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/SELinuxMMAC$InstallPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final INSTALL_POLICY_FILE:[Ljava/io/File; = null

.field private static final MMAC_DENY:Ljava/lang/String; = "MMAC_DENIAL:"

.field private static final MMAC_ENFORCE_PROPERTY:Ljava/lang/String; = "persist.mmac.enforce"

.field private static final PKG_POLICY:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/SELinuxMMAC$InstallPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURE_PKG_PREFIX:Ljava/lang/String; = "sec_container_"

.field private static final SIG_POLICY:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Landroid/content/pm/SELinuxMMAC$InstallPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field private static final mTrustedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/SELinuxMMAC;->CONTAINER_POLICY:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "security/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/security/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 587
    return-void
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)V
    .locals 11
    .parameter "pkg"

    .prologue
    .line 140
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v9, -0x1

    iput v9, v8, Landroid/content/pm/ApplicationInfo;->level:I

    .line 142
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v5, v0, v2

    .line 143
    .local v5, s:Landroid/content/pm/Signature;
    if-nez v5, :cond_1

    .line 142
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_1
    sget-object v8, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 147
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v8, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    #getter for: Landroid/content/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;
    invoke-static {v8}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->access$000(Landroid/content/pm/SELinuxMMAC$InstallPolicy;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 148
    sget-object v8, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .line 149
    .local v6, sigSeContainerinfo:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v6, :cond_2

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 150
    sget-object v8, Landroid/content/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 151
    sget-object v8, Landroid/content/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SELinuxMMAC$ContainerInfo;

    .line 152
    .local v1, containerHelper:Landroid/content/pm/SELinuxMMAC$ContainerInfo;
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v1, Landroid/content/pm/SELinuxMMAC$ContainerInfo;->level:I

    iput v9, v8, Landroid/content/pm/ApplicationInfo;->level:I

    .line 153
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v1, Landroid/content/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 164
    .end local v1           #containerHelper:Landroid/content/pm/SELinuxMMAC$ContainerInfo;
    :cond_2
    :goto_1
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_3

    sget-object v8, Landroid/content/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 165
    sget-object v8, Landroid/content/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 166
    .local v7, trustedKey:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 167
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x1

    iput-byte v9, v8, Landroid/content/pm/ApplicationInfo;->isTrusted:B

    .line 189
    .end local v5           #s:Landroid/content/pm/Signature;
    .end local v6           #sigSeContainerinfo:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    .end local v7           #trustedKey:Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 155
    .restart local v5       #s:Landroid/content/pm/Signature;
    .restart local v6       #sigSeContainerinfo:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_4
    const/4 v4, 0x0

    .line 157
    .local v4, level:I
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v8}, Landroid/content/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v4

    .line 159
    if-ltz v4, :cond_2

    .line 160
    invoke-static {p0, v4}, Landroid/content/pm/SELinuxMMAC;->setSecurityContext(Landroid/content/pm/PackageParser$Package;I)V

    goto :goto_1

    .line 174
    .end local v4           #level:I
    .end local v5           #s:Landroid/content/pm/Signature;
    .end local v6           #sigSeContainerinfo:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_5
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v8}, Landroid/content/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v4

    .line 175
    .restart local v4       #level:I
    if-ltz v4, :cond_6

    .line 176
    invoke-static {p0, v4}, Landroid/content/pm/SELinuxMMAC;->setSecurityContext(Landroid/content/pm/PackageParser$Package;I)V

    goto :goto_2

    .line 181
    :cond_6
    sget-object v8, Landroid/content/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 182
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v8, Landroid/content/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    #getter for: Landroid/content/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;
    invoke-static {v8}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->access$000(Landroid/content/pm/SELinuxMMAC$InstallPolicy;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_2

    .line 188
    :cond_7
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v8, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    #getter for: Landroid/content/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;
    invoke-static {v8}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->access$000(Landroid/content/pm/SELinuxMMAC$InstallPolicy;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_2
.end method

.method private static determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    .locals 23
    .parameter "parser"
    .parameter "notInsidePackageTag"
    .parameter "certs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 357
    .local v6, denyPolicyPerms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 359
    .local v4, allowPolicyPerms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 362
    .local v14, pkgPolicy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/SELinuxMMAC$InstallPolicy;>;"
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 363
    .local v10, outerDepth:I
    const/4 v3, 0x0

    .line 364
    .local v3, allowAll:Z
    const/16 v16, 0x0

    .line 366
    .local v16, seinfo:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, type:I
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    move/from16 v0, v20

    if-le v0, v10, :cond_e

    .line 368
    :cond_1
    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 373
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 374
    .local v18, tagName:Ljava/lang/String;
    const-string v20, "seinfo"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 375
    const/16 v20, 0x0

    const-string v21, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 376
    .local v17, seinfoValue:Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 377
    move-object/from16 v16, v17

    .line 443
    .end local v17           #seinfoValue:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 379
    .restart local v17       #seinfoValue:Ljava/lang/String;
    :cond_3
    const-string v20, "SELinuxMMAC"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "<seinfo> without value at "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 382
    .end local v17           #seinfoValue:Ljava/lang/String;
    :cond_4
    const-string v20, "allow-permission"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 383
    const/16 v20, 0x0

    const-string v21, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 384
    .local v11, permName:Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 385
    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 387
    :cond_5
    const-string v20, "SELinuxMMAC"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "<allow-permission> without name at "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 390
    .end local v11           #permName:Ljava/lang/String;
    :cond_6
    const-string v20, "deny-permission"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 391
    const/16 v20, 0x0

    const-string v21, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 392
    .restart local v11       #permName:Ljava/lang/String;
    if-eqz v11, :cond_7

    .line 393
    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 395
    :cond_7
    const-string v20, "SELinuxMMAC"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "<deny-permission> without name at "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 398
    .end local v11           #permName:Ljava/lang/String;
    :cond_8
    const-string v20, "allow-all"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 399
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 400
    :cond_9
    const-string v20, "service"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 401
    new-instance v5, Landroid/content/pm/SELinuxMMAC$ContainerInfo;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/pm/SELinuxMMAC$ContainerInfo;-><init>(Landroid/content/pm/SELinuxMMAC$1;)V

    .line 402
    .local v5, containerInfo:Landroid/content/pm/SELinuxMMAC$ContainerInfo;
    const/16 v20, 0x0

    const-string v21, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 403
    .local v13, pkgName:Ljava/lang/String;
    const/16 v20, 0x0

    const-string v21, "level"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 404
    .local v9, level:Ljava/lang/String;
    const/16 v20, 0x0

    const-string v21, "seinfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 405
    .local v8, innerSeinfo:Ljava/lang/String;
    if-eqz v13, :cond_2

    if-eqz v9, :cond_2

    .line 407
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v5, Landroid/content/pm/SELinuxMMAC$ContainerInfo;->level:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_2
    if-eqz v8, :cond_a

    .line 412
    iput-object v8, v5, Landroid/content/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    .line 413
    sget-object v20, Landroid/content/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 408
    :catch_0
    move-exception v7

    .line 409
    .local v7, e:Ljava/lang/NumberFormatException;
    const-string v20, "SELinuxMMAC"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " does not define correct level."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 414
    .end local v7           #e:Ljava/lang/NumberFormatException;
    :cond_a
    if-eqz v16, :cond_2

    .line 415
    move-object/from16 v0, v16

    iput-object v0, v5, Landroid/content/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    .line 416
    sget-object v20, Landroid/content/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 419
    .end local v5           #containerInfo:Landroid/content/pm/SELinuxMMAC$ContainerInfo;
    .end local v8           #innerSeinfo:Ljava/lang/String;
    .end local v9           #level:Ljava/lang/String;
    .end local v13           #pkgName:Ljava/lang/String;
    :cond_b
    const-string v20, "trustedpackage"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 420
    const/16 v20, 0x0

    const-string v21, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 422
    .restart local v13       #pkgName:Ljava/lang/String;
    if-eqz v13, :cond_2

    if-eqz p2, :cond_2

    .line 423
    sget-object v20, Landroid/content/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v20, "SELinuxMMAC"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " trusted"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 426
    .end local v13           #pkgName:Ljava/lang/String;
    :cond_c
    const-string v20, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    if-eqz p1, :cond_2

    .line 427
    const/16 v20, 0x0

    const-string v21, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 428
    .restart local v13       #pkgName:Ljava/lang/String;
    if-eqz v13, :cond_d

    .line 429
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/content/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v15

    .line 430
    .local v15, policyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v15, :cond_0

    .line 431
    invoke-virtual {v14, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 439
    .end local v15           #policyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_d
    const-string v20, "SELinuxMMAC"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "<package> inner tag without name at "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 447
    .end local v13           #pkgName:Ljava/lang/String;
    .end local v18           #tagName:Ljava/lang/String;
    :cond_e
    const/4 v12, 0x0

    .line 448
    .local v12, permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v20

    if-lez v20, :cond_10

    .line 449
    new-instance v12, Landroid/content/pm/SELinuxMMAC$BlackListPolicy;

    .end local v12           #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    move-object/from16 v0, v16

    invoke-direct {v12, v6, v14, v0}, Landroid/content/pm/SELinuxMMAC$BlackListPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 463
    .restart local v12       #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_f
    :goto_3
    return-object v12

    .line 450
    :cond_10
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v20

    if-lez v20, :cond_11

    .line 451
    new-instance v12, Landroid/content/pm/SELinuxMMAC$WhiteListPolicy;

    .end local v12           #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    move-object/from16 v0, v16

    invoke-direct {v12, v4, v14, v0}, Landroid/content/pm/SELinuxMMAC$WhiteListPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;)V

    .restart local v12       #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    goto :goto_3

    .line 452
    :cond_11
    if-eqz v3, :cond_12

    .line 453
    new-instance v12, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .end local v12           #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    const/16 v20, 0x0

    new-instance v21, Ljava/util/ArrayList;

    sget-object v22, Landroid/content/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v12, v0, v14, v1, v2}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/ArrayList;)V

    .restart local v12       #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    goto :goto_3

    .line 455
    :cond_12
    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_f

    .line 460
    new-instance v12, Landroid/content/pm/SELinuxMMAC$DenyPolicy;

    .end local v12           #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v12, v0, v14, v1}, Landroid/content/pm/SELinuxMMAC$DenyPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;)V

    .restart local v12       #permPolicyType:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    goto :goto_3
.end method

.method private static flushInstallPolicy()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 93
    sget-object v0, Landroid/content/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 94
    sget-object v0, Landroid/content/pm/SELinuxMMAC;->CONTAINER_POLICY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 95
    return-void
.end method

.method public static getEnforcingMode()Z
    .locals 2

    .prologue
    .line 197
    const-string v0, "persist.mmac.enforce"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getPackageLevelbyKey(Ljava/lang/String;)I
    .locals 8
    .parameter "packageName"

    .prologue
    .line 108
    const/4 v2, -0x1

    .line 109
    .local v2, level:I
    if-eqz p0, :cond_0

    const-string v5, "sec_container_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 111
    .local v0, dotIndex:I
    const-string v5, "sec_container_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 112
    .local v3, levelStartIndex:I
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, strLevel:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 119
    .end local v0           #dotIndex:I
    .end local v3           #levelStartIndex:I
    .end local v4           #strLevel:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 115
    .restart local v0       #dotIndex:I
    .restart local v3       #levelStartIndex:I
    .restart local v4       #strLevel:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "SELinuxMMAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not define level."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isSystemApp(Ljava/lang/String;)Z
    .locals 1
    .parameter "seInfo"

    .prologue
    .line 123
    const-string v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "release"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static passInstallPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z
    .locals 10
    .parameter "pkg"

    .prologue
    const/4 v9, 0x0

    .line 620
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 621
    .local v5, s:Landroid/content/pm/Signature;
    if-nez v5, :cond_1

    .line 620
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    :cond_1
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 627
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .line 628
    .local v4, policy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 629
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 633
    .local v6, seinfo:Ljava/lang/String;
    const/4 v3, 0x1

    .line 683
    .end local v4           #policy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    .end local v5           #s:Landroid/content/pm/Signature;
    .end local v6           #seinfo:Ljava/lang/String;
    :cond_2
    :goto_1
    return v3

    .line 639
    :cond_3
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 640
    const/4 v3, 0x0

    .line 641
    .local v3, passed:Z
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .line 642
    .restart local v4       #policy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 643
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 647
    .restart local v6       #seinfo:Ljava/lang/String;
    const/4 v3, 0x1

    goto :goto_1

    .line 653
    .end local v3           #passed:Z
    .end local v4           #policy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    .end local v6           #seinfo:Ljava/lang/String;
    :cond_4
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->CONTAINER_POLICY:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 654
    const/4 v3, 0x0

    .line 655
    .restart local v3       #passed:Z
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->CONTAINER_POLICY:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .line 656
    .restart local v4       #policy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 657
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 661
    .restart local v6       #seinfo:Ljava/lang/String;
    const/4 v3, 0x1

    goto :goto_1

    .line 669
    .end local v3           #passed:Z
    .end local v4           #policy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    .end local v6           #seinfo:Ljava/lang/String;
    :cond_5
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 670
    const/4 v3, 0x0

    .line 671
    .restart local v3       #passed:Z
    sget-object v7, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .line 672
    .restart local v4       #policy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 673
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 677
    .restart local v6       #seinfo:Ljava/lang/String;
    const/4 v3, 0x1

    goto :goto_1

    .line 683
    .end local v3           #passed:Z
    .end local v4           #policy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    .end local v6           #seinfo:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static readInstallPolicy()Z
    .locals 1

    .prologue
    .line 104
    sget-object v0, Landroid/content/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    invoke-static {v0}, Landroid/content/pm/SELinuxMMAC;->readInstallPolicy([Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static readInstallPolicy(Ljava/io/File;)Z
    .locals 3
    .parameter "policyFile"

    .prologue
    .line 215
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/content/pm/SELinuxMMAC;->readInstallPolicy([Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static readInstallPolicy([Ljava/io/File;)Z
    .locals 15
    .parameter "policyFiles"

    .prologue
    .line 220
    const/4 v7, 0x0

    .line 221
    .local v7, policyFile:Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 222
    .local v3, i:I
    :goto_0
    if-nez v7, :cond_0

    if-eqz p0, :cond_0

    aget-object v12, p0, v3

    if-eqz v12, :cond_0

    .line 224
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    aget-object v12, p0, v3

    invoke-direct {v8, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #policyFile:Ljava/io/FileReader;
    .local v8, policyFile:Ljava/io/FileReader;
    move-object v7, v8

    .line 232
    .end local v8           #policyFile:Ljava/io/FileReader;
    .restart local v7       #policyFile:Ljava/io/FileReader;
    :cond_0
    if-nez v7, :cond_1

    .line 233
    const-string v12, "SELinuxMMAC"

    const-string v13, "MMAC install disabled."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v12, 0x0

    .line 348
    :goto_1
    return v12

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v12, "SELinuxMMAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t find install policy "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, p0, v3

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_1
    const-string v12, "SELinuxMMAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MMAC install enabled using file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, p0, v3

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Landroid/content/pm/SELinuxMMAC;->getEnforcingMode()Z

    move-result v2

    .line 240
    .local v2, enforcing:Z
    if-eqz v2, :cond_3

    const-string v4, "enforcing"

    .line 241
    .local v4, mode:Ljava/lang/String;
    :goto_2
    const/4 v0, 0x0

    .line 242
    .local v0, cert:Ljava/lang/String;
    const-string v12, "SELinuxMMAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MMAC install starting in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mode."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Landroid/content/pm/SELinuxMMAC;->flushInstallPolicy()V

    .line 247
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 248
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 250
    const-string v12, "policy"

    invoke-static {v5, v12}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 252
    :cond_2
    :goto_3
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 253
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 344
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_4
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 348
    :goto_5
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 240
    .end local v0           #cert:Ljava/lang/String;
    .end local v4           #mode:Ljava/lang/String;
    :cond_3
    const-string v4, "permissive"

    goto :goto_2

    .line 257
    .restart local v0       #cert:Ljava/lang/String;
    .restart local v4       #mode:Ljava/lang/String;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 258
    .local v10, tagName:Ljava/lang/String;
    const-string v12, "signer"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 259
    const/4 v12, 0x0

    const-string v13, "signature"

    invoke-interface {v5, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    if-nez v0, :cond_5

    .line 261
    const-string v12, "SELinuxMMAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<signer> without signature at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 338
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tagName:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 339
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v12, "SELinuxMMAC"

    const-string v13, "Got execption parsing "

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 268
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #tagName:Ljava/lang/String;
    :cond_5
    :try_start_4
    new-instance v9, Landroid/content/pm/Signature;

    invoke-direct {v9, v0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 275
    .local v9, signature:Landroid/content/pm/Signature;
    if-nez v9, :cond_6

    .line 276
    :try_start_5
    const-string v12, "SELinuxMMAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<signer> with null signature at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 340
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v9           #signature:Landroid/content/pm/Signature;
    .end local v10           #tagName:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 341
    .local v1, e:Ljava/io/IOException;
    const-string v12, "SELinuxMMAC"

    const-string v13, "Got execption parsing "

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 269
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #tagName:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 270
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v12, "SELinuxMMAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<signer> with bad signature at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 281
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v9       #signature:Landroid/content/pm/Signature;
    :cond_6
    const/4 v12, 0x1

    invoke-static {v5, v12, v0}, Landroid/content/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v11

    .line 282
    .local v11, type:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v11, :cond_2

    .line 298
    sget-object v12, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v12, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 300
    .end local v9           #signature:Landroid/content/pm/Signature;
    .end local v11           #type:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_7
    const-string v12, "default"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 301
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v5, v12, v13}, Landroid/content/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v11

    .line 302
    .restart local v11       #type:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v11, :cond_2

    .line 307
    sget-object v12, Landroid/content/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 309
    .end local v11           #type:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_8
    const-string v12, "container"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 310
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v5, v12, v13}, Landroid/content/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v11

    .line 311
    .restart local v11       #type:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v11, :cond_2

    .line 315
    sget-object v12, Landroid/content/pm/SELinuxMMAC;->CONTAINER_POLICY:Ljava/util/HashMap;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 317
    .end local v11           #type:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_9
    const-string v12, "package"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 318
    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v5, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, pkgName:Ljava/lang/String;
    if-nez v6, :cond_a

    .line 320
    const-string v12, "SELinuxMMAC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<package> without name at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 325
    :cond_a
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v5, v12, v13}, Landroid/content/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v11

    .line 326
    .restart local v11       #type:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v11, :cond_2

    .line 331
    sget-object v12, Landroid/content/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v12, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 334
    .end local v6           #pkgName:Ljava/lang/String;
    .end local v11           #type:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    :cond_b
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 345
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #tagName:Ljava/lang/String;
    :catch_4
    move-exception v12

    goto/16 :goto_5
.end method

.method public static setEnforcingMode(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 205
    const-string v1, "persist.mmac.enforce"

    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void

    .line 205
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private static setSecurityContext(Landroid/content/pm/PackageParser$Package;I)V
    .locals 3
    .parameter "pkg"
    .parameter "level"

    .prologue
    .line 130
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v2, "container"

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 131
    sget-object v1, Landroid/content/pm/SELinuxMMAC;->CONTAINER_POLICY:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SELinuxMMAC$InstallPolicy;

    .line 132
    .local v0, containerPolicy:Landroid/content/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #getter for: Landroid/content/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;
    invoke-static {v0}, Landroid/content/pm/SELinuxMMAC$InstallPolicy;->access$000(Landroid/content/pm/SELinuxMMAC$InstallPolicy;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 134
    sget-object v1, Landroid/content/pm/SELinuxMMAC;->CONTAINER_POLICY:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput p1, v1, Landroid/content/pm/ApplicationInfo;->level:I

    .line 137
    return-void
.end method
