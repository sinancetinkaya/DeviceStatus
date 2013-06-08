.class public Lcom/wssyncmldm/agent/XDMAgentHandler;
.super Lcom/wssyncmldm/agent/XDMAgent;
.source "XDMAgentHandler.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XUIInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    return-void
.end method

.method public static xdmAgentStringToPcdata([C)Lcom/wssyncmldm/eng/parser/XDMParserPcdata;
    .registers 5
    .parameter "str"

    .prologue
    .line 766
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;-><init>()V

    .line 768
    .local v1, o:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;
    const/4 v2, 0x0

    iput v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    .line 769
    array-length v2, p0

    iput v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    .line 770
    array-length v2, p0

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    .line 771
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    array-length v2, p0

    if-ge v0, v2, :cond_1d

    .line 772
    iget-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    aget-char v3, p0, v0

    aput-char v3, v2, v0

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 773
    :cond_1d
    return-object v1
.end method


# virtual methods
.method public xdmAgentGetUicOptionDRMultiChoice(Lcom/wssyncmldm/eng/core/XDMUicResult;)V
    .registers 14
    .parameter "pData"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 719
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentGetWorkSpace()Lcom/wssyncmldm/eng/core/XDMWorkspace;

    move-result-object v7

    .line 720
    .local v7, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    if-nez v7, :cond_e

    .line 722
    const-string v8, "ws is null"

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 761
    :cond_d
    return-void

    .line 726
    :cond_e
    const/4 v5, 0x0

    .line 727
    .local v5, pUicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    const/4 v4, 0x0

    .line 728
    .local v4, pStartCharacter:[C
    const/4 v3, 0x0

    .line 730
    .local v3, pEndCharacter:[C
    const/4 v1, 0x0

    .line 731
    .local v1, ipStartCharacter:I
    const/4 v0, 0x0

    .line 732
    .local v0, ipEndCharacter:I
    move-object v5, p1

    .line 734
    iget-object v8, v7, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v8, v8, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v8, v8, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 735
    move-object v3, v4

    .line 738
    :goto_1f
    array-length v8, v4

    if-ge v1, v8, :cond_d

    .line 740
    array-length v8, v3

    if-ge v0, v8, :cond_d

    .line 742
    aget-char v8, v3, v0

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_2f

    aget-char v8, v3, v0

    if-nez v8, :cond_53

    .line 744
    :cond_2f
    new-array v6, v11, [C

    aput-char v10, v6, v10

    .line 746
    .local v6, tmpBuf:[C
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    sub-int v9, v0, v1

    invoke-virtual {v8, v10, v9, v6, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 747
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 749
    .local v2, nIndex:I
    iget-object v8, v5, Lcom/wssyncmldm/eng/core/XDMUicResult;->MultiSelected:[I

    aput v11, v8, v2

    .line 751
    move-object v4, v3

    .line 753
    aget-char v8, v4, v1

    if-eqz v8, :cond_d

    .line 756
    add-int/lit8 v1, v1, 0x1

    .line 759
    .end local v2           #nIndex:I
    .end local v6           #tmpBuf:[C
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method public xdmAgentHdlrAbortSession(I)V
    .registers 5
    .parameter "nReason"

    .prologue
    .line 709
    const/4 v0, 0x0

    .line 710
    .local v0, pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbortReason=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 713
    const/16 v1, 0xf5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmCreateAbortMessage(IZ)Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;

    move-result-object v0

    .line 714
    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 715
    return-void
.end method

.method public xdmAgentHdlrContinueSession(ILjava/lang/Object;)V
    .registers 20
    .parameter "nEvent"
    .parameter "pData"

    .prologue
    .line 202
    const/4 v6, 0x0

    .line 204
    .local v6, nRet:I
    const/4 v13, 0x0

    .line 205
    .local v13, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v4, 0x0

    .line 206
    .local v4, nAgentType:I
    const/4 v8, 0x2

    .line 208
    .local v8, nSyncMode:I
    const-string v14, ""

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentGetWorkSpace()Lcom/wssyncmldm/eng/core/XDMWorkspace;

    move-result-object v13

    .line 210
    if-nez v13, :cond_14

    .line 212
    const-string v14, "!ws WARNING"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 215
    :cond_14
    sparse-switch p1, :sswitch_data_504

    .line 687
    :cond_17
    :goto_17
    return-void

    .line 219
    :sswitch_18
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDmAgentType()I

    move-result v4

    .line 220
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "XEVENT_DM_START nAgentType : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 221
    const/4 v14, 0x1

    if-ne v4, v14, :cond_39

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgnetHdlrContinueSessionFumoStart()V

    goto :goto_17

    .line 227
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgnetHdlrContinueSessionDmStart()V

    goto :goto_17

    .line 234
    :sswitch_3d
    const-string v14, "XEVENT_DM_CONTINUE"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 235
    if-nez v13, :cond_4a

    .line 237
    const-string v14, "ws XEVENT_DM_CONTINUE WARNING"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_17

    .line 240
    :cond_4a
    sget-object v14, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->procState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 244
    :try_start_4e
    iget-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    if-nez v14, :cond_59

    .line 246
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    .line 248
    :cond_59
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    iget-object v15, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpReceiveData(Ljava/io/ByteArrayOutputStream;I)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_64} :catch_71

    move-result v6

    .line 257
    :goto_65
    iget-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    if-nez v14, :cond_7e

    .line 259
    const/16 v14, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrAbortSession(I)V

    goto :goto_17

    .line 250
    :catch_71
    move-exception v1

    .line 252
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 254
    const/4 v6, -0x4

    goto :goto_65

    .line 262
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v14}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetCurHMACData()Lcom/wssyncmldm/eng/core/XDMHmacData;

    move-result-object v14

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->recvHmacData:Lcom/wssyncmldm/eng/core/XDMHmacData;

    .line 264
    const/4 v14, -0x6

    if-ne v6, v14, :cond_9a

    .line 267
    const/16 v14, 0xf9

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmCreateAbortMessage(IZ)Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;

    move-result-object v9

    .line 268
    .local v9, pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    const/16 v14, 0x19

    const/4 v15, 0x0

    invoke-static {v14, v9, v15}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 271
    .end local v9           #pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    :cond_9a
    if-eqz v6, :cond_a6

    .line 273
    const/16 v14, 0x1c

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 277
    :cond_a6
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentStartMgmtSession()I

    move-result v6

    .line 278
    const/4 v14, -0x1

    if-ne v6, v14, :cond_bb

    .line 280
    const-string v14, "XDM_RET_FAILED"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 281
    const/16 v14, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrAbortSession(I)V

    goto/16 :goto_17

    .line 284
    :cond_bb
    const/4 v14, -0x6

    if-ne v6, v14, :cond_cb

    .line 286
    const-string v14, "XDM_RET_AUTH_MAX_ERROR"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 287
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrAbortSession(I)V

    goto/16 :goto_17

    .line 290
    :cond_cb
    const/4 v14, 0x3

    if-ne v6, v14, :cond_d8

    .line 292
    const-string v14, "XDM_RET_ALERT_SESSION_ABORT"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrDestroySession()V

    goto/16 :goto_17

    .line 296
    :cond_d8
    const/16 v14, 0x8

    if-ne v6, v14, :cond_11c

    .line 298
    const-string v14, "XDM_RET_FINISH"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 299
    const-string v14, "no action command finish session"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v7

    .line 302
    .local v7, nStatus:I
    const/16 v14, 0x64

    if-eq v7, v14, :cond_106

    const/16 v14, 0x5a

    if-eq v7, v14, :cond_106

    const/16 v14, 0x50

    if-eq v7, v14, :cond_106

    const/16 v14, 0x46

    if-eq v7, v14, :cond_106

    const/16 v14, 0x41

    if-eq v7, v14, :cond_106

    const/16 v14, 0xf0

    if-eq v7, v14, :cond_106

    const/16 v14, 0xf1

    if-ne v7, v14, :cond_117

    .line 307
    :cond_106
    const-string v14, "FUMO nStatus"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 308
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDmAgentType(I)V

    .line 309
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 310
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    .line 313
    :cond_117
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrDestroySession()V

    goto/16 :goto_17

    .line 315
    .end local v7           #nStatus:I
    :cond_11c
    const/16 v14, 0x9

    if-ne v6, v14, :cond_134

    .line 317
    const-string v14, "XDM_RET_ABORT"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 319
    const/16 v14, 0xf4

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmCreateAbortMessage(IZ)Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;

    move-result-object v9

    .line 320
    .restart local v9       #pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    const/16 v14, 0x19

    const/4 v15, 0x0

    invoke-static {v14, v9, v15}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 322
    .end local v9           #pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    :cond_134
    const/4 v14, -0x5

    if-ne v6, v14, :cond_145

    .line 324
    const-string v14, "XDM_RET_PAUSED_BECAUSE_UIC_COMMAND"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 325
    iget-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrlUicSendEvent(Lcom/wssyncmldm/eng/core/XDMUicOption;)V

    goto/16 :goto_17

    .line 327
    :cond_145
    const/4 v14, 0x2

    if-ne v6, v14, :cond_164

    .line 329
    const-string v14, "XDM_RET_EXEC_ALTERNATIVE"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 330
    const-string v14, "Connect to the Contents Server"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 332
    const/16 v14, 0x1a

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 333
    const/16 v14, 0x70

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 335
    :cond_164
    const/4 v14, 0x1

    if-eq v6, v14, :cond_17

    .line 339
    const/4 v14, 0x7

    if-ne v6, v14, :cond_175

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrDestroySession()V

    .line 342
    const/4 v14, 0x0

    const/16 v15, 0xcc

    invoke-static {v14, v15}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_17

    .line 344
    :cond_175
    const/4 v14, 0x5

    if-ne v6, v14, :cond_18f

    .line 346
    const-string v14, "XDM_RET_EXEC_ALTERNATIVE_DOWNLOAD"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 347
    const/16 v14, 0x1a

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 348
    const/16 v14, 0x70

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 350
    :cond_18f
    const/4 v14, 0x6

    if-ne v6, v14, :cond_1ba

    .line 352
    const-string v14, "XDM_RET_EXEC_ALTERNATIVE_UPDATE"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 353
    const/16 v14, 0x1a

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 354
    const/16 v14, 0x32

    invoke-static {v14}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 358
    const-wide/16 v14, 0x3e8

    :try_start_1a6
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a9
    .catch Ljava/lang/InterruptedException; {:try_start_1a6 .. :try_end_1a9} :catch_1b1

    .line 364
    :goto_1a9
    const/4 v14, 0x0

    const/16 v15, 0xcc

    invoke-static {v14, v15}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_17

    .line 360
    :catch_1b1
    move-exception v1

    .line 362
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1a9

    .line 366
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1ba
    const/4 v14, 0x4

    if-ne v6, v14, :cond_1d0

    .line 368
    const-string v14, "XDM_RET_CHANGED_PROFILE"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 369
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/wssyncmldm/db/file/XDB;->xdbSetChangedProtocol(Z)V

    .line 370
    const/16 v14, 0xb

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 372
    :cond_1d0
    const/4 v14, -0x7

    if-ne v6, v14, :cond_17

    .line 374
    const/16 v14, 0x15

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 382
    :sswitch_1dd
    const-string v14, "XEVENT_UIC_RESPONSE"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 383
    if-eqz v13, :cond_1e6

    if-nez p2, :cond_1ed

    .line 385
    :cond_1e6
    const-string v14, "XEVENT_UIC_RESPONSE WARNING!!!!!!!!!!!"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_1ed
    move-object/from16 v10, p2

    .line 388
    check-cast v10, Lcom/wssyncmldm/eng/core/XDMUicResult;

    .line 390
    .local v10, pUicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->UICType:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_263

    .line 392
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_21b

    .line 394
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TRUE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    .line 573
    :goto_1ff
    iget-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    if-eqz v14, :cond_20b

    .line 575
    iget-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    invoke-static {v14}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicFreeUicOption(Lcom/wssyncmldm/eng/core/XDMUicOption;)Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 576
    const/4 v14, 0x0

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 579
    :cond_20b
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentStartMgmtSession()I

    move-result v6

    .line 581
    const/4 v14, -0x1

    if-ne v6, v14, :cond_438

    .line 583
    const/16 v14, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrAbortSession(I)V

    goto/16 :goto_17

    .line 396
    :cond_21b
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    const/16 v15, 0x10

    if-ne v14, v15, :cond_25e

    .line 398
    iget-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v14, v14, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget v14, v14, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    if-eqz v14, :cond_259

    .line 400
    const-string v14, "1"

    iget-object v15, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v15, v15, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v15, v15, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_23c

    .line 402
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TRUE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto :goto_1ff

    .line 404
    :cond_23c
    const-string v14, "0"

    iget-object v15, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v15, v15, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v15, v15, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_24f

    .line 407
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TIMEOUT:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto :goto_1ff

    .line 412
    :cond_24f
    const-string v14, "____UIC_TYPE_CONFIRM__&&__UIC_RESULT_TIMEOUT________"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 413
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_FALSE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto :goto_1ff

    .line 419
    :cond_259
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_CANCELED:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto :goto_1ff

    .line 426
    :cond_25e
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_FALSE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto :goto_1ff

    .line 429
    :cond_263
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->UICType:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_310

    .line 431
    const/4 v3, 0x0

    .line 432
    .local v3, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const/4 v2, 0x0

    .local v2, h:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v12, 0x0

    .line 434
    .local v12, t:Lcom/wssyncmldm/eng/core/XDMList;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "______ UIC_TYPE_INPUT _______INPUT text :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v15, v15, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " UIC Result :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 436
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    if-nez v14, :cond_2b4

    .line 438
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .end local v3           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 440
    .restart local v3       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget-object v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v14, v14, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentStringToPcdata([C)Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move-result-object v14

    iput-object v14, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 441
    invoke-static {v2, v12, v3}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v2

    .line 442
    iput-object v2, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    .line 443
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TRUE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto/16 :goto_1ff

    .line 446
    :cond_2b4
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2bf

    .line 448
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_CANCELED:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto/16 :goto_1ff

    .line 450
    :cond_2bf
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    const/16 v15, 0x10

    if-ne v14, v15, :cond_30a

    .line 452
    iget-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v14, v14, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget v14, v14, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    if-eqz v14, :cond_304

    const-string v14, "0"

    iget-object v15, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v15, v15, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v15, v15, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_304

    .line 454
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .end local v3           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 455
    .restart local v3       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget-object v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v15, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v15, v15, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v15, v15, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    iput-object v15, v14, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    .line 456
    iget-object v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v14, v14, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentStringToPcdata([C)Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move-result-object v14

    iput-object v14, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 457
    invoke-static {v2, v12, v3}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v2

    .line 458
    iput-object v2, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    .line 459
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TRUE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto/16 :goto_1ff

    .line 464
    :cond_304
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TIMEOUT:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto/16 :goto_1ff

    .line 470
    :cond_30a
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_FALSE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto/16 :goto_1ff

    .line 473
    .end local v2           #h:Lcom/wssyncmldm/eng/core/XDMList;
    .end local v3           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    .end local v12           #t:Lcom/wssyncmldm/eng/core/XDMList;
    :cond_310
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->UICType:I

    const/4 v15, 0x4

    if-eq v14, v15, :cond_31a

    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->UICType:I

    const/4 v15, 0x5

    if-ne v14, v15, :cond_432

    .line 475
    :cond_31a
    const/4 v2, 0x0

    .restart local v2       #h:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v12, 0x0

    .line 477
    .restart local v12       #t:Lcom/wssyncmldm/eng/core/XDMList;
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_348

    .line 479
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 480
    .restart local v3       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const-string v11, ""

    .line 482
    .local v11, szDataText:Ljava/lang/String;
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->SingleSelected:I

    if-lez v14, :cond_332

    .line 483
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->SingleSelected:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 485
    :cond_332
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentStringToPcdata([C)Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move-result-object v14

    iput-object v14, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 486
    invoke-static {v2, v12, v3}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v2

    .line 487
    iput-object v2, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    .line 488
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TRUE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto/16 :goto_1ff

    .line 490
    .end local v3           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    .end local v11           #szDataText:Ljava/lang/String;
    :cond_348
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    const/4 v15, 0x5

    if-ne v14, v15, :cond_396

    .line 492
    const/4 v5, 0x0

    .line 494
    .local v5, nCount:I
    const/4 v5, 0x0

    :goto_34f
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->MenuNumbers:I

    if-ge v5, v14, :cond_383

    .line 496
    iget-object v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->MultiSelected:[I

    aget v14, v14, v5

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 497
    iget-object v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->MultiSelected:[I

    aget v14, v14, v5

    const/4 v15, 0x1

    if-ne v14, v15, :cond_380

    .line 499
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 500
    .restart local v3       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const-string v11, ""

    .line 502
    .restart local v11       #szDataText:Ljava/lang/String;
    add-int/lit8 v14, v5, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 503
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentStringToPcdata([C)Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move-result-object v14

    iput-object v14, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 504
    invoke-static {v2, v12, v3}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v2

    .line 494
    .end local v3           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    .end local v11           #szDataText:Ljava/lang/String;
    :cond_380
    add-int/lit8 v5, v5, 0x1

    goto :goto_34f

    .line 507
    :cond_383
    if-nez v2, :cond_38e

    .line 509
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 510
    .restart local v3       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-static {v2, v12, v3}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v2

    .line 513
    .end local v3           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    :cond_38e
    iput-object v2, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    .line 514
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TRUE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto/16 :goto_1ff

    .line 516
    .end local v5           #nCount:I
    :cond_396
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3a1

    .line 518
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_CANCELED:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto/16 :goto_1ff

    .line 520
    :cond_3a1
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    const/16 v15, 0x10

    if-ne v14, v15, :cond_42c

    .line 522
    iget-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v14, v14, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget v14, v14, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    if-eqz v14, :cond_426

    const-string v14, "0"

    iget-object v15, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v15, v15, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v15, v15, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_426

    .line 524
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->UICType:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_3e3

    .line 526
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 528
    .restart local v3       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v14, v14, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v14, v14, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentStringToPcdata([C)Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move-result-object v14

    iput-object v14, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 529
    invoke-static {v2, v12, v3}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v2

    .line 530
    iput-object v2, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    .line 531
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TRUE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto/16 :goto_1ff

    .line 536
    .end local v3           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    :cond_3e3
    const/4 v5, 0x0

    .line 538
    .restart local v5       #nCount:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentGetUicOptionDRMultiChoice(Lcom/wssyncmldm/eng/core/XDMUicResult;)V

    .line 540
    const/4 v5, 0x0

    :goto_3ea
    iget v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->MenuNumbers:I

    if-ge v5, v14, :cond_41e

    .line 542
    iget-object v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->MultiSelected:[I

    aget v14, v14, v5

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 544
    iget-object v14, v10, Lcom/wssyncmldm/eng/core/XDMUicResult;->MultiSelected:[I

    aget v14, v14, v5

    const/4 v15, 0x1

    if-ne v14, v15, :cond_41b

    .line 546
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 547
    .restart local v3       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const-string v11, ""

    .line 548
    .restart local v11       #szDataText:Ljava/lang/String;
    add-int/lit8 v14, v5, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 549
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentStringToPcdata([C)Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move-result-object v14

    iput-object v14, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 550
    invoke-static {v2, v12, v3}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v2

    .line 540
    .end local v3           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    .end local v11           #szDataText:Ljava/lang/String;
    :cond_41b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3ea

    .line 553
    :cond_41e
    iput-object v2, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    .line 554
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TRUE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto/16 :goto_1ff

    .line 560
    .end local v5           #nCount:I
    :cond_426
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TIMEOUT:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto/16 :goto_1ff

    .line 565
    :cond_42c
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_FALSE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto/16 :goto_1ff

    .line 570
    .end local v2           #h:Lcom/wssyncmldm/eng/core/XDMList;
    .end local v12           #t:Lcom/wssyncmldm/eng/core/XDMList;
    :cond_432
    sget-object v14, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_NONE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v14, v13, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    goto/16 :goto_1ff

    .line 586
    :cond_438
    const/4 v14, 0x3

    if-ne v6, v14, :cond_440

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrDestroySession()V

    goto/16 :goto_17

    .line 591
    :cond_440
    const/16 v14, 0x9

    if-ne v6, v14, :cond_454

    .line 593
    const/4 v9, 0x0

    .line 595
    .restart local v9       #pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    const/16 v14, 0xf4

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmCreateAbortMessage(IZ)Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;

    move-result-object v9

    .line 596
    const/16 v14, 0x19

    const/4 v15, 0x0

    invoke-static {v14, v9, v15}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 598
    .end local v9           #pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    :cond_454
    const/16 v14, 0x8

    if-ne v6, v14, :cond_462

    .line 600
    const-string v14, "no action command finish session"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrDestroySession()V

    goto/16 :goto_17

    .line 604
    :cond_462
    const/4 v14, -0x6

    if-eq v6, v14, :cond_17

    .line 608
    const/4 v14, 0x4

    if-ne v6, v14, :cond_476

    .line 610
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/wssyncmldm/db/file/XDB;->xdbSetChangedProtocol(Z)V

    .line 611
    const/16 v14, 0xb

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 613
    :cond_476
    const/4 v14, -0x7

    if-ne v6, v14, :cond_17

    .line 615
    const/16 v14, 0x15

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 621
    .end local v10           #pUicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    :sswitch_483
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDmAgentType()I

    move-result v4

    .line 622
    const/4 v14, 0x1

    if-ne v4, v14, :cond_4bc

    .line 624
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v7

    .line 631
    .restart local v7       #nStatus:I
    :goto_48e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nStatus ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 633
    if-nez v7, :cond_4e9

    .line 635
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentGetPendingStatus()Z

    move-result v14

    if-eqz v14, :cond_4be

    .line 637
    const-string v14, "XDM_TASK_RETRY"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 638
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentClose()I

    goto/16 :goto_17

    .line 628
    .end local v7           #nStatus:I
    :cond_4bc
    const/4 v7, 0x0

    .restart local v7       #nStatus:I
    goto :goto_48e

    .line 642
    :cond_4be
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetChangedProtocol()Z

    move-result v14

    if-eqz v14, :cond_4e0

    .line 644
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbSetBackUpServerUrl()V

    .line 651
    :goto_4c7
    const/4 v14, 0x0

    const/16 v15, 0xac

    invoke-static {v14, v15}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 653
    const/4 v14, 0x1

    if-eq v8, v14, :cond_4e4

    .line 655
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpResetSessionSaveState(I)V

    .line 656
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiEvent(I)V

    .line 659
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpHandleNotiQueue()V

    .line 680
    :goto_4db
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentClose()I

    goto/16 :goto_17

    .line 648
    :cond_4e0
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpCookieClear()V

    goto :goto_4c7

    .line 663
    :cond_4e4
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiEvent(I)V

    goto :goto_4db

    .line 667
    :cond_4e9
    const/16 v14, 0xa

    if-ne v7, v14, :cond_4fa

    .line 669
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 671
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmSendFcVersionUpdate()V

    .line 673
    const-string v14, "Case XEVENT_DM_FINISH XDL_STATE_IDLE_START"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_4db

    .line 677
    :cond_4fa
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 678
    const-string v14, "Case XEVENT_DM_FINISH BUT not FINISH STATUS"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_4db

    .line 215
    :sswitch_data_504
    .sparse-switch
        0x17 -> :sswitch_18
        0x18 -> :sswitch_3d
        0x1a -> :sswitch_483
        0x81 -> :sswitch_1dd
    .end sparse-switch
.end method

.method public xdmAgentHdlrDestroySession()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 703
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentSetSyncMode(I)Z

    .line 704
    const/16 v0, 0x1a

    invoke-static {v0, v1, v1}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 705
    return-void
.end method

.method public xdmAgentHdlrlUicSendEvent(Lcom/wssyncmldm/eng/core/XDMUicOption;)V
    .registers 5
    .parameter "pUicOption"

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 693
    .local v0, pUicOptionDest:Lcom/wssyncmldm/eng/core/XDMUicOption;
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 695
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCreateUicOption()Lcom/wssyncmldm/eng/core/XDMUicOption;

    move-result-object v0

    .line 696
    invoke-static {v0, p1}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCopyUicOption(Ljava/lang/Object;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMUicOption;

    move-result-object v0

    .line 698
    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 699
    return-void
.end method

.method public xdmAgnetHdlrContinueSessionDmStart()V
    .registers 6

    .prologue
    const/16 v3, 0x9

    const/4 v4, 0x0

    .line 31
    const-string v2, ""

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentGetWorkSpace()Lcom/wssyncmldm/eng/core/XDMWorkspace;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetChangedProtocol()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 39
    const-string v2, "xdbGetChangedProtocol, do not create new package"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 60
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpOpen(I)I
    :try_end_1f
    .catch Ljava/net/SocketTimeoutException; {:try_start_19 .. :try_end_1f} :catch_3c

    move-result v1

    .line 69
    .local v1, nRet:I
    :goto_20
    if-eqz v1, :cond_49

    .line 71
    const/16 v2, 0x15

    invoke-static {v2, v4, v4}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 85
    :cond_27
    :goto_27
    return-void

    .line 43
    .end local v1           #nRet:I
    :cond_28
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentStartSession()I

    move-result v1

    .line 44
    .restart local v1       #nRet:I
    if-eqz v1, :cond_32

    .line 46
    invoke-virtual {p0, v3}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrAbortSession(I)V

    goto :goto_27

    .line 50
    :cond_32
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentCreatePackage()I

    move-result v2

    if-eqz v2, :cond_19

    .line 52
    invoke-virtual {p0, v3}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrAbortSession(I)V

    goto :goto_27

    .line 62
    .end local v1           #nRet:I
    :catch_3c
    move-exception v0

    .line 64
    .local v0, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 66
    const/4 v1, -0x7

    .restart local v1       #nRet:I
    goto :goto_20

    .line 75
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :cond_49
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentSendPackage()I

    move-result v1

    .line 76
    if-nez v1, :cond_54

    .line 77
    const/16 v2, 0x66

    invoke-static {v4, v2}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 79
    :cond_54
    const/4 v2, 0x4

    if-ne v1, v2, :cond_27

    .line 81
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetChangedProtocol(Z)V

    .line 82
    const/16 v2, 0x1a

    invoke-static {v2, v4, v4}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 83
    const/16 v2, 0xb

    invoke-static {v2, v4, v4}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_27
.end method

.method public xdmAgnetHdlrContinueSessionFumoStart()V
    .registers 13

    .prologue
    const/4 v11, -0x1

    const/4 v10, -0x7

    const/16 v9, 0x15

    const/16 v8, 0x9

    const/4 v7, 0x0

    .line 90
    const/4 v1, 0x0

    .line 94
    .local v1, nFileId:I
    const-string v5, ""

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v3

    .line 97
    .local v3, nStatus:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nStatus ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 99
    const/16 v5, 0x64

    if-eq v3, v5, :cond_49

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_49

    const/16 v5, 0x50

    if-eq v3, v5, :cond_49

    const/16 v5, 0x46

    if-eq v3, v5, :cond_49

    const/16 v5, 0x41

    if-eq v3, v5, :cond_49

    const/16 v5, 0xf0

    if-eq v3, v5, :cond_49

    const/16 v5, 0xf1

    if-ne v3, v5, :cond_77

    .line 103
    :cond_49
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdFirmwareData()I

    move-result v1

    .line 104
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbDeleteFile(I)I

    .line 106
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOUpdateMechanism()I

    move-result v4

    .line 107
    .local v4, nUpdateMechanism:I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_67

    .line 109
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentStartGeneralAlert()I

    move-result v2

    .line 110
    .local v2, nRet:I
    if-ne v2, v11, :cond_61

    .line 112
    invoke-virtual {p0, v8}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrAbortSession(I)V

    .line 198
    :cond_60
    :goto_60
    return-void

    .line 115
    :cond_61
    if-ne v2, v10, :cond_c7

    .line 117
    invoke-static {v9, v7, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_60

    .line 123
    .end local v2           #nRet:I
    :cond_67
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentStartGeneralAlert()I

    move-result v2

    .line 124
    .restart local v2       #nRet:I
    if-ne v2, v11, :cond_71

    .line 126
    invoke-virtual {p0, v8}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrAbortSession(I)V

    goto :goto_60

    .line 129
    :cond_71
    if-ne v2, v10, :cond_c7

    .line 131
    invoke-static {v9, v7, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_60

    .line 138
    .end local v2           #nRet:I
    .end local v4           #nUpdateMechanism:I
    :cond_77
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOUpdateMechanism()I

    move-result v4

    .line 139
    .restart local v4       #nUpdateMechanism:I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_8e

    .line 141
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentStartGeneralAlert()I

    move-result v2

    .line 142
    .restart local v2       #nRet:I
    if-ne v2, v11, :cond_88

    .line 144
    invoke-virtual {p0, v8}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrAbortSession(I)V

    goto :goto_60

    .line 147
    :cond_88
    if-ne v2, v10, :cond_c7

    .line 149
    invoke-static {v9, v7, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_60

    .line 155
    .end local v2           #nRet:I
    :cond_8e
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentStartSession()I

    move-result v2

    .line 156
    .restart local v2       #nRet:I
    if-eqz v2, :cond_98

    .line 158
    invoke-virtual {p0, v8}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrAbortSession(I)V

    goto :goto_60

    .line 162
    :cond_98
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentCreatePackage()I

    move-result v5

    if-eqz v5, :cond_a2

    .line 164
    invoke-virtual {p0, v8}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentHdlrAbortSession(I)V

    goto :goto_60

    .line 171
    :cond_a2
    :try_start_a2
    iget-object v5, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpOpen(I)I
    :try_end_a8
    .catch Ljava/net/SocketTimeoutException; {:try_start_a2 .. :try_end_a8} :catch_af

    move-result v2

    .line 180
    :goto_a9
    if-eqz v2, :cond_bc

    .line 182
    invoke-static {v9, v7, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_60

    .line 173
    :catch_af
    move-exception v0

    .line 175
    .local v0, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 177
    const/4 v2, -0x7

    goto :goto_a9

    .line 186
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :cond_bc
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgentHandler;->xdmAgentSendPackage()I

    move-result v2

    .line 187
    if-nez v2, :cond_c7

    .line 188
    const/16 v5, 0x66

    invoke-static {v7, v5}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 192
    :cond_c7
    const/4 v5, 0x4

    if-ne v2, v5, :cond_60

    .line 194
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbSetChangedProtocol(Z)V

    .line 195
    const/16 v5, 0x1a

    invoke-static {v5, v7, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 196
    const/16 v5, 0xb

    invoke-static {v5, v7, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_60
.end method
