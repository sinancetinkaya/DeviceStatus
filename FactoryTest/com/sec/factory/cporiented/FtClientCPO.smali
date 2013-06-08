.class public Lcom/sec/factory/cporiented/FtClientCPO;
.super Landroid/app/Service;
.source "FtClientCPO.java"


# instance fields
.field public BIND_SVC_NAME:Ljava/lang/String;

.field public CLASS_NAME:Ljava/lang/String;

.field private mAmBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBindHandler:Landroid/os/Handler;

.field private final mBindMessager:Landroid/os/Messenger;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFactoryTestServiceConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mIsFirstCmd:Z

.field private mSecPhoneServiceMessenger:Landroid/os/Messenger;

.field public parser:Lcom/sec/factory/cporiented/AtParserCPO;

.field public writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    const-string v0, "FtClientCPO"

    iput-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    .line 31
    const-string v0, "com.sec.phone.SecPhoneService"

    iput-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->BIND_SVC_NAME:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->parser:Lcom/sec/factory/cporiented/AtParserCPO;

    .line 45
    iput-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mSecPhoneServiceMessenger:Landroid/os/Messenger;

    .line 46
    iput-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mIsFirstCmd:Z

    .line 136
    new-instance v0, Lcom/sec/factory/cporiented/FtClientCPO$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/cporiented/FtClientCPO$1;-><init>(Lcom/sec/factory/cporiented/FtClientCPO;)V

    iput-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mFactoryTestServiceConnection:Landroid/content/ServiceConnection;

    .line 172
    new-instance v0, Lcom/sec/factory/cporiented/FtClientCPO$3;

    invoke-direct {v0, p0}, Lcom/sec/factory/cporiented/FtClientCPO$3;-><init>(Lcom/sec/factory/cporiented/FtClientCPO;)V

    iput-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mBindHandler:Landroid/os/Handler;

    .line 205
    new-instance v0, Lcom/sec/factory/cporiented/FtClientCPO$4;

    invoke-direct {v0, p0}, Lcom/sec/factory/cporiented/FtClientCPO$4;-><init>(Lcom/sec/factory/cporiented/FtClientCPO;)V

    iput-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mAmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mBindHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mBindMessager:Landroid/os/Messenger;

    .line 264
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mHandler:Landroid/os/Handler;

    .line 266
    new-instance v0, Lcom/sec/factory/cporiented/FtClientCPO$5;

    invoke-direct {v0, p0}, Lcom/sec/factory/cporiented/FtClientCPO$5;-><init>(Lcom/sec/factory/cporiented/FtClientCPO;)V

    iput-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/cporiented/FtClientCPO;)Landroid/os/Messenger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mSecPhoneServiceMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/factory/cporiented/FtClientCPO;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mSecPhoneServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/factory/cporiented/FtClientCPO;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sec/factory/cporiented/FtClientCPO;->rebindToSecPhoneService()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/factory/cporiented/FtClientCPO;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mIsFirstCmd:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/factory/cporiented/FtClientCPO;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mIsFirstCmd:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/factory/cporiented/FtClientCPO;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sec/factory/cporiented/FtClientCPO;->setPendingIntent()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/factory/cporiented/FtClientCPO;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sec/factory/cporiented/FtClientCPO;->commandOk(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/factory/cporiented/FtClientCPO;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sec/factory/cporiented/FtClientCPO;->sendAckCommand(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/factory/cporiented/FtClientCPO;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/factory/cporiented/FtClientCPO;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private commandOk(Ljava/lang/String;)Z
    .registers 7
    .parameter "rawCMD"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v3

    mul-int/lit16 v3, v3, 0x1000

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v4

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v3, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v4

    add-int v0, v3, v4

    .line 257
    .local v0, mLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    div-int/lit8 v3, v3, 0x2

    if-ne v0, v3, :cond_39

    .line 261
    :goto_38
    return v1

    .line 260
    :cond_39
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "commandOk"

    const-string v4, "Invalid IPC CMD received"

    invoke-static {v1, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 261
    goto :goto_38
.end method

.method private rebindToSecPhoneService()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mSecPhoneServiceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_5

    .line 170
    :goto_4
    return-void

    .line 158
    :cond_5
    new-instance v0, Lcom/sec/factory/cporiented/FtClientCPO$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/cporiented/FtClientCPO$2;-><init>(Lcom/sec/factory/cporiented/FtClientCPO;)V

    invoke-virtual {v0}, Lcom/sec/factory/cporiented/FtClientCPO$2;->start()V

    goto :goto_4
.end method

.method private sendAckCommand(IZ)V
    .registers 8
    .parameter "result"
    .parameter "isdft"

    .prologue
    const/4 v4, 0x0

    .line 240
    const/4 v0, 0x7

    .line 241
    .local v0, dftOffset:I
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "sendAckCommand"

    if-nez p1, :cond_1a

    const-string v1, "N_ACK_RESPONSE"

    :goto_a
    invoke-static {v2, v3, v1}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-eqz p2, :cond_10

    .line 244
    add-int/2addr p1, v0

    .line 246
    :cond_10
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    if-eqz v1, :cond_19

    .line 247
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    invoke-virtual {v1, p1, v4, v4, v4}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_19
    return-void

    .line 241
    :cond_1a
    const-string v1, "N_NACK_RESPONSE"

    goto :goto_a
.end method

.method private setPendingIntent()V
    .registers 11

    .prologue
    const/16 v9, 0x15b3

    const/4 v7, 0x0

    .line 227
    iget-object v4, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "factory"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 228
    .local v3, pI:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, NotiBuilder:Landroid/app/Notification$Builder;
    iget-object v4, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 231
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

    .line 234
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 235
    .local v2, noti:Landroid/app/Notification;
    invoke-virtual {v1, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 236
    invoke-virtual {p0, v9, v2}, Lcom/sec/factory/cporiented/FtClientCPO;->startForeground(ILandroid/app/Notification;)V

    .line 237
    return-void
.end method


# virtual methods
.method public connectToSecPhoneService()V
    .registers 6

    .prologue
    .line 110
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "connectToSecPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create sendMessenger - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/cporiented/FtClientCPO;->BIND_SVC_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO;->BIND_SVC_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mFactoryTestServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/factory/cporiented/FtClientCPO;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 115
    return-void
.end method

.method public createResponseWriter()V
    .registers 4

    .prologue
    .line 127
    new-instance v0, Lcom/sec/factory/cporiented/ResponseWriterCPO;

    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mSecPhoneServiceMessenger:Landroid/os/Messenger;

    invoke-direct {v0, v1}, Lcom/sec/factory/cporiented/ResponseWriterCPO;-><init>(Landroid/os/Messenger;)V

    iput-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 128
    new-instance v0, Lcom/sec/factory/cporiented/AtParserCPO;

    invoke-direct {v0}, Lcom/sec/factory/cporiented/AtParserCPO;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->parser:Lcom/sec/factory/cporiented/AtParserCPO;

    .line 129
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->parser:Lcom/sec/factory/cporiented/AtParserCPO;

    invoke-virtual {p0}, Lcom/sec/factory/cporiented/FtClientCPO;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO;->writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/cporiented/AtParserCPO;->registerAllHandler(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    .line 130
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter "intent"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onBind"

    const-string v2, "start"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mBindMessager:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sec/factory/cporiented/FtClientCPO;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mContext:Landroid/content/Context;

    .line 64
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onCreate"

    const-string v4, "Create FtClientCPO service"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/factory/cporiented/FtClientCPO;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/support/XMLDataStorage;->parseXML(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 67
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onCreate"

    const-string v4, "FtClientCPO => XML data parsing was failed."

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_26
    invoke-virtual {p0}, Lcom/sec/factory/cporiented/FtClientCPO;->connectToSecPhoneService()V

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "FtClientCPO"

    iget-object v3, p0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 73
    const-string v2, "com.sec.factory.entry.SEND_BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v2, "com.sec.factory.entry.SEND_SET_FOREGROUND"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v2, "com.sec.factory.SEND_TO_RIL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    :goto_47
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/factory/cporiented/FtClientCPO;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onCreate"

    const-string v4, "mBroadcastReceiver registered"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v1, intentfilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.samsungtest.RilCommand"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v2, "com.android.samsungtest.RilDFTCommand"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    return-void

    .line 76
    .end local v1           #intentfilter:Landroid/content/IntentFilter;
    :cond_65
    const-string v2, "FtClientCPO2"

    iget-object v3, p0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 77
    const-string v2, "com.sec.factory.cporiented.SEND_CMD2RIL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_47

    .line 79
    :cond_75
    iget-object v2, p0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onCreate"

    const-string v4, "Cannot classify CLASS_NAME for mBroadcastReceiver register"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 96
    const-string v0, "FtClientCPO"

    iget-object v1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 97
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_16

    .line 98
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/cporiented/FtClientCPO;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    :cond_16
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onDestroy"

    const-string v2, "Destroy FtClientCPO service"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public removeResponseWriter()V
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO;->writer:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 134
    return-void
.end method

.method protected setBindSvcName(Ljava/lang/String;)V
    .registers 2
    .parameter "bindSvcName"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->BIND_SVC_NAME:Ljava/lang/String;

    .line 42
    return-void
.end method

.method protected setClassName(Ljava/lang/String;)V
    .registers 2
    .parameter "className"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    .line 38
    return-void
.end method
