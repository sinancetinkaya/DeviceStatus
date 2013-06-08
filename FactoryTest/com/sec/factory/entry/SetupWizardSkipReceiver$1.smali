.class Lcom/sec/factory/entry/SetupWizardSkipReceiver$1;
.super Landroid/database/ContentObserver;
.source "SetupWizardSkipReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/entry/SetupWizardSkipReceiver;->EnableSetupWizard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/entry/SetupWizardSkipReceiver;


# direct methods
.method constructor <init>(Lcom/sec/factory/entry/SetupWizardSkipReceiver;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$1;->this$0:Lcom/sec/factory/entry/SetupWizardSkipReceiver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 408
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 409
    iget-object v1, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$1;->this$0:Lcom/sec/factory/entry/SetupWizardSkipReceiver;

    iget-object v2, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$1;->this$0:Lcom/sec/factory/entry/SetupWizardSkipReceiver;

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->access$500(Lcom/sec/factory/entry/SetupWizardSkipReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_19

    const/4 v0, 0x1

    :cond_19
    #setter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mDeviceProvisioned:Z
    invoke-static {v1, v0}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->access$402(Lcom/sec/factory/entry/SetupWizardSkipReceiver;Z)Z

    .line 411
    iget-object v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$1;->this$0:Lcom/sec/factory/entry/SetupWizardSkipReceiver;

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mDeviceProvisioned:Z
    invoke-static {v0}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->access$400(Lcom/sec/factory/entry/SetupWizardSkipReceiver;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$1;->this$0:Lcom/sec/factory/entry/SetupWizardSkipReceiver;

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v0}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->access$600(Lcom/sec/factory/entry/SetupWizardSkipReceiver;)Landroid/database/ContentObserver;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 413
    iget-object v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$1;->this$0:Lcom/sec/factory/entry/SetupWizardSkipReceiver;

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->access$500(Lcom/sec/factory/entry/SetupWizardSkipReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$1;->this$0:Lcom/sec/factory/entry/SetupWizardSkipReceiver;

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->access$600(Lcom/sec/factory/entry/SetupWizardSkipReceiver;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 414
    iget-object v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$1;->this$0:Lcom/sec/factory/entry/SetupWizardSkipReceiver;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v0, v1}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->access$602(Lcom/sec/factory/entry/SetupWizardSkipReceiver;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 416
    :cond_45
    const-string v0, "SetupWizardSkipReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVICE_PROVISIONED state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$1;->this$0:Lcom/sec/factory/entry/SetupWizardSkipReceiver;

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mDeviceProvisioned:Z
    invoke-static {v2}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->access$400(Lcom/sec/factory/entry/SetupWizardSkipReceiver;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method
