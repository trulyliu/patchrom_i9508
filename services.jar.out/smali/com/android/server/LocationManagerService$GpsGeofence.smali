.class public Lcom/android/server/LocationManagerService$GpsGeofence;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GpsGeofence"
.end annotation


# instance fields
.field final mLatitude:D

.field final mLongitude:D

.field final mName:Ljava/lang/String;

.field final mRadius:D

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;DDD)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"

    .prologue
    .line 1760
    iput-object p1, p0, Lcom/android/server/LocationManagerService$GpsGeofence;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1762
    iput-object p2, p0, Lcom/android/server/LocationManagerService$GpsGeofence;->mName:Ljava/lang/String;

    .line 1763
    iput-wide p3, p0, Lcom/android/server/LocationManagerService$GpsGeofence;->mLatitude:D

    .line 1764
    iput-wide p5, p0, Lcom/android/server/LocationManagerService$GpsGeofence;->mLongitude:D

    .line 1765
    iput-wide p7, p0, Lcom/android/server/LocationManagerService$GpsGeofence;->mRadius:D

    .line 1766
    return-void
.end method
