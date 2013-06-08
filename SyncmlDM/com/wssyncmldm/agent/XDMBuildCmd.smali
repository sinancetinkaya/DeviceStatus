.class public Lcom/wssyncmldm/agent/XDMBuildCmd;
.super Lcom/wssyncmldm/agent/XDMHandleCmd;
.source "XDMBuildCmd.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/wssyncmldm/agent/XDMHandleCmd;-><init>()V

    return-void
.end method

.method public static xdmAgentBuildCmdAlert(Lcom/wssyncmldm/eng/core/XDMWorkspace;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserAlert;
    .registers 4
    .parameter "ws"
    .parameter "szData"

    .prologue
    .line 134
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserAlert;-><init>()V

    .line 135
    .local v0, alertCmd:Lcom/wssyncmldm/eng/parser/XDMParserAlert;
    invoke-static {p0}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdGetCmdID(Lcom/wssyncmldm/eng/core/XDMWorkspace;)I

    move-result v1

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    .line 136
    iput-object p1, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    .line 138
    return-object v0
.end method

.method public static xdmAgentBuildCmdDetailResults(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[C)Lcom/wssyncmldm/eng/parser/XDMParserResults;
    .registers 19
    .parameter "ws"
    .parameter "cmdRef"
    .parameter "szSource"
    .parameter "szFormat"
    .parameter "szType"
    .parameter "size"
    .parameter "data"

    .prologue
    .line 458
    const/4 v7, 0x0

    .line 459
    .local v7, results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    const/4 v3, 0x0

    .line 460
    .local v3, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const/4 v4, 0x0

    .line 461
    .local v4, meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    const/4 v1, 0x0

    .local v1, h:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v9, 0x0

    .line 462
    .local v9, t:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v5, 0x0

    .line 463
    .local v5, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    const/16 v10, 0x80

    new-array v6, v10, [C

    .line 466
    .local v6, nodename:[C
    if-eqz p0, :cond_12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 468
    :cond_12
    const-string v10, "ws or source is null"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 469
    const/4 v10, 0x0

    .line 546
    :goto_18
    return-object v10

    .line 472
    :cond_19
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    const/16 v11, 0x3f

    invoke-static {v10, v11, v6}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrsplit([CC[C)Ljava/lang/String;

    .line 473
    invoke-static {v6}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v8

    .line 474
    .local v8, szNodeName1:Ljava/lang/String;
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    invoke-static {v10, v8}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 475
    if-nez v5, :cond_35

    .line 477
    const-string v10, "Result node is null"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 478
    const/4 v10, 0x0

    goto :goto_18

    .line 482
    :cond_35
    new-instance v7, Lcom/wssyncmldm/eng/parser/XDMParserResults;

    .end local v7           #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    invoke-direct {v7}, Lcom/wssyncmldm/eng/parser/XDMParserResults;-><init>()V

    .line 483
    .restart local v7       #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .end local v3           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 484
    .restart local v3       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-static {p0}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdGetCmdID(Lcom/wssyncmldm/eng/core/XDMWorkspace;)I

    move-result v10

    iput v10, v7, Lcom/wssyncmldm/eng/parser/XDMParserResults;->cmdid:I

    .line 485
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szMsgRef:Ljava/lang/String;

    iput-object v10, v7, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szMsgRef:Ljava/lang/String;

    .line 486
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szCmdRef:Ljava/lang/String;

    .line 489
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_57

    .line 491
    iput-object p2, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    .line 495
    :cond_57
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_65

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_65

    if-lez p5, :cond_84

    .line 497
    :cond_65
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .end local v4           #meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    .line 498
    .restart local v4       #meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_74

    .line 499
    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    .line 500
    :cond_74
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7c

    .line 501
    iput-object p3, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    .line 502
    :cond_7c
    if-lez p5, :cond_82

    .line 503
    move/from16 v0, p5

    iput v0, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    .line 504
    :cond_82
    iput-object v4, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 508
    :cond_84
    if-eqz p6, :cond_f9

    .line 510
    iget v10, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_be

    .line 512
    new-instance v10, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-direct {v10}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;-><init>()V

    iput-object v10, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 513
    iget-object v10, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    const/4 v11, 0x1

    iput v11, v10, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    .line 514
    iget-object v10, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move/from16 v0, p5

    new-array v11, v0, [C

    iput-object v11, v10, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    .line 515
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a0
    move/from16 v0, p5

    if-ge v2, v0, :cond_af

    .line 516
    iget-object v10, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v10, v10, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    aget-char v11, p6, v2

    aput-char v11, v10, v2

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_a0

    .line 518
    :cond_af
    iget-object v10, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move/from16 v0, p5

    iput v0, v10, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    .line 542
    .end local v2           #i:I
    :goto_b5
    invoke-static {v1, v9, v3}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v1

    .line 544
    iput-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserResults;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    move-object v10, v7

    .line 546
    goto/16 :goto_18

    .line 522
    :cond_be
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f2

    const-string v10, "bin"

    invoke-virtual {v10, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_f2

    .line 524
    new-instance v10, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-direct {v10}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;-><init>()V

    iput-object v10, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 525
    iget-object v10, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move/from16 v0, p5

    new-array v11, v0, [C

    iput-object v11, v10, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    .line 527
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_dc
    move/from16 v0, p5

    if-ge v2, v0, :cond_eb

    .line 528
    iget-object v10, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v10, v10, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    aget-char v11, p6, v2

    aput-char v11, v10, v2

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_dc

    .line 530
    :cond_eb
    iget-object v10, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move/from16 v0, p5

    iput v0, v10, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    goto :goto_b5

    .line 534
    .end local v2           #i:I
    :cond_f2
    invoke-static/range {p6 .. p6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentDataStString2Pcdata([C)Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move-result-object v10

    iput-object v10, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    goto :goto_b5

    .line 540
    :cond_f9
    const/4 v10, 0x0

    iput-object v10, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    goto :goto_b5
.end method

.method public static xdmAgentBuildCmdGenericAlert(Lcom/wssyncmldm/eng/core/XDMWorkspace;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserAlert;
    .registers 10
    .parameter "ws"
    .parameter "szData"

    .prologue
    .line 145
    const/4 v3, 0x0

    .line 146
    .local v3, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const/4 v1, 0x0

    .local v1, head:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v5, 0x0

    .line 149
    .local v5, tail:Lcom/wssyncmldm/eng/core/XDMList;
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserAlert;-><init>()V

    .line 150
    .local v0, alertCmd:Lcom/wssyncmldm/eng/parser/XDMParserAlert;
    invoke-static {p0}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdGetCmdID(Lcom/wssyncmldm/eng/core/XDMWorkspace;)I

    move-result v6

    iput v6, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    .line 151
    iput-object p1, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    .line 153
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .end local v3           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 154
    .restart local v3       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    new-instance v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v6}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v6, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 155
    new-instance v6, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-direct {v6}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;-><init>()V

    iput-object v6, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 157
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOUpdateReportURI()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOInitiatedType()I

    move-result v2

    .line 160
    .local v2, initType:I
    const/4 v6, 0x1

    if-eq v2, v6, :cond_33

    const/4 v6, 0x3

    if-ne v2, v6, :cond_5a

    .line 162
    :cond_33
    iget-object v6, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    const-string v7, "chr"

    iput-object v7, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    .line 163
    iget-object v6, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    const-string v7, "org.openmobilealliance.dm.firmwareupdate.userrequest"

    iput-object v7, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    .line 164
    const-string v6, "ALERT_TYPE_USER_INIT"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 176
    :goto_44
    const-string v4, "0"

    .line 177
    .local v4, szAlertData:Ljava/lang/String;
    iget-object v6, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    iput-object v7, v6, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    .line 178
    iget-object v6, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    const/4 v7, 0x0

    iput v7, v6, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    .line 180
    invoke-static {v1, v5, v3}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v1

    .line 181
    iput-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 183
    return-object v0

    .line 166
    .end local v4           #szAlertData:Ljava/lang/String;
    :cond_5a
    const/4 v6, 0x2

    if-ne v2, v6, :cond_6f

    .line 168
    iget-object v6, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    const-string v7, "chr"

    iput-object v7, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    .line 169
    iget-object v6, v3, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    const-string v7, "org.openmobilealliance.dm.firmwareupdate.devicerequest"

    iput-object v7, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    .line 170
    const-string v6, "ALERT_TYPE_DEV_INIT"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_44

    .line 174
    :cond_6f
    const-string v6, "Init no flag"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_44
.end method

.method public static xdmAgentBuildCmdGenericAlertReport(Lcom/wssyncmldm/eng/core/XDMWorkspace;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserAlert;
    .registers 11
    .parameter "ws"
    .parameter "szData"

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, Item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const/4 v2, 0x0

    .local v2, head:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v6, 0x0

    .line 191
    .local v6, tail:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v5, 0x0

    .line 192
    .local v5, szResult:Ljava/lang/String;
    const/4 v4, 0x0

    .line 193
    .local v4, szCorrelator:Ljava/lang/String;
    const/4 v3, 0x0

    .line 195
    .local v3, nAgentType:I
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserAlert;-><init>()V

    .line 196
    .local v0, Alert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;
    invoke-static {p0}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdGetCmdID(Lcom/wssyncmldm/eng/core/XDMWorkspace;)I

    move-result v7

    iput v7, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    .line 197
    iput-object p1, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    .line 199
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOCorrelator()Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 202
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_25

    .line 204
    iput-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szCorrelator:Ljava/lang/String;

    .line 208
    :cond_25
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .end local v1           #Item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 209
    .restart local v1       #Item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    new-instance v7, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-direct {v7}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;-><init>()V

    iput-object v7, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 210
    iget-object v7, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    const/4 v8, 0x0

    iput v8, v7, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    .line 212
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDmAgentType()I

    move-result v3

    .line 214
    const/4 v7, 0x1

    if-ne v3, v7, :cond_ae

    .line 216
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOUpdateReportURI()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    .line 217
    new-instance v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v7}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v7, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 220
    iget-object v7, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 222
    const-string v7, "Item.source is null"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 237
    :cond_57
    :goto_57
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOResultCode()Ljava/lang/String;

    move-result-object v5

    .line 238
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 240
    const-string v5, "0"

    .line 241
    iget-object v7, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    iput-object v8, v7, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    .line 253
    :goto_6b
    invoke-static {v2, v6, v1}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v2

    .line 254
    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 256
    return-object v0

    .line 224
    :cond_72
    iget-object v7, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    const-string v8, "/Update"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 226
    iget-object v7, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    const-string v8, "org.openmobilealliance.dm.firmwareupdate.update"

    iput-object v8, v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    goto :goto_57

    .line 228
    :cond_83
    iget-object v7, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    const-string v8, "/DownloadAndUpdate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_94

    .line 230
    iget-object v7, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    const-string v8, "org.openmobilealliance.dm.firmwareupdate.downloadandupdate"

    iput-object v8, v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    goto :goto_57

    .line 232
    :cond_94
    iget-object v7, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    const-string v8, "/Download"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 234
    iget-object v7, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    const-string v8, "org.openmobilealliance.dm.firmwareupdate.download"

    iput-object v8, v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    goto :goto_57

    .line 245
    :cond_a5
    iget-object v7, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    iput-object v8, v7, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    goto :goto_6b

    .line 250
    :cond_ae
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nAgentType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_6b
.end method

.method public static xdmAgentBuildCmdGetCmdID(Lcom/wssyncmldm/eng/core/XDMWorkspace;)I
    .registers 3
    .parameter "ws"

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, cmdid:I
    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->cmdID:I

    .end local v0           #cmdid:I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->cmdID:I

    .line 32
    .restart local v0       #cmdid:I
    return v0
.end method

.method public static xdmAgentBuildCmdParseTargetURI(Lcom/wssyncmldm/eng/core/XDMWorkspace;)V
    .registers 16
    .parameter "ws"

    .prologue
    const/16 v14, 0x50

    const/16 v13, 0x3f

    const/16 v12, 0x3a

    const/16 v11, 0x2f

    const/4 v10, 0x0

    .line 551
    iget-object v7, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szTargetURI:Ljava/lang/String;

    .line 553
    .local v7, szTarget:Ljava/lang/String;
    const/4 v8, 0x5

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "https"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_b2

    .line 555
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 556
    .local v6, szSub:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "target.substring "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 558
    .local v1, firstComma:I
    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 559
    .local v2, firstQuestion:I
    if-lez v2, :cond_98

    .line 560
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szHostname:Ljava/lang/String;

    .line 563
    :goto_57
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ws.hostname=> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szHostname:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 565
    .local v3, firstSlash:I
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 569
    .local v5, szPort:Ljava/lang/String;
    :try_start_79
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->port:I
    :try_end_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_7f} :catch_ae

    .line 575
    :goto_7f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ws.port"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->port:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 600
    :goto_97
    return-void

    .line 562
    .end local v3           #firstSlash:I
    .end local v5           #szPort:Ljava/lang/String;
    :cond_98
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szHostname:Ljava/lang/String;

    goto :goto_57

    .line 571
    .restart local v3       #firstSlash:I
    .restart local v5       #szPort:Ljava/lang/String;
    :catch_ae
    move-exception v0

    .line 573
    .local v0, e:Ljava/lang/NumberFormatException;
    iput v14, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->port:I

    goto :goto_7f

    .line 579
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #firstComma:I
    .end local v2           #firstQuestion:I
    .end local v3           #firstSlash:I
    .end local v5           #szPort:Ljava/lang/String;
    .end local v6           #szSub:Ljava/lang/String;
    :cond_b2
    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 580
    .restart local v6       #szSub:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "target.substring "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 582
    .restart local v1       #firstComma:I
    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 583
    .restart local v2       #firstQuestion:I
    invoke-virtual {v6, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, szHostName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szHostname:Ljava/lang/String;

    .line 585
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ws.hostname => "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szHostname:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 587
    .restart local v3       #firstSlash:I
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 592
    .restart local v5       #szPort:Ljava/lang/String;
    :try_start_110
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->port:I
    :try_end_116
    .catch Ljava/lang/NumberFormatException; {:try_start_110 .. :try_end_116} :catch_130

    .line 598
    :goto_116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ws.port => "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->port:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_97

    .line 594
    :catch_130
    move-exception v0

    .line 596
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    iput v14, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->port:I

    goto :goto_116
.end method

.method public static xdmAgentBuildCmdReplace(Lcom/wssyncmldm/eng/core/XDMWorkspace;Lcom/wssyncmldm/eng/core/XDMLinkedList;)Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    .registers 8
    .parameter "ws"
    .parameter "list"

    .prologue
    .line 292
    const/4 v3, 0x0

    .line 294
    .local v3, replaceCmd:Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    const/4 v0, 0x0

    .local v0, head:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v4, 0x0

    .line 296
    .local v4, tail:Lcom/wssyncmldm/eng/core/XDMList;
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    .end local v3           #replaceCmd:Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserReplace;-><init>()V

    .line 297
    .restart local v3       #replaceCmd:Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    invoke-static {p0}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdGetCmdID(Lcom/wssyncmldm/eng/core/XDMWorkspace;)I

    move-result v5

    iput v5, v3, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    .line 299
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 300
    invoke-static {p1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 301
    .local v1, obj:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    :goto_18
    if-eqz v1, :cond_33

    .line 303
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 304
    .local v2, obj2:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-static {v2, v1}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentDataStDuplItem(Lcom/wssyncmldm/eng/parser/XDMParserItem;Lcom/wssyncmldm/eng/parser/XDMParserItem;)V

    .line 305
    if-nez v0, :cond_2f

    .line 306
    invoke-static {v0, v4, v2}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    .line 309
    :goto_28
    invoke-static {p1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #obj:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .restart local v1       #obj:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    goto :goto_18

    .line 308
    :cond_2f
    invoke-static {v0, v4, v2}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_28

    .line 311
    .end local v2           #obj2:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    :cond_33
    iput-object v0, v3, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 313
    return-object v3
.end method

.method public static xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    .registers 19
    .parameter "ws"
    .parameter "cmdRef"
    .parameter "szCmd"
    .parameter "szSource"
    .parameter "szTarget"
    .parameter "szData"

    .prologue
    .line 318
    const/4 v6, 0x0

    .line 324
    .local v6, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    new-instance v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    .end local v6           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    invoke-direct {v6}, Lcom/wssyncmldm/eng/parser/XDMParserStatus;-><init>()V

    .line 326
    .restart local v6       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    invoke-static {p0}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdGetCmdID(Lcom/wssyncmldm/eng/core/XDMWorkspace;)I

    move-result v10

    iput v10, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cmdid:I

    .line 327
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szMsgRef:Ljava/lang/String;

    iput-object v10, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    .line 328
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    .line 329
    iput-object p2, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    .line 330
    move-object/from16 v0, p5

    iput-object v0, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    .line 332
    const/4 v3, 0x0

    .line 333
    .local v3, head:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v9, 0x0

    .line 335
    .local v9, tail:Lcom/wssyncmldm/eng/core/XDMList;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10f

    .line 337
    move-object/from16 v7, p4

    .line 338
    .local v7, szBuf:Ljava/lang/String;
    invoke-static {v3, v9, v7}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v3

    .line 339
    iput-object v3, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->targetref:Lcom/wssyncmldm/eng/core/XDMList;

    .line 358
    .end local v7           #szBuf:Ljava/lang/String;
    :cond_2c
    :goto_2c
    const/4 v3, 0x0

    .line 359
    const/4 v9, 0x0

    .line 360
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_142

    .line 362
    move-object/from16 v7, p3

    .line 363
    .restart local v7       #szBuf:Ljava/lang/String;
    invoke-static {v3, v9, v7}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v3

    .line 364
    iput-object v3, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->sourceref:Lcom/wssyncmldm/eng/core/XDMList;

    .line 380
    .end local v7           #szBuf:Ljava/lang/String;
    :cond_3c
    :goto_3c
    const-string v10, "407"

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_50

    const-string v10, "401"

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_6a

    :cond_50
    if-nez p1, :cond_6a

    .line 382
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    .line 383
    .local v1, chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    const-string v10, "b64"

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    .line 384
    iget v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    if-nez v10, :cond_16d

    .line 386
    const-string v10, "syncml:auth-basic"

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    .line 387
    const-string v10, "XDM_CRED_TYPE_BASIC"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 408
    :cond_68
    :goto_68
    iput-object v1, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 411
    .end local v1           #chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    :cond_6a
    iget-boolean v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sendChal:Z

    if-nez v10, :cond_de

    .line 413
    const-string v10, "212"

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_de

    if-nez p1, :cond_de

    .line 415
    iget v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_de

    .line 417
    iget-object v10, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v10, :cond_8b

    .line 419
    iget-object v10, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteMeta(Ljava/lang/Object;)V

    .line 420
    const/4 v10, 0x0

    iput-object v10, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 423
    :cond_8b
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    .line 424
    .restart local v1       #chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    const-string v10, "b64"

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    .line 425
    const-string v10, "syncml:auth-md5"

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    .line 426
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    invoke-static {v10}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v2

    .line 427
    .local v2, encoder:[B
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    .line 428
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    .line 429
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    .line 431
    .local v8, szRet:Ljava/lang/String;
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerNonce(Ljava/lang/String;)V

    .line 432
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CRED_TYPE_MD5 WS.serverNextNonce: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    iget-object v12, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Encoded server nonce "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 434
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sendChal:Z

    .line 435
    iput-object v1, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 440
    .end local v1           #chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    .end local v2           #encoder:[B
    .end local v8           #szRet:Ljava/lang/String;
    :cond_de
    iget v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_10e

    const-string v10, "200"

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_10e

    if-nez p1, :cond_10e

    .line 442
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    .line 443
    .restart local v1       #chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    const-string v10, "b64"

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    .line 444
    const-string v10, "syncml:auth-MAC"

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    .line 446
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    invoke-static {v10}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v2

    .line 447
    .restart local v2       #encoder:[B
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    .line 448
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    .line 450
    iput-object v1, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 452
    .end local v1           #chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    .end local v2           #encoder:[B
    :cond_10e
    return-object v6

    .line 341
    :cond_10f
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->targetRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v10, :cond_2c

    .line 343
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->targetRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 344
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->targetRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v10}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 345
    .local v4, obj:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    :goto_121
    if-eqz v4, :cond_13e

    .line 347
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 348
    .local v5, obj2:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-static {v5, v4}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplItem(Lcom/wssyncmldm/eng/parser/XDMParserItem;Lcom/wssyncmldm/eng/parser/XDMParserItem;)V

    .line 349
    if-nez v3, :cond_13a

    .line 350
    invoke-static {v3, v9, v5}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v3

    .line 353
    :goto_131
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->targetRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v10}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #obj:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v4, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .restart local v4       #obj:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    goto :goto_121

    .line 352
    :cond_13a
    invoke-static {v3, v9, v5}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_131

    .line 355
    .end local v5           #obj2:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    :cond_13e
    iput-object v3, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->targetref:Lcom/wssyncmldm/eng/core/XDMList;

    goto/16 :goto_2c

    .line 366
    .end local v4           #obj:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    :cond_142
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sourceRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v10, :cond_3c

    .line 368
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sourceRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 369
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sourceRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v10}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 370
    .restart local v4       #obj:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    :goto_154
    if-eqz v4, :cond_169

    .line 372
    if-nez v3, :cond_165

    .line 373
    invoke-static {v3, v9, v4}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v3

    .line 376
    :goto_15c
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sourceRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v10}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #obj:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v4, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .restart local v4       #obj:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    goto :goto_154

    .line 375
    :cond_165
    invoke-static {v3, v9, v4}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_15c

    .line 378
    :cond_169
    iput-object v3, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->sourceref:Lcom/wssyncmldm/eng/core/XDMList;

    goto/16 :goto_3c

    .line 389
    .end local v4           #obj:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    .restart local v1       #chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    :cond_16d
    iget v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1b6

    .line 391
    const-string v10, "syncml:auth-md5"

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    .line 392
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    invoke-static {v10}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v2

    .line 393
    .restart local v2       #encoder:[B
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    .line 394
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    .line 395
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    .line 396
    .restart local v8       #szRet:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CRED_TYPE_MD5 WS.serverNextNonce: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    iget-object v12, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Encoded server nonce "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_68

    .line 400
    .end local v2           #encoder:[B
    .end local v8           #szRet:Ljava/lang/String;
    :cond_1b6
    iget v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_68

    .line 402
    const-string v10, "syncml:auth-MAC"

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    .line 403
    iget-object v10, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    invoke-static {v10}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v2

    .line 404
    .restart local v2       #encoder:[B
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    .line 405
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v10, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    .line 406
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_68
.end method

.method public static xdmAgentBuildCmdSyncHeader(Lcom/wssyncmldm/eng/core/XDMWorkspace;)Lcom/wssyncmldm/eng/core/XDMWorkspace;
    .registers 12
    .parameter "ws"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 38
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->syncHeader:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;

    if-nez v0, :cond_71

    .line 41
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->syncHeader:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;

    .line 42
    iget-object v9, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->syncHeader:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;

    .line 44
    .local v9, sh:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szHostname:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szTargetURI:Ljava/lang/String;

    .line 48
    const-string v0, "1.2"

    iput-object v0, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerdtd:Ljava/lang/String;

    .line 49
    const-string v0, "DM/1.2"

    iput-object v0, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerproto:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSessionID:Ljava/lang/String;

    iput-object v0, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSessionId:Ljava/lang/String;

    .line 58
    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->msgID:I

    iput v0, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->msgid:I

    .line 60
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szTargetURI:Ljava/lang/String;

    iput-object v0, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szTarget:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSourceURI:Ljava/lang/String;

    iput-object v0, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSource:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szUserName:Ljava/lang/String;

    iput-object v0, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szLocname:Ljava/lang/String;

    .line 64
    new-instance v8, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v8}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    .line 65
    .local v8, meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->maxMsgSize:I

    iput v0, v8, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxmsgsize:I

    .line 66
    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->maxObjSize:I

    iput v0, v8, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxobjsize:I

    .line 68
    iput-object v8, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 82
    .end local v8           #meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    :cond_3e
    :goto_3e
    iget-object v0, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v0, :cond_44

    .line 84
    iput-object v5, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 87
    :cond_44
    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authState:I

    if-eq v0, v2, :cond_4c

    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authState:I

    if-nez v0, :cond_50

    :cond_4c
    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    if-eq v0, v2, :cond_70

    .line 91
    :cond_50
    const/4 v10, 0x0

    .line 93
    .local v10, szTmp:Ljava/lang/String;
    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthCredType2String(I)Ljava/lang/String;

    move-result-object v10

    .line 94
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e8

    .line 96
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szUserName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szClientPW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_89

    .line 98
    const/4 v7, 0x0

    .line 120
    .local v7, cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;
    :cond_6e
    :goto_6e
    iput-object v7, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 128
    .end local v7           #cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;
    .end local v10           #szTmp:Ljava/lang/String;
    :cond_70
    :goto_70
    return-object p0

    .line 72
    .end local v9           #sh:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;
    :cond_71
    iget-object v9, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->syncHeader:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;

    .line 73
    .restart local v9       #sh:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;
    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->msgID:I

    iput v0, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->msgid:I

    .line 74
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szTargetURI:Ljava/lang/String;

    iget-object v1, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3e

    .line 76
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szTargetURI:Ljava/lang/String;

    iput-object v0, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szTarget:Ljava/lang/String;

    .line 77
    invoke-static {p0}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdParseTargetURI(Lcom/wssyncmldm/eng/core/XDMWorkspace;)V

    goto :goto_3e

    .line 100
    .restart local v10       #szTmp:Ljava/lang/String;
    :cond_89
    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e6

    .line 102
    new-instance v8, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v8}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    .line 104
    .restart local v8       #meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthCredType2String(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    .line 105
    const-string v0, "b64"

    iput-object v0, v8, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    .line 106
    const/4 v7, 0x0

    .line 107
    .restart local v7       #cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;
    new-instance v7, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .end local v7           #cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;
    invoke-direct {v7}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    .line 108
    .restart local v7       #cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;
    iput-object v8, v7, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 110
    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szUserName:Ljava/lang/String;

    iget-object v2, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szClientPW:Ljava/lang/String;

    iget-object v3, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    iget-object v4, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    array-length v4, v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthMakeDigest(ILjava/lang/String;Ljava/lang/String;[BI[BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    .line 111
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cred data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "credType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto :goto_6e

    .line 118
    .end local v7           #cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;
    .end local v8           #meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;
    :cond_e6
    const/4 v7, 0x0

    .restart local v7       #cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;
    goto :goto_6e

    .line 124
    .end local v7           #cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;
    :cond_e8
    iput-object v5, v9, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    goto :goto_70
.end method

.method public static xdmAgentBuildCmdSynchrousGenericAlertReport(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    .registers 11
    .parameter "ws"
    .parameter "cmdRef"
    .parameter "szCmd"
    .parameter "szSource"
    .parameter "szTarget"
    .parameter "szData"

    .prologue
    .line 261
    const/4 v2, 0x0

    .line 262
    .local v2, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    const/4 v1, 0x0

    .line 263
    .local v1, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const/4 v0, 0x0

    .local v0, head:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v3, 0x0

    .line 265
    .local v3, tail:Lcom/wssyncmldm/eng/core/XDMList;
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    .end local v2           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserStatus;-><init>()V

    .line 266
    .restart local v2       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .end local v1           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 268
    .restart local v1       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    invoke-static {p0}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdGetCmdID(Lcom/wssyncmldm/eng/core/XDMWorkspace;)I

    move-result v4

    iput v4, v2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cmdid:I

    .line 269
    iget-object v4, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szMsgRef:Ljava/lang/String;

    iput-object v4, v2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    .line 270
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    .line 271
    iput-object p2, v2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    .line 272
    iput-object p5, v2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    .line 274
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 276
    iput-object p4, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    .line 279
    :cond_2a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 281
    iput-object p3, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    .line 284
    :cond_32
    invoke-static {v0, v3, v1}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v0

    .line 285
    iput-object v0, v2, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 287
    return-object v2
.end method
