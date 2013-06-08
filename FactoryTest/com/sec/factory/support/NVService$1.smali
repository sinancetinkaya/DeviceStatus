.class Lcom/sec/factory/support/NVService$1;
.super Lcom/sec/factory/support/INVService$Stub;
.source "NVService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/support/NVService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/support/NVService;


# direct methods
.method constructor <init>(Lcom/sec/factory/support/NVService;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/factory/support/NVService$1;->this$0:Lcom/sec/factory/support/NVService;

    invoke-direct {p0}, Lcom/sec/factory/support/INVService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setTestNV(II)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/factory/support/NVService$1;->this$0:Lcom/sec/factory/support/NVService;

    const-class v2, Lcom/sec/factory/aporiented/FtClient;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    iget-object v1, p0, Lcom/sec/factory/support/NVService$1;->this$0:Lcom/sec/factory/support/NVService;

    invoke-virtual {v1, v0}, Lcom/sec/factory/support/NVService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 39
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 41
    int-to-byte v0, p1

    int-to-byte v1, p2

    invoke-static {v0, v1}, Lcom/sec/factory/support/NVAccessor;->setNV(BB)V

    .line 42
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    iget-object v1, p0, Lcom/sec/factory/support/NVService$1;->this$0:Lcom/sec/factory/support/NVService;

    invoke-direct {v0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 44
    int-to-byte v1, p1

    int-to-byte v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->updateNVItem(BB)V

    .line 45
    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->unbindSecPhoneService()V

    .line 53
    :goto_2b
    return-void

    .line 48
    :cond_2c
    int-to-byte v0, p1

    int-to-byte v1, p2

    invoke-static {v0, v1}, Lcom/sec/factory/support/NVAccessor;->setNV(BB)V

    .line 49
    const-string v0, "NVService"

    const-string v1, "setTestNV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public turnoffSupportService()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/factory/support/NVService$1;->this$0:Lcom/sec/factory/support/NVService;

    const-class v2, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    iget-object v1, p0, Lcom/sec/factory/support/NVService$1;->this$0:Lcom/sec/factory/support/NVService;

    invoke-virtual {v1, v0}, Lcom/sec/factory/support/NVService;->stopService(Landroid/content/Intent;)Z

    .line 60
    return-void
.end method
