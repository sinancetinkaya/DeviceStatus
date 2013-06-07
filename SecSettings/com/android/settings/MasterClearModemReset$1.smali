.class Lcom/android/settings/MasterClearModemReset$1;
.super Landroid/os/Handler;
.source "MasterClearModemReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClearModemReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClearModemReset;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearModemReset;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/MasterClearModemReset$1;->this$0:Lcom/android/settings/MasterClearModemReset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 79
    const-string v0, "MasterClearModemReset"

    const-string v1, "Something weird happened"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_c
    return-void

    .line 75
    :pswitch_d
    const-string v0, "MasterClearModemReset"

    const-string v1, "Modem reset is done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/settings/MasterClearModemReset$1;->this$0:Lcom/android/settings/MasterClearModemReset;

    #calls: Lcom/android/settings/MasterClearModemReset;->sendMasterClearIntent()V
    invoke-static {v0}, Lcom/android/settings/MasterClearModemReset;->access$000(Lcom/android/settings/MasterClearModemReset;)V

    goto :goto_c

    .line 73
    :pswitch_data_1a
    .packed-switch 0x3f0
        :pswitch_d
    .end packed-switch
.end method
