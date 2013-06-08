.class Lcom/sec/factory/app/factorytest/FactoryTestPhone$2;
.super Ljava/lang/Thread;
.source "FactoryTestPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/factorytest/FactoryTestPhone;->rebindToSecPhoneService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)V
    .registers 2
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 275
    :goto_0
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$100(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Landroid/os/Messenger;

    move-result-object v1

    if-nez v1, :cond_22

    .line 276
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 278
    const-wide/16 v1, 0x1f4

    :try_start_f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_0

    .line 279
    :catch_13
    move-exception v0

    .line 280
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rebindToSecPhoneService"

    const-string v3, "rebindToSecPhoneService : sleep interrupted."

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_22
    return-void
.end method
