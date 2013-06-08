.class Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;
.super Ljava/util/TimerTask;
.source "UIWirelessChargeNFCRead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$700(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    new-instance v2, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;

    invoke-direct {v2, p0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;-><init>(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;)V

    #setter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$202(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method
