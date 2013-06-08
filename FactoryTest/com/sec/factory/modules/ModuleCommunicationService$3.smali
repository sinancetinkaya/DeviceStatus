.class Lcom/sec/factory/modules/ModuleCommunicationService$3;
.super Ljava/lang/Thread;
.source "ModuleCommunicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/modules/ModuleCommunicationService;->nfcEnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/ModuleCommunicationService;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/ModuleCommunicationService;)V
    .registers 2
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleCommunicationService$3;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 602
    invoke-static {}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$1200()Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v0

    .line 603
    .local v0, on:Z
    if-eqz v0, :cond_20

    .line 604
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService$3;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.nfctest.NFC_DISCOVERY_DISABLE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 606
    const-string v1, "ModuleCommunicationService"

    const-string v2, "nfcEnable"

    const-string v3, "NFC is turned on!"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :goto_1f
    return-void

    .line 608
    :cond_20
    const-string v1, "ModuleCommunicationService"

    const-string v2, "nfcEnable"

    const-string v3, "NFC is not turned on!"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method
