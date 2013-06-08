.class Lcom/sec/factory/cporiented/FtClientCPO$2;
.super Ljava/lang/Thread;
.source "FtClientCPO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/cporiented/FtClientCPO;->rebindToSecPhoneService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/cporiented/FtClientCPO;


# direct methods
.method constructor <init>(Lcom/sec/factory/cporiented/FtClientCPO;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sec/factory/cporiented/FtClientCPO$2;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 160
    :goto_0
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO$2;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #getter for: Lcom/sec/factory/cporiented/FtClientCPO;->mSecPhoneServiceMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/sec/factory/cporiented/FtClientCPO;->access$000(Lcom/sec/factory/cporiented/FtClientCPO;)Landroid/os/Messenger;

    move-result-object v1

    if-nez v1, :cond_20

    .line 161
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO$2;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    invoke-virtual {v1}, Lcom/sec/factory/cporiented/FtClientCPO;->connectToSecPhoneService()V

    .line 163
    const-wide/16 v1, 0x3e8

    :try_start_f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_0

    .line 164
    :catch_13
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO$2;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v1, v1, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "rebindToSecPhoneService"

    const-string v3, "sleep interrupted."

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_20
    return-void
.end method
