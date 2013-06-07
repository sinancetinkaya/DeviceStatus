.class Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;
.super Landroid/database/ContentObserver;
.source "WifiConnectionMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConnectionMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreasholdObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiConnectionMonitorService;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    .line 355
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 356
    return-void
.end method

.method private getValue()I
    .registers 5

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connection_monitor_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 375
    .local v0, value:I
    packed-switch v0, :pswitch_data_1c

    .line 389
    const/16 v0, -0x55

    .line 393
    :goto_12
    return v0

    .line 377
    :pswitch_13
    const/16 v0, -0x55

    .line 378
    goto :goto_12

    .line 381
    :pswitch_16
    const/16 v0, -0x4b

    .line 382
    goto :goto_12

    .line 385
    :pswitch_19
    const/16 v0, -0x5a

    .line 386
    goto :goto_12

    .line 375
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;->getValue()I

    move-result v1

    #setter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$202(Lcom/android/settings/wifi/WifiConnectionMonitorService;I)I

    .line 369
    return-void
.end method

.method public register()V
    .registers 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connection_monitor_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;->getValue()I

    move-result v1

    #setter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$202(Lcom/android/settings/wifi/WifiConnectionMonitorService;I)I

    .line 362
    return-void
.end method
