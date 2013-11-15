.class final Lcom/android/internal/telephony/ims/IMSCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "IMSCallTracker.java"


# static fields
.field private static final DBG_POLL:Z = true

.field static final DIALING_TIMEOUT:I = 0xea60

.field static final DIALING_TIMER:I = 0x3ea

.field static final LOG_TAG:Ljava/lang/String; = "IMSCallTracker"

.field static final MAX_CONNECTIONS:I = 0x1

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x1

.field private static final REPEAT_POLLING:Z


# instance fields
.field backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

.field callWaitingRegistrants:Landroid/os/RegistrantList;

.field connections:[Lcom/android/internal/telephony/ims/IMSConnection;

.field desiredMute:Z

.field droppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ims/IMSConnection;",
            ">;"
        }
    .end annotation
.end field

.field foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

.field hangupPendingMO:Z

.field private mFailCause:I

.field private mIsEcmTimerCanceled:Z

.field mIsInEmergencyCall:Z

.field pendingCallClirMode:I

.field pendingCallInEcm:Z

.field pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

.field phone:Lcom/android/internal/telephony/ims/IMSPhone;

.field ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

.field state:Lcom/android/internal/telephony/PhoneConstants$State;

.field voiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field voiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 81
    new-array v0, v2, [Lcom/android/internal/telephony/ims/IMSConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    .line 82
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 83
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 84
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 94
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 98
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingCallInEcm:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsInEmergencyCall:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    .line 105
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 107
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsEcmTimerCanceled:Z

    .line 108
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/ims/IMSPhone;)V
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 81
    new-array v0, v1, [Lcom/android/internal/telephony/ims/IMSConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    .line 82
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 83
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 84
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 94
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 98
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingCallInEcm:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsInEmergencyCall:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    .line 105
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 107
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsEcmTimerCanceled:Z

    .line 108
    iput v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    .line 117
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/ims/IMSInterface;

    const/16 v1, 0xc9

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/ims/IMSInterface;->registerForIMSCallChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSInterface;->registerCallTrackerHandler(Landroid/os/Handler;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 125
    iput v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    .line 126
    return-void
.end method

.method private addUniqueNumbersToConnection(Ljava/lang/String;)V
    .locals 6
    .parameter "numbers"

    .prologue
    .line 1140
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    const-string v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1143
    const-string v3, "IMSCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inside addUserToConfCall  addUniqueNumbersToConnection(Entry) pendingMO.Address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";numbers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    .local v1, listParticipants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    const-string v4, "\\$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1147
    .local v2, newParticipants:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    const-string v4, ""

    iput-object v4, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 1148
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 1149
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1150
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v5, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "$"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 1154
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v5, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v2, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 1148
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1158
    :cond_5
    const-string v3, "\\$"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1159
    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 1160
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1161
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v5, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "$"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 1165
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v5, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v2, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 1159
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1168
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/ims/IMSConnection;->dialString:Ljava/lang/String;

    .line 1169
    const-string v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1170
    const-string v3, "IMSCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inside addUserToConfCall  addUniqueNumbersToConnection(Exit) pendingMO.Address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; pendingMO.dialString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSConnection;->dialString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private canDial()Z
    .locals 5

    .prologue
    .line 1301
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 1302
    .local v2, serviceState:I
    const-string v3, "ro.telephony.disable-call"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, disableCall:Ljava/lang/String;
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1313
    .local v1, ret:Z
    :goto_0
    return v1

    .line 1305
    .end local v1           #ret:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "dialString"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1283
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 1286
    new-instance v0, Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/ims/IMSConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1291
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1293
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 0
    .parameter "dialString"

    .prologue
    .line 1276
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .locals 0

    .prologue
    .line 1353
    return-void
.end method

.method private handleCallWaitingInfo(Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 650
    new-instance v0, Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/ims/IMSConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V

    .line 651
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 654
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;)V

    .line 655
    return-void
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsWhenSafe()V

    .line 670
    return-void
.end method

.method private hangupAllConnections(Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 7
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1475
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1476
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1477
    iget-object v4, p1, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1478
    .local v0, cn:Lcom/android/internal/telephony/ims/IMSConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSConnection;->getIMSIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1480
    .end local v0           #cn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 1481
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "IMSCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method private hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 1489
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1492
    return-void
.end method

.method private hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 1467
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1469
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->clearDisconnected()V

    .line 996
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->clearDisconnected()V

    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->clearDisconnected()V

    .line 998
    return-void
.end method

.method private isVoiceCallActive()Z
    .locals 3

    .prologue
    .line 1495
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1496
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    .line 1498
    const-string v1, "IMSCallTracker"

    const-string v2, "Voice Call is Active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    const/4 v1, 0x1

    .line 1501
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 662
    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized obtainCompleteMessage(I)Landroid/os/Message;
    .locals 2
    .parameter "what"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obtainCompleteMessage: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainMessage(I)Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onNewIMSRingingCall(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 416
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    move-object v0, v1

    check-cast v0, Landroid/os/Message;

    .line 417
    .local v0, msg:Landroid/os/Message;
    return-void
.end method

.method private declared-synchronized operationComplete()V
    .locals 2

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operationComplete: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 231
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    if-eqz v0, :cond_1

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-gez v0, :cond_0

    .line 236
    const-string v0, "IMSCallTracker"

    const-string v1, "IMSCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVTCallState(I)V
    .locals 7
    .parameter "intValue"

    .prologue
    .line 420
    const-string v4, "IMSCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " setVTCallState() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 422
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 425
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 426
    .local v3, size:I
    const/16 v4, 0xb

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 427
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 428
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 429
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/ims/IMSPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 435
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 436
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    :cond_1
    :goto_1
    return-void

    .line 430
    :catch_0
    move-exception v2

    .line 431
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 437
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private updateIMSCallFailCause(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 443
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    move-object v0, v2

    check-cast v0, Landroid/os/Message;

    .line 444
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    .line 445
    .local v1, presentCall:Lcom/android/internal/telephony/ims/IMSCall;
    const-string v2, "IMSCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  updateIMSCallFailCause"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void
.end method

.method private updateIMSPhoneState()V
    .locals 4

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 611
    .local v0, oldState:Lcom/android/internal/telephony/PhoneConstants$State;
    const-string v1, "IMSCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  updateIMSPhoneState oldstate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 630
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_0

    .line 631
    const-string v1, "IMSCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  updateIMSPhoneState newstate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPhoneStateChanged()V

    .line 634
    :cond_0
    return-void

    .line 614
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_3

    .line 616
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 618
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 247
    .local v0, oldState:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 256
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_5

    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 264
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPhoneStateChanged()V

    .line 267
    :cond_1
    return-void

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 251
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 253
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 259
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method public acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1012
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 1013
    const-string v1, "phone"

    const-string v2, "acceptCall: incoming..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->setMute(Z)V

    .line 1016
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 1035
    :goto_0
    return-void

    .line 1017
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 1018
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/IMSConnection;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1019
    .local v0, cwConn:Lcom/android/internal/telephony/ims/IMSConnection;
    if-eqz v0, :cond_1

    .line 1024
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ims/IMSConnection;->updateParent(Lcom/android/internal/telephony/ims/IMSCall;Lcom/android/internal/telephony/ims/IMSCall;)V

    .line 1025
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSConnection;->onConnectedInOrOut()V

    .line 1026
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 1027
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 1029
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "No call in waiting..."

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1032
    .end local v0           #cwConn:Lcom/android/internal/telephony/ims/IMSConnection;
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method addUserToConfCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 5
    .parameter "dialString"

    .prologue
    const/4 v4, 0x0

    .line 1176
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1177
    const-string v1, "IMSCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside addUserToConfCall() dialString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 1180
    :cond_1
    const-string v1, "IMSCallTracker"

    const-string v2, "inside addUserToConfCall  connection is NULL, so returning..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/4 v1, 0x0

    .line 1198
    :goto_0
    return-object v1

    .line 1183
    :cond_2
    const-string v1, "IMSCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside addUserToConfCall  connections.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1185
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->addUniqueNumbersToConnection(Ljava/lang/String;)V

    .line 1187
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSConnection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1188
    .local v0, userDataObject:Ljava/lang/Object;
    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_3

    .line 1189
    const-string v1, "IMSCallTracker"

    const-string v2, "inside addUserToConfCall() : instanceof CallerInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1190
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1191
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->setUserData(Ljava/lang/Object;)V

    .line 1193
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/IMSCall;->detach(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 1194
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    aput-object v2, v1, v4

    .line 1195
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    aget-object v2, v2, v4

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/ims/IMSCall;->attachFake(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 1196
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->addUserToConfCall(Ljava/lang/String;)V

    .line 1197
    const-string v1, "IMSCallTracker"

    const-string v2, "inside addUserToConfCall() : Detched & attached the modified Connectoin obj"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 1040
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->internalClearDisconnected()V

    .line 1042
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 1043
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 1045
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1049
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    const-string v0, "IMSCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside dial "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 7
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1059
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->canDial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1060
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "cannot dial in current state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1063
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->isVoiceCallActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1064
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "Voice Call is Already Active. IMS VT Call cannot be dialed in current state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1066
    :cond_1
    const-string v3, "IMSCallTracker"

    const-string v4, "[IMSCallTracker]: VT can be dial...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->clearDisconnected()V

    .line 1069
    const-string v3, "ril.cdma.inecmmode"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, inEcm:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1071
    .local v2, isPhoneInEcmMode:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 1082
    .local v1, isEmergencyCall:Z
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 1087
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    .line 1088
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 1126
    :goto_0
    return-object v3

    .line 1091
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v3, v4, p1, p0, v5}, Lcom/android/internal/telephony/ims/IMSConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1092
    iput-boolean v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    .line 1094
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    .line 1097
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v4, v3, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1101
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsWhenSafe()V

    .line 1123
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 1124
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 1126
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    goto :goto_0

    .line 1104
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->setMute(Z)V

    .line 1107
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 1110
    if-eqz v2, :cond_6

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 1111
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_1
.end method

.method dialConferenceCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1133
    const-string v0, "IMSCallTracker"

    const-string v1, "inside dialConferenceCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dialConferenceCall(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dialConferenceCall(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 7
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1205
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->canDial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1206
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "cannot dial in current state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1209
    :cond_0
    const-string v3, "IMSCallTracker"

    const-string v4, "[IMSCallTracker]: VT can be dial...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->clearDisconnected()V

    .line 1212
    const-string v3, "ril.cdma.inecmmode"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, inEcm:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1214
    .local v2, isPhoneInEcmMode:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 1225
    .local v1, isEmergencyCall:Z
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 1230
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    .line 1231
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 1269
    :goto_0
    return-object v3

    .line 1234
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v3, v4, p1, p0, v5}, Lcom/android/internal/telephony/ims/IMSConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1235
    iput-boolean v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    .line 1237
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 1240
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v4, v3, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1244
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsWhenSafe()V

    .line 1266
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 1267
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 1269
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    goto :goto_0

    .line 1247
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->setMute(Z)V

    .line 1250
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 1253
    if-eqz v2, :cond_5

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 1254
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->dialConferenceCall(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 132
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 133
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 134
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 135
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v5, Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/ims/IMSInterface;->unregisterForIMSCallChanged(Landroid/os/Handler;)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/ims/IMSConnection;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 138
    .local v1, c:Lcom/android/internal/telephony/ims/IMSConnection;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "IMSCallTracker"

    const-string v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    .end local v1           #c:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->clearDisconnected()V

    .line 152
    return-void

    .line 146
    :catch_1
    move-exception v2

    .line 147
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "IMSCallTracker"

    const-string v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 271
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 272
    const-string v0, "IMSCallTracker"

    const-string v1, "IMSCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method public getIMSCallFailCause()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1324
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 276
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  IMSCallTracker handle message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 408
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "unexpected event not handled"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 282
    :sswitch_0
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event EVENT_POLL_CALLS_RESULT Received...pendingOperations.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v6, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 286
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 287
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 288
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 412
    :cond_0
    :goto_0
    :sswitch_1
    return-void

    .line 293
    :sswitch_2
    const-string v6, "IMSCallTracker"

    const-string v7, "Dialing timer fired."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_0

    .line 295
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 296
    .local v2, conn:Lcom/android/internal/telephony/ims/IMSConnection;
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz v2, :cond_0

    .line 298
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_0

    .line 300
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hangup connection :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSConnection;->getIMSIndex()I

    move-result v7

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 303
    :catch_0
    move-exception v3

    .line 304
    .local v3, e:Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 313
    .end local v2           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v3           #e:Lcom/android/internal/telephony/CallStateException;
    :sswitch_3
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event EVENT_OPERATION_COMPLETE Received....pendingOperations.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..arg1.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 327
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 329
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->operationComplete()V

    .line 331
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 334
    const/16 v1, 0x10

    .line 335
    .local v1, causeCode:I
    const-string v6, "IMSCallTracker"

    const-string v7, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_1
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLastCallFailCause, normal disconnect sent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 343
    .local v5, s:I
    :goto_2
    if-ge v4, v5, :cond_2

    .line 345
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 347
    .restart local v2       #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->onRemoteDisconnect(I)V

    .line 343
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 338
    .end local v1           #causeCode:I
    .end local v2           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v4           #i:I
    .end local v5           #s:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getIMSCallFailCause()I

    move-result v1

    .restart local v1       #causeCode:I
    goto :goto_1

    .line 350
    .restart local v4       #i:I
    .restart local v5       #s:I
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updatePhoneState()V

    .line 352
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 353
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 364
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #causeCode:I
    .end local v4           #i:I
    .end local v5           #s:I
    :sswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSCallFailCause(Landroid/os/AsyncResult;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    .line 369
    :sswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->onNewIMSRingingCall(Landroid/os/AsyncResult;)V

    .line 372
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->handleRadioAvailable()V

    goto/16 :goto_0

    .line 376
    :sswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 278
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_5
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8 -> :sswitch_1
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xc9 -> :sswitch_5
        0xca -> :sswitch_6
        0x3ea -> :sswitch_2
    .end sparse-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 23
    .parameter "ar"

    .prologue
    .line 681
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 682
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/List;

    .line 694
    .local v17, polledCalls:Ljava/util/List;
    :goto_0
    const/16 v16, 0x0

    .line 695
    .local v16, newRinging:Lcom/android/internal/telephony/Connection;
    const/4 v12, 0x0

    .line 697
    .local v12, hasNonHangupStateChanged:Z
    const/4 v15, 0x0

    .line 698
    .local v15, needsPollDelay:Z
    const/16 v18, 0x0

    .line 699
    .local v18, unknownConnectionAppeared:Z
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Number of Connections:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 700
    if-eqz v17, :cond_1a

    .line 701
    const/4 v13, 0x0

    .local v13, i:I
    const/4 v8, 0x0

    .local v8, curDC:I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v10

    .line 702
    .local v10, dcSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_1a

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v6, v19, v13

    .line 704
    .local v6, conn:Lcom/android/internal/telephony/ims/IMSConnection;
    const/4 v9, 0x0

    .line 707
    .local v9, dc:Lcom/android/internal/telephony/DriverCall;
    if-ge v8, v10, :cond_0

    .line 708
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v9, Lcom/android/internal/telephony/DriverCall;

    .line 709
    .restart local v9       #dc:Lcom/android/internal/telephony/DriverCall;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " dc is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 710
    if-eqz v9, :cond_6

    .line 711
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "index is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "connectionIndex is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->connectionIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " dc is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 712
    add-int/lit8 v8, v8, 0x1

    .line 719
    :cond_0
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "poll: conn[i="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", dc="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 721
    if-eqz v9, :cond_1

    .line 723
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DC index is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->connectionIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 725
    :cond_1
    if-eqz v6, :cond_2

    .line 727
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Connection index is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->connectionIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 729
    :cond_2
    if-nez v6, :cond_d

    if-eqz v9, :cond_d

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ims/IMSConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 733
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "poll: pendingMO="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v20, v0

    aput-object v20, v19, v13

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->connectionIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/ims/IMSConnection;->connectionIndex:I

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ims/IMSConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 740
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 743
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 744
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    .line 753
    :try_start_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    .end local v6           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v8           #curDC:I
    .end local v9           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v10           #dcSize:I
    .end local v12           #hasNonHangupStateChanged:Z
    .end local v13           #i:I
    .end local v15           #needsPollDelay:Z
    .end local v16           #newRinging:Lcom/android/internal/telephony/Connection;
    .end local v17           #polledCalls:Ljava/util/List;
    .end local v18           #unknownConnectionAppeared:Z
    :cond_3
    :goto_3
    return-void

    .line 683
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 686
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .restart local v17       #polledCalls:Ljava/util/List;
    goto/16 :goto_0

    .line 690
    .end local v17           #polledCalls:Ljava/util/List;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsAfterDelay()V

    goto :goto_3

    .line 715
    .restart local v6       #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .restart local v8       #curDC:I
    .restart local v9       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v10       #dcSize:I
    .restart local v12       #hasNonHangupStateChanged:Z
    .restart local v13       #i:I
    .restart local v15       #needsPollDelay:Z
    .restart local v16       #newRinging:Lcom/android/internal/telephony/Connection;
    .restart local v17       #polledCalls:Ljava/util/List;
    .restart local v18       #unknownConnectionAppeared:Z
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 756
    :catch_0
    move-exception v11

    .line 757
    .local v11, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v19, "IMSCallTracker"

    const-string v20, "unexpected error on hangup"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 765
    .end local v11           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v9, v2, v13}, Lcom/android/internal/telephony/ims/IMSConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/ims/IMSCallTracker;I)V

    aput-object v20, v19, v13

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ims/IMSConnection;->getCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 769
    const-string v19, "IMSCallTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "PHone State on Incoming Call : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 776
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->rejectCallAsBusy()V

    .line 777
    const-string v19, "IMSCallTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Incoming Call .... Rejecting: PendingMo"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ims/IMSConnection;->onLocalDisconnect()V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 782
    :catch_1
    move-exception v11

    .line 783
    .restart local v11       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v19, "IMSCallTracker"

    const-string v20, "unexpected error on hangup"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 788
    .end local v11           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v16, v19, v13

    .line 808
    :cond_9
    :goto_4
    const/4 v12, 0x1

    .line 702
    :cond_a
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 795
    :cond_b
    const-string v19, "IMSCallTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Phantom call appeared "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, v9, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_c

    iget-object v0, v9, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/internal/telephony/ims/IMSConnection;->connectTime:J

    .line 805
    :cond_c
    const/16 v18, 0x1

    goto :goto_4

    .line 809
    :cond_d
    if-eqz v6, :cond_12

    if-nez v9, :cond_12

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 811
    .local v7, count:I
    if-nez v7, :cond_10

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getIMSCallFailCause()I

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 816
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 817
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "1. Disconnect cause  Set to : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 819
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v20, v19, v13

    goto/16 :goto_5

    .line 823
    :cond_10
    const/4 v14, 0x0

    .local v14, n:I
    :goto_6
    if-ge v14, v7, :cond_f

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 825
    .local v5, cn:Lcom/android/internal/telephony/ims/IMSConnection;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getIMSCallFailCause()I

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 827
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 828
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "2. Disconnect cause  Set to : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v5, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 830
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 846
    .end local v5           #cn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v7           #count:I
    .end local v14           #n:I
    :cond_12
    if-eqz v6, :cond_a

    if-eqz v9, :cond_a

    .line 847
    iget v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->connectionIndex:I

    move/from16 v19, v0

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->connectionIndex:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    .line 848
    const-string v19, "IMSCallTracker"

    const-string v20, "This is an error scenario..first dc is updated and then only connection.Such scenario implies improper dc and connection comparison"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 850
    .restart local v7       #count:I
    if-nez v7, :cond_15

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getIMSCallFailCause()I

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 855
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 856
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "1. Disconnect cause  Set to : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 858
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v20, v19, v13

    goto/16 :goto_5

    .line 864
    :cond_15
    const/4 v14, 0x0

    .restart local v14       #n:I
    :goto_7
    if-ge v14, v7, :cond_14

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 866
    .restart local v5       #cn:Lcom/android/internal/telephony/ims/IMSConnection;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getIMSCallFailCause()I

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 868
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 869
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "2. Disconnect cause  Set to : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v5, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 871
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 879
    .end local v5           #cn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v7           #count:I
    .end local v14           #n:I
    :cond_17
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/ims/IMSConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v4

    .line 880
    .local v4, changed:Z
    if-nez v12, :cond_18

    if-eqz v4, :cond_19

    :cond_18
    const/4 v12, 0x1

    :goto_8
    goto/16 :goto_5

    :cond_19
    const/4 v12, 0x0

    goto :goto_8

    .line 908
    .end local v4           #changed:Z
    .end local v6           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v8           #curDC:I
    .end local v9           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v10           #dcSize:I
    .end local v13           #i:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1b

    .line 909
    const-string v19, "IMSCallTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Pending MO dropped before poll fg state:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 914
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    .line 915
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingCallInEcm:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    .line 916
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingCallInEcm:Z

    .line 919
    :cond_1b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "newringing is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 920
    if-eqz v16, :cond_1c

    .line 922
    const-string v19, "notifying the app about new call"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyNewIMSCall(Lcom/android/internal/telephony/Connection;)V

    .line 929
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    .restart local v13       #i:I
    :goto_9
    if-ltz v13, :cond_21

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 931
    .restart local v6       #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 932
    .local v3, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Inside DroppedCall Poll List...................cause : ........................."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 933
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Inside DroppedCall Poll List...................conn.isIncoming() :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "conn.getConnectTime() :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSConnection;->getConnectTime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming()Z

    move-result v19

    if-eqz v19, :cond_1f

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSConnection;->getConnectTime()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_1f

    .line 938
    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 939
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 945
    :goto_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "missed/rejected call, conn.cause="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 946
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setting cause to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 949
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/ims/IMSConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 929
    :cond_1d
    :goto_b
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_9

    .line 941
    :cond_1e
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_a

    .line 950
    :cond_1f
    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_20

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 953
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_b

    .line 954
    :cond_20
    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1d

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 956
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_b

    .line 961
    .end local v3           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v6           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_22

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 966
    :cond_22
    if-eqz v15, :cond_23

    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsAfterDelay()V

    .line 975
    :cond_23
    if-nez v16, :cond_24

    if-eqz v12, :cond_25

    .line 976
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->internalClearDisconnected()V

    .line 979
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updatePhoneState()V

    .line 981
    if-eqz v18, :cond_26

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyUnknownConnection()V

    .line 985
    :cond_26
    if-nez v12, :cond_27

    if-eqz v16, :cond_3

    .line 986
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_3
.end method

.method public hangup(Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 0
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1450
    return-void
.end method

.method hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V
    .locals 3
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 158
    iget-object v0, p1, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    if-eq v0, p0, :cond_0

    .line 159
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMSConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to IMSCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-ne p1, v0, :cond_1

    .line 167
    const-string v0, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 168
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 193
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->onHangupLocal()V

    .line 196
    :goto_1
    return-void

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->getCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 185
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->onLocalDisconnect()V

    .line 186
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->getIMSIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public hangupDueToLowBattery(Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 1
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1453
    const-string v0, "(ringing) hangupDueToLowBattery waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 1465
    return-void
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1319
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1006
    const-string v0, "IMSCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1510
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1505
    return-void
.end method

.method public rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 1366
    return-void

    .line 1363
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rejectCallAsBusy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1378
    return-void
.end method

.method public separate(Lcom/android/internal/telephony/ims/IMSConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1383
    iget-object v1, p1, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    if-eq v1, p0, :cond_0

    .line 1384
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to CdmaCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1388
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->getIMSIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    :goto_0
    return-void

    .line 1390
    :catch_0
    move-exception v0

    .line 1393
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "IMSCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 3
    .parameter "mute"

    .prologue
    .line 1329
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    .line 1330
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 1331
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 1337
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1339
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->flashAndSetGenericTrue()V

    .line 1348
    :cond_1
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1512
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1507
    return-void
.end method

.method public updateIMSCallState(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    .line 567
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    .line 568
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 569
    .local v1, newState:Lcom/android/internal/telephony/Call$State;
    const/4 v2, 0x0

    .line 570
    .local v2, presentCall:Lcom/android/internal/telephony/ims/IMSCall;
    const-string v3, "IMSCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  updateIMSCallState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-eqz v3, :cond_0

    .line 599
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSConnection;->getCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v2

    .line 600
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 601
    const-string v3, "IMSCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  updateIMSCallState : newstate is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/ims/IMSCall;->attachFake(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 605
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 606
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-eq v3, v1, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_1

    .line 607
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 608
    :cond_1
    return-void
.end method
