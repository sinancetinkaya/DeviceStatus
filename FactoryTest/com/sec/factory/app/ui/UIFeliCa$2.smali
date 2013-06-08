.class Lcom/sec/factory/app/ui/UIFeliCa$2;
.super Landroid/content/BroadcastReceiver;
.source "UIFeliCa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIFeliCa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIFeliCa;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIFeliCa;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIFeliCa$2;->this$0:Lcom/sec/factory/app/ui/UIFeliCa;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const v7, 0x7f09008c

    const/16 v6, 0x50

    const/16 v5, 0x1e

    .line 48
    const-string v3, "UIFeliCa"

    const-string v4, "onReceive(Context context, Intent intent)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, nvValue:B
    invoke-static {v5}, Lcom/sec/factory/support/NVAccessor;->getNV(B)B

    move-result v1

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    const-string v2, ""

    .line 53
    .local v2, resData:Ljava/lang/String;
    const-string v3, "com.sec.android.app.felicatest.FELICA_TEST_POLLING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 54
    const-string v3, "S_DATA"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 56
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIFeliCa$2;->this$0:Lcom/sec/factory/app/ui/UIFeliCa;

    const/4 v4, 0x1

    #setter for: Lcom/sec/factory/app/ui/UIFeliCa;->mIsPassed_reader:Z
    invoke-static {v3, v4}, Lcom/sec/factory/app/ui/UIFeliCa;->access$002(Lcom/sec/factory/app/ui/UIFeliCa;Z)Z

    .line 57
    if-eq v1, v6, :cond_3a

    .line 58
    invoke-static {v5, v6}, Lcom/sec/factory/support/NVAccessor;->setNV(BB)V

    .line 60
    :cond_3a
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIFeliCa$2;->this$0:Lcom/sec/factory/app/ui/UIFeliCa;

    const-string v4, "PASS"

    const v5, -0xffff01

    #calls: Lcom/sec/factory/app/ui/UIFeliCa;->updateDisplay(ILjava/lang/String;I)V
    invoke-static {v3, v7, v4, v5}, Lcom/sec/factory/app/ui/UIFeliCa;->access$100(Lcom/sec/factory/app/ui/UIFeliCa;ILjava/lang/String;I)V

    .line 68
    :goto_44
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIFeliCa$2;->this$0:Lcom/sec/factory/app/ui/UIFeliCa;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIFeliCa;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 70
    :cond_4e
    return-void

    .line 62
    :cond_4f
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIFeliCa$2;->this$0:Lcom/sec/factory/app/ui/UIFeliCa;

    const/4 v4, 0x0

    #setter for: Lcom/sec/factory/app/ui/UIFeliCa;->mIsPassed_reader:Z
    invoke-static {v3, v4}, Lcom/sec/factory/app/ui/UIFeliCa;->access$002(Lcom/sec/factory/app/ui/UIFeliCa;Z)Z

    .line 63
    if-eq v1, v6, :cond_5c

    .line 64
    const/16 v3, 0x46

    invoke-static {v5, v3}, Lcom/sec/factory/support/NVAccessor;->setNV(BB)V

    .line 66
    :cond_5c
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIFeliCa$2;->this$0:Lcom/sec/factory/app/ui/UIFeliCa;

    const-string v4, "FAIL"

    const/high16 v5, -0x1

    #calls: Lcom/sec/factory/app/ui/UIFeliCa;->updateDisplay(ILjava/lang/String;I)V
    invoke-static {v3, v7, v4, v5}, Lcom/sec/factory/app/ui/UIFeliCa;->access$100(Lcom/sec/factory/app/ui/UIFeliCa;ILjava/lang/String;I)V

    goto :goto_44
.end method
