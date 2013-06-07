.class Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;
.super Landroid/os/Handler;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnabler;)V
    .registers 2
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 606
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 614
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 615
    return-void

    .line 608
    :pswitch_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->access$1200(Lcom/android/settings/wifi/WifiEnabler;Z)V

    goto :goto_5

    .line 611
    :pswitch_10
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->access$1200(Lcom/android/settings/wifi/WifiEnabler;Z)V

    goto :goto_5

    .line 606
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_9
        :pswitch_10
    .end packed-switch
.end method
