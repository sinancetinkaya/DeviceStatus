.class Lcom/sec/factory/app/ui/UITSPSelfTest$1;
.super Landroid/os/Handler;
.source "UITSPSelfTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UITSPSelfTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UITSPSelfTest;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_STATUS_OK:I

    if-ne v0, v1, :cond_27

    .line 164
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessage"

    const-string v2, "TSP_WHAT_STATUS_OK"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/factory/app/ui/UITSPSelfTest;->displayTSPItem(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UITSPSelfTest;->access$000(Lcom/sec/factory/app/ui/UITSPSelfTest;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    invoke-static {v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->access$108(Lcom/sec/factory/app/ui/UITSPSelfTest;)I

    .line 167
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    #calls: Lcom/sec/factory/app/ui/UITSPSelfTest;->startTSPTest()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->access$200(Lcom/sec/factory/app/ui/UITSPSelfTest;)V

    .line 185
    :cond_26
    :goto_26
    return-void

    .line 168
    :cond_27
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_STATUS_NG:I

    if-ne v0, v1, :cond_50

    .line 169
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessage"

    const-string v2, "TSP_WHAT_STATUS_NG"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UITSPSelfTest;->mIsPass:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UITSPSelfTest;->access$302(Lcom/sec/factory/app/ui/UITSPSelfTest;Z)Z

    .line 171
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    const-string v1, "FAIL"

    #calls: Lcom/sec/factory/app/ui/UITSPSelfTest;->displayTSPItem(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UITSPSelfTest;->access$000(Lcom/sec/factory/app/ui/UITSPSelfTest;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    invoke-static {v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->access$108(Lcom/sec/factory/app/ui/UITSPSelfTest;)I

    .line 173
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    #calls: Lcom/sec/factory/app/ui/UITSPSelfTest;->startTSPTest()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->access$200(Lcom/sec/factory/app/ui/UITSPSelfTest;)V

    goto :goto_26

    .line 174
    :cond_50
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_STATUS_NA:I

    if-ne v0, v1, :cond_73

    .line 175
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessage"

    const-string v2, "TSP_WHAT_STATUS_NA"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    const-string v1, "NA"

    #calls: Lcom/sec/factory/app/ui/UITSPSelfTest;->displayTSPItem(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UITSPSelfTest;->access$000(Lcom/sec/factory/app/ui/UITSPSelfTest;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    invoke-static {v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->access$108(Lcom/sec/factory/app/ui/UITSPSelfTest;)I

    .line 178
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    #calls: Lcom/sec/factory/app/ui/UITSPSelfTest;->startTSPTest()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->access$200(Lcom/sec/factory/app/ui/UITSPSelfTest;)V

    goto :goto_26

    .line 179
    :cond_73
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    #getter for: Lcom/sec/factory/app/ui/UITSPSelfTest;->WHAT_TEST_START:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITSPSelfTest;->access$400(Lcom/sec/factory/app/ui/UITSPSelfTest;)I

    move-result v1

    if-ne v0, v1, :cond_8e

    .line 180
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessage"

    const-string v2, "WHAT_TEST_START"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    #calls: Lcom/sec/factory/app/ui/UITSPSelfTest;->startTSPTest()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->access$200(Lcom/sec/factory/app/ui/UITSPSelfTest;)V

    goto :goto_26

    .line 182
    :cond_8e
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    #getter for: Lcom/sec/factory/app/ui/UITSPSelfTest;->WHAT_TEST_FINISH:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UITSPSelfTest;->access$500(Lcom/sec/factory/app/ui/UITSPSelfTest;)I

    move-result v1

    if-ne v0, v1, :cond_26

    .line 183
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;->this$0:Lcom/sec/factory/app/ui/UITSPSelfTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessage"

    const-string v2, "WHAT_TEST_FINISH"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method
