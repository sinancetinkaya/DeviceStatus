.class public Lcom/sec/factory/cporiented/ResponseWriterCPO;
.super Ljava/lang/Object;
.source "ResponseWriterCPO.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field public mMessenger:Landroid/os/Messenger;

.field public mResoponseMessenger:Landroid/os/Messenger;

.field private mResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mResoponseMessenger:Landroid/os/Messenger;

    .line 51
    iput-object v0, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mMessenger:Landroid/os/Messenger;

    .line 395
    new-instance v0, Lcom/sec/factory/cporiented/ResponseWriterCPO$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/cporiented/ResponseWriterCPO$1;-><init>(Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    iput-object v0, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mHandler:Landroid/os/Handler;

    .line 66
    const-string v0, "ResponseWriterCPO"

    const-string v1, "ResponseWriter"

    const-string v2, "Create ResponseWriterCPO Without Messenger"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/os/Messenger;)V
    .registers 5
    .parameter "messenger"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mResoponseMessenger:Landroid/os/Messenger;

    .line 51
    iput-object v0, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mMessenger:Landroid/os/Messenger;

    .line 395
    new-instance v0, Lcom/sec/factory/cporiented/ResponseWriterCPO$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/cporiented/ResponseWriterCPO$1;-><init>(Lcom/sec/factory/cporiented/ResponseWriterCPO;)V

    iput-object v0, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mHandler:Landroid/os/Handler;

    .line 55
    const-string v0, "ResponseWriterCPO"

    const-string v1, "ResponseWriter"

    const-string v2, "Create ResponseWriterCPO"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mResoponseMessenger:Landroid/os/Messenger;

    .line 58
    if-eqz p1, :cond_26

    .line 59
    iput-object p1, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mMessenger:Landroid/os/Messenger;

    .line 63
    :goto_25
    return-void

    .line 61
    :cond_26
    const-string v0, "ResponseWriterCPO"

    const-string v1, "ResponseWriterCPO"

    const-string v2, "messenger is not available"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method private setResultEndModeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 23
    .parameter "mainCMD"
    .parameter "attr"
    .parameter "data"

    .prologue
    .line 192
    const/4 v10, 0x2

    .line 193
    .local v10, nLength:I
    const/4 v4, 0x1

    .line 194
    .local v4, eventType:I
    const/4 v5, 0x0

    .line 195
    .local v5, isdft:Z
    const-string v12, "F7"

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 196
    const-string v12, "ResponseWriterCPO"

    const-string v13, "setResultEndModeData"

    const-string v14, "Set Event type to DFT"

    invoke-static {v12, v13, v14}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v4, 0x5

    .line 198
    const/4 v10, 0x1

    .line 199
    const/4 v12, 0x2

    const/4 v13, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 200
    const/4 v5, 0x1

    .line 202
    :cond_27
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 204
    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v9, -0x1

    .line 205
    .local v9, nAttr:I
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v12

    mul-int/lit8 v12, v12, 0x10

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v13

    add-int v11, v12, v13

    .line 207
    .local v11, nMainCMD:I
    if-eqz p2, :cond_aa

    .line 208
    const-string v12, "ResponseWriterCPO"

    const-string v13, "setResultEndModeData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "attr.charAt(0) : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v12, "ResponseWriterCPO"

    const-string v13, "setResultEndModeData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "attr.charAt(1) : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v12

    mul-int/lit8 v12, v12, 0x10

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v13

    add-int v9, v12, v13

    .line 212
    :cond_aa
    const-string v12, "ResponseWriterCPO"

    const-string v13, "setResultEndModeData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nAttr : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz p3, :cond_f5

    .line 215
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v10, v12

    .line 216
    const-string v12, "ResponseWriterCPO"

    const-string v13, "setResultEndModeData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nLength : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "data.length(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_f5
    int-to-byte v7, v10

    .line 220
    .local v7, length2:B
    shr-int/lit8 v12, v10, 0x8

    int-to-byte v6, v12

    .line 222
    .local v6, length1:B
    add-int/lit8 v8, v10, 0x6

    .line 225
    .local v8, mFileSize:I
    const/16 v12, 0x12

    :try_start_fd
    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 226
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 227
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 228
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 229
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 230
    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 231
    const/4 v12, -0x1

    if-eq v9, v12, :cond_117

    if-nez v5, :cond_117

    .line 232
    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 234
    :cond_117
    if-eqz p3, :cond_13a

    .line 235
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 236
    const-string v12, "ResponseWriterCPO"

    const-string v13, "setResultEndModeData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mData : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_13a
    const-string v12, "ResponseWriterCPO"

    const-string v13, "setResultEndModeData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "send : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%x %x %x %x %x %x %x %s"

    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x12

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x7

    aput-object p3, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_1a0} :catch_1b3

    .line 247
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x65

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mResponse:Landroid/os/Message;

    .line 248
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    :goto_1b2
    return-object v12

    .line 244
    :catch_1b3
    move-exception v3

    .line 245
    .local v3, e:Ljava/io/IOException;
    const/4 v12, 0x0

    goto :goto_1b2
