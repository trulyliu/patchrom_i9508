.class Lcom/android/server/power/ShutdownThread$Log;
.super Landroid/os/Handler;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Log"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownDelay"

.field private static handler:Lcom/android/server/power/ShutdownThread$Log;

.field private static handlerLock:Ljava/lang/Object;

.field private static queuePoint:I

.field private static queueState:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 872
    sput-object v1, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    .line 873
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Log;->handlerLock:Ljava/lang/Object;

    .line 875
    sput-object v1, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 878
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 1016
    const/4 v1, -0x1

    .line 1018
    .local v1, rtn:I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1019
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :goto_0
    return v1

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 961
    const/4 v1, -0x1

    .line 963
    .local v1, rtn:I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 964
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :goto_0
    return v1

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 972
    const/4 v1, -0x1

    .line 974
    .local v1, rtn:I
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 975
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :goto_0
    return v1

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 983
    const/4 v1, -0x1

    .line 985
    .local v1, rtn:I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 986
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :goto_0
    return v1

    .line 987
    :catch_0
    move-exception v0

    .line 988
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static setMessage(Ljava/lang/String;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 897
    sget-object v1, Lcom/android/server/power/ShutdownThread$Log;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 898
    :try_start_0
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 899
    :cond_0
    monitor-exit v1

    .line 910
    :goto_0
    return-void

    .line 901
    :cond_1
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/power/ShutdownThread$Log;->removeMessages(I)V

    .line 902
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    const/4 v2, 0x1

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/ShutdownThread$Log;->sendEmptyMessageDelayed(IJ)Z

    .line 903
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    .line 905
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    sget v1, Lcom/android/server/power/ShutdownThread$Log;->queuePoint:I

    aput-object p0, v0, v1

    .line 909
    :goto_1
    sget v0, Lcom/android/server/power/ShutdownThread$Log;->queuePoint:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lcom/android/server/power/ShutdownThread$Log;->queuePoint:I

    goto :goto_0

    .line 903
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 907
    :cond_2
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    sget v1, Lcom/android/server/power/ShutdownThread$Log;->queuePoint:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1
.end method

.method public static startState()V
    .locals 4

    .prologue
    .line 925
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    if-nez v0, :cond_0

    .line 926
    const-string v0, "ShutdownDelay"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    new-instance v0, Lcom/android/server/power/ShutdownThread$Log;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$Log;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    .line 928
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    .line 929
    const/4 v0, 0x0

    sput v0, Lcom/android/server/power/ShutdownThread$Log;->queuePoint:I

    .line 933
    :goto_0
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownThread$Log;->sendEmptyMessage(I)Z

    .line 934
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    new-instance v1, Lcom/android/server/power/ShutdownThread$Log$1;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$Log$1;-><init>()V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/ShutdownThread$Log;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 947
    return-void

    .line 931
    :cond_0
    const-string v0, "ShutdownDelay"

    const-string v1, "startstate again"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static stopState()V
    .locals 3

    .prologue
    .line 913
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    const-string v0, "ShutdownDelay"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    sget-object v1, Lcom/android/server/power/ShutdownThread$Log;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 917
    :try_start_0
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/power/ShutdownThread$Log;->removeMessages(I)V

    .line 918
    sget-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/power/ShutdownThread$Log;->removeMessages(I)V

    .line 919
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    .line 920
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    .line 921
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 950
    const/4 v1, -0x1

    .line 952
    .local v1, rtn:I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 953
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :goto_0
    return v1

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 994
    const/4 v1, -0x1

    .line 996
    .local v1, rtn:I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 997
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    :goto_0
    return v1

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 1005
    const/4 v1, -0x1

    .line 1007
    .local v1, rtn:I
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 1008
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :goto_0
    return v1

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 882
    sget-object v1, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/ShutdownThread$Log;->handler:Lcom/android/server/power/ShutdownThread$Log;

    if-nez v1, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    sget v0, Lcom/android/server/power/ShutdownThread$Log;->queuePoint:I

    .line 888
    .local v0, i:I
    :cond_2
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 889
    sget-object v1, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 890
    const-string v1, "ShutdownDelay"

    sget-object v2, Lcom/android/server/power/ShutdownThread$Log;->queueState:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_3
    sget v1, Lcom/android/server/power/ShutdownThread$Log;->queuePoint:I

    if-ne v0, v1, :cond_2

    .line 892
    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/power/ShutdownThread$Log;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
