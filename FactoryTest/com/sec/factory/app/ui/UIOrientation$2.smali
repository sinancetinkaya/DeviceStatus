.class Lcom/sec/factory/app/ui/UIOrientation$2;
.super Ljava/lang/Object;
.source "UIOrientation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UIOrientation;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIOrientation;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIOrientation;)V
    .registers 2
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIOrientation$2;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation$2;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Thread Run"

    const-string v2, "Start"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation$2;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->getImage()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIOrientation;->access$3200(Lcom/sec/factory/app/ui/UIOrientation;)V

    .line 525
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation$2;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mGetImageThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIOrientation;->access$3300(Lcom/sec/factory/app/ui/UIOrientation;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_27

    .line 526
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation$2;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIOrientation;->access$700(Lcom/sec/factory/app/ui/UIOrientation;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 529
    :cond_27
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation$2;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Thread Run"

    const-string v2, "End"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void
.end method