.end method

.method private setResultEndModeData_DFT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .registers 23
    .parameter "mainCMD"
    .parameter "attr"
    .parameter "data"
    .parameter "iskeycmd"

    .prologue
    .line 253
    const-string v11, "ResponseWriterCPO"

    const-string v12, "setResultEndModeData"

    const-string v13, "Event Response type: DFT"

    invoke-static {v11, v12, v13}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v9, -0x1

    .line 255
    .local v9, nLength:I
    if-eqz p4, :cond_197

    const/4 v9, 0x3

    .line 256
    :goto_d
    const/4 v4, 0x5

    .line 257
    .local v4, eventType:I
    const/4 v11, 0x2

    const/4 v12, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 258
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 259
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 260
    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v8, -0x1

    .line 261
    .local v8, nAttr:I
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v11

    mul-int/lit8 v11, v11, 0x10

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v12

    add-int v10, v11, v12

    .line 263
    .local v10, nMainCMD:I
    if-eqz p2, :cond_99

    .line 264
    const-string v11, "ResponseWriterCPO"

    const-string v12, "setResultEndModeData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "attr.charAt(0) : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v11, "ResponseWriterCPO"

    const-string v12, "setResultEndModeData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "attr.charAt(1) : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v11

    mul-int/lit8 v11, v11, 0x10

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/sec/factory/support/FtUtil;->charToNum(C)I

    move-result v12

    add-int v8, v11, v12

    .line 268
    :cond_99
    const-string v11, "ResponseWriterCPO"

    const-string v12, "setResultEndModeData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "nAttr : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    if-eqz p3, :cond_e6

    .line 270
    if-nez p4, :cond_be

    .line 271
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v9, v11

    .line 272
    :cond_be
    const-string v11, "ResponseWriterCPO"

    const-string v12, "setResultEndModeData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "nLength : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " data.length(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_e6
    int-to-byte v6, v9

    .line 276
    .local v6, length2:B
    shr-int/lit8 v11, v9, 0x8

    int-to-byte v5, v11

    .line 277
    .local v5, length1:B
    add-int/lit8 v7, v9, 0x6

    .line 279
    .local v7, mFileSize:I
    const/16 v11, 0x12

    :try_start_ee
    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 280
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 281
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 282
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 283
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 284
    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 285
    if-eqz p3, :cond_12b

    .line 286
    if-eqz p4, :cond_19a

    .line 287
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 290
    :goto_10f
    const-string v11, "ResponseWriterCPO"

    const-string v12, "setResultEndModeData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mData : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_12b
    const-string v11, "ResponseWriterCPO"

    const-string v12, "setResultEndModeData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "send : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%x %x %x %x %x %x %s"

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x12

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    aput-object p3, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_184} :catch_1a1

    .line 302
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x67

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mResponse:Landroid/os/Message;

    .line 303
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    :goto_196
    return-object v11

    .line 255
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .end local v4           #eventType:I
    .end local v5           #length1:B
    .end local v6           #length2:B
    .end local v7           #mFileSize:I
    .end local v8           #nAttr:I
    .end local v10           #nMainCMD:I
    :cond_197
    const/4 v9, 0x1

    goto/16 :goto_d

    .line 289
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #dos:Ljava/io/DataOutputStream;
    .restart local v4       #eventType:I
    .restart local v5       #length1:B
    .restart local v6       #length2:B
    .restart local v7       #mFileSize:I
    .restart local v8       #nAttr:I
    .restart local v10       #nMainCMD:I
    :cond_19a
    :try_start_19a
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_19f} :catch_1a1

    goto/16 :goto_10f

    .line 298
    :catch_1a1
    move-exception v3

    .line 300
    .local v3, e:Ljava/io/IOException;
    const/4 v11, 0x0

    goto :goto_196
.end method

