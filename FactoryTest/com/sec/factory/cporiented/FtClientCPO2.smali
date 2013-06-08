.class public Lcom/sec/factory/cporiented/FtClientCPO2;
.super Lcom/sec/factory/cporiented/FtClientCPO;
.source "FtClientCPO2.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/sec/factory/cporiented/FtClientCPO;-><init>()V

    .line 11
    const-string v0, "FtClientCPO2"

    invoke-virtual {p0, v0}, Lcom/sec/factory/cporiented/FtClientCPO2;->setClassName(Ljava/lang/String;)V

    .line 12
    const-string v0, "com.sec.phone.SecPhoneService2"

    invoke-virtual {p0, v0}, Lcom/sec/factory/cporiented/FtClientCPO2;->setBindSvcName(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO2;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "FtClientCPO2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/cporiented/FtClientCPO2;->BIND_SVC_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method
