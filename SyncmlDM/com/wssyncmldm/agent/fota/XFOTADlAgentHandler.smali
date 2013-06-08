.class public Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;
.super Lcom/wssyncmldm/agent/fota/XFOTADlAgent;
.source "XFOTADlAgentHandler.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XNOTIInterface;
.implements Lcom/wssyncmldm/interfaces/XDBInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;-><init>()V

    return-void
.end method

.method public static xfotaDlAgentHdlrAvailablesplitChk(II)I
    .registers 20
    .parameter "nDataSize"
    .parameter "nExtraSpace"

    .prologue
    .line 1498
    const-string v14, "Check memory space for delta split"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1499
    const-wide/16 v1, 0x0

    .line 1500
    .local v1, RemainSize:J
    const-wide/16 v3, 0x0

    .line 1501
    .local v3, TotalSize:J
    const-wide/16 v11, 0x0

    .line 1502
    .local v11, nFreeSize:J
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTotalMemorySize(I)J

    move-result-wide v14

    const-wide/16 v16, 0xa

    div-long v6, v14, v16

    .line 1503
    .local v6, nDataCheckSize:J
    add-int v5, p0, p1

    .line 1504
    .local v5, nCacheSize:I
    add-int v13, p0, p1

    .line 1505
    .local v13, nInteriorSize:I
    add-int v10, p0, p1

    .line 1506
    .local v10, nExternalSize:I
    add-int v9, p0, p1

    .line 1507
    .local v9, nExternalSDSize:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDeltaFileSaveIndex()I

    move-result v8

    .line 1509
    .local v8, nDeltaFileIndex:I
    const-wide/32 v14, 0x15e00000

    cmp-long v14, v6, v14

    if-ltz v14, :cond_62

    .line 1510
    const-wide/32 v11, 0x15e00000

    .line 1514
    :goto_2a
    sget v14, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->nDeltaDownState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_36

    .line 1516
    const/4 v14, 0x1

    if-ne v8, v14, :cond_36

    .line 1518
    move/from16 v0, p0

    int-to-long v14, v0

    add-long/2addr v11, v14

    .line 1522
    :cond_36
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetAvailableMemorySize(I)J

    move-result-wide v14

    cmp-long v14, v14, v11

    if-gez v14, :cond_64

    .line 1524
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Data memory >>>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/32 v15, 0x100000

    div-long v15, v11, v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "M Memory INSUFFICIENT..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1525
    const/4 v14, 0x4

    .line 1530
    :goto_61
    return v14

    .line 1512
    :cond_62
    move-wide v11, v6

    goto :goto_2a

    .line 1530
    :cond_64
    const/4 v14, 0x0

    goto :goto_61
.end method

