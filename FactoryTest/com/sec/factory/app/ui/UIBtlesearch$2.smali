.class Lcom/sec/factory/app/ui/UIBtlesearch$2;
.super Ljava/util/TimerTask;
.source "UIBtlesearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UIBtlesearch;->createNewTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIBtlesearch;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIBtlesearch;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBtlesearch$2;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$2;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mCount:I
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$100(Lcom/sec/factory/app/ui/UIBtlesearch;)I

    move-result v0

    if-lez v0, :cond_1a

    .line 169
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$2;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$120(Lcom/sec/factory/app/ui/UIBtlesearch;I)I

    .line 170
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$2;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$800(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 174
    :goto_19
    return-void

    .line 172
    :cond_1a
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$2;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$800(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_19
.end method
