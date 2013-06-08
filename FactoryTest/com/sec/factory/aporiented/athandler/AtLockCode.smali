.class public Lcom/sec/factory/aporiented/athandler/AtLockCode;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtLockCode.java"


# instance fields
.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 19
    const-string v0, "LOCKCODE"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->CMD_NAME:Ljava/lang/String;

    .line 20
    const-string v0, "AtLockCode"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->CLASS_NAME:Ljava/lang/String;

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->NUM_ARGS:I

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "argu"

    .prologue
    .line 26
    monitor-enter p0

    const/4 v1, 0x0

    .line 27
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 28
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->context:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 31
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->NUM_ARGS:I

    if-eq v2, v3, :cond_28

    .line 32
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    const-string v4, "TEST LOCKCODE NA"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    .line 35
    :cond_28
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtLockCode;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 36
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    const-string v4, "TEST LOCKCODE 00"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 39
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 41
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v3, "LockPatternClear"

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 43
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v2}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 44
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    .local v0, mainIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const/high16 v2, 0x1020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtLockCode;->responseOK(Ljava/lang/String;)Ljava/lang/String;
    :try_end_82
    .catchall {:try_start_2 .. :try_end_82} :catchall_cd

    move-result-object v1

    .line 65
    .end local v0           #mainIntent:Landroid/content/Intent;
    :goto_83
    monitor-exit p0

    return-object v1

    .line 52
    :cond_85
    const/4 v2, 0x2

    :try_start_86
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtLockCode;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 53
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    const-string v4, "TEST LOCKCODE 10"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-nez v2, :cond_b1

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 57
    :cond_b1
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtLockCode;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_83

    .line 59
    :cond_b9
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtLockCode;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_83

    .line 62
    :cond_c1
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLockCode;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    const-string v4, "TEST LOCKCODE etc"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_cc
    .catchall {:try_start_86 .. :try_end_cc} :catchall_cd

    goto :goto_83

    .line 26
    :catchall_cd
    move-exception v2

    monitor-exit p0

    throw v2
.end method
