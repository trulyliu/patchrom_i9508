.class final Landroid/widget/AbsListView$CheckForDoubleFling;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForDoubleFling"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 3554
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForDoubleFling;->this$0:Landroid/widget/AbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3556
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForDoubleFling;->this$0:Landroid/widget/AbsListView;

    const/16 v1, 0x64

    iput v1, v0, Landroid/widget/AbsListView;->mFlingMode:I

    .line 3562
    return-void
.end method
