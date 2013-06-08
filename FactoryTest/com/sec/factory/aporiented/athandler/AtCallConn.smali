.class public Lcom/sec/factory/aporiented/athandler/AtCallConn;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtCallConn.java"


# instance fields
.field private mCallStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 20
    const-string v0, "CALLCONN"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCallConn;->CMD_NAME:Ljava/lang/String;

    .line 21
    const-string v0, "AtCallConn"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCallConn;->CLASS_NAME:Ljava/lang/String;

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtCallConn;->NUM_ARGS:I

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "argu"

    .prologue
    const/4 v11, 0x2

    .line 26
    monitor-enter p0

    const/4 v5, 0x0

    .line 29
    .local v5, resData:Ljava/lang/String;
    :try_start_3
    array-length v7, p1

    iget v8, p0, Lcom/sec/factory/aporiented/athandler/AtCallConn;->NUM_ARGS:I

    if-eq v7, v8, :cond_c

    .line 30
    const-string v7, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_13e

    .line 84
    :goto_a
    monitor-exit p0

    return-object v7

    .line 33
    :cond_c
    :try_start_c
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtCallConn;->context:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 35
    .local v4, manager:Landroid/telephony/TelephonyManager;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "0"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "0"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "0"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtCallConn;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_98

    .line 36
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtCallConn;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "handleCommand"

    const-string v9, "Disconnect call"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    iput v7, p0, Lcom/sec/factory/aporiented/athandler/AtCallConn;->mCallStatus:I

    .line 40
    iget v7, p0, Lcom/sec/factory/aporiented/athandler/AtCallConn;->mCallStatus:I
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_13e

    if-ne v7, v11, :cond_85

    .line 42
    :try_start_41
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    .local v0, c:Ljava/lang/Class;
    const-string v7, "getITelephony"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 44
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 45
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ITelephony;

    .line 46
    .local v6, telephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    .line 47
    const/4 v7, 0x0

    aget-object v7, p1, v7

    const-string v8, "OK"

    invoke-virtual {p0, v7, v8}, Lcom/sec/factory/aporiented/athandler/AtCallConn;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_41 .. :try_end_6e} :catchall_13e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_6e} :catch_71

    move-result-object v5

    .end local v0           #c:Ljava/lang/Class;
    .end local v3           #m:Ljava/lang/reflect/Method;
    .end local v6           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_6f
    move-object v7, v5

    .line 84
    goto :goto_a

    .line 48
    :catch_71
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/Exception;
    :try_start_72
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtCallConn;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "handleCommand"

    const-string v9, "Faild to disconnect call"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v7, 0x0

    aget-object v7, p1, v7

    const-string v8, "NG"

    invoke-virtual {p0, v7, v8}, Lcom/sec/factory/aporiented/athandler/AtCallConn;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    goto :goto_6f

    .line 53
    .end local v1           #e:Ljava/lang/Exception;
    :cond_85
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtCallConn;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "handleCommand"

    const-string v9, "not calling"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v7, 0x0

    aget-object v7, p1, v7

    const-string v8, "NG"

    invoke-virtual {p0, v7, v8}, Lcom/sec/factory/aporiented/athandler/AtCallConn;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6f

    .line 56
    :cond_98
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "0"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "1"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtCallConn;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11d

    .line 58
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtCallConn;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "handleCommand"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Call to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, p1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.CALL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, p1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 61
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x3400

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtCallConn;->context:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f8
    .catchall {:try_start_72 .. :try_end_f8} :catchall_13e

    .line 68
    const-wide/16 v7, 0x3e8

    :try_start_fa
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_13e
    .catch Ljava/lang/InterruptedException; {:try_start_fa .. :try_end_fd} :catch_13c

    .line 71
    :goto_fd
    :try_start_fd
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    iput v7, p0, Lcom/sec/factory/aporiented/athandler/AtCallConn;->mCallStatus:I

    .line 73
    iget v7, p0, Lcom/sec/factory/aporiented/athandler/AtCallConn;->mCallStatus:I

    if-ne v7, v11, :cond_112

    .line 74
    const/4 v7, 0x0

    aget-object v7, p1, v7

    const-string v8, "OK"

    invoke-virtual {p0, v7, v8}, Lcom/sec/factory/aporiented/athandler/AtCallConn;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6f

    .line 76
    :cond_112
    const/4 v7, 0x0

    aget-object v7, p1, v7

    const-string v8, "NG"

    invoke-virtual {p0, v7, v8}, Lcom/sec/factory/aporiented/athandler/AtCallConn;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6f

    .line 78
    .end local v2           #intent:Landroid/content/Intent;
    :cond_11d
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "0"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "0"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtCallConn;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_138

    .line 79
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 81
    :cond_138
    const-string v5, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_13a
    .catchall {:try_start_fd .. :try_end_13a} :catchall_13e

    goto/16 :goto_6f

    .line 69
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_13c
    move-exception v7

    goto :goto_fd

    .line 26
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #manager:Landroid/telephony/TelephonyManager;
    :catchall_13e
    move-exception v7

    monitor-exit p0

    throw v7
.end method
