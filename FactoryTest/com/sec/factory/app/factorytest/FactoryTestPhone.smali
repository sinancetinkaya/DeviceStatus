.class public Lcom/sec/factory/app/factorytest/FactoryTestPhone;
.super Ljava/lang/Object;
.source "FactoryTestPhone.java"


# static fields
.field private static mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private CLASS_NAME:Ljava/lang/String;

.field private IS_CAL2_TEST_PASS:Z

.field private IS_CAL_TEST_PASS:Z

.field private IS_FINAL_TEST_PASS:Z

.field private IS_LTECAL_TEST_PASS:Z

.field private IS_LTEFINAL_TEST_PASS:Z

.field private IS_PBA_TEST_PASS:Z

.field private IS_SMD_TEST_PASS:Z

.field private device:Ljava/lang/String;

.field private isConnected:Z

.field mContext:Landroid/content/Context;

.field private mData:[B

.field public mHandler:Landroid/os/Handler;

.field private final mNVKeyToItemIDHashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mResponse:Landroid/os/Message;

.field private mResultData:[B

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSvcModeMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mQueue:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "FactoryTestPhone"

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 40
    iput-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->isConnected:Z

    .line 61
    iput-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_SMD_TEST_PASS:Z

    .line 62
    iput-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_PBA_TEST_PASS:Z

    .line 63
    iput-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_CAL_TEST_PASS:Z

    .line 64
    iput-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_FINAL_TEST_PASS:Z

    .line 65
    iput-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_LTECAL_TEST_PASS:Z

    .line 66
    iput-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_LTEFINAL_TEST_PASS:Z

    .line 67
    iput-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_CAL2_TEST_PASS:Z

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    .line 75
    const-string v0, "ro.product.device"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->device:Ljava/lang/String;

    .line 247
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 684
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mQueue:Ljava/util/Queue;

    .line 84
    iput-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mData:[B

    .line 85
    iput-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Landroid/os/Messenger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mServiceMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/factory/app/factorytest/FactoryTestPhone;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/factory/app/factorytest/FactoryTestPhone;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->isConnected:Z

    return p1
.end method

.method static synthetic access$300()Ljava/util/Queue;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mData:[B

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/factory/app/factorytest/FactoryTestPhone;[BLandroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->sendMessageToRil([BLandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->rebindToSecPhoneService()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/factory/app/factorytest/FactoryTestPhone;[BI)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->checkResultData([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/factory/app/factorytest/FactoryTestPhone;[B)[B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B

    return-object p1
.end method

.method private checkResultData([BI)Z
    .registers 8
    .parameter "result"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 503
    if-nez p2, :cond_4

    .line 517
    :goto_3
    return v0

    .line 505
    :cond_4
    if-nez p1, :cond_2d

    .line 506
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "checkResultData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entering Loop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/factory/app/factorytest/FactoryTestPhone$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone$3;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestPhone;[BI)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 517
    :cond_2d
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 6
    .parameter "data"
    .parameter "response"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "invokeOemRilRequestRaw"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 331
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "invokeOemRilRequestRaw"

    const-string v2, "failed offer a item"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_19
    :goto_19
    return-void

    .line 334
    :cond_1a
    iget-boolean v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->isConnected:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 335
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "invokeOemRilRequestRaw"

    const-string v2, "isConnected == true"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :goto_28
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 337
    invoke-direct {p0, p1, p2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->sendMessageToRil([BLandroid/os/Message;)V

    goto :goto_28

    .line 341
    :cond_34
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "invokeOemRilRequestRaw"

    const-string v2, "isConnected == false"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    goto :goto_19
.end method

.method private rebindToSecPhoneService()V
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_5

    .line 286
    :goto_4
    return-void

    .line 273
    :cond_5
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone$2;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)V

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone$2;->start()V

    goto :goto_4
.end method

.method private sendMessageToRil([BLandroid/os/Message;)V
    .registers 8
    .parameter "data"
    .parameter "response"

    .prologue
    .line 289
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "sendMessageToRil"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-nez p2, :cond_1b

    .line 291
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "sendMessageToRil"

    const-string v3, "Create Default Request"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 294
    :cond_1b
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 295
    .local v0, req:Landroid/os/Bundle;
    const/4 p1, 0x0

    .line 297
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "sendMessageToRil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current Queue size before : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v1, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_bd

    .line 299
    sget-object v1, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [B

    .line 300
    .restart local p1
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "sendMessageToRil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    if-nez p1, :cond_76

    .line 303
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "sendMessageToRil"

    const-string v3, "Data null..Return"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_75
    return-void

    .line 307
    :cond_76
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 309
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 310
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 313
    :try_start_82
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_94

    .line 314
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "sendMessageToRil"

    const-string v3, "sendMessage() to RIL"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_94} :catch_c7

    .line 322
    :cond_94
    :goto_94
    sget-object v1, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9c

    .line 325
    :cond_9c
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "sendMessageToRil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current Queue size after : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 320
    :cond_bd
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "sendMessageToRil"

    const-string v3, "sendMessage : mQueue is empty!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    .line 317
    :catch_c7
    move-exception v1

    goto :goto_94
.end method

.method private sendToRilControlData([B)V
    .registers 11
    .parameter "control"

    .prologue
    .line 596
    iget-object v6, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "sendToRilControlData"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 598
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 599
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x8

    .line 601
    .local v3, fileSize:I
    const/16 v4, 0x12

    .line 602
    .local v4, mainCmd:B
    const/16 v5, 0x9

    .line 604
    .local v5, subCmd:B
    const/16 v6, 0x12

    :try_start_1a
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 605
    const/16 v6, 0x9

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 606
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 607
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2a} :catch_4e

    .line 611
    if-eqz v1, :cond_2f

    .line 613
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_49

    .line 619
    :cond_2f
    :goto_2f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mData:[B

    .line 620
    iget-object v6, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xcd

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    .line 621
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    invoke-direct {p0, v6, v7}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 622
    return-void

    .line 614
    :catch_49
    move-exception v2

    .line 615
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    .line 608
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4e
    move-exception v2

    .line 609
    .local v2, e:Ljava/io/IOException;
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5d

    .line 611
    if-eqz v1, :cond_2f

    .line 613
    :try_start_54
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_2f

    .line 614
    :catch_58
    move-exception v2

    .line 615
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    .line 611
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_5d
    move-exception v6

    if-eqz v1, :cond_63

    .line 613
    :try_start_60
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    .line 616
    :cond_63
    :goto_63
    throw v6

    .line 614
    :catch_64
    move-exception v2

    .line 615
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63
.end method

.method private setUpHashforNVkeyToItemId()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 117
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "15"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "16"

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "20"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "21"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "17"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "32"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "22"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "19"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->device:Ljava/lang/String;

    const-string v1, "d2dcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23f

    .line 126
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "1C"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :goto_7b
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "1B"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "30"

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "2E"

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "31"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "26"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "1E"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "29"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "1D"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "18"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "27"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "28"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "2D"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "2C"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "34"

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "2A"

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "2F"

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "11"

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "13"

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "33"

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "38"

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->getSpeakerCount()I

    move-result v0

    if-le v0, v3, :cond_195

    .line 153
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "2D"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_195
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "35"

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "37"

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "3B"

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "3C"

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "3D"

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "2B"

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "12"

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "25"

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "36"

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "24"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "14"

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "3E"

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "3F"

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void

    .line 128
    :cond_23f
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    const-string v1, "1C"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7b
.end method


# virtual methods
.method public DestroySecPhoneService()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 679
    invoke-virtual {p0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->unbindSecPhoneService()V

    .line 680
    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 681
    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mData:[B

    .line 682
    return-void
.end method

.method public bindSecPhoneService()V
    .registers 5

    .prologue
    .line 89
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "bindSecPhoneService"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "SUPPORT_2ND_RIL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "SUPPORT_DUAL_STANBY"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 94
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CURRENT_NETWORK"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_43

    .line 99
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "bindSecPhoneService"

    const-string v3, "use com.sec.phone.SecPhoneService2"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    :cond_43
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 104
    return-void
.end method

.method public getCPDump()V
    .registers 7

    .prologue
    .line 466
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 467
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 468
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 470
    .local v3, fileSize:I
    const/4 v4, 0x7

    :try_start_c
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 471
    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 472
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 473
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_4e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_3f

    .line 477
    if-eqz v1, :cond_20

    .line 478
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_3a

    .line 483
    :cond_20
    :goto_20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mData:[B

    .line 484
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xcf

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    .line 485
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    invoke-direct {p0, v4, v5}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 486
    return-void

    .line 479
    :catch_3a
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 474
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3f
    move-exception v2

    .line 475
    .local v2, e:Ljava/io/IOException;
    :try_start_40
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4e

    .line 477
    if-eqz v1, :cond_20

    .line 478
    :try_start_45
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_20

    .line 479
    :catch_49
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 477
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_4e
    move-exception v4

    if-eqz v1, :cond_54

    .line 478
    :try_start_51
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    .line 479
    :cond_54
    :goto_54
    throw v4

    :catch_55
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54
.end method

.method public getCpDumpResponse()Z
    .registers 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B

    if-eqz v0, :cond_6

    .line 498
    const/4 v0, 0x1

    .line 500
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getItemID(Ljava/lang/String;)I
    .registers 4
    .parameter "NVKey"

    .prologue
    .line 171
    const/4 v0, -0x1

    .line 172
    .local v0, result:I
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->setUpHashforNVkeyToItemId()V

    .line 173
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 174
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mNVKeyToItemIDHashmap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 175
    :cond_18
    return v0
.end method

.method public getNVResult(Ljava/lang/String;)B
    .registers 7
    .parameter "NVKey"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->checkResultData([BI)Z

    move-result v1

    if-nez v1, :cond_c

    .line 431
    const/16 v1, 0x4e

    .line 435
    :goto_b
    return v1

    .line 433
    :cond_c
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 434
    .local v0, itemNv:I
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getNVResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemNV: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B

    add-int/lit8 v2, v0, 0x3

    aget-byte v1, v1, v2

    goto :goto_b
.end method

.method public getResultForPGMItems(Ljava/lang/String;)Z
    .registers 5
    .parameter "NVKey"

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, result:Z
    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 181
    .local v0, itemNv:I
    packed-switch v0, :pswitch_data_20

    .line 206
    :goto_a
    :pswitch_a
    return v1

    .line 183
    :pswitch_b
    iget-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_SMD_TEST_PASS:Z

    .line 184
    goto :goto_a

    .line 186
    :pswitch_e
    iget-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_PBA_TEST_PASS:Z

    .line 187
    goto :goto_a

    .line 189
    :pswitch_11
    iget-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_CAL_TEST_PASS:Z

    .line 190
    goto :goto_a

    .line 192
    :pswitch_14
    iget-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_CAL2_TEST_PASS:Z

    .line 193
    goto :goto_a

    .line 195
    :pswitch_17
    iget-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_FINAL_TEST_PASS:Z

    .line 196
    goto :goto_a

    .line 198
    :pswitch_1a
    iget-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_LTECAL_TEST_PASS:Z

    .line 199
    goto :goto_a

    .line 201
    :pswitch_1d
    iget-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_LTEFINAL_TEST_PASS:Z

    .line 202
    goto :goto_a

    .line 181
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_e
        :pswitch_a
        :pswitch_a
        :pswitch_11
        :pswitch_14
        :pswitch_a
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public getUniqueNumber()Ljava/lang/String;
    .registers 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->checkResultData([BI)Z

    move-result v0

    if-nez v0, :cond_b

    .line 491
    const/4 v0, 0x0

    .line 493
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_a
.end method

.method public requestCPsAccelerometer(Z)V
    .registers 7
    .parameter "isOn"

    .prologue
    const/4 v4, 0x4

    .line 578
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "requestCPsAccelerometer"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    if-eqz p1, :cond_14

    .line 583
    new-array v0, v4, [B

    fill-array-data v0, :array_1a

    .line 592
    .local v0, controlData:[B
    :goto_10
    invoke-direct {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->sendToRilControlData([B)V

    .line 593
    return-void

    .line 588
    .end local v0           #controlData:[B
    :cond_14
    new-array v0, v4, [B

    fill-array-data v0, :array_20

    .restart local v0       #controlData:[B
    goto :goto_10

    .line 583
    :array_1a
    .array-data 0x1
        0x2t
        0x0t
        0xct
        0x1t
    .end array-data

    .line 588
    :array_20
    .array-data 0x1
        0x2t
        0x0t
        0xct
        0x0t
    .end array-data
.end method

.method public requestForUniqueNumber()V
    .registers 7

    .prologue
    .line 439
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 440
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 441
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 444
    .local v3, fileSize:I
    const/16 v4, 0xc

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 446
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 447
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 448
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_4e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1b} :catch_3f

    .line 452
    if-eqz v1, :cond_20

    .line 454
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_3a

    .line 460
    :cond_20
    :goto_20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mData:[B

    .line 461
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xcc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    .line 462
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    invoke-direct {p0, v4, v5}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 463
    return-void

    .line 455
    :catch_3a
    move-exception v2

    .line 456
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 449
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3f
    move-exception v2

    .line 450
    .local v2, e:Ljava/io/IOException;
    :try_start_40
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4e

    .line 452
    if-eqz v1, :cond_20

    .line 454
    :try_start_45
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_20

    .line 455
    :catch_49
    move-exception v2

    .line 456
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 452
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_4e
    move-exception v4

    if-eqz v1, :cond_54

    .line 454
    :try_start_51
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    .line 457
    :cond_54
    :goto_54
    throw v4

    .line 455
    :catch_55
    move-exception v2

    .line 456
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54
.end method

.method public requestGripSensorOn(Z)V
    .registers 13
    .parameter "isOn"

    .prologue
    const/4 v10, 0x4

    .line 521
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "requestGripSensorOn"

    const-string v9, "sendToRilGripSensorStart()"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 523
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 524
    .local v2, dos:Ljava/io/DataOutputStream;
    const/16 v4, 0x8

    .line 525
    .local v4, fileSize:I
    const/16 v5, 0x12

    .line 526
    .local v5, mainCmd:B
    const/16 v6, 0x9

    .line 527
    .local v6, subCmd:B
    const/4 v1, 0x0

    .line 531
    .local v1, data:[B
    if-eqz p1, :cond_53

    .line 538
    new-array v1, v10, [B

    .end local v1           #data:[B
    fill-array-data v1, :array_7a

    .line 556
    .restart local v1       #data:[B
    :goto_22
    const/16 v7, 0x12

    :try_start_24
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 557
    const/16 v7, 0x9

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 558
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 559
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_6d
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_34} :catch_5e

    .line 563
    if-eqz v2, :cond_39

    .line 565
    :try_start_36
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_59

    .line 571
    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mData:[B

    .line 572
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xcd

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    .line 573
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iget-object v8, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    invoke-direct {p0, v7, v8}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 574
    return-void

    .line 548
    :cond_53
    new-array v1, v10, [B

    .end local v1           #data:[B
    fill-array-data v1, :array_80

    .restart local v1       #data:[B
    goto :goto_22

    .line 566
    :catch_59
    move-exception v3

    .line 567
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39

    .line 560
    .end local v3           #e:Ljava/lang/Exception;
    :catch_5e
    move-exception v3

    .line 561
    .local v3, e:Ljava/io/IOException;
    :try_start_5f
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_6d

    .line 563
    if-eqz v2, :cond_39

    .line 565
    :try_start_64
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_39

    .line 566
    :catch_68
    move-exception v3

    .line 567
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39

    .line 563
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_6d
    move-exception v7

    if-eqz v2, :cond_73

    .line 565
    :try_start_70
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74

    .line 568
    :cond_73
    :goto_73
    throw v7

    .line 566
    :catch_74
    move-exception v3

    .line 567
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_73

    .line 538
    nop

    :array_7a
    .array-data 0x1
        0x2t
        0x0t
        0xbt
        0x1t
    .end array-data

    .line 548
    :array_80
    .array-data 0x1
        0x2t
        0x0t
        0xbt
        0x0t
    .end array-data
.end method

.method public requestHistoryNvViewToRil()V
    .registers 7

    .prologue
    .line 374
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 375
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 376
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x7

    .line 378
    .local v3, fileSize:I
    const/16 v4, 0x12

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 379
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 380
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 381
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 382
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 383
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_56
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_23} :catch_47

    .line 387
    if-eqz v1, :cond_28

    .line 389
    :try_start_25
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_42

    .line 395
    :cond_28
    :goto_28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mData:[B

    .line 396
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    .line 397
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    invoke-direct {p0, v4, v5}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 398
    return-void

    .line 390
    :catch_42
    move-exception v2

    .line 391
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    .line 384
    .end local v2           #e:Ljava/lang/Exception;
    :catch_47
    move-exception v2

    .line 385
    .local v2, e:Ljava/io/IOException;
    :try_start_48
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_56

    .line 387
    if-eqz v1, :cond_28

    .line 389
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_28

    .line 390
    :catch_51
    move-exception v2

    .line 391
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    .line 387
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_56
    move-exception v4

    if-eqz v1, :cond_5c

    .line 389
    :try_start_59
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 392
    :cond_5c
    :goto_5c
    throw v4

    .line 390
    :catch_5d
    move-exception v2

    .line 391
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c
.end method

.method public requestTestNvViewToRil()V
    .registers 7

    .prologue
    .line 347
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 348
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 349
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x7

    .line 351
    .local v3, fileSize:I
    const/16 v4, 0x12

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 352
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 353
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 354
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 355
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 356
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_56
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_23} :catch_47

    .line 360
    if-eqz v1, :cond_28

    .line 362
    :try_start_25
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_42

    .line 368
    :cond_28
    :goto_28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mData:[B

    .line 369
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    .line 370
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    invoke-direct {p0, v4, v5}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 371
    return-void

    .line 363
    :catch_42
    move-exception v2

    .line 364
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    .line 357
    .end local v2           #e:Ljava/lang/Exception;
    :catch_47
    move-exception v2

    .line 358
    .local v2, e:Ljava/io/IOException;
    :try_start_48
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_56

    .line 360
    if-eqz v1, :cond_28

    .line 362
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_28

    .line 363
    :catch_51
    move-exception v2

    .line 364
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    .line 360
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_56
    move-exception v4

    if-eqz v1, :cond_5c

    .line 362
    :try_start_59
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 365
    :cond_5c
    :goto_5c
    throw v4

    .line 363
    :catch_5d
    move-exception v2

    .line 364
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c
.end method

.method public sendLteRilCommand_POWER(Ljava/lang/String;)V
    .registers 14
    .parameter "arg"

    .prologue
    .line 627
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 628
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 630
    .local v3, dos:Ljava/io/DataOutputStream;
    const/16 v5, 0xa

    .line 631
    .local v5, fileSize:I
    const-string v7, ""

    .line 632
    .local v7, strRFband:Ljava/lang/String;
    const-string v6, ""

    .line 633
    .local v6, strPower:Ljava/lang/String;
    const/4 v1, -0x1

    .line 634
    .local v1, RFband:B
    const/4 v0, -0x1

    .line 639
    .local v0, Power:B
    :try_start_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 640
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 641
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-byte v1, v8

    .line 642
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 643
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_5c} :catch_da

    move-result v8

    int-to-byte v0, v8

    .line 648
    :goto_5e
    iget-object v8, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "sendLteRilCommand_POWER"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendLteRilCommand_POWER - arg["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "RFband["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] , Power["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const/16 v8, 0x76

    :try_start_9a
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 654
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 655
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 656
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 657
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 658
    const/16 v8, 0x53

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 659
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 660
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 661
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_bb
    .catchall {:try_start_9a .. :try_end_bb} :catchall_fa
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_bb} :catch_eb

    .line 665
    if-eqz v3, :cond_c0

    .line 667
    :try_start_bd
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_e6

    .line 673
    :cond_c0
    :goto_c0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mData:[B

    .line 674
    iget-object v8, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xce

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    .line 675
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iget-object v9, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    invoke-direct {p0, v8, v9}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 676
    return-void

    .line 644
    :catch_da
    move-exception v4

    .line 645
    .local v4, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "sendLteRilCommand_POWER"

    const-string v10, "Array Index error!!"

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 668
    .end local v4           #e:Ljava/lang/Exception;
    :catch_e6
    move-exception v4

    .line 669
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c0

    .line 662
    .end local v4           #e:Ljava/lang/Exception;
    :catch_eb
    move-exception v4

    .line 663
    .local v4, e:Ljava/io/IOException;
    :try_start_ec
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_fa

    .line 665
    if-eqz v3, :cond_c0

    .line 667
    :try_start_f1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f4} :catch_f5

    goto :goto_c0

    .line 668
    :catch_f5
    move-exception v4

    .line 669
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c0

    .line 665
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_fa
    move-exception v8

    if-eqz v3, :cond_100

    .line 667
    :try_start_fd
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_100} :catch_101

    .line 670
    :cond_100
    :goto_100
    throw v8

    .line 668
    :catch_101
    move-exception v4

    .line 669
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_100
.end method

.method public setResultForPGMItems(Ljava/lang/String;Z)V
    .registers 5
    .parameter "NVKey"
    .parameter "result"

    .prologue
    .line 219
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 220
    .local v0, itemNv:I
    packed-switch v0, :pswitch_data_20

    .line 245
    :goto_9
    :pswitch_9
    return-void

    .line 222
    :pswitch_a
    iput-boolean p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_SMD_TEST_PASS:Z

    goto :goto_9

    .line 225
    :pswitch_d
    iput-boolean p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_PBA_TEST_PASS:Z

    goto :goto_9

    .line 228
    :pswitch_10
    iput-boolean p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_CAL_TEST_PASS:Z

    goto :goto_9

    .line 231
    :pswitch_13
    iput-boolean p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_CAL2_TEST_PASS:Z

    goto :goto_9

    .line 234
    :pswitch_16
    iput-boolean p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_FINAL_TEST_PASS:Z

    goto :goto_9

    .line 237
    :pswitch_19
    iput-boolean p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_LTECAL_TEST_PASS:Z

    goto :goto_9

    .line 240
    :pswitch_1c
    iput-boolean p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->IS_LTEFINAL_TEST_PASS:Z

    goto :goto_9

    .line 220
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_d
        :pswitch_9
        :pswitch_9
        :pswitch_10
        :pswitch_13
        :pswitch_9
        :pswitch_16
        :pswitch_19
        :pswitch_1c
    .end packed-switch
.end method

.method public unbindSecPhoneService()V
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "unbindSecPhoneService"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :try_start_8
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->isConnected:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_13

    .line 114
    :goto_12
    return-void

    .line 111
    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method public updateNVItem(BB)V
    .registers 9
    .parameter "itemID"
    .parameter "result"

    .prologue
    .line 401
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 402
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 403
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x9

    .line 405
    .local v3, fileSize:I
    const/16 v4, 0x12

    :try_start_e
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 406
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 407
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 408
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 409
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 410
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 411
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 412
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2a} :catch_4e

    .line 416
    if-eqz v1, :cond_2f

    .line 418
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_49

    .line 424
    :cond_2f
    :goto_2f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mData:[B

    .line 425
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xca

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    .line 426
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;

    invoke-direct {p0, v4, v5}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 427
    return-void

    .line 419
    :catch_49
    move-exception v2

    .line 420
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    .line 413
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4e
    move-exception v2

    .line 414
    .local v2, e:Ljava/io/IOException;
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5d

    .line 416
    if-eqz v1, :cond_2f

    .line 418
    :try_start_54
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_2f

    .line 419
    :catch_58
    move-exception v2

    .line 420
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    .line 416
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_5d
    move-exception v4

    if-eqz v1, :cond_63

    .line 418
    :try_start_60
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    .line 421
    :cond_63
    :goto_63
    throw v4

    .line 419
    :catch_64
    move-exception v2

    .line 420
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63
.end method
