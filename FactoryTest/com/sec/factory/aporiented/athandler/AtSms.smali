.class public Lcom/sec/factory/aporiented/athandler/AtSms;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtSms.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, "SMS"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSms;->CMD_NAME:Ljava/lang/String;

    .line 12
    const-string v0, "AtSms"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSms;->CLASS_NAME:Ljava/lang/String;

    .line 13
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtSms;->NUM_ARGS:I

    .line 14
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "argu"

    .prologue
    .line 19
    monitor-enter p0

    const/4 v0, 0x0

    .line 20
    .local v0, resData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 22
    .local v1, result:Z
    :try_start_3
    array-length v5, p1

    iget v6, p0, Lcom/sec/factory/aporiented/athandler/AtSms;->NUM_ARGS:I

    if-eq v5, v6, :cond_c

    .line 23
    const-string v5, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c1

    .line 63
    :goto_a
    monitor-exit p0

    return-object v5

    .line 26
    :cond_c
    const/4 v5, 0x0

    :try_start_d
    aget-object v5, p1, v5

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, smsBox:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, p1, v5

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    .local v4, smsNumber:Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v3, p1, v5

    .line 30
    .local v3, smsMessage:Ljava/lang/String;
    const-string v5, "INBOX"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 31
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtSms;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    const-string v6, "content://sms/inbox"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v3}, Lcom/sec/factory/modules/ModuleDFT;->makeSMS(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 32
    if-eqz v1, :cond_44

    .line 33
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtSms;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_42
    move-object v5, v0

    .line 63
    goto :goto_a

    .line 35
    :cond_44
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtSms;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 37
    :cond_4c
    const-string v5, "DRAFTS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 38
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtSms;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    const-string v6, "content://sms/draft"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v3}, Lcom/sec/factory/modules/ModuleDFT;->makeSMS(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 39
    if-eqz v1, :cond_6a

    .line 40
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtSms;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 42
    :cond_6a
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtSms;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 44
    :cond_72
    const-string v5, "OUTBOX"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 45
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtSms;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    const-string v6, "content://sms/outbox"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v3}, Lcom/sec/factory/modules/ModuleDFT;->makeSMS(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 46
    if-eqz v1, :cond_90

    .line 47
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtSms;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 49
    :cond_90
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtSms;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 51
    :cond_98
    const-string v5, "SENTBOX"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 53
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtSms;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    const-string v6, "content://sms/sent"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v3}, Lcom/sec/factory/modules/ModuleDFT;->makeSMS(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 54
    if-eqz v1, :cond_b6

    .line 55
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtSms;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 57
    :cond_b6
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtSms;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 60
    :cond_be
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_c0
    .catchall {:try_start_d .. :try_end_c0} :catchall_c1

    goto :goto_42

    .line 19
    .end local v2           #smsBox:Ljava/lang/String;
    .end local v3           #smsMessage:Ljava/lang/String;
    .end local v4           #smsNumber:Ljava/lang/String;
    :catchall_c1
    move-exception v5

    monitor-exit p0

    throw v5
.end method
