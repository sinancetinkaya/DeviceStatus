.class Lcom/sec/factory/app/ui/UIGrip$1;
.super Landroid/os/Handler;
.source "UIGrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIGrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIGrip;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIGrip;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIGrip$1;->this$0:Lcom/sec/factory/app/ui/UIGrip;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_UPDATAE:I

    if-ne v0, v1, :cond_1d

    .line 125
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip$1;->this$0:Lcom/sec/factory/app/ui/UIGrip;

    #getter for: Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIGrip;->access$100(Lcom/sec/factory/app/ui/UIGrip;)[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip$1;->this$0:Lcom/sec/factory/app/ui/UIGrip;

    #getter for: Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIGrip;->access$100(Lcom/sec/factory/app/ui/UIGrip;)[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1c

    .line 126
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip$1;->this$0:Lcom/sec/factory/app/ui/UIGrip;

    #calls: Lcom/sec/factory/app/ui/UIGrip;->startTest()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIGrip;->access$200(Lcom/sec/factory/app/ui/UIGrip;)V

    .line 133
    :cond_1c
    :goto_1c
    return-void

    .line 130
    :cond_1d
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip$1;->this$0:Lcom/sec/factory/app/ui/UIGrip;

    #getter for: Lcom/sec/factory/app/ui/UIGrip;->WHAT_EXIT:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIGrip;->access$300(Lcom/sec/factory/app/ui/UIGrip;)I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 131
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip$1;->this$0:Lcom/sec/factory/app/ui/UIGrip;

    #calls: Lcom/sec/factory/app/ui/UIGrip;->exit()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIGrip;->access$400(Lcom/sec/factory/app/ui/UIGrip;)V

    goto :goto_1c
.end method
