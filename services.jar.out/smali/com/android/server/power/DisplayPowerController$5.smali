.class Lcom/android/server/power/DisplayPowerController$5;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$5;->this$0:Lcom/android/server/power/DisplayPowerController;

    iput-object p2, p0, Lcom/android/server/power/DisplayPowerController$5;->val$pw:Ljava/io/PrintWriter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$5;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$5;->val$pw:Ljava/io/PrintWriter;

    #calls: Lcom/android/server/power/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerController;->access$200(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V

    .line 1614
    return-void
.end method
