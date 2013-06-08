.class public Lcom/sec/factory/aporiented/athandler/AtRtcctest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtRtcctest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, "RTCCTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtRtcctest;->CMD_NAME:Ljava/lang/String;

    .line 14
    const-string v0, "AtRtcctest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtRtcctest;->CLASS_NAME:Ljava/lang/String;

    .line 15
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtRtcctest;->NUM_ARGS:I

    .line 16
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .parameter "argu"

    .prologue
    .line 21
    monitor-enter p0

    const/4 v10, 0x0

    .line 23
    .local v10, resData:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p1

    array-length v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/factory/aporiented/athandler/AtRtcctest;->NUM_ARGS:I

    if-eq v14, v15, :cond_f

    .line 24
    const-string v14, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_293

    .line 95
    :goto_d
    monitor-exit p0

    return-object v14

    .line 27
    :cond_f
    const/4 v14, 0x1

    :try_start_10
    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "1"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/sec/factory/aporiented/athandler/AtRtcctest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1e3

    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 31
    .local v11, rightNow:Ljava/util/Calendar;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 32
    .local v9, mYear:Ljava/lang/String;
    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v15, 0x9

    if-ge v14, v15, :cond_13e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 34
    .local v7, mMonth:Ljava/lang/String;
    :goto_60
    const/4 v14, 0x5

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v15, 0xa

    if-ge v14, v15, :cond_15a

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x5

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, mDayOfMonth:Ljava/lang/String;
    :goto_81
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-nez v14, :cond_174

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, mHour:Ljava/lang/String;
    :goto_a2
    const/4 v14, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v14, v15, :cond_bc

    .line 40
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    :cond_bc
    const/16 v14, 0xc

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v15, 0xa

    if-ge v14, v15, :cond_191

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xc

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, mMinute:Ljava/lang/String;
    :goto_df
    const/16 v14, 0xd

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v15, 0xa

    if-ge v14, v15, :cond_1ac

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xd

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, mSec:Ljava/lang/String;
    :goto_102
    const/4 v14, 0x7

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    if-gez v14, :cond_1c7

    const-string v4, "6"

    .line 49
    .local v4, mDayOfWeek:Ljava/lang/String;
    :goto_10d
    const/4 v14, 0x0

    aget-object v14, p1, v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sec/factory/aporiented/athandler/AtRtcctest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .end local v3           #mDayOfMonth:Ljava/lang/String;
    .end local v4           #mDayOfWeek:Ljava/lang/String;
    .end local v5           #mHour:Ljava/lang/String;
    .end local v6           #mMinute:Ljava/lang/String;
    .end local v7           #mMonth:Ljava/lang/String;
    .end local v8           #mSec:Ljava/lang/String;
    .end local v9           #mYear:Ljava/lang/String;
    .end local v11           #rightNow:Ljava/util/Calendar;
    :goto_13b
    move-object v14, v10

    .line 95
    goto/16 :goto_d

    .line 32
    .restart local v9       #mYear:Ljava/lang/String;
    .restart local v11       #rightNow:Ljava/util/Calendar;
    :cond_13e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_60

    .line 34
    .restart local v7       #mMonth:Ljava/lang/String;
    :cond_15a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x5

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_81

    .line 36
    .restart local v3       #mDayOfMonth:Ljava/lang/String;
    :cond_174
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/lit8 v15, v15, 0xc

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_a2

    .line 43
    .restart local v5       #mHour:Ljava/lang/String;
    :cond_191
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xc

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_df

    .line 45
    .restart local v6       #mMinute:Ljava/lang/String;
    :cond_1ac
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xd

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_102

    .line 47
    .restart local v8       #mSec:Ljava/lang/String;
    :cond_1c7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x7

    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_10d

    .line 52
    .end local v3           #mDayOfMonth:Ljava/lang/String;
    .end local v5           #mHour:Ljava/lang/String;
    .end local v6           #mMinute:Ljava/lang/String;
    .end local v7           #mMonth:Ljava/lang/String;
    .end local v8           #mSec:Ljava/lang/String;
    .end local v9           #mYear:Ljava/lang/String;
    .end local v11           #rightNow:Ljava/util/Calendar;
    :cond_1e3
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "2"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/sec/factory/aporiented/athandler/AtRtcctest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_296

    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 56
    .restart local v11       #rightNow:Ljava/util/Calendar;
    const/4 v14, 0x1

    aget-object v14, p1, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 57
    .local v9, mYear:I
    const/4 v14, 0x2

    aget-object v14, p1, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .line 58
    .local v7, mMonth:I
    const/4 v14, 0x3

    aget-object v14, p1, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 59
    .local v3, mDayOfMonth:I
    const/4 v14, 0x4

    aget-object v14, p1, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 60
    .local v5, mHour:I
    const/4 v2, 0x0

    .line 62
    .local v2, mAmPm:I
    const/16 v14, 0xc

    if-le v5, v14, :cond_22f

    .line 63
    add-int/lit8 v5, v5, -0xc

    .line 64
    const/4 v2, 0x1

    .line 67
    :cond_22f
    const/4 v14, 0x5

    aget-object v14, p1, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 68
    .local v6, mMinute:I
    const/4 v14, 0x6

    aget-object v14, p1, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 69
    .local v8, mSec:I
    const/4 v14, 0x7

    aget-object v14, p1, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v4, v14, 0x2

    .line 70
    .local v4, mDayOfWeek:I
    const/16 v14, 0x8

    if-ne v4, v14, :cond_257

    .line 71
    const/4 v4, 0x1

    .line 73
    :cond_257
    const/4 v14, 0x1

    invoke-virtual {v11, v14, v9}, Ljava/util/Calendar;->set(II)V

    .line 74
    const/4 v14, 0x2

    invoke-virtual {v11, v14, v7}, Ljava/util/Calendar;->set(II)V

    .line 75
    const/4 v14, 0x5

    invoke-virtual {v11, v14, v3}, Ljava/util/Calendar;->set(II)V

    .line 76
    const/16 v14, 0xa

    invoke-virtual {v11, v14, v5}, Ljava/util/Calendar;->set(II)V

    .line 77
    const/16 v14, 0xc

    invoke-virtual {v11, v14, v6}, Ljava/util/Calendar;->set(II)V

    .line 78
    const/16 v14, 0xd

    invoke-virtual {v11, v14, v8}, Ljava/util/Calendar;->set(II)V

    .line 81
    if-nez v2, :cond_28c

    .line 82
    const/16 v14, 0x9

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 87
    :goto_27a
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 88
    .local v12, when:J
    invoke-static {v12, v13}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 89
    const/4 v14, 0x0

    aget-object v14, p1, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/factory/aporiented/athandler/AtRtcctest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 91
    goto/16 :goto_13b

    .line 84
    .end local v12           #when:J
    :cond_28c
    const/16 v14, 0x9

    const/4 v15, 0x1

    invoke-virtual {v11, v14, v15}, Ljava/util/Calendar;->set(II)V
    :try_end_292
    .catchall {:try_start_10 .. :try_end_292} :catchall_293

    goto :goto_27a

    .line 21
    .end local v2           #mAmPm:I
    .end local v3           #mDayOfMonth:I
    .end local v4           #mDayOfWeek:I
    .end local v5           #mHour:I
    .end local v6           #mMinute:I
    .end local v7           #mMonth:I
    .end local v8           #mSec:I
    .end local v9           #mYear:I
    .end local v11           #rightNow:Ljava/util/Calendar;
    :catchall_293
    move-exception v14

    monitor-exit p0

    throw v14

    .line 92
    :cond_296
    :try_start_296
    const-string v10, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_298
    .catchall {:try_start_296 .. :try_end_298} :catchall_293

    goto/16 :goto_13b
.end method
