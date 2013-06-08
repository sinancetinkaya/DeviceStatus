.class Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;
.super Ljava/lang/Thread;
.source "ModuleTouchScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/ModuleTouchScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TSPThread"
.end annotation


# instance fields
.field mNotiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/factory/modules/ModuleTouchScreen;


# direct methods
.method private constructor <init>(Lcom/sec/factory/modules/ModuleTouchScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->this$0:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/factory/modules/ModuleTouchScreen;Lcom/sec/factory/modules/ModuleTouchScreen$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;-><init>(Lcom/sec/factory/modules/ModuleTouchScreen;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;Landroid/os/Handler;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->setHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private setHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "notiHandler"

    .prologue
    .line 597
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->mNotiHandler:Landroid/os/Handler;

    .line 598
    return-void
.end method


# virtual methods
.method public run(ILjava/lang/String;)V
    .registers 10
    .parameter "tspID"
    .parameter "subCommand"

    .prologue
    .line 601
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->this$0:Lcom/sec/factory/modules/ModuleTouchScreen;

    iget-object v3, v3, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "TSPStatus.run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TSP ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->this$0:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-virtual {v6, p1}, Lcom/sec/factory/modules/ModuleTouchScreen;->convertorTSPID(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->this$0:Lcom/sec/factory/modules/ModuleTouchScreen;

    iget-object v3, v3, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "TSPStatus.run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sub Command : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    sget v3, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RESULT_CONNECTION:I

    if-ne p1, v3, :cond_72

    .line 605
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->this$0:Lcom/sec/factory/modules/ModuleTouchScreen;

    #calls: Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult_Connection()Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/modules/ModuleTouchScreen;->access$000(Lcom/sec/factory/modules/ModuleTouchScreen;)Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->this$0:Lcom/sec/factory/modules/ModuleTouchScreen;

    iget-object v3, v3, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "TSPStatus.run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TSP_ID__RESULT_CONNECTION => result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->mNotiHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->mNotiHandler:Landroid/os/Handler;

    sget v5, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_STATUS_OK:I

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 636
    .end local v1           #result:Ljava/lang/String;
    :goto_71
    return-void

    .line 610
    :cond_72
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->this$0:Lcom/sec/factory/modules/ModuleTouchScreen;

    #calls: Lcom/sec/factory/modules/ModuleTouchScreen;->mapping_IdNCommand(I)Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/sec/factory/modules/ModuleTouchScreen;->access$100(Lcom/sec/factory/modules/ModuleTouchScreen;I)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, command:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->this$0:Lcom/sec/factory/modules/ModuleTouchScreen;

    iget-object v3, v3, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "TSPStatus.run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Main Command : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v3, "NA"

    if-eq v0, v3, :cond_e8

    .line 614
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->this$0:Lcom/sec/factory/modules/ModuleTouchScreen;

    #calls: Lcom/sec/factory/modules/ModuleTouchScreen;->setTSPCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0, p2}, Lcom/sec/factory/modules/ModuleTouchScreen;->access$200(Lcom/sec/factory/modules/ModuleTouchScreen;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, status:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->this$0:Lcom/sec/factory/modules/ModuleTouchScreen;

    #calls: Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPCommandResult()Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/modules/ModuleTouchScreen;->access$300(Lcom/sec/factory/modules/ModuleTouchScreen;)Ljava/lang/String;

    move-result-object v1

    .line 618
    .restart local v1       #result:Ljava/lang/String;
    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 619
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->this$0:Lcom/sec/factory/modules/ModuleTouchScreen;

    iget-object v3, v3, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "TSPStatus.run"

    const-string v5, "sendMessage == TSP_WHAT_STATUS_OK"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->mNotiHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->mNotiHandler:Landroid/os/Handler;

    sget v5, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_STATUS_OK:I

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_71

    .line 623
    :cond_c5
    const-string v3, "NOT_APPLICABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 624
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->mNotiHandler:Landroid/os/Handler;

    sget v4, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_STATUS_NA:I

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_71

    .line 626
    :cond_d5
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->this$0:Lcom/sec/factory/modules/ModuleTouchScreen;

    iget-object v3, v3, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "TSPStatus.run"

    const-string v5, "sendMessage == TSP_WHAT_STATUS_NG"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->mNotiHandler:Landroid/os/Handler;

    sget v4, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_STATUS_NG:I

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_71

    .line 631
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #status:Ljava/lang/String;
    :cond_e8
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->this$0:Lcom/sec/factory/modules/ModuleTouchScreen;

    iget-object v3, v3, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "TSPStatus.run"

    const-string v5, "command==null"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->this$0:Lcom/sec/factory/modules/ModuleTouchScreen;

    iget-object v3, v3, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "TSPStatus.run"

    const-string v5, "sendMessage == TSP_WHAT_STATUS_NG"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->mNotiHandler:Landroid/os/Handler;

    sget v4, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_STATUS_NA:I

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_71
.end method
