.class public Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;
.super Ljava/lang/Object;
.source "FactoryTestMainInnerLoopback.java"


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field isSupportRCV:Z

.field private mContext:Landroid/content/Context;

.field private mHandlerFeedback:Landroid/os/Handler;

.field private mHandlerResult:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Landroid/widget/ListView;)V
    .registers 7
    .parameter "context"
    .parameter "result"
    .parameter "feedback"
    .parameter "listView"

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "FactoryTestMainInnerLoopback"

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->CLASS_NAME:Ljava/lang/String;

    .line 22
    iput-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->isSupportRCV:Z

    .line 28
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mHandlerResult:Landroid/os/Handler;

    .line 30
    iput-object p3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mHandlerFeedback:Landroid/os/Handler;

    .line 31
    iput-object p4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mListView:Landroid/widget/ListView;

    .line 33
    const-string v0, "SUPPORT_RCV"

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->isSupportRCV:Z

    .line 34
    return-void
.end method

.method private sendMessageTestResult(IBB)V
    .registers 9
    .parameter "what"
    .parameter "id"
    .parameter "result"

    .prologue
    .line 203
    const-string v1, "FactoryTestMainInnerLoopback"

    const-string v2, "sendTestResultMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mHandlerResult:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 206
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mHandlerResult:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    return-void
.end method

.method private setPhoneType()V
    .registers 8

    .prologue
    const/16 v6, 0x2a

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 37
    const-string v0, "FactoryTestMainInnerLoopback"

    const-string v1, "setPhoneType testid="

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CURRENT_TEST_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "loopback ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "SUPPORT_DUALMODE"

    invoke-static {v0, v5}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 41
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CURRENT_TEST_ID:I

    if-ne v0, v6, :cond_47

    .line 42
    const-string v0, "FactoryTestMainInnerLoopback"

    const-string v1, "setPhoneType"

    const-string v2, "CP2"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    const-string v1, "cp2"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleAudio;->setPhoneType(Ljava/lang/String;)V

    .line 44
    sput-boolean v4, Lcom/sec/factory/app/factorytest/FactoryTestMain;->IsLoopBack2:Z

    .line 63
    :cond_46
    :goto_46
    return-void

    .line 45
    :cond_47
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CURRENT_TEST_ID:I

    if-ne v0, v4, :cond_46

    .line 46
    const-string v0, "FactoryTestMainInnerLoopback"

    const-string v1, "setPhoneType"

    const-string v2, "CP1"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    const-string v1, "cp1"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleAudio;->setPhoneType(Ljava/lang/String;)V

    .line 48
    sput-boolean v5, Lcom/sec/factory/app/factorytest/FactoryTestMain;->IsLoopBack2:Z

    goto :goto_46

    .line 53
    :cond_62
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CURRENT_TEST_ID:I

    if-ne v0, v6, :cond_7d

    .line 54
    const-string v0, "FactoryTestMainInnerLoopback"

    const-string v1, "setPhoneType"

    const-string v2, "CP2"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    const-string v1, "cp2"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleAudio;->setPhoneType(Ljava/lang/String;)V

    .line 56
    sput-boolean v4, Lcom/sec/factory/app/factorytest/FactoryTestMain;->IsLoopBack2:Z

    goto :goto_46

    .line 57
    :cond_7d
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CURRENT_TEST_ID:I

    if-ne v0, v4, :cond_46

    .line 58
    const-string v0, "FactoryTestMainInnerLoopback"

    const-string v1, "setPhoneType"

    const-string v2, "CP1"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    const-string v1, "cp1"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleAudio;->setPhoneType(Ljava/lang/String;)V

    .line 60
    sput-boolean v5, Lcom/sec/factory/app/factorytest/FactoryTestMain;->IsLoopBack2:Z

    goto :goto_46
.end method


