.class Lcom/sec/factory/app/ui/UIUSB$1;
.super Landroid/content/BroadcastReceiver;
.source "UIUSB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIUSB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIUSB;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIUSB;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIUSB$1;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIUSB$1;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIUSB;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "mBroadcastReceiver.onReceive"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIUSB$1;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIUSB;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "mBroadcastReceiver.onReceive"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTestState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/app/ui/UIUSB$1;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mTestState:I
    invoke-static {v6}, Lcom/sec/factory/app/ui/UIUSB;->access$000(Lcom/sec/factory/app/ui/UIUSB;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 98
    const-string v3, "plugged"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 100
    .local v2, plugged:I
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIUSB$1;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIUSB;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIUSB$1;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mTestState:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIUSB;->access$000(Lcom/sec/factory/app/ui/UIUSB;)I

    move-result v3

    if-ltz v3, :cond_81

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIUSB$1;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mTestState:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIUSB;->access$000(Lcom/sec/factory/app/ui/UIUSB;)I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_81

    .line 102
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIUSB$1;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #calls: Lcom/sec/factory/app/ui/UIUSB;->TACheck(I)V
    invoke-static {v3, v2}, Lcom/sec/factory/app/ui/UIUSB;->access$100(Lcom/sec/factory/app/ui/UIUSB;I)V

    .line 113
    .end local v2           #plugged:I
    :cond_81
    :goto_81
    return-void

    .line 105
    :cond_82
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "connected"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 108
    .local v1, connected:Z
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIUSB$1;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIUSB;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USB State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIUSB$1;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mTestState:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIUSB;->access$000(Lcom/sec/factory/app/ui/UIUSB;)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_81

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIUSB$1;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mTestState:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIUSB;->access$000(Lcom/sec/factory/app/ui/UIUSB;)I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_81

    .line 110
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIUSB$1;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #calls: Lcom/sec/factory/app/ui/UIUSB;->USBCheck(Z)V
    invoke-static {v3, v1}, Lcom/sec/factory/app/ui/UIUSB;->access$200(Lcom/sec/factory/app/ui/UIUSB;Z)V

    goto :goto_81
.end method
