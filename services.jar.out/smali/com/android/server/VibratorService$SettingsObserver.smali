.class Lcom/android/server/VibratorService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;I)V
    .locals 3
    .parameter
    .parameter "type"

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    .line 1234
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1235
    #getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    #getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1236
    iput p2, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    .line 1237
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x5

    .line 1241
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1243
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2100(Lcom/android/server/VibratorService;)Lcom/immersion/android/ImmVibe;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1244
    iget v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1246
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1248
    .local v0, magnitudeLevel:I
    if-le v0, v4, :cond_1

    .line 1249
    const/4 v0, 0x5

    .line 1251
    :cond_1
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->levelToMagnitude:[I
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)[I

    move-result-object v2

    aget v2, v2, v0

    #setter for: Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I
    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$2202(Lcom/android/server/VibratorService;I)I

    goto :goto_0

    .line 1259
    .end local v0           #magnitudeLevel:I
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1261
    .restart local v0       #magnitudeLevel:I
    if-le v0, v4, :cond_2

    .line 1262
    const/4 v0, 0x5

    .line 1264
    :cond_2
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->levelToMagnitude:[I
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)[I

    move-result-object v2

    aget v2, v2, v0

    #setter for: Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I
    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$2402(Lcom/android/server/VibratorService;I)I

    goto :goto_0

    .line 1272
    .end local v0           #magnitudeLevel:I
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorService$SettingsObserver;->mType:I

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1274
    .restart local v0       #magnitudeLevel:I
    if-le v0, v4, :cond_3

    .line 1275
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #setter for: Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I
    invoke-static {v1, v0}, Lcom/android/server/VibratorService;->access$2502(Lcom/android/server/VibratorService;I)I

    .line 1281
    :goto_1
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2600(Lcom/android/server/VibratorService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1282
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)I

    move-result v2

    #setter for: Lcom/android/server/VibratorService;->mDefaultMagnitude:I
    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$1602(Lcom/android/server/VibratorService;I)I

    goto :goto_0

    .line 1278
    :cond_3
    iget-object v1, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    iget-object v2, p0, Lcom/android/server/VibratorService$SettingsObserver;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->levelToMagnitude:[I
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)[I

    move-result-object v2

    aget v2, v2, v0

    #setter for: Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I
    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$2502(Lcom/android/server/VibratorService;I)I

    goto :goto_1

    .line 1244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