.method private setResultEndModeData_cpdump()[B
    .registers 7

    .prologue
    .line 307
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 308
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 309
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 311
    .local v3, fileSize:I
    const/4 v4, 0x7

    :try_start_c
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 312
    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 313
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 314
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_43
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_34

    .line 318
    if-eqz v1, :cond_20

    .line 320
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_2f

    .line 327
    :cond_20
    :goto_20
    iget-object v4, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mResponse:Landroid/os/Message;

    .line 328
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 321
    :catch_2f
    move-exception v2

    .line 322
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 315
    .end local v2           #e:Ljava/lang/Exception;
    :catch_34
    move-exception v2

    .line 316
    .local v2, e:Ljava/io/IOException;
    :try_start_35
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_43

    .line 318
    if-eqz v1, :cond_20

    .line 320
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_20

    .line 321
    :catch_3e
    move-exception v2

    .line 322
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 318
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_43
    move-exception v4

    if-eqz v1, :cond_49

    .line 320
    :try_start_46
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    .line 323
    :cond_49
    :goto_49
    throw v4

    .line 321
    :catch_4a
    move-exception v2

    .line 322
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49
.end method


# virtual methods
.method public sendRILBootMsg()Z
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 332
    const/4 v0, 0x6

    .line 333
    .local v0, OEM_FUNCTION_ID_IMEI:B
    const/4 v1, 0x5

    .line 340
    .local v1, OEM_IMEI_EVENT_START_IMEI:B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 341
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 343
    .local v4, dos:Ljava/io/DataOutputStream;
    const/4 v10, 0x2

    new-array v3, v10, [B

    .line 344
    .local v3, command:[B
    const/4 v10, 0x6

    aput-byte v10, v3, v9

    .line 345
    const/4 v10, 0x5

    aput-byte v10, v3, v8

    .line 347
    const/4 v7, 0x2

    .line 348
    .local v7, sizeofShort:S
    array-length v10, v3

    add-int/2addr v10, v7

    int-to-short v6, v10

    .line 351
    .local v6, length:S
    const/4 v10, 0x0

    :try_start_1c
    array-length v11, v3

    invoke-virtual {v4, v3, v10, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 352
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_4e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_40

    .line 357
    :try_start_23
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 358
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_29} :catch_3b

    .line 363
    :goto_29
    iget-object v9, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mResponse:Landroid/os/Message;

    .line 364
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write([B)V

    .line 366
    :goto_3a
    return v8

    .line 359
    :catch_3b
    move-exception v5

    .line 360
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 353
    .end local v5           #e:Ljava/io/IOException;
    :catch_40
    move-exception v5

    .line 357
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_41
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 358
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_47} :catch_49

    :goto_47
    move v8, v9

    .line 361
    goto :goto_3a

    .line 359
    :catch_49
    move-exception v5

    .line 360
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 356
    .end local v5           #e:Ljava/io/IOException;
    :catchall_4e
    move-exception v8

    .line 357
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 358
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_55} :catch_56

    .line 361
    :goto_55
    throw v8

    .line 359
    :catch_56
    move-exception v5

    .line 360
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55
.end method

.method public sendSleepCmd()Z
    .registers 9

    .prologue
    .line 370
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 371
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 374
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    :try_start_b
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 375
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 376
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_96
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_4f

    .line 382
    :try_start_16
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 383
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1c} :catch_2f

    .line 389
    :goto_1c
    iget-object v3, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mResponse:Landroid/os/Message;

    .line 390
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write([B)V

    .line 392
    const/4 v3, 0x1

    :goto_2e
    return v3

    .line 384
    :catch_2f
    move-exception v2

    .line 385
    .local v2, e:Ljava/io/IOException;
    const-string v3, "ResponseWriterCPO"

    const-string v4, "sendSleepCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO Exception on close(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 377
    .end local v2           #e:Ljava/io/IOException;
    :catch_4f
    move-exception v2

    .line 378
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_50
    const-string v3, "ResponseWriterCPO"

    const-string v4, "sendSleepCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_50 .. :try_end_6e} :catchall_96

    .line 379
    const/4 v3, 0x0

    .line 382
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 383
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_75} :catch_76

    goto :goto_2e

    .line 384
    :catch_76
    move-exception v2

    .line 385
    const-string v4, "ResponseWriterCPO"

    const-string v5, "sendSleepCmd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO Exception on close(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 381
    .end local v2           #e:Ljava/io/IOException;
    :catchall_96
    move-exception v3

    .line 382
    :try_start_97
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 383
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9d} :catch_9e

    .line 386
    :goto_9d
    throw v3

    .line 384
    :catch_9e
    move-exception v2

    .line 385
    .restart local v2       #e:Ljava/io/IOException;
    const-string v4, "ResponseWriterCPO"

    const-string v5, "sendSleepCmd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO Exception on close(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d
.end method

