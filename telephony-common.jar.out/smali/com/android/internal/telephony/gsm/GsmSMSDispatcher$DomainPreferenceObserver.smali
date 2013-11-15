.class Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;
.super Landroid/database/ContentObserver;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DomainPreferenceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)V
    .locals 2
    .parameter

    .prologue
    .line 1732
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    .line 1733
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1735
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1736
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1753
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1754
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 1766
    return-void
.end method

.method public register()V
    .locals 0

    .prologue
    .line 1744
    return-void
.end method

.method public unRegister()V
    .locals 2

    .prologue
    .line 1747
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->access$100(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1748
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1749
    return-void
.end method
