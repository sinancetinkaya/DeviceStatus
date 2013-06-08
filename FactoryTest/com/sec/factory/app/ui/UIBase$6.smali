.class Lcom/sec/factory/app/ui/UIBase$6;
.super Ljava/lang/Object;
.source "UIBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UIBase;->doDumpState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIBase;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIBase;)V
    .registers 2
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBase$6;->this$0:Lcom/sec/factory/app/ui/UIBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 392
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, dataLogDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 394
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 397
    :cond_10
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase$6;->this$0:Lcom/sec/factory/app/ui/UIBase;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIBase$6;->this$0:Lcom/sec/factory/app/ui/UIBase;

    #getter for: Lcom/sec/factory/app/ui/UIBase;->mFactoryDump:Lcom/sec/factory/app/factorytest/FactoryTestDump;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIBase;->access$400(Lcom/sec/factory/app/ui/UIBase;)Lcom/sec/factory/app/factorytest/FactoryTestDump;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpstate > /data/log/15TEST_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIBase$6;->this$0:Lcom/sec/factory/app/ui/UIBase;

    #getter for: Lcom/sec/factory/app/ui/UIBase;->mCurrentStage:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIBase;->access$700(Lcom/sec/factory/app/ui/UIBase;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIBase$6;->this$0:Lcom/sec/factory/app/ui/UIBase;

    #getter for: Lcom/sec/factory/app/ui/UIBase;->mDumpTime:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIBase;->access$600(Lcom/sec/factory/app/ui/UIBase;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/app/factorytest/FactoryTestDump;->DoShellCmd(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/sec/factory/app/ui/UIBase;->mLogResult:I
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIBase;->access$502(Lcom/sec/factory/app/ui/UIBase;I)I

    .line 401
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase$6;->this$0:Lcom/sec/factory/app/ui/UIBase;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "doDumpState"

    const-string v3, "Finish DumpThread"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method
