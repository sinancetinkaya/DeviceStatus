.class Lcom/sec/factory/app/ui/UISPDIF$1;
.super Landroid/content/BroadcastReceiver;
.source "UISPDIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISPDIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UISPDIF;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISPDIF;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, action:Ljava/lang/String;
    const-string v2, "SPDIF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  State: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    const-string v1, "android.intent.extra.DOCK_STATE"

    :goto_27
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v1, "SPDIF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #getter for: Lcom/sec/factory/app/ui/UISPDIF;->isDock:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISPDIF;->access$000(Lcom/sec/factory/app/ui/UISPDIF;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsDigitalHeadsetPlugged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #getter for: Lcom/sec/factory/app/ui/UISPDIF;->mIsDigitalHeadsetPlugged:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISPDIF;->access$100(Lcom/sec/factory/app/ui/UISPDIF;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isCharge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #getter for: Lcom/sec/factory/app/ui/UISPDIF;->isCharge:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISPDIF;->access$200(Lcom/sec/factory/app/ui/UISPDIF;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 61
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    const-string v2, "status"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/sec/factory/app/ui/UISPDIF;->mBatteryStatus:I
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UISPDIF;->access$302(Lcom/sec/factory/app/ui/UISPDIF;I)I

    .line 63
    const-string v1, "SPDIF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_BATTERY_CHANGED - mBatteryStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #getter for: Lcom/sec/factory/app/ui/UISPDIF;->mBatteryStatus:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISPDIF;->access$300(Lcom/sec/factory/app/ui/UISPDIF;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #getter for: Lcom/sec/factory/app/ui/UISPDIF;->mBatteryStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISPDIF;->access$300(Lcom/sec/factory/app/ui/UISPDIF;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c8

    .line 65
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #setter for: Lcom/sec/factory/app/ui/UISPDIF;->isCharge:Z
    invoke-static {v1, v4}, Lcom/sec/factory/app/ui/UISPDIF;->access$202(Lcom/sec/factory/app/ui/UISPDIF;Z)Z

    .line 66
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #getter for: Lcom/sec/factory/app/ui/UISPDIF;->isDock:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISPDIF;->access$000(Lcom/sec/factory/app/ui/UISPDIF;)Z

    move-result v1

    if-eqz v1, :cond_c8

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #getter for: Lcom/sec/factory/app/ui/UISPDIF;->mIsDigitalHeadsetPlugged:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISPDIF;->access$100(Lcom/sec/factory/app/ui/UISPDIF;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 67
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #calls: Lcom/sec/factory/app/ui/UISPDIF;->Charge2Pass()V
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISPDIF;->access$400(Lcom/sec/factory/app/ui/UISPDIF;)V

    .line 93
    :cond_c8
    :goto_c8
    return-void

    .line 49
    :cond_c9
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    const-string v1, "status"

    goto/16 :goto_27

    :cond_d5
    const-string v1, "state"

    goto/16 :goto_27

    .line 69
    :cond_d9
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 70
    const-string v1, "SPDIF"

    const-string v2, "ACTION_DOCK_EVENT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_112

    .line 72
    const-string v1, "SPDIF"

    const-string v2, "ACTION_DOCK_EVENT: DOCK ON"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #setter for: Lcom/sec/factory/app/ui/UISPDIF;->isDock:Z
    invoke-static {v1, v4}, Lcom/sec/factory/app/ui/UISPDIF;->access$002(Lcom/sec/factory/app/ui/UISPDIF;Z)Z

    .line 75
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #getter for: Lcom/sec/factory/app/ui/UISPDIF;->isCharge:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISPDIF;->access$200(Lcom/sec/factory/app/ui/UISPDIF;)Z

    move-result v1

    if-eqz v1, :cond_c8

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #getter for: Lcom/sec/factory/app/ui/UISPDIF;->mIsDigitalHeadsetPlugged:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISPDIF;->access$100(Lcom/sec/factory/app/ui/UISPDIF;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 76
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #calls: Lcom/sec/factory/app/ui/UISPDIF;->Charge2Pass()V
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISPDIF;->access$400(Lcom/sec/factory/app/ui/UISPDIF;)V

    goto :goto_c8

    .line 77
    :cond_112
    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c8

    .line 78
    const-string v1, "SPDIF"

    const-string v2, "ACTION_DOCK_EVENT: DOCK OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    .line 80
    :cond_122
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 81
    const-string v1, "state"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_155

    .line 82
    const-string v1, "SPDIF"

    const-string v2, "ACTION_DIGITAL_HEADSET_PLUG: switch audio path to SPDIF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #setter for: Lcom/sec/factory/app/ui/UISPDIF;->mIsDigitalHeadsetPlugged:Z
    invoke-static {v1, v4}, Lcom/sec/factory/app/ui/UISPDIF;->access$102(Lcom/sec/factory/app/ui/UISPDIF;Z)Z

    .line 84
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #getter for: Lcom/sec/factory/app/ui/UISPDIF;->isCharge:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISPDIF;->access$200(Lcom/sec/factory/app/ui/UISPDIF;)Z

    move-result v1

    if-eqz v1, :cond_c8

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #getter for: Lcom/sec/factory/app/ui/UISPDIF;->isDock:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISPDIF;->access$000(Lcom/sec/factory/app/ui/UISPDIF;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 85
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #calls: Lcom/sec/factory/app/ui/UISPDIF;->Charge2Pass()V
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISPDIF;->access$400(Lcom/sec/factory/app/ui/UISPDIF;)V

    goto/16 :goto_c8

    .line 86
    :cond_155
    const-string v1, "state"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c8

    .line 87
    const-string v1, "SPDIF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsStart: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISPDIF$1;->this$0:Lcom/sec/factory/app/ui/UISPDIF;

    #getter for: Lcom/sec/factory/app/ui/UISPDIF;->mIsStart:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISPDIF;->access$500(Lcom/sec/factory/app/ui/UISPDIF;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v1, "SPDIF"

    const-string v2, "ACTION_DIGITAL_HEADSET_PLUG: switch audio path to SPK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c8
.end method
