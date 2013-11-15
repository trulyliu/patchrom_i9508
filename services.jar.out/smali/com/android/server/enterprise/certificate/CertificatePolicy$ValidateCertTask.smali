.class Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;
.super Landroid/os/AsyncTask;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidateCertTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/security/cert/X509Certificate;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1745
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1745
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/security/cert/X509Certificate;)Ljava/lang/Boolean;
    .locals 23
    .parameter "arrayCerts"

    .prologue
    .line 1758
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1759
    .local v6, certs:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x0

    .line 1760
    .local v4, certPath:Ljava/security/cert/CertPath;
    const/16 v18, 0x0

    .line 1761
    .local v18, trustAnchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v8, 0x1

    .line 1765
    .local v8, checkRevocation:Z
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1766
    .local v7, chainList:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 1768
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 1769
    .local v2, cert:Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    invoke-static {v0, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$2800(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v7

    .line 1776
    .end local v2           #cert:Ljava/security/cert/X509Certificate;
    :goto_0
    const/4 v15, 0x0

    .line 1777
    .local v15, rootCert:Ljava/security/cert/X509Certificate;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1779
    const/4 v8, 0x0

    .line 1780
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #rootCert:Ljava/security/cert/X509Certificate;
    check-cast v15, Ljava/security/cert/X509Certificate;

    .line 1786
    .restart local v15       #rootCert:Ljava/security/cert/X509Certificate;
    :goto_1
    new-instance v17, Ljava/security/cert/TrustAnchor;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v15, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 1787
    .local v17, trustAnchor:Ljava/security/cert/TrustAnchor;
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v18

    .line 1790
    const-string v19, "X.509"

    invoke-static/range {v19 .. v19}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 1791
    .local v3, certFactory:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1802
    :try_start_1
    new-instance v13, Ljava/security/cert/PKIXParameters;

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1811
    .local v13, params:Ljava/security/cert/PKIXParameters;
    const/4 v5, 0x0

    .line 1813
    .local v5, certPathValidator:Ljava/security/cert/CertPathValidator;
    :try_start_2
    const-string v19, "PKIX"

    invoke-static/range {v19 .. v19}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 1822
    const/4 v12, 0x0

    .line 1823
    .local v12, ocspPrevious:Ljava/lang/String;
    const-string v19, "ocsp.enable"

    invoke-static/range {v19 .. v19}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1824
    if-eqz v8, :cond_3

    .line 1825
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 1826
    const-string v19, "ocsp.enable"

    const-string v20, "true"

    invoke-static/range {v19 .. v20}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    :goto_2
    const/4 v14, 0x0

    .line 1835
    .local v14, result:Z
    :try_start_3
    invoke-virtual {v5, v4, v13}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v9

    .line 1837
    .local v9, cpvResult:Ljava/security/cert/CertPathValidatorResult;
    const-string v19, "CertificatePolicy"

    const-string v20, "Validation success"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1838
    const/4 v14, 0x1

    .line 1882
    .end local v9           #cpvResult:Ljava/security/cert/CertPathValidatorResult;
    :goto_3
    if-nez v12, :cond_0

    .line 1883
    const-string v12, "false"

    .line 1885
    :cond_0
    const-string v19, "ocsp.enable"

    move-object/from16 v0, v19

    invoke-static {v0, v12}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .end local v3           #certFactory:Ljava/security/cert/CertificateFactory;
    .end local v5           #certPathValidator:Ljava/security/cert/CertPathValidator;
    .end local v7           #chainList:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v12           #ocspPrevious:Ljava/lang/String;
    .end local v13           #params:Ljava/security/cert/PKIXParameters;
    .end local v14           #result:Z
    .end local v15           #rootCert:Ljava/security/cert/X509Certificate;
    .end local v17           #trustAnchor:Ljava/security/cert/TrustAnchor;
    :goto_4
    return-object v19

    .line 1772
    .restart local v7       #chainList:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_1
    :try_start_4
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1792
    .end local v7           #chainList:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v10

    .line 1793
    .local v10, e:Ljava/security/cert/CertificateException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x8

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1795
    const-string v19, "CertificatePolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failure generating cert path: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    goto :goto_4

    .line 1783
    .end local v10           #e:Ljava/security/cert/CertificateException;
    .restart local v7       #chainList:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v15       #rootCert:Ljava/security/cert/X509Certificate;
    :cond_2
    const/4 v8, 0x1

    .line 1784
    :try_start_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #rootCert:Ljava/security/cert/X509Certificate;
    check-cast v15, Ljava/security/cert/X509Certificate;
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_0

    .restart local v15       #rootCert:Ljava/security/cert/X509Certificate;
    goto/16 :goto_1

    .line 1803
    .restart local v3       #certFactory:Ljava/security/cert/CertificateFactory;
    .restart local v17       #trustAnchor:Ljava/security/cert/TrustAnchor;
    :catch_1
    move-exception v10

    .line 1804
    .local v10, e:Ljava/security/InvalidAlgorithmParameterException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1806
    const-string v19, "CertificatePolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Should not happen!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    goto :goto_4

    .line 1814
    .end local v10           #e:Ljava/security/InvalidAlgorithmParameterException;
    .restart local v5       #certPathValidator:Ljava/security/cert/CertPathValidator;
    .restart local v13       #params:Ljava/security/cert/PKIXParameters;
    :catch_2
    move-exception v10

    .line 1815
    .local v10, e:Ljava/security/NoSuchAlgorithmException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1817
    const-string v19, "CertificatePolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Should not happen!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    goto/16 :goto_4

    .line 1828
    .end local v10           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v12       #ocspPrevious:Ljava/lang/String;
    :cond_3
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 1829
    const-string v19, "ocsp.enable"

    const-string v20, "false"

    invoke-static/range {v19 .. v20}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1839
    .restart local v14       #result:Z
    :catch_3
    move-exception v10

    .line 1840
    .local v10, e:Ljava/security/InvalidAlgorithmParameterException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1842
    const-string v19, "CertificatePolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Should not happen!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    const/4 v14, 0x0

    .line 1879
    goto/16 :goto_3

    .line 1844
    .end local v10           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v10

    .line 1845
    .local v10, e:Ljava/security/cert/CertPathValidatorException;
    invoke-virtual {v10}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 1846
    .local v11, errorMessage:Ljava/lang/String;
    const-string v19, "CertificatePolicy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Validation failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    const-string v19, "Additional certificate path checker failed."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1849
    invoke-virtual {v10}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    .line 1850
    .local v16, t:Ljava/lang/Throwable;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_4

    .line 1851
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 1854
    .end local v16           #t:Ljava/lang/Throwable;
    :cond_4
    const-string v19, "is revoked"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    const-string v19, "Certificate revocation after"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1856
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1878
    :goto_5
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1858
    :cond_6
    const-string v19, "OCSP check failed!"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "Certificate status could not be determined."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "CRL distribution point extension could not be read"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "No additional CRL locations could be decoded from CRL distribution point extension."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "Distribution points could not be read."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "No valid CRL found."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "Unable to get CRL for certificate"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1865
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0xd

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 1868
    :cond_8
    const-string v19, ", expiration time"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 1871
    :cond_9
    const-string v19, ", validation time"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 1875
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v19, v0

    const-string v20, "installer_module"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1745
    check-cast p1, [Ljava/security/cert/X509Certificate;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->doInBackground([Ljava/security/cert/X509Certificate;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1749
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1750
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mValidateCertInstallWait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$2600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1751
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #setter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mValidateCertInstallResult:Ljava/lang/Boolean;
    invoke-static {v0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$2702(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1752
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    #getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mValidateCertInstallWait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$2600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1753
    monitor-exit v1

    .line 1754
    return-void

    .line 1753
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1745
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$ValidateCertTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
