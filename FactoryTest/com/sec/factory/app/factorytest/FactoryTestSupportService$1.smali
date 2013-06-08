.class Lcom/sec/factory/app/factorytest/FactoryTestSupportService$1;
.super Landroid/telephony/PhoneStateListener;
.source "FactoryTestSupportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/factorytest/FactoryTestSupportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestSupportService;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestSupportService;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestSupportService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 146
    packed-switch p1, :pswitch_data_2a

    .line 163
    :goto_3
    return-void

    .line 148
    :pswitch_4
    const-string v0, "FactoryTestSupportService"

    const-string v1, "mPhoneStateListener.onCallStateChanged"

    const-string v2, "call state offhook"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestSupportService;

    const/16 v1, 0x1d

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->updateDetectedItem(C)V
    invoke-static {v0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestSupportService;C)V

    goto :goto_3

    .line 154
    :pswitch_15
    const-string v0, "FactoryTestSupportService"

    const-string v1, "mPhoneStateListener.onCallStateChanged"

    const-string v2, "call state idle"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 159
    :pswitch_1f
    const-string v0, "FactoryTestSupportService"

    const-string v1, "mPhoneStateListener.onCallStateChanged"

    const-string v2, "call state ringing"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 146
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_1f
        :pswitch_4
    .end packed-switch
.end method
