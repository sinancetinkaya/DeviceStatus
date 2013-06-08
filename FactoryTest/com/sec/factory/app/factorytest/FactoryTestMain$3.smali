.class Lcom/sec/factory/app/factorytest/FactoryTestMain$3;
.super Landroid/os/Handler;
.source "FactoryTestMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestMain;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$3;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    if-ne v0, v1, :cond_40

    .line 196
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$3;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$1500(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mInnerTestResult.handleMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHAT_RESULT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$3;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-byte v1, v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-byte v2, v2

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResult(BB)V
    invoke-static {v0, v1, v2}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$1600(Lcom/sec/factory/app/factorytest/FactoryTestMain;BB)V

    .line 206
    :cond_3f
    :goto_3f
    return-void

    .line 199
    :cond_40
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT_FAIL_CASE:I

    if-ne v0, v1, :cond_5c

    .line 200
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$3;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$1700(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mInnerTestResult.handleMessage"

    const-string v2, "WHAT_RESULT_FAIL_CASE"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$3;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-byte v1, v1

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResultFailCase(B)V
    invoke-static {v0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$1800(Lcom/sec/factory/app/factorytest/FactoryTestMain;B)V

    goto :goto_3f

    .line 202
    :cond_5c
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT_WITHOUT_NV:I

    if-ne v0, v1, :cond_3f

    .line 203
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$3;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$1900(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mInnerTestResult.handleMessage"

    const-string v2, "WHAT_RESULT_WITHOUT_NV"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$3;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-byte v1, v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-byte v2, v2

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResultWithoutNV(BB)V
    invoke-static {v0, v1, v2}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$2000(Lcom/sec/factory/app/factorytest/FactoryTestMain;BB)V

    goto :goto_3f
.end method
