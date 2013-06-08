.class Lcom/sec/factory/modules/ModuleDevice$2;
.super Landroid/os/Handler;
.source "ModuleDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/modules/ModuleDevice;->runOTGTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/ModuleDevice;

.field final synthetic val$response:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/ModuleDevice;Landroid/os/Looper;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleDevice$2;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iput-object p3, p0, Lcom/sec/factory/modules/ModuleDevice$2;->val$response:Landroid/content/Intent;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 731
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_8f

    .line 732
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice$2;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v1, v1, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "runOTGTest"

    const-string v3, "OTG Test Finish"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v1, "OTG_TEST_MODE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    const-string v0, "OK"

    .line 735
    .local v0, resData:Ljava/lang/String;
    :goto_1f
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice$2;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v1, v1, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "runOTGTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTG Test Result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 737
    const-string v1, "OTG_TEST_MODE"

    invoke-static {}, Lcom/sec/factory/modules/ModuleDevice;->access$400()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 738
    const-string v0, "OK"

    .line 744
    :goto_51
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice$2;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v1, v1, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "runOTGTest"

    const-string v3, "OTG TEST OFF"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice$2;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v1, v1, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "runOTGTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTG Test Result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v1, "OTG_MUIC_SET"

    invoke-static {}, Lcom/sec/factory/modules/ModuleDevice;->access$500()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;[B)Z

    .line 747
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice$2;->val$response:Landroid/content/Intent;

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice$2;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice$2;->val$response:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->sendBroadcast(Landroid/content/Intent;)V

    .line 750
    .end local v0           #resData:Ljava/lang/String;
    :cond_8f
    return-void

    .line 733
    :cond_90
    const-string v0, "NG"

    goto :goto_1f

    .line 740
    .restart local v0       #resData:Ljava/lang/String;
    :cond_93
    const-string v0, "NG"

    goto :goto_51

    .line 742
    :cond_96
    const-string v1, "OTG_TEST_MODE"

    invoke-static {}, Lcom/sec/factory/modules/ModuleDevice;->access$400()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;[B)Z

    goto :goto_51
.end method
