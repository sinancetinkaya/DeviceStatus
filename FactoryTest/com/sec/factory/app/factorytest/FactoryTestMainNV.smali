.class public Lcom/sec/factory/app/factorytest/FactoryTestMainNV;
.super Ljava/lang/Object;
.source "FactoryTestMainNV.java"


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

.field private mHandlerFeedback:Landroid/os/Handler;

.field private mIsFirstRegisterReceiverNRequest:Z

.field private mListView:Landroid/widget/ListView;

.field private mTestResultText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/TextView;Landroid/widget/ListView;Lcom/sec/factory/app/factorytest/FactoryTestPhone;)V
    .registers 8
    .parameter "context"
    .parameter "feedback"
    .parameter "view"
    .parameter "listView"
    .parameter "phone"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "FactoryTestMainNV"

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->CLASS_NAME:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mIsFirstRegisterReceiverNRequest:Z

    .line 83
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainNV$1;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMainNV;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mHandlerFeedback:Landroid/os/Handler;

    .line 32
    iput-object p3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mTestResultText:Landroid/widget/TextView;

    .line 33
    iput-object p4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mListView:Landroid/widget/ListView;

    .line 34
    iput-object p5, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    .line 36
    iput-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mIsFirstRegisterReceiverNRequest:Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/factorytest/FactoryTestMainNV;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->getFactoryTestHistoryValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/factory/app/factorytest/FactoryTestMainNV;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->formatTestResultCPO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/factorytest/FactoryTestMainNV;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mTestResultText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/factorytest/FactoryTestMainNV;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private formatTestResultCPO()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 163
    const-string v0, ""

    .line 165
    .local v0, Cal2Result:Ljava/lang/String;
    const-string v3, "ro.csc.sales_code"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, productModel:Ljava/lang/String;
    const-string v3, "CTC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 167
    const-string v3, "SUPPORT_DUAL_STANBY"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 168
    const-string v3, "FactoryTestMainNV"

    const-string v4, "formatTestResultAPO"

    const-string v5, "support DUAL STANDBY"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " C2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    const-string v5, "08"

    invoke-virtual {v3, v5}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->getResultForPGMItems(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c3

    const-string v3, "O"

    :goto_3b
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "S: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    const-string v5, "01"

    invoke-virtual {v3, v5}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->getResultForPGMItems(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v6, :cond_c7

    const-string v3, "O"

    :goto_5a
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " P: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    const-string v5, "04"

    invoke-virtual {v3, v5}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->getResultForPGMItems(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v6, :cond_ca

    const-string v3, "O"

    :goto_70
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " C: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    const-string v5, "07"

    invoke-virtual {v3, v5}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->getResultForPGMItems(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v6, :cond_cd

    const-string v3, "O"

    :goto_86
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " F: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    const-string v5, "0B"

    invoke-virtual {v3, v5}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->getResultForPGMItems(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v6, :cond_d0

    const-string v3, "O"

    :goto_a0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, result:Ljava/lang/String;
    const-string v3, "FactoryTestMainNV"

    const-string v4, "formatTestResultCPO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-object v2

    .line 169
    .end local v2           #result:Ljava/lang/String;
    :cond_c3
    const-string v3, "X"

    goto/16 :goto_3b

    .line 175
    :cond_c7
    const-string v3, "X"

    goto :goto_5a

    :cond_ca
    const-string v3, "X"

    goto :goto_70

    :cond_cd
    const-string v3, "X"

    goto :goto_86

    :cond_d0
    const-string v3, "X"

    goto :goto_a0
.end method

.method private getFactoryTestHistoryValue(Ljava/lang/String;)V
    .registers 12
    .parameter "nvString"

    .prologue
    const/4 v9, 0x1

    .line 111
    const/4 v1, -0x1

    .line 112
    .local v1, position:I
    if-nez p1, :cond_6

    .line 113
    const-string p1, ""

    .line 115
    :cond_6
    const-string v5, "FactoryTestMainNV"

    const-string v6, "getFactoryTestHistoryValue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nvString = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x6

    .local v0, i:I
    :goto_21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_e4

    .line 118
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, tempItemValue:Ljava/lang/String;
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, tempResultValue:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v5, v3}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->getItemID(Ljava/lang/String;)I

    move-result v1

    .line 126
    const-string v5, "50"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 127
    const-string v5, "FactoryTestMainNV"

    const-string v6, "getFactoryTestHistoryValue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PASS = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v5, "01"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_95

    const-string v5, "04"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_95

    const-string v5, "07"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_95

    const-string v5, "08"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_95

    const-string v5, "0A"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_95

    const-string v5, "0B"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_95

    const-string v5, "0C"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 132
    :cond_95
    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v5, v3, v9}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->setResultForPGMItems(Ljava/lang/String;Z)V

    .line 117
    :cond_9a
    :goto_9a
    add-int/lit8 v0, v0, 0x4

    goto :goto_21

    .line 137
    :cond_9d
    const/4 v5, -0x1

    if-le v1, v5, :cond_9a

    .line 138
    const-string v5, "FactoryTestMainNV"

    const-string v6, "getFactoryTestHistoryValue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/16 v2, 0x4e

    .line 140
    .local v2, result:B
    const-string v5, "50"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 141
    const/16 v2, 0x50

    .line 148
    :cond_c6
    :goto_c6
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemPosition_ID(I)I

    move-result v5

    invoke-static {v5, v2}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->setItemResult(IB)V

    goto :goto_9a

    .line 142
    :cond_ce
    const-string v5, "45"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 143
    const/16 v2, 0x45

    goto :goto_c6

    .line 144
    :cond_d9
    const-string v5, "46"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 145
    const/16 v2, 0x46

    goto :goto_c6

    .line 152
    .end local v2           #result:B
    .end local v3           #tempItemValue:Ljava/lang/String;
    .end local v4           #tempResultValue:Ljava/lang/String;
    :cond_e4
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->setResultParent()V

    .line 154
    iget-boolean v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mIsFirstRegisterReceiverNRequest:Z

    if-nez v5, :cond_f9

    .line 155
    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mHandlerFeedback:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    iput-boolean v9, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mIsFirstRegisterReceiverNRequest:Z

    .line 159
    :cond_f9
    return-void
.end method


# virtual methods
.method public formatTestResultAPO()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v3, 0x50

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/factory/support/NVAccessor;->getNV(B)B

    move-result v1

    if-ne v1, v3, :cond_73

    const-string v1, "O"

    :goto_16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " P: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/sec/factory/support/NVAccessor;->getNV(B)B

    move-result v1

    if-ne v1, v3, :cond_76

    const-string v1, "O"

    :goto_29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " C: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/sec/factory/support/NVAccessor;->getNV(B)B

    move-result v1

    if-ne v1, v3, :cond_79

    const-string v1, "O"

    :goto_3c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " F: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/sec/factory/support/NVAccessor;->getNV(B)B

    move-result v1

    if-ne v1, v3, :cond_7c

    const-string v1, "O"

    :goto_50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, result:Ljava/lang/String;
    const-string v1, "FactoryTestMainNV"

    const-string v2, "formatTestResultAPO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object v0

    .line 42
    .end local v0           #result:Ljava/lang/String;
    :cond_73
    const-string v1, "X"

    goto :goto_16

    :cond_76
    const-string v1, "X"

    goto :goto_29

    :cond_79
    const-string v1, "X"

    goto :goto_3c

    :cond_7c
    const-string v1, "X"

    goto :goto_50
.end method

.method public registerReceiverNRequestCPO()V
    .registers 5

    .prologue
    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.samsungtest.RilOmissionCommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    const-string v1, "FactoryTestMainNV"

    const-string v2, "registerReceiverNRequestCPO"

    const-string v3, "Request for TestNV!"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->requestTestNvViewToRil()V

    .line 73
    return-void
.end method

.method public unregisterReceiverNRequestCPO()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_15

    .line 77
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    iput-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    const-string v0, "FactoryTestMainNV"

    const-string v1, "unregisterTestReceiver"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_15
    return-void
.end method
