.class Lcom/sec/factory/app/ui/UIBase$3;
.super Ljava/util/TimerTask;
.source "UIBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UIBase;->doCopyDumpOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIBase;

.field final synthetic val$copytimer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIBase;Ljava/util/Timer;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBase$3;->this$0:Lcom/sec/factory/app/ui/UIBase;

    iput-object p2, p0, Lcom/sec/factory/app/ui/UIBase$3;->val$copytimer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$3;->this$0:Lcom/sec/factory/app/ui/UIBase;

    #getter for: Lcom/sec/factory/app/ui/UIBase;->mCopyDumpResult:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBase;->access$300(Lcom/sec/factory/app/ui/UIBase;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 346
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$3;->this$0:Lcom/sec/factory/app/ui/UIBase;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 347
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$3;->this$0:Lcom/sec/factory/app/ui/UIBase;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UIBase;->mCopyDumpResult:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UIBase;->access$302(Lcom/sec/factory/app/ui/UIBase;Z)Z

    .line 348
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$3;->val$copytimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 351
    :cond_1c
    return-void
.end method
