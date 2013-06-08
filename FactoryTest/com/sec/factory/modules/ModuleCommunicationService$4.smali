.class Lcom/sec/factory/modules/ModuleCommunicationService$4;
.super Ljava/lang/Thread;
.source "ModuleCommunicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/modules/ModuleCommunicationService;->nfcDisable()V
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
    .line 629
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleCommunicationService$4;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 631
    invoke-static {}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$1200()Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v0

    .line 632
    .local v0, off:Z
    if-eqz v0, :cond_14

    .line 633
    const-string v1, "ModuleCommunicationService"

    const-string v2, "nfcDisable"

    const-string v3, "NFC off success!"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :goto_13
    return-void

    .line 635
    :cond_14
    const-string v1, "ModuleCommunicationService"

    const-string v2, "nfcDisable"

    const-string v3, "NFC off fail!"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method