# virtual methods
.method public changeLoopbackRoute(Z)V
    .registers 14
    .parameter "isKeyEvent"

    .prologue
    const/16 v11, 0x2a

    const/4 v10, 0x5

    const/4 v9, -0x1

    const/4 v8, 0x6

    const/4 v7, 0x1

    .line 144
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v1

    .line 145
    .local v1, moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->getMicCount()I

    move-result v2

    .line 146
    .local v2, nMic:I
    invoke-static {}, Lcom/sec/factory/modules/ModuleAudio;->isSupportSecondMicTest()Z

    move-result v0

    .line 147
    .local v0, isSupportMIC2:Z
    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->getCurrentLoopbackPath()I

    move-result v3

    .line 149
    .local v3, path:I
    if-eqz p1, :cond_58

    .line 150
    const-string v4, "FactoryTestMainInnerLoopback"

    const-string v5, "changeLoopbackRoute"

    const-string v6, "KeyEvent"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-eqz v0, :cond_52

    .line 152
    if-ne v3, v9, :cond_4c

    .line 153
    invoke-virtual {v1, v8}, Lcom/sec/factory/modules/ModuleAudio;->setLoopbackPath(I)V

    .line 184
    :cond_2a
    :goto_2a
    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->getCurrentLoopbackPath()I

    move-result v4

    if-ne v4, v7, :cond_48

    iget-boolean v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->isSupportRCV:Z

    if-eqz v4, :cond_48

    .line 185
    const-string v4, "FactoryTestMainInnerLoopback"

    const-string v5, "changeLoopbackRoute"

    const-string v6, "Update NV: Pass"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget v4, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CURRENT_TEST_ID:I

    if-ne v4, v11, :cond_92

    .line 189
    sget v4, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    const/16 v5, 0x50

    invoke-direct {p0, v4, v11, v5}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->sendMessageTestResult(IBB)V

    .line 197
    :cond_48
    :goto_48
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 198
    return-void

    .line 154
    :cond_4c
    if-ne v3, v8, :cond_2a

    .line 155
    invoke-virtual {v1, v7}, Lcom/sec/factory/modules/ModuleAudio;->setLoopbackPath(I)V

    goto :goto_2a

    .line 160
    :cond_52
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/ModuleAudio;->setLoopbackPath(I)V

    goto :goto_2a

    .line 163
    :cond_58
    const-string v4, "FactoryTestMainInnerLoopback"

    const-string v5, "changeLoopbackRoute"

    const-string v6, "Earphone Plugged Event"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->isEarphonePlugged()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 165
    invoke-virtual {v1, v10}, Lcom/sec/factory/modules/ModuleAudio;->setLoopbackPath(I)V

    goto :goto_2a

    .line 167
    :cond_6b
    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->getPreviousLoopbackPath()I

    move-result v4

    if-eq v4, v9, :cond_77

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->getPreviousLoopbackPath()I

    move-result v4

    if-ne v4, v10, :cond_8a

    .line 169
    :cond_77
    iget-boolean v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->isSupportRCV:Z

    if-ne v4, v7, :cond_86

    .line 170
    if-eqz v0, :cond_81

    .line 171
    invoke-virtual {v1, v8}, Lcom/sec/factory/modules/ModuleAudio;->setLoopbackPath(I)V

    goto :goto_2a

    .line 173
    :cond_81
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/ModuleAudio;->setLoopbackPath(I)V

    goto :goto_2a

    .line 176
    :cond_86
    invoke-virtual {v1, v7}, Lcom/sec/factory/modules/ModuleAudio;->setLoopbackPath(I)V

    goto :goto_2a

    .line 179
    :cond_8a
    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->getPreviousLoopbackPath()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/ModuleAudio;->setLoopbackPath(I)V

    goto :goto_2a

    .line 192
    :cond_92
    sget v4, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    const/16 v5, 0x50

    invoke-direct {p0, v4, v7, v5}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->sendMessageTestResult(IBB)V

    goto :goto_48
.end method

.method public startLoopback()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x50

    const/16 v6, 0x2a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    const-string v1, "FactoryTestMainInnerLoopback"

    const-string v2, "startLoopback"

    const-string v3, "Start Loopback"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    .line 71
    .local v0, moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    const-string v1, "SUPPORT_2ND_RIL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "SUPPORT_DUALMODE"

    invoke-static {v1, v4}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 72
    :cond_26
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->setPhoneType()V

    .line 75
    :cond_29
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isDoingLoopback()Z

    move-result v1

    if-nez v1, :cond_a4

    .line 76
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 77
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isEarphonePlugged()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 79
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v1

    if-nez v1, :cond_56

    .line 80
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 130
    :goto_44
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mHandlerFeedback:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v3, 0x3

    const-string v4, "Loopback On"

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 141
    :goto_55
    return-void

    .line 83
    :cond_56
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v8}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    goto :goto_44

    .line 88
    :cond_5b
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v1

    if-nez v1, :cond_74

    iget-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->isSupportRCV:Z

    if-eqz v1, :cond_74

    .line 91
    invoke-static {}, Lcom/sec/factory/modules/ModuleAudio;->isSupportSecondMicTest()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 92
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    goto :goto_44

    .line 95
    :cond_70
    invoke-virtual {v0, v4, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    goto :goto_44

    .line 98
    :cond_74
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v1

    if-nez v1, :cond_91

    iget-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->isSupportRCV:Z

    if-nez v1, :cond_91

    .line 104
    invoke-virtual {v0, v5, v4}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 108
    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CURRENT_TEST_ID:I

    if-ne v1, v6, :cond_8b

    .line 109
    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    invoke-direct {p0, v1, v6, v7}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->sendMessageTestResult(IBB)V

    goto :goto_44

    .line 112
    :cond_8b
    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    invoke-direct {p0, v1, v5, v7}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->sendMessageTestResult(IBB)V

    goto :goto_44

    .line 116
    :cond_91
    invoke-virtual {v0, v5, v8}, Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V

    .line 121
    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CURRENT_TEST_ID:I

    if-ne v1, v6, :cond_9e

    .line 122
    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    invoke-direct {p0, v1, v6, v7}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->sendMessageTestResult(IBB)V

    goto :goto_44

    .line 125
    :cond_9e
    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    invoke-direct {p0, v1, v5, v7}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->sendMessageTestResult(IBB)V

    goto :goto_44

    .line 136
    :cond_a4
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 137
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->stopLoopback()V

    .line 138
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    goto :goto_55
.end method
