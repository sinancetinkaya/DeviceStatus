.class Lcom/sec/factory/modules/ModuleDevice$1;
.super Landroid/content/BroadcastReceiver;
.source "ModuleDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/ModuleDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/ModuleDevice;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/ModuleDevice;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, action:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v4, v4, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mMediaStateReceiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<ACTION_MEDIA_INTENT> action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13d

    .line 302
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedExternalStorage:Z
    invoke-static {v4}, Lcom/sec/factory/modules/ModuleDevice;->access$000(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v1

    .line 303
    .local v1, wasMountedExternalStorage:Z
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorage:Z
    invoke-static {v4}, Lcom/sec/factory/modules/ModuleDevice;->access$100(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v2

    .line 304
    .local v2, wasMountedUsbStorage:Z
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorageB:Z
    invoke-static {v4}, Lcom/sec/factory/modules/ModuleDevice;->access$200(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v3

    .line 305
    .local v3, wasMountedUsbStorageB:Z
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #calls: Lcom/sec/factory/modules/ModuleDevice;->updateStorageMountState()V
    invoke-static {v4}, Lcom/sec/factory/modules/ModuleDevice;->access$300(Lcom/sec/factory/modules/ModuleDevice;)V

    .line 307
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v4, v4, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mMediaStateReceiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<ACTION_MEDIA_MOUNTED> wasMountedExternalStorage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v4, v4, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mMediaStateReceiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<ACTION_MEDIA_MOUNTED> mIsMountedExternalStorage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedExternalStorage:Z
    invoke-static {v7}, Lcom/sec/factory/modules/ModuleDevice;->access$000(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v4, v4, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mMediaStateReceiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<ACTION_MEDIA_MOUNTED> wasMountedUsbStorage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v4, v4, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mMediaStateReceiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<ACTION_MEDIA_MOUNTED> mIsMountedUsbStorage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorage:Z
    invoke-static {v7}, Lcom/sec/factory/modules/ModuleDevice;->access$100(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v4, v4, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mMediaStateReceiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<ACTION_MEDIA_MOUNTED> wasMountedUsbStorage_B : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v4, v4, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mMediaStateReceiver. onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<ACTION_MEDIA_MOUNTED> mIsMountedUsbStorage_B : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorageB:Z
    invoke-static {v7}, Lcom/sec/factory/modules/ModuleDevice;->access$200(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    if-nez v1, :cond_110

    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedExternalStorage:Z
    invoke-static {v4}, Lcom/sec/factory/modules/ModuleDevice;->access$000(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v4

    if-ne v4, v8, :cond_110

    .line 323
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.factory.action.ACTION_EXTERNAL_STORAGE_MOUNTED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    :cond_110
    if-nez v2, :cond_126

    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorage:Z
    invoke-static {v4}, Lcom/sec/factory/modules/ModuleDevice;->access$100(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v4

    if-ne v4, v8, :cond_126

    .line 326
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.factory.action.ACTION_USB_STORAGE_MOUNTED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    :cond_126
    if-nez v3, :cond_13c

    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorageB:Z
    invoke-static {v4}, Lcom/sec/factory/modules/ModuleDevice;->access$200(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v4

    if-ne v4, v8, :cond_13c

    .line 330
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.factory.action.ACTION_USB_STORAGE_MOUNTED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->sendBroadcast(Landroid/content/Intent;)V

    .line 363
    .end local v1           #wasMountedExternalStorage:Z
    .end local v2           #wasMountedUsbStorage:Z
    .end local v3           #wasMountedUsbStorageB:Z
    :cond_13c
    :goto_13c
    return-void

    .line 332
    :cond_13d
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13c

    .line 333
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedExternalStorage:Z
    invoke-static {v4}, Lcom/sec/factory/modules/ModuleDevice;->access$000(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v1

    .line 334
    .restart local v1       #wasMountedExternalStorage:Z
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorage:Z
    invoke-static {v4}, Lcom/sec/factory/modules/ModuleDevice;->access$100(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v2

    .line 335
    .restart local v2       #wasMountedUsbStorage:Z
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorageB:Z
    invoke-static {v4}, Lcom/sec/factory/modules/ModuleDevice;->access$200(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v3

    .line 336
    .restart local v3       #wasMountedUsbStorageB:Z
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #calls: Lcom/sec/factory/modules/ModuleDevice;->updateStorageMountState()V
    invoke-static {v4}, Lcom/sec/factory/modules/ModuleDevice;->access$300(Lcom/sec/factory/modules/ModuleDevice;)V

    .line 338
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v4, v4, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mMediaStateReceiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<ACTION_MEDIA_UNMOUNTED> wasMountedExternalStorage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v4, v4, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mMediaStateReceiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<ACTION_MEDIA_UNMOUNTED> mIsMountedExternalStorage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedExternalStorage:Z
    invoke-static {v7}, Lcom/sec/factory/modules/ModuleDevice;->access$000(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v4, v4, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mMediaStateReceiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<ACTION_MEDIA_UNMOUNTED> wasMountedUsbStorage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v4, v4, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mMediaStateReceiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<ACTION_MEDIA_UNMOUNTED> mIsMountedUsbStorage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorage:Z
    invoke-static {v7}, Lcom/sec/factory/modules/ModuleDevice;->access$100(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v4, v4, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mMediaStateReceiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<ACTION_MEDIA_MOUNTED> wasMountedUsbStorage_B : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    iget-object v4, v4, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "mMediaStateReceiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<ACTION_MEDIA_MOUNTED> mIsMountedUsbStorage_B : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorageB:Z
    invoke-static {v7}, Lcom/sec/factory/modules/ModuleDevice;->access$200(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    if-ne v1, v8, :cond_22c

    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedExternalStorage:Z
    invoke-static {v4}, Lcom/sec/factory/modules/ModuleDevice;->access$000(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v4

    if-nez v4, :cond_22c

    .line 354
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.factory.action.ACTION_EXTERNAL_STORAGE_UNMOUNTED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    :cond_22c
    if-ne v2, v8, :cond_242

    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorage:Z
    invoke-static {v4}, Lcom/sec/factory/modules/ModuleDevice;->access$100(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v4

    if-nez v4, :cond_242

    .line 357
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.factory.action.ACTION_USB_STORAGE_UNMOUNTED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    :cond_242
    if-ne v3, v8, :cond_13c

    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    #getter for: Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorageB:Z
    invoke-static {v4}, Lcom/sec/factory/modules/ModuleDevice;->access$200(Lcom/sec/factory/modules/ModuleDevice;)Z

    move-result v4

    if-nez v4, :cond_13c

    .line 360
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice$1;->this$0:Lcom/sec/factory/modules/ModuleDevice;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.factory.action.ACTION_USB_STORAGE_UNMOUNTED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_13c
.end method
