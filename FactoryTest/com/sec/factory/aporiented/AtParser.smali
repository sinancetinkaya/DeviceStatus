.class public Lcom/sec/factory/aporiented/AtParser;
.super Ljava/lang/Object;
.source "AtParser.java"


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

.field private device:Ljava/lang/String;

.field private isMSM8260A:Z

.field private isMSM8960:Z

.field private isQualcommCP:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-string v0, "ro.product.device"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->device:Ljava/lang/String;

    .line 107
    const-string v0, "MSM8960"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/AtParser;->isMSM8960:Z

    .line 108
    const-string v0, "MSM8260A"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/AtParser;->isMSM8260A:Z

    .line 109
    const-string v0, "Qualcomm"

    const-string v1, "CHIPSET_CP_MANUFACTURE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/AtParser;->isQualcommCP:Z

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    .line 116
    return-void
.end method

.method private compareArgu([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 420
    move v2, v0

    :goto_3
    :try_start_3
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 421
    const-string v3, "AtParser"

    const-string v4, "compareArgu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compareArgu : argu["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", para["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4c} :catch_53

    move-result v3

    if-eq v3, v1, :cond_50

    .line 431
    :goto_4f
    return v0

    .line 420
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 427
    :catch_53
    move-exception v1

    .line 428
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4f

    :cond_58
    move v0, v1

    .line 431
    goto :goto_4f
.end method

.method private isFilteredCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 396
    invoke-virtual {p0, p1}, Lcom/sec/factory/aporiented/AtParser;->splitArgu(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-static {}, Lcom/sec/factory/support/Support$CommandFilter;->getFilteredCommands()[Ljava/lang/String;

    move-result-object v4

    .line 401
    if-nez v4, :cond_d

    .line 416
    :cond_c
    :goto_c
    return v0

    .line 405
    :cond_d
    array-length v5, v4

    move v2, v0

    :goto_f
    if-ge v2, v5, :cond_c

    aget-object v6, v4, v2

    .line 406
    const-string v7, "AtParser"

    const-string v8, "isFilteredCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "---filtered CMD= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  , commandName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 409
    aget-object v7, v6, v0

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 410
    aget-object v7, v6, v1

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 411
    const/4 v8, 0x2

    aget-object v6, v6, v8

    invoke-direct {p0, v3, v7, v6}, Lcom/sec/factory/aporiented/AtParser;->compareArgu([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    move v0, v1

    .line 412
    goto :goto_c

    .line 405
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_f
.end method

.method private runCmd(Ljava/lang/String;Lcom/sec/factory/aporiented/ResponseWriter;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 335
    const-string v0, "AtParser"

    const-string v3, "runCmd"

    invoke-static {v0, v3, p1}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    .line 342
    if-eqz p1, :cond_12

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_14

    :cond_12
    move v0, v1

    .line 380
    :cond_13
    :goto_13
    return v0

    .line 344
    :cond_14
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6f

    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6f

    .line 345
    const/4 v3, 0x0

    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 351
    :goto_33
    const-string v4, "AtParser"

    const-string v5, "process"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "command : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, p1, v3}, Lcom/sec/factory/aporiented/AtParser;->isFilteredCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 354
    const-string v0, "AtParser"

    const-string v2, "runCmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "- is filtered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 355
    goto :goto_13

    .line 346
    :cond_6f
    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 347
    const/4 v3, 0x0

    const-string v4, "?"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_33

    .line 349
    :cond_87
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_33

    .line 357
    :cond_99
    if-eqz v3, :cond_cc

    iget-object v4, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 358
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;

    .line 359
    invoke-virtual {p0, p1}, Lcom/sec/factory/aporiented/AtParser;->splitArgu(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 360
    invoke-virtual {v0, v3}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->handleCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v8, v2

    move-object v2, v0

    move v0, v8

    .line 371
    :goto_b6
    if-eqz v2, :cond_13

    const-string v3, "WAIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 374
    invoke-virtual {p2, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z
    :try_end_c3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_c .. :try_end_c3} :catch_c5

    goto/16 :goto_13

    .line 376
    :catch_c5
    move-exception v0

    .line 377
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    move v0, v1

    .line 378
    goto/16 :goto_13

    .line 363
    :cond_cc
    :try_start_cc
    const-string v2, "AtParser"

    const-string v3, "runCmd: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not registered in the atHandler."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.factory.RECEIVED_FROM_RIL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    const-string v3, "command"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    iget-object v3, p0, Lcom/sec/factory/aporiented/AtParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 368
    const-string v2, "AtParser"

    const-string v3, "runCmd: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast unregistered command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_111
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_cc .. :try_end_111} :catch_c5

    move-object v2, v0

    move v0, v1

    goto :goto_b6
.end method


# virtual methods
.method public process(Ljava/lang/String;Lcom/sec/factory/aporiented/ResponseWriter;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 302
    const-string v0, "AtParser"

    const-string v3, "process"

    invoke-static {v0, v3, p1}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-eqz p1, :cond_11

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_12

    .line 331
    :cond_11
    :goto_11
    return v2

    .line 309
    :cond_12
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 310
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 311
    if-eqz v4, :cond_55

    move v3, v2

    move v0, v2

    .line 312
    :goto_24
    array-length v5, v4

    if-le v5, v3, :cond_4e

    aget-object v5, v4, v3

    if-eqz v5, :cond_4e

    .line 313
    aget-object v5, v4, v3

    invoke-direct {p0, v5, p2}, Lcom/sec/factory/aporiented/AtParser;->runCmd(Ljava/lang/String;Lcom/sec/factory/aporiented/ResponseWriter;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 314
    const-string v0, "AtParser"

    const-string v5, "process done successfully. cmdList = "

    aget-object v6, v4, v3

    invoke-static {v0, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 318
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 322
    :cond_40
    invoke-direct {p0, p1, p2}, Lcom/sec/factory/aporiented/AtParser;->runCmd(Ljava/lang/String;Lcom/sec/factory/aporiented/ResponseWriter;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 323
    const-string v0, "AtParser"

    const-string v3, "process done successfully. cmd = "

    invoke-static {v0, v3, p1}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_b .. :try_end_4d} :catch_50

    move v0, v1

    :cond_4e
    :goto_4e
    move v2, v0

    .line 331
    goto :goto_11

    .line 327
    :catch_50
    move-exception v0

    .line 328
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_11

    :cond_55
    move v0, v2

    goto :goto_4e
.end method

.method public registerAllHandler(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 119
    const-string v0, "AtParser"

    const-string v1, "registerAllHandler"

    const-string v2, "Register AT command handler"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/sec/factory/aporiented/AtParser;->mContext:Landroid/content/Context;

    .line 125
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+KEY"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtKey;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtKey;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+KEYHOLD"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtKeyhold;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtKeyhold;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+TOUCH"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtTouch;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtTouch;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+MICSD"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtMicsd;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtMicsd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+SMS"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtSms;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtSms;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+POWRESET"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtPowreset;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtPowreset;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+SYSSLEEP"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtSyssleep;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtSyssleep;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FCBTTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFcbttest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FCMPTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFcmptest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFcmptest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FCESTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFcestest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFcestest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+TEMPTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtTemptest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtTemptest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+SPKSTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtSpkstest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtSpkstest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+VIBRTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtVibrtest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtVibrtest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+IMEMTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtImemtest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtImemtest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+MEMOSIZE"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtMemoSize;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtMemoSize;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+BATTTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtBatttest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtBatttest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+BATTCALI"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtBattcali;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtBattcali;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+MAINMENU"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtMainmenu;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtMainmenu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+ACSENSOR"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtAcsensor;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtAcsensor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+LIGHTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtLightest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtLightest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+BTIDTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtBtidtest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+WIFIIDRW"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FUELGAIC"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+KEYULOCK"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtKeyulock;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtKeyulock;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+PROXIMIT"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtProximit;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtProximit;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+AROTATEC"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtArotatec;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtArotatec;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FSBUILDC"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFsbuildc;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFsbuildc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+SERIALNO"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtSerialno;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtSerialno;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+KSTRINGB"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtKstringb;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtKstringb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+WIFITEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtWifitest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtWifitest;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+EMEMTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtEmemtest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtEmemtest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+KEYSHORT"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtKeyshort;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtKeyshort;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+GYROSCOP"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtGyroscop;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtGyroscop;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+HWINDICK"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtHwindick;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtHwindick;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "AT_GPSSTEST"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 179
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+GPSSTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtGpsstest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_1b7
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+VERSNAME"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtVersname;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtVersname;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "SUPPORT_DUALMODE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d5

    .line 186
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FCEPTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFceptest_dual;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :goto_1d7
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+CAMETEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtCametest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtCametest;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FCFMTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+GEOMAGSS"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtGeomagss;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v0, "SUPPORT_DUALMODE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e3

    .line 199
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+LOOPTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtLooptest_dual;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :goto_20f
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FACTOLOG"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFactolog;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFactolog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+SWDLMODE"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtSwdlmode;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtSwdlmode;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FUNCTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFunctest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFunctest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+OTGGTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtOtggtest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtOtggtest;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+HDMITEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtHdmitest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtHdmitest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+NFCMTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+BAROMETE"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtBaromete;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtBaromete;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v0, "IS_TSP_STANDARD"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f1

    .line 217
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+TSPPTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :goto_277
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+LEDLAMPT"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtLedlampt;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+WPROTECT"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtWprotect;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtWprotect;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+DISPTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtDisptest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtDisptest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+UARTSWIT"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtUartswit;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtUartswit;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+TDMBTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+LOCKCODE"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtLockCode;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtLockCode;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isConnectionModeNone()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2ea

    .line 237
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+PRECONFG"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtPreconfg;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "AT_CALIDATE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ea

    .line 239
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+CALIDATE"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtCalidate;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtCalidate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_2ea
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FACTORST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFactorst;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFactorst;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+CORECTRL"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtCorectrl;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+IRLEDCHK"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FAILDUMP"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFaildump;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtFaildump;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FAILHIST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFailhist;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtFailhist;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+LTEPOWER"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtLtepower;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtLtepower;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FIRMVERS"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFirmvers;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+EWRITECK"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtEwriteck;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtEwriteck;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v0, "SUPPORT_NVBACKUP_CMD"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35e

    .line 284
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+BAKUPCHK"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtBakupchk;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_35e
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+WIDCOUNT"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtWidcount;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtWidcount;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+SYSSCOPE"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtSysscope;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtSysscope;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FLCRFCAL"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;

    invoke-direct {v2, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;-><init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->device:Ljava/lang/String;

    const-string v1, "dcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_398

    .line 291
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+ISDBTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_398
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+HUMITEMP"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtHumitemp;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtHumitemp;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+PAYMENTS"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtPayments;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtPayments;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+SENSORHB"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtSensorHb;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtSensorHb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+BARCODEE"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+CALLCONN"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtCallConn;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtCallConn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    return-void

    .line 190
    :cond_3d5
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+FCEPTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtFceptest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtFceptest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d7

    .line 203
    :cond_3e3
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+LOOPTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtLooptest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtLooptest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_20f

    .line 219
    :cond_3f1
    const-string v0, "TSP_MANUFACTURE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATMEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40d

    .line 220
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+TSPPTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_277

    .line 222
    :cond_40d
    iget-object v0, p0, Lcom/sec/factory/aporiented/AtParser;->atHandlers:Ljava/util/HashMap;

    const-string v1, "AT+TSPPTEST"

    new-instance v2, Lcom/sec/factory/aporiented/athandler/AtTspptest;

    invoke-direct {v2, p1}, Lcom/sec/factory/aporiented/athandler/AtTspptest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_277
.end method

.method public splitArgu(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 385
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 386
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 387
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 388
    const-string v1, "AtParser"

    const-string v2, "splitArgu()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "args : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :goto_39
    return-object v0

    .line 390
    :cond_3a
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_39
.end method