.method public setAckEndModeData(I)[B
    .registers 7
    .parameter "ack"

    .prologue
    .line 146
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 150
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x12

    :try_start_c
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 151
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 152
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 153
    if-nez p1, :cond_31

    .line 154
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1d} :catch_37

    .line 161
    :goto_1d
    if-eqz v1, :cond_22

    .line 163
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_46

    .line 169
    :cond_22
    :goto_22
    iget-object v3, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mResponse:Landroid/os/Message;

    .line 170
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 156
    :cond_31
    const/16 v3, 0xff

    :try_start_33
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_1d

    .line 158
    :catch_37
    move-exception v2

    .line 159
    .local v2, e:Ljava/io/IOException;
    :try_start_38
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_4b

    .line 161
    if-eqz v1, :cond_22

    .line 163
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_22

    .line 164
    :catch_41
    move-exception v2

    .line 165
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 164
    .end local v2           #e:Ljava/lang/Exception;
    :catch_46
    move-exception v2

    .line 165
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 161
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_4b
    move-exception v3

    if-eqz v1, :cond_51

    .line 163
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52

    .line 166
    :cond_51
    :goto_51
    throw v3

    .line 164
    :catch_52
    move-exception v2

    .line 165
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51
.end method

.method public setAckEndModeData_DFT(I)[B
    .registers 7
    .parameter "ack"

    .prologue
    .line 174
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 175
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 177
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x12

    :try_start_c
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 178
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 179
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 180
    if-nez p1, :cond_2c

    .line 181
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1d} :catch_32

    .line 187
    :goto_1d
    iget-object v3, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mResponse:Landroid/os/Message;

    .line 188
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_2b
    return-object v3

    .line 183
    :cond_2c
    const/16 v3, 0xff

    :try_start_2e
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_1d

    .line 184
    :catch_32
    move-exception v2

    .line 185
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method public write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "result"
    .parameter "mainCMD"
    .parameter "attr"
    .parameter "data"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, bData:[B
    packed-switch p1, :pswitch_data_7a

    .line 136
    const-string v1, "ResponseWriterCPO"

    const-string v2, "write"

    const-string v3, "Cannot accept result!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    invoke-direct {p0, p2, p3, v1}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->setResultEndModeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 140
    :goto_13
    invoke-virtual {p0, v0}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write([B)V

    .line 141
    const-string v1, "ResponseWriterCPO"

    const-string v2, "write"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void

    .line 108
    :pswitch_31
    invoke-virtual {p0, p1}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->setAckEndModeData(I)[B

    move-result-object v0

    .line 109
    goto :goto_13

    .line 112
    :pswitch_36
    invoke-virtual {p0, p1}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->setAckEndModeData_DFT(I)[B

    move-result-object v0

    .line 113
    goto :goto_13

    .line 115
    :pswitch_3b
    const-string v1, "fe"

    invoke-direct {p0, p2, v1, p4}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->setResultEndModeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 116
    goto :goto_13

    .line 118
    :pswitch_42
    const-string v1, "ff"

    invoke-direct {p0, p2, v1, p4}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->setResultEndModeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 119
    goto :goto_13

    .line 123
    :pswitch_49
    const-string v1, "ResponseWriterCPO"

    const-string v2, "write"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->setResultEndModeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 125
    goto :goto_13

    .line 127
    :pswitch_68
    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, p4, v1}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->setResultEndModeData_DFT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    .line 128
    goto :goto_13

    .line 130
    :pswitch_6e
    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, p4, v1}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->setResultEndModeData_DFT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    .line 131
    goto :goto_13

    .line 133
    :pswitch_74
    invoke-direct {p0}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->setResultEndModeData_cpdump()[B

    move-result-object v0

    .line 134
    goto :goto_13

    .line 105
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_31
        :pswitch_31
        :pswitch_49
        :pswitch_49
        :pswitch_42
        :pswitch_3b
        :pswitch_49
        :pswitch_36
        :pswitch_36
        :pswitch_68
        :pswitch_6e
        :pswitch_74
    .end packed-switch
.end method

.method public write([B)V
    .registers 9
    .parameter "data"

    .prologue
    .line 74
    const-string v3, "ResponseWriterCPO"

    const-string v4, "write"

    const-string v5, "Send Response Message to SecPhone"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v3, "ResponseWriterCPO"

    const-string v4, "write"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v1, req:Landroid/os/Bundle;
    const-string v3, "request"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 79
    iget-object v2, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mResponse:Landroid/os/Message;

    .line 80
    .local v2, response:Landroid/os/Message;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mResponse:Landroid/os/Message;

    .line 82
    if-nez v2, :cond_40

    .line 83
    iget-object v3, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 86
    :cond_40
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 87
    iget-object v3, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mResoponseMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 90
    :try_start_47
    iget-object v3, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_51

    .line 91
    iget-object v3, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 98
    :goto_50
    return-void

    .line 93
    :cond_51
    const-string v3, "ResponseWriterCPO"

    const-string v4, "write"

    const-string v5, "send failed!!!"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_5a} :catch_5b

    goto :goto_50

    .line 95
    :catch_5b
    move-exception v0

    .line 96
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_50
.end method
