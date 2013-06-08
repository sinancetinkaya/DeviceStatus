.class Lcom/sec/factory/app/ui/UIWirelessCharge$1;
.super Ljava/util/TimerTask;
.source "UIWirelessCharge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UIWirelessCharge;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIWirelessCharge;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessCharge;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIWirelessCharge;->access$400(Lcom/sec/factory/app/ui/UIWirelessCharge;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    new-instance v2, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;

    invoke-direct {v2, p0}, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;-><init>(Lcom/sec/factory/app/ui/UIWirelessCharge$1;)V

    #setter for: Lcom/sec/factory/app/ui/UIWirelessCharge;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIWirelessCharge;->access$002(Lcom/sec/factory/app/ui/UIWirelessCharge;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method