.method public static xfotaDlAgentHdlrCheckDeltaPkgSize()I
    .registers 13

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v12, 0x1

    const/4 v11, -0x5

    const/4 v10, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    .local v2, nObjectSize:I
    const/4 v1, 0x0

    .line 37
    .local v1, nExtraSpace:I
    const/4 v3, 0x4

    .line 39
    .local v3, nRet:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetObjectSizeFUMO()I

    move-result v2

    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FirmwareObjectSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 43
    const/high16 v1, 0x1e0

    .line 49
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetDeviceEncryptState()Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;

    move-result-object v0

    .line 50
    .local v0, devEncrypt:Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;
    if-nez v0, :cond_31

    .line 52
    const-string v6, "wssdmDeviceEncrypt is null"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 53
    const/4 v6, -0x2

    .line 135
    :cond_30
    :goto_30
    return v6

    .line 56
    :cond_31
    add-int v8, v2, v1

    invoke-static {v0, v8}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaEncryptionMemoryCheck(Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;I)V

    .line 59
    sget v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->nDeltaDownState:I

    if-ne v8, v12, :cond_76

    .line 61
    add-int v8, v2, v1

    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFileFreeSizeCheck(I)I

    move-result v3

    .line 62
    if-eqz v3, :cond_76

    .line 64
    const/4 v8, 0x6

    if-eq v3, v8, :cond_30

    .line 69
    const-string v6, "FFS Free Space NOT  ENOUGH"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 70
    const-string v6, "501"

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 71
    const/16 v6, 0x14

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 73
    const/4 v4, 0x0

    .line 74
    .local v4, szObjectURL:Ljava/lang/String;
    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    const/4 v5, 0x0

    .line 76
    .local v5, szRespURL:Ljava/lang/String;
    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-static {v4, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpCheckURL(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 79
    const/4 v6, 0x7

    if-ne v3, v6, :cond_72

    .line 81
    const/16 v6, 0x7b

    invoke-static {v6, v10, v10}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 82
    const/4 v3, -0x4

    .line 93
    :cond_6b
    :goto_6b
    const/16 v6, 0x70

    invoke-static {v6, v10, v10}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v6, v7

    .line 94
    goto :goto_30

    .line 84
    :cond_72
    if-ne v3, v11, :cond_6b

    .line 86
    const/4 v3, -0x4

    goto :goto_6b

    .line 101
    .end local v4           #szObjectURL:Ljava/lang/String;
    .end local v5           #szRespURL:Ljava/lang/String;
    :cond_76
    invoke-static {v2, v1}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrAvailablesplitChk(II)I

    move-result v3

    .line 102
    if-eqz v3, :cond_b7

    .line 104
    const/4 v8, 0x6

    if-eq v3, v8, :cond_30

    .line 108
    const-string v6, "Delta split free Space NOT ENOUGH"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 109
    sget v6, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->nDeltaDownState:I

    if-ne v6, v12, :cond_b0

    .line 111
    const-string v6, "501"

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 112
    const/16 v6, 0x14

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 114
    const-string v4, ""

    .line 115
    .restart local v4       #szObjectURL:Ljava/lang/String;
    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    const-string v5, ""

    .line 117
    .restart local v5       #szRespURL:Ljava/lang/String;
    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-static {v4, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpCheckURL(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 120
    const/4 v6, 0x7

    if-ne v3, v6, :cond_b3

    .line 122
    const/16 v6, 0x7b

    invoke-static {v6, v10, v10}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 123
    const/4 v3, -0x4

    .line 130
    :cond_ab
    :goto_ab
    const/16 v6, 0x70

    invoke-static {v6, v10, v10}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .end local v4           #szObjectURL:Ljava/lang/String;
    .end local v5           #szRespURL:Ljava/lang/String;
    :cond_b0
    move v6, v7

    .line 132
    goto/16 :goto_30

    .line 125
    .restart local v4       #szObjectURL:Ljava/lang/String;
    .restart local v5       #szRespURL:Ljava/lang/String;
    :cond_b3
    if-ne v3, v11, :cond_ab

    .line 127
    const/4 v3, -0x4

    goto :goto_ab

    .line 135
    .end local v4           #szObjectURL:Ljava/lang/String;
    .end local v5           #szRespURL:Ljava/lang/String;
    :cond_b7
    const/4 v6, 0x0

    goto/16 :goto_30
.end method

.method public static xfotaDlAgentHdlrDD([B)I
    .registers 12
    .parameter "pRecv"

    .prologue
    const/16 v10, 0x7b

    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 757
    const/4 v1, 0x0

    .line 759
    .local v1, nRet:I
    const-string v5, ""

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 760
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 764
    .local v4, pReceiveBuffer:Ljava/io/ByteArrayOutputStream;
    :try_start_11
    sget-object v5, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpReceiveData(Ljava/io/ByteArrayOutputStream;I)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_29

    move-result v1

    .line 773
    :goto_18
    const/4 v5, -0x6

    if-ne v1, v5, :cond_36

    .line 776
    const/16 v5, 0xf9

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmCreateAbortMessage(IZ)Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;

    move-result-object v3

    .line 777
    .local v3, pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    const/16 v5, 0x72

    invoke-static {v5, v3, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v2, v1

    .line 831
    .end local v1           #nRet:I
    .end local v3           #pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    .local v2, nRet:I
    :goto_28
    return v2

    .line 766
    .end local v2           #nRet:I
    .restart local v1       #nRet:I
    :catch_29
    move-exception v0

    .line 768
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 769
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 770
    const/4 v1, -0x4

    goto :goto_18

    .line 780
    .end local v0           #e:Ljava/lang/Exception;
    :cond_36
    if-eqz v1, :cond_3f

    .line 782
    const/16 v5, 0x7d

    invoke-static {v5, v7, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v2, v1

    .line 783
    .end local v1           #nRet:I
    .restart local v2       #nRet:I
    goto :goto_28

    .line 786
    .end local v2           #nRet:I
    .restart local v1       #nRet:I
    :cond_3f
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 787
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DD check success. nRet = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 789
    if-nez v1, :cond_6f

    .line 791
    invoke-static {p0}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentParserDescriptor([B)I

    move-result v1

    .line 792
    if-nez v1, :cond_71

    .line 794
    const/16 v5, 0xc8

    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 795
    invoke-static {v10, v7, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_6f
    :goto_6f
    move v2, v1

    .line 831
    .end local v1           #nRet:I
    .restart local v2       #nRet:I
    goto :goto_28

    .line 800
    .end local v2           #nRet:I
    .restart local v1       #nRet:I
    :cond_71
    const-string v5, "411"

    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 801
    const/16 v5, 0xf1

    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 802
    invoke-static {v10, v7, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 805
    sget-object v5, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpConnection:I

    if-ne v5, v8, :cond_ab

    .line 809
    :try_start_86
    sget-object v5, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpOpen(I)I
    :try_end_8c
    .catch Ljava/net/SocketTimeoutException; {:try_start_86 .. :try_end_8c} :catch_9a

    move-result v1

    .line 818
    :goto_8d
    if-eqz v1, :cond_a7

    .line 820
    const/16 v5, 0x15

    invoke-static {v5, v7, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 828
    :goto_94
    const/16 v5, 0x6f

    invoke-static {v7, v5}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_6f

    .line 811
    :catch_9a
    move-exception v0

    .line 813
    .local v0, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 814
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 815
    const/4 v1, -0x2

    goto :goto_8d

    .line 823
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :cond_a7
    invoke-static {v9, v7, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_94

    .line 826
    :cond_ab
    invoke-static {v9, v7, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_94
.end method

.method public static xfotaDlAgentHdlrDownloadComplete()I
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 1100
    const/4 v1, 0x0

    .line 1102
    .local v1, nRc:I
    const-string v4, ""

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1104
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1108
    .local v3, pReceiveBuffer:Ljava/io/ByteArrayOutputStream;
    :try_start_c
    sget-object v4, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpReceiveData(Ljava/io/ByteArrayOutputStream;I)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_23

    move-result v1

    .line 1117
    :goto_13
    const/4 v4, -0x6

    if-ne v1, v4, :cond_30

    .line 1120
    const/16 v4, 0xf9

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmCreateAbortMessage(IZ)Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;

    move-result-object v2

    .line 1121
    .local v2, pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    const/16 v4, 0x72

    invoke-static {v4, v2, v6}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1132
    .end local v2           #pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    :goto_22
    return v1

    .line 1110
    :catch_23
    move-exception v0

    .line 1112
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1113
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 1114
    const/4 v1, -0x4

    goto :goto_13

    .line 1124
    .end local v0           #e:Ljava/lang/Exception;
    :cond_30
    if-eqz v1, :cond_38

    .line 1126
    const/16 v4, 0x7d

    invoke-static {v4, v6, v6}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_22

    .line 1130
    :cond_38
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrDownloadCompleteFumo()I

    move-result v1

    .line 1132
    goto :goto_22
.end method

.method public static xfotaDlAgentHdlrDownloadCompleteFumo()I
    .registers 10

    .prologue
    const/16 v9, 0x7b

    const/16 v8, 0xb

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1137
    const/4 v3, 0x0

    .line 1138
    .local v3, nRc:I
    const/4 v1, 0x0

    .line 1139
    .local v1, nAgentStatus:I
    const/4 v2, 0x0

    .line 1141
    .local v2, nMechanism:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v1

    .line 1142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1)nAgentStatus ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1144
    const/16 v4, 0xe6

    if-ne v1, v4, :cond_39

    .line 1146
    invoke-static {v9, v6, v6}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1147
    const/16 v4, 0xf0

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1148
    invoke-static {v8, v6, v6}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1209
    :cond_38
    :goto_38
    return v3

    .line 1150
    :cond_39
    const/16 v4, 0x14

    if-ne v1, v4, :cond_71

    .line 1153
    invoke-static {v9, v6, v6}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1154
    const/16 v4, 0xf1

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1156
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpConnection:I

    if-ne v4, v7, :cond_6d

    .line 1160
    :try_start_4d
    sget-object v4, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpOpen(I)I
    :try_end_53
    .catch Ljava/net/SocketTimeoutException; {:try_start_4d .. :try_end_53} :catch_5c

    move-result v3

    .line 1169
    :goto_54
    if-eqz v3, :cond_69

    .line 1171
    const/16 v4, 0x15

    invoke-static {v4, v6, v6}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_38

    .line 1162
    :catch_5c
    move-exception v0

    .line 1164
    .local v0, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1165
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 1166
    const/4 v3, -0x2

    goto :goto_54

    .line 1174
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :cond_69
    invoke-static {v8, v6, v6}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_38

    .line 1177
    :cond_6d
    invoke-static {v8, v6, v6}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_38

    .line 1181
    :cond_71
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOUpdateMechanism()I

    move-result v2

    .line 1182
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMODownloadMode(Ljava/lang/Boolean;)V

    .line 1184
    const/4 v4, 0x2

    if-ne v2, v4, :cond_9b

    .line 1187
    invoke-static {v9, v6, v6}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1188
    const/16 v4, 0x32

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1192
    const-wide/16 v4, 0x3e8

    :try_start_89
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8c
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_8c} :catch_92

    .line 1199
    :goto_8c
    const/16 v4, 0xcc

    invoke-static {v6, v4}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_38

    .line 1194
    :catch_92
    move-exception v0

    .line 1196
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_8c

    .line 1201
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_9b
    const/4 v4, 0x3

    if-ne v2, v4, :cond_38

    .line 1204
    invoke-static {v9, v6, v6}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1205
    const/16 v4, 0x28

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1206
    invoke-static {v8, v6, v6}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_38
.end method

.method public static xfotaDlAgentHdlrDownloadProgress()I
    .registers 16

    .prologue
    const/16 v15, 0x7b

    const/16 v14, 0x70

    const/16 v13, 0x14

    const/4 v12, 0x0

    .line 140
    const-string v9, ""

    .line 141
    .local v9, szContentRange:Ljava/lang/String;
    const/4 v4, 0x0

    .line 142
    .local v4, nRc:I
    const/4 v6, 0x0

    .line 145
    .local v6, nStatus:I
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 149
    .local v8, pReceiveBuffer:Ljava/io/ByteArrayOutputStream;
    :try_start_10
    sget-object v10, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v11, 0x1

    invoke-virtual {v10, v8, v11}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpReceiveData(Ljava/io/ByteArrayOutputStream;I)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_28

    move-result v4

    .line 158
    :goto_17
    const/4 v10, -0x6

    if-ne v4, v10, :cond_35

    .line 161
    const/16 v10, 0xf9

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmCreateAbortMessage(IZ)Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;

    move-result-object v7

    .line 162
    .local v7, pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    const/16 v10, 0x72

    invoke-static {v10, v7, v12}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v5, v4

    .line 220
    .end local v4           #nRc:I
    .end local v7           #pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    .local v5, nRc:I
    :goto_27
    return v5

    .line 151
    .end local v5           #nRc:I
    .restart local v4       #nRc:I
    :catch_28
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 155
    const/4 v4, -0x4

    goto :goto_17

    .line 165
    .end local v0           #e:Ljava/lang/Exception;
    :cond_35
    const/4 v10, -0x8

    if-ne v4, v10, :cond_54

    .line 168
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdFirmwareData()I

    move-result v3

    .line 169
    .local v3, nFUMOFileId:I
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbDeleteFile(I)I

    .line 171
    const-string v10, "501"

    invoke-static {v10}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 172
    invoke-static {v13}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 174
    invoke-static {v15, v12, v12}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 175
    invoke-static {v14, v12, v12}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 176
    const/16 v10, 0xe7

    invoke-static {v12, v10}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    move v5, v4

    .line 177
    .end local v4           #nRc:I
    .restart local v5       #nRc:I
    goto :goto_27

    .line 179
    .end local v3           #nFUMOFileId:I
    .end local v5           #nRc:I
    .restart local v4       #nRc:I
    :cond_54
    const/16 v10, -0x9

    if-ne v4, v10, :cond_74

    .line 182
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdFirmwareData()I

    move-result v3

    .line 183
    .restart local v3       #nFUMOFileId:I
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbDeleteFile(I)I

    .line 185
    const-string v10, "501"

    invoke-static {v10}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 186
    invoke-static {v13}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 188
    invoke-static {v15, v12, v12}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 189
    invoke-static {v14, v12, v12}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 190
    const/16 v10, 0x85

    invoke-static {v12, v10}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    move v5, v4

    .line 191
    .end local v4           #nRc:I
    .restart local v5       #nRc:I
    goto :goto_27

    .line 193
    .end local v3           #nFUMOFileId:I
    .end local v5           #nRc:I
    .restart local v4       #nRc:I
    :cond_74
    if-eqz v4, :cond_8c

    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, nAgentStatus:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v1

    .line 197
    const/16 v10, 0xe6

    if-ne v1, v10, :cond_81

    move v5, v4

    .line 198
    .end local v4           #nRc:I
    .restart local v5       #nRc:I
    goto :goto_27

    .line 199
    .end local v5           #nRc:I
    .restart local v4       #nRc:I
    :cond_81
    if-ne v1, v13, :cond_85

    move v5, v4

    .line 200
    .end local v4           #nRc:I
    .restart local v5       #nRc:I
    goto :goto_27

    .line 202
    .end local v5           #nRc:I
    .restart local v4       #nRc:I
    :cond_85
    const/16 v10, 0x7d

    invoke-static {v10, v12, v12}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v5, v4

    .line 203
    .end local v4           #nRc:I
    .restart local v5       #nRc:I
    goto :goto_27

    .line 206
    .end local v1           #nAgentStatus:I
    .end local v5           #nRc:I
    .restart local v4       #nRc:I
    :cond_8c
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMODownloadMode()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 207
    .local v2, nDownloadMode:Z
    if-eqz v2, :cond_ac

    .line 208
    const-string v10, "nDownloadMode is TRUE"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 212
    :goto_9b
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentGetHttpConStatus()I

    move-result v6

    .line 213
    if-eqz v6, :cond_a5

    .line 215
    invoke-static {v2}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentGetHttpContentRange(Z)Ljava/lang/String;

    move-result-object v9

    .line 218
    :cond_a5
    invoke-static {v6, v2, v9}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrDownloadProgressFumo(IZLjava/lang/String;)I

    move-result v4

    move v5, v4

    .line 220
    .end local v4           #nRc:I
    .restart local v5       #nRc:I
    goto/16 :goto_27

    .line 210
    .end local v5           #nRc:I
    .restart local v4       #nRc:I
    :cond_ac
    const-string v10, "nDownloadMode is FALSE"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_9b
.end method

.method public static xfotaDlAgentHdlrDownloadProgressFumo(IZLjava/lang/String;)I
    .registers 20
    .parameter "nStatus"
    .parameter "nDownloadMode"
    .parameter "szContentRange"

    .prologue
    .line 225
    const-string v2, ""

    .line 226
    .local v2, szResURL:Ljava/lang/String;
    const-string v13, ""

    .line 227
    .local v13, szDownloadStatus:Ljava/lang/String;
    const-string v3, ""

    .line 228
    .local v3, szHmacData:Ljava/lang/String;
    const/4 v9, 0x0

    .line 229
    .local v9, nMechanism:I
    const/4 v10, 0x0

    .line 231
    .local v10, nRc:I
    if-nez p0, :cond_11b

    .line 233
    const/16 v1, 0x28

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 235
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 238
    const/16 v1, 0x7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 240
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOUpdateMechanism()I

    move-result v9

    .line 241
    const/4 v1, 0x2

    if-ne v9, v1, :cond_42

    .line 243
    const/16 v1, 0x32

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 247
    const-wide/16 v4, 0x3e8

    :try_start_2e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_39

    .line 253
    :goto_31
    const/4 v1, 0x0

    const/16 v4, 0xcc

    invoke-static {v1, v4}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    :cond_37
    :goto_37
    move v11, v10

    .line 463
    .end local v10           #nRc:I
    .local v11, nRc:I
    :goto_38
    return v11

    .line 249
    .end local v11           #nRc:I
    .restart local v10       #nRc:I
    :catch_39
    move-exception v8

    .line 251
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_31

    .line 255
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_42
    const/4 v1, 0x3

    if-ne v9, v1, :cond_4d

    .line 257
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_37

    .line 261
    :cond_4d
    const-string v1, "ERROR"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_37

    .line 267
    :cond_53
    const/4 v14, 0x0

    .line 268
    .local v14, szObjectURL:Ljava/lang/String;
    invoke-static {v14}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 269
    const/16 v16, 0x0

    .line 270
    .local v16, szRespURL:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/wssyncmldm/db/file/XDB;->xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 272
    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpCheckURL(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 273
    .local v12, nRet:I
    const/4 v1, 0x7

    if-ne v12, v1, :cond_77

    .line 275
    const/16 v1, 0x7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 276
    const/16 v1, 0x70

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 277
    const/4 v12, -0x2

    goto :goto_37

    .line 279
    :cond_77
    const/4 v1, -0x5

    if-ne v12, v1, :cond_7c

    .line 281
    const/4 v12, -0x2

    goto :goto_37

    .line 287
    :cond_7c
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    iget v1, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpConnection:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_a5

    .line 291
    :try_start_86
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpOpen(I)I
    :try_end_8c
    .catch Ljava/net/SocketTimeoutException; {:try_start_86 .. :try_end_8c} :catch_98

    move-result v10

    .line 299
    :goto_8d
    if-eqz v10, :cond_a5

    .line 301
    const/16 v1, 0x71

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v11, v10

    .line 302
    .end local v10           #nRc:I
    .restart local v11       #nRc:I
    goto :goto_38

    .line 293
    .end local v11           #nRc:I
    .restart local v10       #nRc:I
    :catch_98
    move-exception v8

    .line 295
    .local v8, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 297
    const/4 v10, -0x2

    goto :goto_8d

    .line 308
    .end local v8           #e:Ljava/net/SocketTimeoutException;
    :cond_a5
    if-eqz p1, :cond_d7

    .line 309
    :try_start_a7
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "POST"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_b2
    .catch Ljava/lang/NullPointerException; {:try_start_a7 .. :try_end_b2} :catch_e3

    .line 322
    :goto_b2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentGetReportStatus(I)Ljava/lang/String;

    move-result-object v13

    .line 323
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 327
    :try_start_bd
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSendData([BII)I
    :try_end_cb
    .catch Ljava/net/SocketTimeoutException; {:try_start_bd .. :try_end_cb} :catch_f9

    move-result v10

    .line 335
    :goto_cc
    if-nez v10, :cond_106

    .line 337
    const/16 v1, 0x78

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_37

    .line 311
    :cond_d7
    :try_start_d7
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "POST"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_e2
    .catch Ljava/lang/NullPointerException; {:try_start_d7 .. :try_end_e2} :catch_e3

    goto :goto_b2

    .line 313
    :catch_e3
    move-exception v8

    .line 315
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 317
    const/4 v10, -0x3

    .line 318
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v11, v10

    .line 319
    .end local v10           #nRc:I
    .restart local v11       #nRc:I
    goto/16 :goto_38

    .line 329
    .end local v8           #e:Ljava/lang/NullPointerException;
    .end local v11           #nRc:I
    .restart local v10       #nRc:I
    :catch_f9
    move-exception v8

    .line 331
    .local v8, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 333
    const/4 v10, -0x3

    goto :goto_cc

    .line 339
    .end local v8           #e:Ljava/net/SocketTimeoutException;
    :cond_106
    const/4 v1, -0x2

    if-ne v10, v1, :cond_112

    .line 341
    const/16 v1, 0x71

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_37

    .line 346
    :cond_112
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_37

    .line 352
    .end local v12           #nRet:I
    .end local v14           #szObjectURL:Ljava/lang/String;
    .end local v16           #szRespURL:Ljava/lang/String;
    :cond_11b
    const/4 v1, 0x1

    move/from16 v0, p0

    if-ne v0, v1, :cond_193

    .line 354
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    if-eqz p1, :cond_14a

    .line 359
    :try_start_126
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "GET"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_131
    .catch Ljava/lang/NullPointerException; {:try_start_126 .. :try_end_131} :catch_156

    .line 374
    :goto_131
    :try_start_131
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSendData([BII)I
    :try_end_139
    .catch Ljava/net/SocketTimeoutException; {:try_start_131 .. :try_end_139} :catch_16c

    move-result v10

    .line 382
    :goto_13a
    if-nez v10, :cond_179

    .line 384
    const-string v1, "XEVENT_DL_CONTINUE"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 385
    const/16 v1, 0x78

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_37

    .line 361
    :cond_14a
    :try_start_14a
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "GET"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_155
    .catch Ljava/lang/NullPointerException; {:try_start_14a .. :try_end_155} :catch_156

    goto :goto_131

    .line 363
    :catch_156
    move-exception v8

    .line 365
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 367
    const/4 v10, -0x3

    .line 368
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v11, v10

    .line 369
    .end local v10           #nRc:I
    .restart local v11       #nRc:I
    goto/16 :goto_38

    .line 376
    .end local v8           #e:Ljava/lang/NullPointerException;
    .end local v11           #nRc:I
    .restart local v10       #nRc:I
    :catch_16c
    move-exception v8

    .line 378
    .local v8, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 380
    const/4 v10, -0x3

    goto :goto_13a

    .line 387
    .end local v8           #e:Ljava/net/SocketTimeoutException;
    :cond_179
    const/4 v1, -0x2

    if-ne v10, v1, :cond_18a

    .line 389
    const-string v1, "XTP_RET_CONNECTION_FAIL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 390
    const/16 v1, 0x71

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_37

    .line 395
    :cond_18a
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_37

    .line 400
    :cond_193
    const-string v1, "What Problem"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 401
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 402
    const-string v1, "501"

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 403
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentGetReportStatus(I)Ljava/lang/String;

    move-result-object v13

    .line 407
    const/4 v15, 0x0

    .line 408
    .local v15, szObjectUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 409
    invoke-static {v15, v2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpCheckURL(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 410
    .restart local v12       #nRet:I
    const/4 v1, 0x7

    if-ne v12, v1, :cond_1c8

    .line 412
    const/16 v1, 0x7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 413
    const/16 v1, 0x70

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 414
    const/4 v12, -0x4

    goto/16 :goto_37

    .line 416
    :cond_1c8
    const/4 v1, -0x5

    if-ne v12, v1, :cond_1ce

    .line 418
    const/4 v12, -0x4

    goto/16 :goto_37

    .line 424
    :cond_1ce
    if-eqz p1, :cond_1f5

    .line 425
    :try_start_1d0
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "POST"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_1db
    .catch Ljava/lang/NullPointerException; {:try_start_1d0 .. :try_end_1db} :catch_201

    .line 440
    :goto_1db
    :try_start_1db
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSendData([BII)I
    :try_end_1e9
    .catch Ljava/net/SocketTimeoutException; {:try_start_1db .. :try_end_1e9} :catch_217

    move-result v10

    .line 448
    :goto_1ea
    if-nez v10, :cond_224

    .line 450
    const/16 v1, 0x78

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_37

    .line 427
    :cond_1f5
    :try_start_1f5
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "POST"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_200
    .catch Ljava/lang/NullPointerException; {:try_start_1f5 .. :try_end_200} :catch_201

    goto :goto_1db

    .line 429
    :catch_201
    move-exception v8

    .line 431
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 433
    const/4 v10, -0x3

    .line 434
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v11, v10

    .line 435
    .end local v10           #nRc:I
    .restart local v11       #nRc:I
    goto/16 :goto_38

    .line 442
    .end local v8           #e:Ljava/lang/NullPointerException;
    .end local v11           #nRc:I
    .restart local v10       #nRc:I
    :catch_217
    move-exception v8

    .line 444
    .local v8, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 445
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 446
    const/4 v10, -0x3

    goto :goto_1ea

    .line 452
    .end local v8           #e:Ljava/net/SocketTimeoutException;
    :cond_224
    const/4 v1, -0x2

    if-ne v10, v1, :cond_230

    .line 454
    const/16 v1, 0x71

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_37

    .line 459
    :cond_230
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_37
.end method

.method public static xfotaDlAgentHdlrDownloadStart()I
    .registers 5

    .prologue
    .line 506
    const-string v3, ""

    .line 507
    .local v3, szContentRange:Ljava/lang/String;
    const/4 v1, 0x0

    .line 511
    .local v1, nRc:I
    const-string v4, ""

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMODownloadMode()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 514
    .local v0, nDownloadMode:Z
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentGetHttpConStatus()I

    move-result v2

    .line 515
    .local v2, nStatus:I
    if-eqz v2, :cond_1a

    .line 517
    invoke-static {v0}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentGetHttpContentRange(Z)Ljava/lang/String;

    move-result-object v3

    .line 520
    :cond_1a
    invoke-static {v2, v0, v3}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrDownloadStartFumo(IZLjava/lang/String;)I

    move-result v1

    .line 522
    return v1
.end method

.method public static xfotaDlAgentHdlrDownloadStartFumo(IZLjava/lang/String;)I
    .registers 20
    .parameter "nStatus"
    .parameter "nDownloadMode"
    .parameter "szContentRange"

    .prologue
    .line 527
    const/4 v2, 0x0

    .line 528
    .local v2, szResURL:Ljava/lang/String;
    const/4 v13, 0x0

    .line 529
    .local v13, szDownloadStatus:Ljava/lang/String;
    const-string v3, ""

    .line 530
    .local v3, szHmacData:Ljava/lang/String;
    const/4 v10, 0x0

    .line 533
    .local v10, nRc:I
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 535
    if-nez p0, :cond_eb

    .line 538
    const/16 v1, 0x28

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 540
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 546
    const/16 v1, 0x7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 549
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOUpdateMechanism()I

    move-result v9

    .line 550
    .local v9, nMechanism:I
    const/4 v1, 0x2

    if-ne v9, v1, :cond_44

    .line 552
    const/16 v1, 0x32

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 556
    const-wide/16 v4, 0x3e8

    :try_start_30
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_3b

    .line 562
    :goto_33
    const/4 v1, 0x0

    const/16 v4, 0xcc

    invoke-static {v1, v4}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .end local v9           #nMechanism:I
    :goto_39
    move v11, v10

    .line 752
    .end local v10           #nRc:I
    .local v11, nRc:I
    :goto_3a
    return v11

    .line 558
    .end local v11           #nRc:I
    .restart local v9       #nMechanism:I
    .restart local v10       #nRc:I
    :catch_3b
    move-exception v8

    .line 560
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_33

    .line 564
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_44
    const/4 v1, 0x3

    if-ne v9, v1, :cond_4f

    .line 566
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_39

    .line 570
    :cond_4f
    const-string v1, "ERROR."

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_39

    .line 576
    .end local v9           #nMechanism:I
    :cond_55
    const/4 v15, 0x0

    .line 577
    .local v15, szObjectURL:Ljava/lang/String;
    invoke-static {v15}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 578
    const/16 v16, 0x0

    .line 579
    .local v16, szRespURL:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/wssyncmldm/db/file/XDB;->xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 581
    invoke-static/range {v15 .. v16}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpCheckURL(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 582
    .local v12, nRet:I
    const/4 v1, 0x7

    if-ne v12, v1, :cond_77

    .line 584
    const/16 v1, 0x7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 585
    const/16 v1, 0x70

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 586
    const/4 v12, -0x2

    goto :goto_39

    .line 588
    :cond_77
    const/4 v1, -0x5

    if-ne v12, v1, :cond_7c

    .line 590
    const/4 v12, -0x2

    goto :goto_39

    .line 597
    :cond_7c
    if-eqz p1, :cond_a7

    .line 598
    :try_start_7e
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "POST"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_89
    .catch Ljava/lang/NullPointerException; {:try_start_7e .. :try_end_89} :catch_b3

    .line 611
    :goto_89
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentGetReportStatus(I)Ljava/lang/String;

    move-result-object v13

    .line 614
    :try_start_8e
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSendData([BII)I
    :try_end_9c
    .catch Ljava/net/SocketTimeoutException; {:try_start_8e .. :try_end_9c} :catch_c9

    move-result v10

    .line 622
    :goto_9d
    if-nez v10, :cond_d6

    .line 624
    const/16 v1, 0x78

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_39

    .line 600
    :cond_a7
    :try_start_a7
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "POST"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_b2
    .catch Ljava/lang/NullPointerException; {:try_start_a7 .. :try_end_b2} :catch_b3

    goto :goto_89

    .line 602
    :catch_b3
    move-exception v8

    .line 604
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 605
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 606
    const/4 v10, -0x3

    .line 607
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v11, v10

    .line 608
    .end local v10           #nRc:I
    .restart local v11       #nRc:I
    goto/16 :goto_3a

    .line 616
    .end local v8           #e:Ljava/lang/NullPointerException;
    .end local v11           #nRc:I
    .restart local v10       #nRc:I
    :catch_c9
    move-exception v8

    .line 618
    .local v8, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 619
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 620
    const/4 v10, -0x3

    goto :goto_9d

    .line 626
    .end local v8           #e:Ljava/net/SocketTimeoutException;
    :cond_d6
    const/4 v1, -0x2

    if-ne v10, v1, :cond_e2

    .line 628
    const/16 v1, 0x71

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_39

    .line 633
    :cond_e2
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_39

    .line 638
    .end local v12           #nRet:I
    .end local v15           #szObjectURL:Ljava/lang/String;
    .end local v16           #szRespURL:Ljava/lang/String;
    :cond_eb
    const/4 v1, 0x1

    move/from16 v0, p0

    if-ne v0, v1, :cond_15c

    .line 640
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 644
    if-eqz p1, :cond_11a

    .line 645
    :try_start_f6
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "GET"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_101
    .catch Ljava/lang/NullPointerException; {:try_start_f6 .. :try_end_101} :catch_126

    .line 660
    :goto_101
    :try_start_101
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSendData([BII)I
    :try_end_109
    .catch Ljava/net/SocketTimeoutException; {:try_start_101 .. :try_end_109} :catch_13c

    move-result v10

    .line 668
    :goto_10a
    if-nez v10, :cond_149

    .line 670
    const/16 v1, 0x78

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 682
    :goto_113
    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    goto/16 :goto_39

    .line 647
    :cond_11a
    :try_start_11a
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "GET"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_125
    .catch Ljava/lang/NullPointerException; {:try_start_11a .. :try_end_125} :catch_126

    goto :goto_101

    .line 649
    :catch_126
    move-exception v8

    .line 651
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 652
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 653
    const/4 v10, -0x3

    .line 654
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v11, v10

    .line 655
    .end local v10           #nRc:I
    .restart local v11       #nRc:I
    goto/16 :goto_3a

    .line 662
    .end local v8           #e:Ljava/lang/NullPointerException;
    .end local v11           #nRc:I
    .restart local v10       #nRc:I
    :catch_13c
    move-exception v8

    .line 664
    .local v8, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 665
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 666
    const/4 v10, -0x3

    goto :goto_10a

    .line 672
    .end local v8           #e:Ljava/net/SocketTimeoutException;
    :cond_149
    const/4 v1, -0x2

    if-ne v10, v1, :cond_154

    .line 674
    const/16 v1, 0x71

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_113

    .line 679
    :cond_154
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_113

    .line 686
    :cond_15c
    const-string v1, "What Problem"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 688
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 689
    const-string v1, "501"

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 690
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 693
    const/4 v14, 0x0

    .line 694
    .local v14, szDownloadURL:Ljava/lang/String;
    invoke-static {v14}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 696
    invoke-static {v14, v2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpCheckURL(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 697
    .restart local v12       #nRet:I
    const/4 v1, 0x7

    if-ne v12, v1, :cond_18c

    .line 699
    const/16 v1, 0x7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 700
    const/16 v1, 0x70

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 701
    const/4 v12, -0x2

    goto/16 :goto_39

    .line 703
    :cond_18c
    const/4 v1, -0x5

    if-ne v12, v1, :cond_192

    .line 705
    const/4 v12, -0x2

    goto/16 :goto_39

    .line 709
    :cond_192
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentGetReportStatus(I)Ljava/lang/String;

    move-result-object v13

    .line 713
    if-eqz p1, :cond_1be

    .line 714
    :try_start_199
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "POST"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_1a4
    .catch Ljava/lang/NullPointerException; {:try_start_199 .. :try_end_1a4} :catch_1ca

    .line 729
    :goto_1a4
    :try_start_1a4
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSendData([BII)I
    :try_end_1b2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1a4 .. :try_end_1b2} :catch_1e0

    move-result v10

    .line 737
    :goto_1b3
    if-nez v10, :cond_1ed

    .line 739
    const/16 v1, 0x78

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_39

    .line 716
    :cond_1be
    :try_start_1be
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "POST"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_1c9
    .catch Ljava/lang/NullPointerException; {:try_start_1be .. :try_end_1c9} :catch_1ca

    goto :goto_1a4

    .line 718
    :catch_1ca
    move-exception v8

    .line 720
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 722
    const/4 v10, -0x3

    .line 723
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v11, v10

    .line 724
    .end local v10           #nRc:I
    .restart local v11       #nRc:I
    goto/16 :goto_3a

    .line 731
    .end local v8           #e:Ljava/lang/NullPointerException;
    .end local v11           #nRc:I
    .restart local v10       #nRc:I
    :catch_1e0
    move-exception v8

    .line 733
    .local v8, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 734
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 735
    const/4 v10, -0x3

    goto :goto_1b3

    .line 741
    .end local v8           #e:Ljava/net/SocketTimeoutException;
    :cond_1ed
    const/4 v1, -0x2

    if-ne v10, v1, :cond_1f9

    .line 743
    const/16 v1, 0x71

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_39

    .line 748
    :cond_1f9
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_39
.end method

.method public static xfotaDlAgentHdlrDownloadTakeOver()I
    .registers 7

    .prologue
    .line 836
    const/4 v4, 0x0

    .line 837
    .local v4, szContentRange:Ljava/lang/String;
    const/4 v3, 0x0

    .line 838
    .local v3, nStatus:I
    const/4 v2, 0x0

    .line 841
    .local v2, nRc:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMODownloadMode()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 842
    .local v0, bDownloadMode:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nDownloadMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 844
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v1

    .line 845
    .local v1, nOrgStatus:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fumo org status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 847
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentGetHttpConStatus()I

    move-result v3

    .line 849
    if-eqz v3, :cond_49

    .line 851
    invoke-static {v0}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentGetHttpContentRange(Z)Ljava/lang/String;

    move-result-object v4

    .line 854
    :cond_49
    invoke-static {v3, v0, v4}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrDownloadTakeOverFumo(IZLjava/lang/String;)I

    move-result v2

    .line 856
    return v2
.end method

.method public static xfotaDlAgentHdlrDownloadTakeOverFumo(IZLjava/lang/String;)I
    .registers 22
    .parameter "nStatus"
    .parameter "nDownloadMode"
    .parameter "szContentRange"

    .prologue
    .line 861
    const-string v2, ""

    .line 862
    .local v2, szResURL:Ljava/lang/String;
    const-string v3, ""

    .line 863
    .local v3, szHmacData:Ljava/lang/String;
    const/16 v18, 0x0

    .line 864
    .local v18, szSendData:Ljava/lang/String;
    const/4 v9, 0x0

    .line 865
    .local v9, nMechanism:I
    const/4 v11, 0x0

    .line 868
    .local v11, nRc:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v10

    .line 869
    .local v10, nOrgStatus:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fumo org status = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 871
    if-nez p0, :cond_115

    .line 873
    const/16 v1, 0x28

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 874
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 876
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 878
    const/16 v1, 0x7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 880
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOUpdateMechanism()I

    move-result v9

    .line 881
    const/4 v1, 0x2

    if-ne v9, v1, :cond_5c

    .line 883
    const/16 v1, 0x32

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 887
    const-wide/16 v4, 0x3e8

    :try_start_48
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4b} :catch_53

    .line 893
    :goto_4b
    const/4 v1, 0x0

    const/16 v4, 0xcc

    invoke-static {v1, v4}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    :goto_51
    move v12, v11

    .line 1095
    .end local v11           #nRc:I
    .local v12, nRc:I
    :goto_52
    return v12

    .line 889
    .end local v12           #nRc:I
    .restart local v11       #nRc:I
    :catch_53
    move-exception v8

    .line 891
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_4b

    .line 895
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_5c
    const/4 v1, 0x3

    if-ne v9, v1, :cond_67

    .line 897
    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_51

    .line 901
    :cond_67
    const-string v1, "ERROR."

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_51

    .line 908
    :cond_6d
    const/16 v1, 0x1e

    if-ne v10, v1, :cond_8d

    .line 910
    const/4 v15, 0x0

    .line 911
    .local v15, szDownloadUrl:Ljava/lang/String;
    invoke-static {v15}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 912
    invoke-static {v15, v2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpCheckURL(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 919
    .end local v15           #szDownloadUrl:Ljava/lang/String;
    .local v13, nRet:I
    :goto_7a
    const/4 v1, 0x7

    if-ne v13, v1, :cond_8f

    .line 921
    const/16 v1, 0x7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 922
    const/16 v1, 0x70

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 923
    const/4 v13, -0x2

    goto :goto_51

    .line 916
    .end local v13           #nRet:I
    :cond_8d
    const/4 v13, 0x0

    .restart local v13       #nRet:I
    goto :goto_7a

    .line 925
    :cond_8f
    const/4 v1, -0x5

    if-ne v13, v1, :cond_94

    .line 927
    const/4 v13, -0x2

    goto :goto_51

    .line 931
    :cond_94
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentGetReportStatus(I)Ljava/lang/String;

    move-result-object v18

    .line 935
    if-eqz p1, :cond_bf

    .line 936
    :try_start_9b
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "POST"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_a6
    .catch Ljava/lang/NullPointerException; {:try_start_9b .. :try_end_a6} :catch_cb

    .line 951
    :goto_a6
    :try_start_a6
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSendData([BII)I
    :try_end_b4
    .catch Ljava/net/SocketTimeoutException; {:try_start_a6 .. :try_end_b4} :catch_e1

    move-result v11

    .line 959
    :goto_b5
    if-nez v11, :cond_ee

    .line 961
    const/16 v1, 0x78

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_51

    .line 938
    :cond_bf
    :try_start_bf
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "POST"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_ca
    .catch Ljava/lang/NullPointerException; {:try_start_bf .. :try_end_ca} :catch_cb

    goto :goto_a6

    .line 940
    :catch_cb
    move-exception v8

    .line 942
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 943
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 944
    const/4 v11, -0x3

    .line 945
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v12, v11

    .line 946
    .end local v11           #nRc:I
    .restart local v12       #nRc:I
    goto/16 :goto_52

    .line 953
    .end local v8           #e:Ljava/lang/NullPointerException;
    .end local v12           #nRc:I
    .restart local v11       #nRc:I
    :catch_e1
    move-exception v8

    .line 955
    .local v8, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 956
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 957
    const/4 v11, -0x3

    goto :goto_b5

    .line 963
    .end local v8           #e:Ljava/net/SocketTimeoutException;
    :cond_ee
    const/4 v1, -0x2

    if-ne v11, v1, :cond_fa

    .line 965
    const/16 v1, 0x71

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 967
    :cond_fa
    const/4 v1, -0x6

    if-ne v11, v1, :cond_10c

    .line 970
    const/16 v1, 0xf9

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmCreateAbortMessage(IZ)Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;

    move-result-object v14

    .line 971
    .local v14, pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    const/16 v1, 0x72

    const/4 v4, 0x0

    invoke-static {v1, v14, v4}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 976
    .end local v14           #pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    :cond_10c
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 981
    .end local v13           #nRet:I
    :cond_115
    const/4 v1, 0x1

    move/from16 v0, p0

    if-ne v0, v1, :cond_186

    .line 983
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 986
    if-eqz p1, :cond_144

    .line 987
    :try_start_120
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "GET"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_12b
    .catch Ljava/lang/NullPointerException; {:try_start_120 .. :try_end_12b} :catch_150

    .line 1002
    :goto_12b
    :try_start_12b
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSendData([BII)I
    :try_end_133
    .catch Ljava/net/SocketTimeoutException; {:try_start_12b .. :try_end_133} :catch_166

    move-result v11

    .line 1010
    :goto_134
    if-nez v11, :cond_173

    .line 1012
    const/16 v1, 0x78

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1024
    :goto_13d
    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    goto/16 :goto_51

    .line 989
    :cond_144
    :try_start_144
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "GET"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_14f
    .catch Ljava/lang/NullPointerException; {:try_start_144 .. :try_end_14f} :catch_150

    goto :goto_12b

    .line 991
    :catch_150
    move-exception v8

    .line 993
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 994
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 995
    const/4 v11, -0x3

    .line 996
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v12, v11

    .line 997
    .end local v11           #nRc:I
    .restart local v12       #nRc:I
    goto/16 :goto_52

    .line 1004
    .end local v8           #e:Ljava/lang/NullPointerException;
    .end local v12           #nRc:I
    .restart local v11       #nRc:I
    :catch_166
    move-exception v8

    .line 1006
    .local v8, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1007
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 1008
    const/4 v11, -0x3

    goto :goto_134

    .line 1014
    .end local v8           #e:Ljava/net/SocketTimeoutException;
    :cond_173
    const/4 v1, -0x2

    if-ne v11, v1, :cond_17e

    .line 1016
    const/16 v1, 0x71

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13d

    .line 1021
    :cond_17e
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13d

    .line 1028
    :cond_186
    const-string v1, "XDL_STATE_DOWNLOAD_FAILED"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1029
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1030
    const-string v1, "501"

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 1031
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1034
    const/16 v16, 0x0

    .line 1035
    .local v16, szObjectURL:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1036
    const/16 v17, 0x0

    .line 1037
    .local v17, szRespURL:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/db/file/XDB;->xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1039
    invoke-static/range {v16 .. v17}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpCheckURL(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1040
    .restart local v13       #nRet:I
    const/4 v1, 0x7

    if-ne v13, v1, :cond_1bd

    .line 1042
    const/16 v1, 0x7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1043
    const/16 v1, 0x70

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1044
    const/4 v13, -0x2

    goto/16 :goto_51

    .line 1046
    :cond_1bd
    const/4 v1, -0x5

    if-ne v13, v1, :cond_1c3

    .line 1048
    const/4 v13, -0x2

    goto/16 :goto_51

    .line 1052
    :cond_1c3
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentGetReportStatus(I)Ljava/lang/String;

    move-result-object v18

    .line 1056
    if-eqz p1, :cond_1ef

    .line 1057
    :try_start_1ca
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "POST"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_1d5
    .catch Ljava/lang/NullPointerException; {:try_start_1ca .. :try_end_1d5} :catch_1fb

    .line 1072
    :goto_1d5
    :try_start_1d5
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSendData([BII)I
    :try_end_1e3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1d5 .. :try_end_1e3} :catch_211

    move-result v11

    .line 1080
    :goto_1e4
    if-nez v11, :cond_21e

    .line 1082
    const/16 v1, 0x78

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 1059
    :cond_1ef
    :try_start_1ef
    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v5, "POST"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_1fa
    .catch Ljava/lang/NullPointerException; {:try_start_1ef .. :try_end_1fa} :catch_1fb

    goto :goto_1d5

    .line 1061
    :catch_1fb
    move-exception v8

    .line 1063
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1064
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 1065
    const/4 v11, -0x3

    .line 1066
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v12, v11

    .line 1067
    .end local v11           #nRc:I
    .restart local v12       #nRc:I
    goto/16 :goto_52

    .line 1074
    .end local v8           #e:Ljava/lang/NullPointerException;
    .end local v12           #nRc:I
    .restart local v11       #nRc:I
    :catch_211
    move-exception v8

    .line 1076
    .local v8, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1077
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 1078
    const/4 v11, -0x3

    goto :goto_1e4

    .line 1084
    .end local v8           #e:Ljava/net/SocketTimeoutException;
    :cond_21e
    const/4 v1, -0x2

    if-ne v11, v1, :cond_22a

    .line 1086
    const/16 v1, 0x71

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_51

    .line 1091
    :cond_22a
    const/16 v1, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_51
.end method

.method public static xfotaDlAgentHdlrGetSplitPathFromIdx(I)Ljava/lang/String;
    .registers 4
    .parameter "idx"

    .prologue
    .line 1617
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1619
    const-string v0, ""

    .line 1621
    .local v0, szPath:Ljava/lang/String;
    packed-switch p0, :pswitch_data_5e

    .line 1643
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "szPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 1644
    return-object v0

    .line 1624
    :pswitch_21
    sget-object v1, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->CACHE_DIR_PATH:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1625
    sget-object v1, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1626
    goto :goto_a

    .line 1628
    :pswitch_30
    sget-object v1, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->DATA_DIR_PATH:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1629
    sget-object v1, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1630
    goto :goto_a

    .line 1632
    :pswitch_3f
    sget-object v1, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1633
    sget-object v1, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1634
    goto :goto_a

    .line 1636
    :pswitch_4e
    sget-object v1, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->EXTERNAL_SD_DIR_PATH:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1637
    sget-object v1, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1638
    goto :goto_a

    .line 1621
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_21
        :pswitch_30
        :pswitch_3f
        :pswitch_4e
    .end packed-switch
.end method

.method public static xfotaDlAgentHdlrSWUpdateProcess()I
    .registers 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1384
    const/4 v4, 0x0

    .line 1385
    .local v4, nTotalFileSize:I
    const/4 v2, 0x0

    .line 1386
    .local v2, nRet:I
    const/4 v3, 0x0

    .line 1387
    .local v3, nStatus:I
    const/4 v1, 0x0

    .line 1389
    .local v1, nFileId:I
    new-instance v0, Lcom/fota/JNIFOTA;

    invoke-direct {v0}, Lcom/fota/JNIFOTA;-><init>()V

    .line 1391
    .local v0, jnifota:Lcom/fota/JNIFOTA;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v3

    .line 1392
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nStatus ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1394
    const/16 v8, 0x3c

    if-ne v3, v8, :cond_36

    .line 1396
    const-string v7, "nStatus == XDL_STATE_UPDATE_IN_PROGRESS"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1474
    :cond_35
    :goto_35
    return v6

    .line 1400
    :cond_36
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdFirmwareData()I

    move-result v1

    .line 1401
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileSize(I)I

    move-result v4

    .line 1404
    const/high16 v8, 0x20

    add-int/2addr v8, v4

    invoke-static {v8}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmCheckAvailableCacheMemory(I)Z

    move-result v8

    if-nez v8, :cond_56

    .line 1406
    const-string v8, "memory is not available. delete cache directory"

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1407
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbClearCache(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 1413
    :cond_56
    invoke-static {v0, v7}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbAdpSetFlag(Lcom/fota/JNIFOTA;I)I

    move-result v2

    .line 1416
    if-nez v4, :cond_7e

    .line 1418
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nTotalFileSize ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] EXIT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1419
    const-string v7, "410"

    invoke-static {v7}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrSWUpdateReportFail(Ljava/lang/String;)V

    goto :goto_35

    .line 1422
    :cond_7e
    const/high16 v8, 0x1e0

    if-le v4, v8, :cond_87

    .line 1424
    const/16 v8, 0xd6

    invoke-static {v10, v8}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 1427
    :cond_87
    const/4 v5, 0x0

    .line 1428
    .local v5, szFilename:Ljava/lang/String;
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbFileGetNameFromCallerID(I)Ljava/lang/String;

    move-result-object v5

    .line 1429
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JNI File Path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 1432
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadMemoryCheck(I)I

    move-result v2

    .line 1433
    if-ne v2, v6, :cond_af

    .line 1435
    const-string v7, "xfotaDownloadMemoryCheck fail"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_35

    .line 1442
    :cond_af
    const-string v8, ""

    invoke-static {v0, v5, v8}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbAdpSetDeltaPath(Lcom/fota/JNIFOTA;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1465
    if-eqz v2, :cond_da

    .line 1467
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not success nRet is ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1468
    const-string v7, "405"

    invoke-static {v7}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrSWUpdateReportFail(Ljava/lang/String;)V

    goto/16 :goto_35

    .line 1472
    :cond_da
    const-string v6, "Phone will be reboot"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1473
    const/16 v6, 0xd5

    invoke-static {v10, v6}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    move v6, v7

    .line 1474
    goto/16 :goto_35
.end method

.method public static xfotaDlAgentHdlrSWUpdateReportFail(Ljava/lang/String;)V
    .registers 6
    .parameter "szResultCode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1480
    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 1481
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 1482
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiEvent(I)V

    .line 1484
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 1485
    const/16 v1, 0x46

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1486
    const/16 v1, 0xd7

    invoke-static {v4, v1}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 1488
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdFirmwareData()I

    move-result v0

    .line 1489
    .local v0, nFileId:I
    invoke-static {v4, v0}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpFileExists(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_40

    .line 1491
    const-string v1, "ABNORMAL_CASE : Fota File Exist"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1492
    invoke-static {v4, v0}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpFileDelete(Ljava/lang/String;I)I

    .line 1494
    :cond_40
    return-void
.end method

.method public static xfotaDlAgentHdlrStartOMADLAgent(I)I
    .registers 16
    .parameter "nEvent"

    .prologue
    const/16 v14, 0x7c

    const/16 v6, 0x70

    const/4 v5, 0x1

    const/4 v13, 0x0

    .line 1214
    const-string v2, ""

    .line 1215
    .local v2, szHmacData:Ljava/lang/String;
    const-string v3, ""

    .line 1217
    .local v3, szContentRange:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1218
    .local v11, rc:I
    const/4 v8, 0x1

    .line 1219
    .local v8, nAppID:I
    const/4 v10, 0x0

    .line 1221
    .local v10, pBuffer:[B
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentGetBuffer()[B

    move-result-object v10

    .line 1223
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v9

    .line 1225
    .local v9, nDLStatus:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nEvent ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] nAgentStatus["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1227
    sparse-switch p0, :sswitch_data_138

    .line 1378
    :goto_3e
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentInitBuffer()V

    move v12, v11

    .line 1379
    :goto_42
    return v12

    .line 1231
    :sswitch_43
    sparse-switch v9, :sswitch_data_14a

    goto :goto_3e

    .line 1235
    :sswitch_47
    const/4 v12, 0x0

    .line 1236
    .local v12, ret:I
    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 1240
    .local v1, szResponsURL:Ljava/lang/String;
    :try_start_4c
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v4, "GET"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_55
    .catch Ljava/lang/NullPointerException; {:try_start_4c .. :try_end_55} :catch_66

    .line 1253
    :try_start_55
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSendData([BII)I
    :try_end_5d
    .catch Ljava/net/SocketTimeoutException; {:try_start_55 .. :try_end_5d} :catch_76

    move-result v12

    .line 1261
    :goto_5e
    if-nez v12, :cond_83

    .line 1263
    const/16 v0, 0x78

    invoke-static {v0, v13, v13}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3e

    .line 1242
    :catch_66
    move-exception v7

    .line 1244
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1245
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 1246
    const/4 v12, -0x3

    .line 1247
    invoke-static {v14, v13, v13}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_42

    .line 1255
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_76
    move-exception v7

    .line 1257
    .local v7, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v7}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1258
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 1259
    const/4 v12, -0x3

    goto :goto_5e

    .line 1265
    .end local v7           #e:Ljava/net/SocketTimeoutException;
    :cond_83
    const/4 v0, -0x2

    if-ne v12, v0, :cond_8c

    .line 1267
    const/16 v0, 0x71

    invoke-static {v0, v13, v13}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3e

    .line 1272
    :cond_8c
    invoke-static {v14, v13, v13}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3e

    .line 1277
    .end local v1           #szResponsURL:Ljava/lang/String;
    .end local v12           #ret:I
    :sswitch_90
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrDownloadStart()I

    goto :goto_3e

    .line 1282
    :sswitch_94
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrDownloadTakeOver()I

    move-result v11

    .line 1283
    goto :goto_3e

    .line 1286
    :sswitch_99
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1287
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentUserCancel()I

    goto :goto_3e

    .line 1291
    :sswitch_a2
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentDownloadFailed()I

    goto :goto_3e

    .line 1296
    :sswitch_a6
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v0, v8}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpClose(I)V

    .line 1297
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v0, v8}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpCloseNetWork(I)V

    .line 1299
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpBatteryLifeCheck()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1301
    const/16 v0, 0xd3

    invoke-static {v13, v0}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 1303
    :cond_bb
    const/4 v11, 0x0

    .line 1304
    goto :goto_3e

    .line 1313
    :sswitch_bd
    const-string v0, "XEVENT_DL_CONTINUE"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1314
    sparse-switch v9, :sswitch_data_168

    goto/16 :goto_3e

    .line 1317
    :sswitch_c7
    const-string v0, "XEVENT_DL_CONTINUE  & XDL_STATE_IDLE_START"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1318
    invoke-static {v10}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrDD([B)I

    goto/16 :goto_3e

    .line 1323
    :sswitch_d1
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrDownloadProgress()I

    goto/16 :goto_3e

    .line 1327
    :sswitch_d6
    const-string v0, "XDL_STATE_DOWNLOAD_COMPLETE"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1328
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrDownloadComplete()I

    goto/16 :goto_3e

    .line 1332
    :sswitch_e0
    const-string v0, "XDL_STATE_DOWNLOAD_IN_CANCEL"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1333
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrDownloadComplete()I

    goto/16 :goto_3e

    .line 1337
    :sswitch_ea
    const-string v0, "XDL_STATE_DOWNLOAD_IN_FAIL"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1338
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrDownloadComplete()I

    goto/16 :goto_3e

    .line 1348
    :sswitch_f4
    const-string v0, "XEVENT_DL_USER_CANCEL_DOWNLOAD"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1349
    const/16 v0, 0xe6

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1351
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v0, v8}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpClose(I)V

    .line 1352
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v0, v8}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpCloseNetWork(I)V

    .line 1353
    const/4 v11, 0x0

    .line 1355
    const-string v0, "401"

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 1356
    const/16 v0, 0xe6

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1357
    invoke-static {v6, v13, v13}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3e

    .line 1361
    :sswitch_118
    const-string v0, "XEVENT_DL_DELTA_SIZE_ERROR_DOWNLOAD"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1363
    const-string v0, "503"

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 1364
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 1366
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v0, v8}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpClose(I)V

    .line 1367
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v0, v8}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpCloseNetWork(I)V

    .line 1369
    const/4 v11, 0x0

    .line 1371
    invoke-static {v6, v13, v13}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3e

    .line 1227
    nop

    :sswitch_data_138
    .sparse-switch
        0x74 -> :sswitch_43
        0x78 -> :sswitch_bd
        0x113 -> :sswitch_f4
        0x114 -> :sswitch_118
    .end sparse-switch

    .line 1231
    :sswitch_data_14a
    .sparse-switch
        0xa -> :sswitch_47
        0x14 -> :sswitch_a2
        0x1e -> :sswitch_94
        0x28 -> :sswitch_94
        0x32 -> :sswitch_a6
        0xc8 -> :sswitch_90
        0xe6 -> :sswitch_99
    .end sparse-switch

    .line 1314
    :sswitch_data_168
    .sparse-switch
        0xa -> :sswitch_c7
        0x14 -> :sswitch_ea
        0x1e -> :sswitch_d1
        0x28 -> :sswitch_d6
        0xe6 -> :sswitch_e0
    .end sparse-switch
.end method


# virtual methods
.method public xfotaDlAgentHdlrWriteFirmwareObject(I[B)I
    .registers 7
    .parameter "nReceiveDataSize"
    .parameter "pRecv"

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, nFileId:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdFirmwareData()I

    move-result v0

    .line 471
    if-lez p1, :cond_39

    .line 473
    const/4 v1, 0x0

    .line 474
    .local v1, nRet:I
    invoke-static {v0, p2}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendDeltaFile(I[B)I

    move-result v1

    .line 487
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDeltaFileSaveIndex()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    .line 489
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetExternalMemoryAvailable()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 490
    const/4 v1, 0x4

    .line 501
    .end local v1           #nRet:I
    :goto_1a
    return v1

    .line 494
    .restart local v1       #nRet:I
    :cond_1b
    if-eqz v1, :cond_23

    .line 496
    const-string v2, "FFS WRITE FAILED"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1a

    .line 499
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FFS WRITE OK. dataSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 501
    .end local v1           #nRet:I
    :cond_39
    const/4 v1, 0x0

    goto :goto_1a
.end method
