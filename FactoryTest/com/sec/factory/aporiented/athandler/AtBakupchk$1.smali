.class Lcom/sec/factory/aporiented/athandler/AtBakupchk$1;
.super Landroid/os/Handler;
.source "AtBakupchk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/aporiented/athandler/AtBakupchk;->doSystemCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtBakupchk;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtBakupchk;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBakupchk;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBakupchk;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 90
    .local v0, pm:Landroid/os/PowerManager;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_ac

    .line 115
    :goto_11
    return-void

    .line 92
    :pswitch_12
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBakupchk;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "nvBackupHandler"

    const-string v3, "I_NVBACKUP "

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "nvbackup"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBakupchk;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "nvBackupHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NVBACKUP done, mNResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBakupchk;

    #getter for: Lcom/sec/factory/aporiented/athandler/AtBakupchk;->mNResult:I
    invoke-static {v4}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->access$000(Lcom/sec/factory/aporiented/athandler/AtBakupchk;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 99
    :pswitch_45
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBakupchk;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "nvBackupHandler"

    const-string v3, "I_NVBACKUP "

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "nverase"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBakupchk;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "nvBackupHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NVERASE done, mNResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBakupchk;

    #getter for: Lcom/sec/factory/aporiented/athandler/AtBakupchk;->mNResult:I
    invoke-static {v4}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->access$000(Lcom/sec/factory/aporiented/athandler/AtBakupchk;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 106
    :pswitch_78
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBakupchk;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "nvBackupHandler"

    const-string v3, "I_NVRESTORE "

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "nvrestore"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBakupchk;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "nvBackupHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NVRESTORE done, mNResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBakupchk;

    #getter for: Lcom/sec/factory/aporiented/athandler/AtBakupchk;->mNResult:I
    invoke-static {v4}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->access$000(Lcom/sec/factory/aporiented/athandler/AtBakupchk;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 90
    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_12
        :pswitch_78
        :pswitch_45
    .end packed-switch
.end method
