.class public final Lcom/sec/android/smartface/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/smartface/FaceInfo$Person;,
        Lcom/sec/android/smartface/FaceInfo$PersonInfo;,
        Lcom/sec/android/smartface/FaceInfo$Face;,
        Lcom/sec/android/smartface/FaceInfo$FaceExpression;,
        Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;
    }
.end annotation


# static fields
.field public static final CHECK_FACE_EXISTENCE:I = 0x1

.field public static final CHECK_FACE_EXISTENCE_WITH_ORIENTATION:I = 0x40

.field public static final CHECK_FACE_ROTATION:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/smartface/FaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIND_FACES:I = 0x2

.field public static final FIND_FACE_AND_PERSON_INFO:I = 0x8

.field public static final FIND_FACE_COMPONENT:I = 0x20

.field public static final FIND_FACE_POSE_INFO:I = 0x10

.field public static final NEED_TO_PAUSE:I = 0x1

.field public static final NEED_TO_PLAY:I


# instance fields
.field public bFaceDetected:Z

.field public guideDir:I

.field public horizontalMovement:I

.field public needToPause:I

.field public needToRotate:I

.field public needToStay:I

.field public numberOfPerson:I

.field public person:[Lcom/sec/android/smartface/FaceInfo$Person;

.field public processStatus:I

.field public responseType:I

.field public verticalMovement:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/sec/android/smartface/FaceInfo$1;

    invoke-direct {v0}, Lcom/sec/android/smartface/FaceInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/smartface/FaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    .line 131
    invoke-virtual {p0, p1}, Lcom/sec/android/smartface/FaceInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/smartface/FaceInfo;->responseType:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/smartface/FaceInfo;->numberOfPerson:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/smartface/FaceInfo;->horizontalMovement:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/smartface/FaceInfo;->verticalMovement:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/smartface/FaceInfo;->processStatus:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/smartface/FaceInfo;->needToRotate:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/smartface/FaceInfo;->needToPause:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/smartface/FaceInfo;->needToStay:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/smartface/FaceInfo;->guideDir:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/smartface/FaceInfo;->bFaceDetected:Z

    .line 197
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->numberOfPerson:I

    new-array v1, v1, [Lcom/sec/android/smartface/FaceInfo$Person;

    iput-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    .line 199
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->numberOfPerson:I

    if-ge v0, v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    new-instance v2, Lcom/sec/android/smartface/FaceInfo$Face;

    invoke-direct {v2}, Lcom/sec/android/smartface/FaceInfo$Face;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    .line 202
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    .line 203
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 204
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 205
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 206
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 208
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->score:I

    .line 210
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->id:I

    .line 212
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    .line 213
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 214
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 216
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    .line 217
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 218
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 220
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    .line 221
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 222
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 224
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    .line 225
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 226
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 228
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    new-instance v2, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    invoke-direct {v2}, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    .line 229
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;->pitch:I

    .line 230
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;->roll:I

    .line 231
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;->yaw:I

    .line 233
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    new-instance v2, Lcom/sec/android/smartface/FaceInfo$FaceExpression;

    invoke-direct {v2}, Lcom/sec/android/smartface/FaceInfo$FaceExpression;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Face;->expression:Lcom/sec/android/smartface/FaceInfo$FaceExpression;

    .line 234
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->expression:Lcom/sec/android/smartface/FaceInfo$FaceExpression;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/sec/android/smartface/FaceInfo$FaceExpression;->expression:I

    .line 236
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    new-instance v2, Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    invoke-direct {v2}, Lcom/sec/android/smartface/FaceInfo$PersonInfo;-><init>()V

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    .line 237
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->addressEMail:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->phoneNumber:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->address:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->name:Ljava/lang/String;

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 195
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 242
    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 137
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->responseType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->numberOfPerson:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->horizontalMovement:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->verticalMovement:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->processStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->needToRotate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->needToPause:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->needToStay:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->guideDir:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-boolean v1, p0, Lcom/sec/android/smartface/FaceInfo;->bFaceDetected:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/sec/android/smartface/FaceInfo;->numberOfPerson:I

    if-ge v0, v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->score:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    iget v1, v1, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;->pitch:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    iget v1, v1, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;->roll:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    iget v1, v1, Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;->yaw:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Face;->expression:Lcom/sec/android/smartface/FaceInfo$FaceExpression;

    iget v1, v1, Lcom/sec/android/smartface/FaceInfo$FaceExpression;->expression:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->addressEMail:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/sec/android/smartface/FaceInfo;->person:[Lcom/sec/android/smartface/FaceInfo$Person;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    iget-object v1, v1, Lcom/sec/android/smartface/FaceInfo$PersonInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 147
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 181
    .restart local v0       #i:I
    :cond_1
    return-void
.end method
