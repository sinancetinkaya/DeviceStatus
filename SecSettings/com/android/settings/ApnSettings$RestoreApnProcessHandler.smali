.class Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "looper"
    .parameter "restoreApnUiHandler"

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    .line 608
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 609
    iput-object p3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 610
    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 614
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_26

    .line 636
    :goto_6
    return-void

    .line 616
    :pswitch_7
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v2}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 617
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$700()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 621
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 622
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v2, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler$1;-><init>(Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 614
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
