.class Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$4;
.super Landroid/os/Handler;
.source "AtFeliCaRfCal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->sendFeliCaTestCommand_pass(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

.field final synthetic val$cmd_id:I

.field final synthetic val$i_data:I


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;Landroid/os/Looper;II)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$4;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iput p3, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$4;->val$cmd_id:I

    iput p4, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$4;->val$i_data:I

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.felicatest.FELICA_TEST_PASS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CMDID"

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$4;->val$cmd_id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    const-string v1, "I_DATA"

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$4;->val$i_data:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$4;->this$0:Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    return-void
.end method
