.class public Lcom/sec/factory/aporiented/athandler/AtTouch;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtTouch.java"


# instance fields
.field private PROTOCOL:Ljava/lang/String;

.field touchMoveStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtTouch;->touchMoveStatus:I

    .line 14
    const-string v0, "TOUCH"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTouch;->CMD_NAME:Ljava/lang/String;

    .line 15
    const-string v0, "AtTouch"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTouch;->CLASS_NAME:Ljava/lang/String;

    .line 17
    const-string v0, "FACTORY_TEST_PROTOCOL"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTouch;->PROTOCOL:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTouch;->PROTOCOL:Ljava/lang/String;

    const-string v1, "NEW_AT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtTouch;->NUM_ARGS:I

    .line 35
    :goto_2a
    return-void

    .line 22
    :cond_2b
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtTouch;->NUM_ARGS:I

    goto :goto_2a
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "argu"

    .prologue
    const/4 v10, 0x1

    .line 38
    monitor-enter p0

    const/4 v3, 0x0

    .line 40
    .local v3, resData:Ljava/lang/String;
    :try_start_3
    array-length v6, p1

    iget v7, p0, Lcom/sec/factory/aporiented/athandler/AtTouch;->NUM_ARGS:I

    if-eq v6, v7, :cond_c

    .line 41
    const-string v6, "wrong"
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_5d

    .line 95
    :goto_a
    monitor-exit p0

    return-object v6

    .line 45
    :cond_c
    :try_start_c
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtTouch;->PROTOCOL:Ljava/lang/String;

    const-string v7, "NEW_AT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v6

    if-ne v6, v10, :cond_82

    .line 46
    const/4 v6, 0x2

    aget-object v6, p1, v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 47
    sget-object v6, Lcom/sec/factory/aporiented/athandler/AtTouch;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    const/4 v7, 0x0

    aget-object v7, p1, v7

    const/4 v8, 0x1

    aget-object v8, p1, v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/factory/modules/ModuleDFT;->DftTouchDown(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_32
    :goto_32
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtTouch;->PROTOCOL:Ljava/lang/String;

    const-string v7, "NEW_AT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_126

    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v6

    if-ne v6, v10, :cond_126

    .line 71
    const-string v3, "OK\r\n"

    :cond_44
    :goto_44
    move-object v6, v3

    .line 95
    goto :goto_a

    .line 48
    :cond_46
    const/4 v6, 0x2

    aget-object v6, p1, v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 49
    sget-object v6, Lcom/sec/factory/aporiented/athandler/AtTouch;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    const/4 v7, 0x0

    aget-object v7, p1, v7

    const/4 v8, 0x1

    aget-object v8, p1, v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/factory/modules/ModuleDFT;->DftTouchUp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_c .. :try_end_5c} :catchall_5d

    goto :goto_32

    .line 38
    :catchall_5d
    move-exception v6

    monitor-exit p0

    throw v6

    .line 50
    :cond_60
    const/4 v6, 0x2

    :try_start_61
    aget-object v6, p1, v6

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 51
    sget-object v6, Lcom/sec/factory/aporiented/athandler/AtTouch;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    invoke-virtual {v6}, Lcom/sec/factory/modules/ModuleDFT;->DftTouchMove()V

    goto :goto_32

    .line 52
    :cond_71
    const/4 v6, 0x2

    aget-object v6, p1, v6

    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 53
    sget-object v6, Lcom/sec/factory/aporiented/athandler/AtTouch;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    invoke-virtual {v6}, Lcom/sec/factory/modules/ModuleDFT;->DftTouchLong()V

    goto :goto_32

    .line 58
    :cond_82
    const/4 v6, 0x0

    aget-object v6, p1, v6

    const-string v7, "0F"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 59
    sget-object v6, Lcom/sec/factory/aporiented/athandler/AtTouch;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x3

    aget-object v8, p1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, p1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x5

    aget-object v9, p1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x4

    aget-object v9, p1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/factory/modules/ModuleDFT;->DftTouchDown(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32

    .line 60
    :cond_c2
    const/4 v6, 0x0

    aget-object v6, p1, v6

    const-string v7, "11"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_102

    .line 61
    sget-object v6, Lcom/sec/factory/aporiented/athandler/AtTouch;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x3

    aget-object v8, p1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, p1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x5

    aget-object v9, p1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x4

    aget-object v9, p1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/factory/modules/ModuleDFT;->DftTouchUp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32

    .line 62
    :cond_102
    const/4 v6, 0x0

    aget-object v6, p1, v6

    const-string v7, "10"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_114

    .line 63
    sget-object v6, Lcom/sec/factory/aporiented/athandler/AtTouch;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    invoke-virtual {v6}, Lcom/sec/factory/modules/ModuleDFT;->DftTouchMove()V

    goto/16 :goto_32

    .line 64
    :cond_114
    const/4 v6, 0x0

    aget-object v6, p1, v6

    const-string v7, "12"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 65
    sget-object v6, Lcom/sec/factory/aporiented/athandler/AtTouch;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    invoke-virtual {v6}, Lcom/sec/factory/modules/ModuleDFT;->DftTouchLong()V

    goto/16 :goto_32

    .line 74
    :cond_126
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtTouch;->PROTOCOL:Ljava/lang/String;

    const-string v7, "NEW_AT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13e

    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v6

    if-nez v6, :cond_13e

    .line 75
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {p0, v6}, Lcom/sec/factory/aporiented/athandler/AtTouch;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_44

    .line 78
    :cond_13e
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtTouch;->PROTOCOL:Ljava/lang/String;

    const-string v7, "NEW_DM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_175

    .line 79
    const-string v5, ""

    .line 80
    .local v5, str:Ljava/lang/String;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_14d
    if-ge v1, v2, :cond_16c

    aget-object v4, v0, v1

    .line 81
    .local v4, s:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_14d

    .line 83
    .end local v4           #s:Ljava/lang/String;
    :cond_16c
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {p0, v6, v5}, Lcom/sec/factory/aporiented/athandler/AtTouch;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    goto/16 :goto_44

    .line 86
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #str:Ljava/lang/String;
    :cond_175
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtTouch;->PROTOCOL:Ljava/lang/String;

    const-string v7, "NEW_ETS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 87
    const/4 v6, 0x0

    aget-object v6, p1, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x9

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/sec/factory/aporiented/athandler/AtTouch;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_20a
    .catchall {:try_start_61 .. :try_end_20a} :catchall_5d

    move-result-object v3

    goto/16 :goto_44
.end method
