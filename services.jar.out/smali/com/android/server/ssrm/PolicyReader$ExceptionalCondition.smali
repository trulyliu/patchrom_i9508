.class public Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;
.super Ljava/lang/Object;
.source "PolicyReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PolicyReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExceptionalCondition"
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field private statusName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ssrm/PolicyReader;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/ssrm/PolicyReader;)V
    .locals 0
    .parameter

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->this$0:Lcom/android/server/ssrm/PolicyReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->statusName:Ljava/lang/String;

    return-object v0
.end method

.method public isValue()Z
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->packageName:Ljava/lang/String;

    .line 591
    return-void
.end method

.method public setStatusName(Ljava/lang/String;)V
    .locals 0
    .parameter "statusName"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->statusName:Ljava/lang/String;

    .line 594
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->value:Ljava/lang/String;

    .line 597
    return-void
.end method
