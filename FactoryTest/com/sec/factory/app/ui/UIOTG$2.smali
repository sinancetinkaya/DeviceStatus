.class Lcom/sec/factory/app/ui/UIOTG$2;
.super Landroid/content/BroadcastReceiver;
.source "UIOTG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIOTG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIOTG;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIOTG;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIOTG$2;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOTG$2;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIOTG;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "mStorageReceiver-onReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOTG$2;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIOTG;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "mStorageReceiver-onReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 92
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOTG$2;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    #getter for: Lcom/sec/factory/app/ui/UIOTG;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOTG;->access$300(Lcom/sec/factory/app/ui/UIOTG;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 96
    :cond_56
    :goto_56
    return-void

    .line 93
    :cond_57
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 94
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOTG$2;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    #getter for: Lcom/sec/factory/app/ui/UIOTG;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOTG;->access$300(Lcom/sec/factory/app/ui/UIOTG;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_56
.end method
