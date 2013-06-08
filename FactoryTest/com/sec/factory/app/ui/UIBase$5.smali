.class Lcom/sec/factory/app/ui/UIBase$5;
.super Ljava/util/TimerTask;
.source "UIBase.java"


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

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIBase;Ljava/util/Timer;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBase$5;->this$0:Lcom/sec/factory/app/ui/UIBase;

    iput-object p2, p0, Lcom/sec/factory/app/ui/UIBase$5;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$5;->this$0:Lcom/sec/factory/app/ui/UIBase;

    #getter for: Lcom/sec/factory/app/ui/UIBase;->mLogResult:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBase;->access$500(Lcom/sec/factory/app/ui/UIBase;)I

    move-result v0

    if-lez v0, :cond_1c

    .line 381
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$5;->this$0:Lcom/sec/factory/app/ui/UIBase;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 382
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$5;->this$0:Lcom/sec/factory/app/ui/UIBase;

    const/4 v1, -0x1

    #setter for: Lcom/sec/factory/app/ui/UIBase;->mLogResult:I
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UIBase;->access$502(Lcom/sec/factory/app/ui/UIBase;I)I

    .line 383
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$5;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 385
    :cond_1c
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$5;->this$0:Lcom/sec/factory/app/ui/UIBase;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "doDumpState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sysdump_time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBase$5;->this$0:Lcom/sec/factory/app/ui/UIBase;

    #getter for: Lcom/sec/factory/app/ui/UIBase;->mDumpTime:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIBase;->access$600(Lcom/sec/factory/app/ui/UIBase;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$5;->this$0:Lcom/sec/factory/app/ui/UIBase;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "doDumpState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLogResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBase$5;->this$0:Lcom/sec/factory/app/ui/UIBase;

    #getter for: Lcom/sec/factory/app/ui/UIBase;->mLogResult:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIBase;->access$500(Lcom/sec/factory/app/ui/UIBase;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method
