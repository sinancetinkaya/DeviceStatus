.class public Lcom/sec/factory/cporiented/AtParserCPO;
.super Ljava/lang/Object;
.source "AtParserCPO.java"


# instance fields
.field private final atHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/factory/aporiented/athandler/AtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    .line 105
    return-void
.end method

.method private hexStringToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 400
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    .line 401
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 402
    new-instance v0, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v0, p1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 404
    const/4 v0, 0x0

    :goto_17
    array-length v3, v2

    if-ge v0, v3, :cond_23

    .line 405
    aget-byte v3, v2, v0

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 408
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_27
    return-object v0

    :cond_28
    const-string v0, "0"

    goto :goto_27
.end method

.method private hexStringToStringIgnoreNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2d

    .line 415
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 416
    new-instance v0, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v0, p1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 417
    const/4 v0, 0x0

    :goto_17
    array-length v3, v2

    if-ge v0, v3, :cond_1f

    .line 418
    aget-byte v3, v2, v0

    int-to-char v3, v3

    if-nez v3, :cond_24

    .line 422
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    :goto_23
    return-object v0

    .line 420
    :cond_24
    aget-byte v3, v2, v0

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 424
    :cond_2d
    const-string v0, "0"

    goto :goto_23
.end method


# virtual methods
.method public process(Ljava/lang/String;Lcom/sec/factory/cporiented/ResponseWriterCPO;Z)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x4

    const/4 v7, 0x6

    .line 236
    const-string v1, "AtParserCPO"

    const-string v2, "process cmd="

    invoke-static {v1, v2, p1}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, ""

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_ec

    .line 247
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v8

    .line 260
    :goto_25
    if-eqz p3, :cond_43

    .line 261
    const-string v3, "AtParserCPO"

    const-string v4, "DFT"

    const-string v5, "This CMD is DFT"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "F7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_43
    const-string v3, "AtParserCPO"

    const-string v4, "mainCMD= "

    invoke-static {v3, v4, v0}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-eqz v1, :cond_117

    iget-object v1, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_117

    .line 270
    :cond_60
    iget-object v1, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 274
    :goto_71
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;

    .line 275
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->setCmdType(I)V

    .line 276
    const-string v3, "AtParserCPO"

    const-string v4, "process()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SplitPoint = 6, handler.NUM_ARGS = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->NUM_ARGS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isdft = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget v3, v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->NUM_ARGS:I

    invoke-virtual {p0, p1, v7, v3, p3}, Lcom/sec/factory/cporiented/AtParserCPO;->splitArgu(Ljava/lang/String;IIZ)[Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-virtual {v0, v3}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->handleCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {v0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->getResultType()I

    move-result v0

    .line 283
    const-string v4, "AtParserCPO"

    const-string v5, "mainCMD= "

    invoke-static {v4, v5, v1}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v4, "AtParserCPO"

    const-string v5, "attr= "

    invoke-static {v4, v5, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v4, "AtParserCPO"

    const-string v5, "resData= "

    invoke-static {v4, v5, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v4, "AtParserCPO"

    const-string v5, "result= "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v4, "WAIT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_eb

    .line 290
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_eb
    :goto_eb
    return-void

    .line 251
    :cond_ec
    if-eqz p3, :cond_10a

    const-string v1, "02"

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 252
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 254
    const-string v0, "00"

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_25

    .line 256
    :cond_10a
    const-string v1, "AtParserCPO"

    const-string v2, "process"

    const-string v3, "Command is too short!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    move-object v1, v0

    goto/16 :goto_25

    .line 294
    :cond_117
    const-string v1, "AtParserCPO"

    const-string v2, "process"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not available CMD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.factory.RECEIVED_FROM_RIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/sec/factory/cporiented/AtParserCPO;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    const-string v0, "AtParserCPO"

    const-string v1, "runCmd: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast unregistered command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_eb

    :cond_15d
    move-object v1, v0

    goto/16 :goto_71
.end method

.method public registerAllHandler(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 6
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 108
    const-string v0, "AtParserCPO"

    const-string v1, "registerAllHandler"

    const-string v2, "Register IPC command handler"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/sec/factory/cporiented/AtParserCPO;->mContext:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "F704"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtKey;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtKey;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "F705"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtTouch;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtTouch;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "F702"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtMicsd;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtMicsd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "F701"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtSms;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtSms;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "02"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtVersname;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtVersname;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "03"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtPowreset;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtPowreset;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "04"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtSyssleep;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtSyssleep;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "06"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFcbttest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "07"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFcmptest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFcmptest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "08"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "09"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFceptest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "0A"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFcestest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFcestest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "0B"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtRtcctest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtRtcctest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "0C"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtTemptest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtTemptest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "0E"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtSpkstest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "0F"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtDisptest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtDisptest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "10"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtCametest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtCametest;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "11"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtVibrtest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtVibrtest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "13"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtLooptest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "14"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtSimdetec;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtSimdetec;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "15"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtGpsstest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "18"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtWifitest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtWifitest;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "19"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtEmemtest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtEmemtest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "1A"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtImemtest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtImemtest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "1B"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtBatttest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtBatttest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "1C"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtSwdlmode;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtSwdlmode;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "1D"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtMainmenu;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtMainmenu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "1E"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtAcsensor;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "1F"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtLightest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtLightest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "20"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "22"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFirmvers;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "27"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "28"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "31"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "32"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtGeomagss;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "33"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFsbuildc;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFsbuildc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "35"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtKeyulock;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtKeyulock;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "36"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtSerialno;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtSerialno;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "38"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtKeyshort;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtKeyshort;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "3D"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFactorst;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFactorst;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "40"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtProximit;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtProximit;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "41"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "42"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtBattcali;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtBattcali;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "4B"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtHwindick;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtHwindick;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "4C"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtGyroscop;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "56"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtHdmitest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtHdmitest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "57"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtArotatec;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtArotatec;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "58"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFunctest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFunctest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "59"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtKstringb;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtKstringb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "5A"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFaildump;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtFaildump;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "5B"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFactolog;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFactolog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "5D"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "5F"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtLedlampt;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "60"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "61"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtOtggtest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtOtggtest;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "70"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtEwriteck;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtEwriteck;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "IS_TSP_STANDARD"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_350

    .line 182
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "69"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :goto_2bf
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "6D"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtBaromete;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtBaromete;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "73"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtCallConn;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtCallConn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "76"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtWprotect;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtWprotect;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "7C"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtCorectrl;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "45"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtLockCode;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtLockCode;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "51"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtMemoSize;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtMemoSize;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "48"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtUartswit;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtUartswit;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "81"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtWidcount;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtWidcount;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "8A"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtSensorHb;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtSensorHb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "8B"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "53"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtLtepower;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtLtepower;-><init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void

    .line 184
    :cond_350
    iget-object v0, p0, Lcom/sec/factory/cporiented/AtParserCPO;->atHandlers:Ljava/util/HashMap;

    const-string v1, "69"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtTspptest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtTspptest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2bf
.end method

.method public splitArgu(Ljava/lang/String;IIZ)[Ljava/lang/String;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 304
    new-array v0, p3, [Ljava/lang/String;

    .line 308
    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "15"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "08"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "18"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v3, p3, 0x2

    if-le v2, v3, :cond_76

    .line 311
    :cond_3a
    const-string v2, "AtParserCPO"

    const-string v3, "splitArgu"

    const-string v4, "For GPS command && FM Radio"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 315
    :goto_4b
    if-ge v1, p3, :cond_5b

    .line 316
    const/4 v3, 0x3

    if-ne v1, v3, :cond_5c

    .line 317
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/factory/cporiented/AtParserCPO;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 395
    :cond_5b
    :goto_5b
    return-object v0

    .line 322
    :cond_5c
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 323
    const-string v3, "AtParserCPO"

    const-string v4, "splitArgu res="

    aget-object v5, v0, v1

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 327
    :cond_76
    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "69"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 329
    const-string v3, "AtParserCPO"

    const-string v4, "args= "

    invoke-static {v3, v4, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_93
    if-ge v1, p3, :cond_5b

    .line 332
    add-int/lit8 v3, p3, -0x1

    if-ne v1, v3, :cond_b1

    .line 333
    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/factory/cporiented/AtParserCPO;->hexStringToStringIgnoreNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 337
    :goto_a5
    const-string v3, "AtParserCPO"

    const-string v4, "splitArgu res="

    aget-object v5, v0, v1

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    .line 335
    :cond_b1
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_a5

    .line 339
    :cond_c0
    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "6D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 341
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 343
    const-string v3, "AtParserCPO"

    const-string v4, "args= "

    invoke-static {v3, v4, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :goto_dd
    if-ge v1, p3, :cond_5b

    .line 349
    add-int/lit8 v3, p3, -0x1

    if-ne v1, v3, :cond_11c

    .line 350
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v6, :cond_10d

    const-string v3, "0200"

    add-int/lit8 v4, p2, 0x4

    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 351
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/factory/cporiented/AtParserCPO;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 361
    :goto_101
    const-string v3, "AtParserCPO"

    const-string v4, "splitArgu res="

    aget-object v5, v0, v1

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_dd

    .line 353
    :cond_10d
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_101

    .line 357
    :cond_11c
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_101

    .line 364
    :cond_12b
    if-eqz p1, :cond_1a3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v3, p3, 0x2

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_1a3

    .line 365
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 366
    const-string v3, "AtParserCPO"

    const-string v4, "args= "

    invoke-static {v3, v4, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_147
    if-ge v1, p3, :cond_5b

    .line 370
    if-eqz p4, :cond_176

    .line 371
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_169

    .line 372
    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 388
    :goto_15d
    const-string v3, "AtParserCPO"

    const-string v4, "splitArgu res="

    aget-object v5, v0, v1

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_147

    .line 374
    :cond_169
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_15d

    .line 377
    :cond_176
    add-int/lit8 v3, p3, -0x1

    if-ne v1, v3, :cond_194

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_194

    .line 378
    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/factory/cporiented/AtParserCPO;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_15d

    .line 380
    :cond_194
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_15d

    .line 391
    :cond_1a3
    const-string v0, "AtParserCPO"

    const-string v2, "splitArgu ="

    const-string v3, " no args"

    invoke-static {v0, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-array v0, v1, [Ljava/lang/String;

    goto/16 :goto_5b
.end method
