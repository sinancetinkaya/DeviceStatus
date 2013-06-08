.class public Lcom/sec/factory/aporiented/FtClient;
.super Landroid/app/Service;
.source "FtClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/aporiented/FtClient$ConnectionThread;
    }
.end annotation


# instance fields
.field clientSocket_recv:Landroid/net/LocalSocket;

.field clientSocket_send:Landroid/net/LocalSocket;

.field private connectionThread:Lcom/sec/factory/aporiented/FtClient$ConnectionThread;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsFirstCmd:Z

.field public parser:Lcom/sec/factory/aporiented/AtParser;

.field public writer:Lcom/sec/factory/aporiented/ResponseWriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/FtClient;->mIsFirstCmd:Z

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/aporiented/FtClient;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/sec/factory/aporiented/FtClient$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/FtClient$1;-><init>(Lcom/sec/factory/aporiented/FtClient;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/FtClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/aporiented/FtClient;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/factory/aporiented/FtClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/factory/aporiented/FtClient;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sec/factory/aporiented/FtClient;->mIsFirstCmd:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/factory/aporiented/FtClient;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sec/factory/aporiented/FtClient;->mIsFirstCmd:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/factory/aporiented/FtClient;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sec/factory/aporiented/FtClient;->setPendingIntent()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/factory/aporiented/FtClient;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/factory/aporiented/FtClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/factory/aporiented/FtClient;)Lcom/sec/factory/aporiented/FtClient$ConnectionThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/factory/aporiented/FtClient;->connectionThread:Lcom/sec/factory/aporiented/FtClient$ConnectionThread;

    return-object v0
.end method

.method private setPendingIntent()V
    .registers 11

    .prologue
    const/16 v9, 0x15b3

    const/4 v7, 0x0

    .line 304
    iget-object v4, p0, Lcom/sec/factory/aporiented/FtClient;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "factory"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 305
    .local v3, pI:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/sec/factory/aporiented/FtClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    .local v0, NotiBuilder:Landroid/app/Notification$Builder;
    iget-object v4, p0, Lcom/sec/factory/aporiented/FtClient;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 308
    .local v1, mgr:Landroid/app/NotificationManager;
    const v4, 0x7f020011

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "FT Service"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "on Factory command"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "on Factory mode"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 311
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 312
    .local v2, noti:Landroid/app/Notification;
    invoke-virtual {v1, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 313
    invoke-virtual {p0, v9, v2}, Lcom/sec/factory/aporiented/FtClient;->startForeground(ILandroid/app/Notification;)V

    .line 314
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/FtClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/aporiented/FtClient;->mContext:Landroid/content/Context;

    .line 57
    const-string v1, "FtClient"

    const-string v2, "onCreate"

    const-string v3, "Create FtClient service"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/factory/aporiented/FtClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/support/XMLDataStorage;->parseXML(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 60
    const-string v1, "FtClient"

    const-string v2, "onCreate"

    const-string v3, "FtClient => XML data parsing was failed."

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_26
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/aporiented/FtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    .line 64
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/aporiented/FtClient;->clientSocket_send:Landroid/net/LocalSocket;

    .line 66
    new-instance v1, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;

    invoke-direct {v1, p0, p0}, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;-><init>(Lcom/sec/factory/aporiented/FtClient;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/factory/aporiented/FtClient;->connectionThread:Lcom/sec/factory/aporiented/FtClient$ConnectionThread;

    .line 67
    iget-object v1, p0, Lcom/sec/factory/aporiented/FtClient;->connectionThread:Lcom/sec/factory/aporiented/FtClient$ConnectionThread;

    invoke-virtual {v1}, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->start()V

    .line 69
    const-string v1, "FtClient"

    const-string v2, "onCreate"

    const-string v3, "registBroadCastReceiver"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.factory.entry.SEND_RESET_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "com.sec.factory.entry.SEND_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "com.sec.factory.SEND_TO_RIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/sec/factory/aporiented/FtClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/factory/aporiented/FtClient;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 81
    const-string v1, "FtClient"

    const-string v2, "onDestroy"

    const-string v3, "Destroy FtClient service"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/sec/factory/aporiented/FtClient;->connectionThread:Lcom/sec/factory/aporiented/FtClient$ConnectionThread;

    invoke-virtual {v1}, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->kill()V

    .line 84
    iget-object v1, p0, Lcom/sec/factory/aporiented/FtClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/FtClient;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    iget-object v1, p0, Lcom/sec/factory/aporiented/FtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    if-eqz v1, :cond_28

    .line 88
    :try_start_1a
    iget-object v1, p0, Lcom/sec/factory/aporiented/FtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 89
    const-string v1, "FtClient"

    const-string v2, "onDestroy"

    const-string v3, "Close client socket(receiver)"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_3b

    .line 95
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/sec/factory/aporiented/FtClient;->clientSocket_send:Landroid/net/LocalSocket;

    if-eqz v1, :cond_3a

    .line 97
    :try_start_2c
    iget-object v1, p0, Lcom/sec/factory/aporiented/FtClient;->clientSocket_send:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 98
    const-string v1, "FtClient"

    const-string v2, "onDestroy"

    const-string v3, "Close client socket(sender)"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3a} :catch_40

    .line 103
    :cond_3a
    :goto_3a
    return-void

    .line 90
    :catch_3b
    move-exception v0

    .line 91
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_28

    .line 99
    .end local v0           #e:Ljava/io/IOException;
    :catch_40
    move-exception v0

    .line 100
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_3a
.end method
