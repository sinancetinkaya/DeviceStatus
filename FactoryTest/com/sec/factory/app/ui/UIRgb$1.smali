.class Lcom/sec/factory/app/ui/UIRgb$1;
.super Landroid/os/Handler;
.source "UIRgb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIRgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIRgb;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIRgb;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIRgb$1;->this$0:Lcom/sec/factory/app/ui/UIRgb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIRgb$1;->this$0:Lcom/sec/factory/app/ui/UIRgb;

    #getter for: Lcom/sec/factory/app/ui/UIRgb;->WHAT_UPDATE:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIRgb;->access$000(Lcom/sec/factory/app/ui/UIRgb;)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 55
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIRgb$1;->this$0:Lcom/sec/factory/app/ui/UIRgb;

    #calls: Lcom/sec/factory/app/ui/UIRgb;->update()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIRgb;->access$100(Lcom/sec/factory/app/ui/UIRgb;)V

    .line 61
    :cond_f
    :goto_f
    return-void

    .line 58
    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIRgb$1;->this$0:Lcom/sec/factory/app/ui/UIRgb;

    #getter for: Lcom/sec/factory/app/ui/UIRgb;->WHAT_EXIT:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIRgb;->access$200(Lcom/sec/factory/app/ui/UIRgb;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 59
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIRgb$1;->this$0:Lcom/sec/factory/app/ui/UIRgb;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIRgb;->finish()V

    goto :goto_f
.end method
