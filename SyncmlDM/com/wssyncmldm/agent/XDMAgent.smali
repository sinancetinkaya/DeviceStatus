.class public Lcom/wssyncmldm/agent/XDMAgent;
.super Ljava/lang/Object;
.source "XDMAgent.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;
.implements Lcom/wssyncmldm/interfaces/XTPInterface;
.implements Lcom/wssyncmldm/interfaces/XPollingInterface;
.implements Lcom/wssyncmldm/interfaces/XUICInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssyncmldm/agent/XDMAgent$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_NONCE:Ljava/lang/String; = "SamSungNextNonce="

.field private static g_AccName:Ljava/lang/String;

.field public static g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

.field private static m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

.field private static m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

.field private static m_bPendingStatus:Z

.field private static m_bServerInitiatedStatus:Z

.field private static m_nConnectRetryCount:I

.field private static m_nDMSync:I

.field private static pAccName:Ljava/lang/String;


# instance fields
.field private final PACKAGE_SIZE_GAP:I

.field public m_AddCmd:Lcom/wssyncmldm/eng/parser/XDMParserAdd;

.field public m_AgentHandler:Lcom/wssyncmldm/agent/XDMAgentHandler;

.field public m_Alert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

.field public m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

.field public m_CopyCmd:Lcom/wssyncmldm/eng/parser/XDMParserCopy;

.field public m_DeleteCmd:Lcom/wssyncmldm/eng/parser/XDMParserDelete;

.field public m_Exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;

.field public m_Get:Lcom/wssyncmldm/eng/parser/XDMParserGet;

.field public m_Header:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;

.field public m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

.field public m_ReplaceCmd:Lcom/wssyncmldm/eng/parser/XDMParserReplace;

.field public m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

.field public m_Status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;

.field public m_bInProgresscmd:Z

.field public m_szCmd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    .line 90
    sput v1, Lcom/wssyncmldm/agent/XDMAgent;->m_nDMSync:I

    .line 92
    sput-boolean v1, Lcom/wssyncmldm/agent/XDMAgent;->m_bPendingStatus:Z

    .line 93
    sput-boolean v1, Lcom/wssyncmldm/agent/XDMAgent;->m_bServerInitiatedStatus:Z

    .line 95
    sput v1, Lcom/wssyncmldm/agent/XDMAgent;->m_nConnectRetryCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/16 v0, 0x80

    iput v0, p0, Lcom/wssyncmldm/agent/XDMAgent;->PACKAGE_SIZE_GAP:I

    .line 102
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    if-nez v0, :cond_12

    .line 104
    new-instance v0, Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-direct {v0}, Lcom/wssyncmldm/tp/XTPAdapter;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    .line 106
    :cond_12
    return-void
.end method

.method private xdmAgentCheckNonce(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "szNonce"

    .prologue
    .line 1630
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object v1, p1

    .line 1642
    .end local p1
    .local v1, szNonce:Ljava/lang/Object;
    :goto_7
    return-object v1

    .line 1636
    .end local v1           #szNonce:Ljava/lang/Object;
    .restart local p1
    :cond_8
    const-string p1, "SamSungNextNonce="

    .line 1639
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v0

    .line 1640
    .local v0, encoder1:[B
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    move-object v1, p1

    .line 1642
    .restart local v1       #szNonce:Ljava/lang/Object;
    goto :goto_7
.end method

.method public static xdmAgentClose()I
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 250
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 252
    .local v0, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inDMSync = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/wssyncmldm/agent/XDMAgent;->m_nDMSync:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 253
    sget v1, Lcom/wssyncmldm/agent/XDMAgent;->m_nDMSync:I

    if-lez v1, :cond_3c

    .line 255
    if-eqz v0, :cond_37

    .line 257
    sget-boolean v1, Lcom/wssyncmldm/agent/XDMAgent;->m_bPendingStatus:Z

    if-eqz v1, :cond_3d

    .line 259
    const-string v1, "Pending Status don\'t save"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 260
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsEnd(Lcom/wssyncmldm/eng/core/XDMOmVfs;)V

    .line 267
    :goto_32
    invoke-virtual {v0}, Lcom/wssyncmldm/eng/core/XDMWorkspace;->xdmFreeWorkSpace()V

    .line 268
    sput-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 271
    :cond_37
    sput-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 272
    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 274
    :cond_3c
    return v3

    .line 264
    :cond_3d
    const-string v1, "workspace save"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 265
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmEnd(Lcom/wssyncmldm/eng/core/XDMOmTree;)I

    goto :goto_32
.end method

.method private xdmAgentCmdExecFumo(Lcom/wssyncmldm/eng/core/XDMWorkspace;Lcom/wssyncmldm/eng/parser/XDMParserExec;Lcom/wssyncmldm/eng/parser/XDMParserItem;)V
    .registers 18
    .parameter "DmWorkspace"
    .parameter "exec"
    .parameter "DmParserItem"

    .prologue
    .line 6406
    const/4 v13, 0x0

    .line 6407
    .local v13, szToken:Ljava/lang/String;
    const/4 v12, 0x0

    .line 6408
    .local v12, szLast:Ljava/lang/String;
    const/4 v10, 0x0

    .line 6410
    .local v10, szFumoProfile:Ljava/lang/String;
    iget-char v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nUpdateMechanism:C

    packed-switch v1, :pswitch_data_164

    .line 6507
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 6508
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    .line 6509
    move-object/from16 v0, p2

    iget v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v3, "Exec"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "500"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_Status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    .line 6510
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    iget-object v2, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_Status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6511
    const-string v1, "Mechanism is"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6514
    :goto_30
    return-void

    .line 6413
    :pswitch_31
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    .line 6414
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 6415
    move-object/from16 v0, p2

    iget v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v3, "Exec"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "406"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_Status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    .line 6417
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    iget-object v2, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_Status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_30

    .line 6422
    :pswitch_55
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 6423
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateReportURI(Ljava/lang/String;)V

    .line 6424
    const-string v1, "Mechanism is XDM_FOTA_MECHANISM_ALTERNATIVE"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6426
    if-eqz p2, :cond_83

    .line 6428
    move-object/from16 v0, p2

    iget v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v3, "Exec"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "202"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_Status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    .line 6430
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    iget-object v2, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_Status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6434
    :cond_83
    const/4 v11, 0x0

    .line 6435
    .local v11, szFumopath:Ljava/lang/String;
    const-string v11, "./FUMO"

    .line 6437
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrstr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6438
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v2, "/DownloadAndUpdate"

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrstr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 6439
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_df

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_df

    .line 6441
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrchr(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v13

    .line 6442
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d8

    .line 6446
    const/4 v8, 0x0

    .line 6448
    .local v8, nIndex:I
    :try_start_b5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 6449
    const-string v1, "/DownloadAndUpdate"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 6450
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 6452
    move-object v10, v13

    .line 6453
    invoke-static {v10}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatusNode(Ljava/lang/String;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_ce} :catch_d0

    goto/16 :goto_30

    .line 6455
    :catch_d0
    move-exception v7

    .line 6457
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "Node Parsing Error"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 6462
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #nIndex:I
    :cond_d8
    const-string v1, "Node Parsing Error"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 6468
    :cond_df
    const-string v1, "Node Parsing Error 2"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 6477
    .end local v11           #szFumopath:Ljava/lang/String;
    :pswitch_e6
    const/4 v9, 0x0

    .line 6479
    .local v9, nStatus:I
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateReportURI(Ljava/lang/String;)V

    .line 6480
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v9

    .line 6481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6483
    const/16 v1, 0x28

    if-ne v9, v1, :cond_133

    .line 6485
    const/16 v1, 0x32

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 6492
    :goto_111
    const-string v1, "Mechanism is XDM_FOTA_MECHANISM_ALTERNATIVE_DOWNLOAD"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6493
    move-object/from16 v0, p2

    iget v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v3, "Exec"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "202"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_Status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    .line 6494
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    iget-object v2, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_Status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto/16 :goto_30

    .line 6489
    :cond_133
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    goto :goto_111

    .line 6499
    .end local v9           #nStatus:I
    :pswitch_139
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 6500
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    .line 6501
    move-object/from16 v0, p2

    iget v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v3, "Exec"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "202"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_Status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    .line 6502
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    iget-object v2, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_Status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6503
    const-string v1, "Mechanism is XDM_FOTA_MECHANISM_NONE"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 6410
    nop

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_139
        :pswitch_31
        :pswitch_55
        :pswitch_e6
    .end packed-switch
.end method

.method public static xdmAgentGetDefaultLocuri()Ljava/lang/String;
    .registers 3

    .prologue
    .line 9433
    const-string v1, "./FUMO"

    const-string v2, "/DownloadAndUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9434
    .local v0, szDefaultURI:Ljava/lang/String;
    return-object v0
.end method

.method public static xdmAgentGetOM()Lcom/wssyncmldm/eng/core/XDMOmTree;
    .registers 1

    .prologue
    .line 126
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    if-nez v0, :cond_b

    .line 128
    const-string v0, "dm_ws is NULL"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    .line 132
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    goto :goto_a
.end method

.method public static xdmAgentGetPendingStatus()Z
    .registers 1

    .prologue
    .line 9428
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMAgent;->m_bPendingStatus:Z

    return v0
.end method

.method public static xdmAgentGetServerInitiatedStatus()Z
    .registers 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get bServerInitiatedStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssyncmldm/agent/XDMAgent;->m_bServerInitiatedStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 163
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMAgent;->m_bServerInitiatedStatus:Z

    return v0
.end method

.method public static xdmAgentGetSwVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "szSwVerName"

    .prologue
    const/4 v4, 0x0

    .line 9123
    sget-object v5, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget-object v2, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 9124
    .local v2, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const/4 v1, 0x0

    .line 9125
    .local v1, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    const/4 v3, 0x0

    .line 9127
    .local v3, ret:I
    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmInit(Lcom/wssyncmldm/eng/core/XDMOmTree;)I

    move-result v3

    .line 9128
    if-eqz v3, :cond_17

    .line 9130
    const-string v5, "OM Initialize Failed"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 9131
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    move-object p0, v4

    .line 9162
    .end local p0
    :goto_16
    return-object p0

    .line 9136
    .restart local p0
    :cond_17
    const-string v5, "*"

    invoke-static {v2, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmSetServerId(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)I

    .line 9137
    const-string v5, "."

    invoke-static {v2, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    .line 9138
    if-nez v1, :cond_2e

    .line 9140
    const-string v5, "root node is NULL"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 9141
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    move-object p0, v4

    .line 9142
    goto :goto_16

    .line 9144
    :cond_2e
    const/4 v5, 0x6

    iput v5, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    .line 9146
    const-string v5, "/DevDetail/SwV"

    invoke-static {v2, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    .line 9147
    if-nez v1, :cond_43

    .line 9149
    const-string v5, "xdmOmGetNodeProp Failed"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 9150
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    move-object p0, v4

    .line 9151
    goto :goto_16

    .line 9155
    :cond_43
    iget v4, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v0, v4, [C

    .line 9156
    .local v0, cTemp:[C
    const-string v4, "/DevDetail/SwV"

    const/4 v5, 0x0

    iget v6, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v2, v4, v5, v0, v6}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 9157
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    .line 9158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous SW Version is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 9160
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    goto :goto_16
.end method

.method public static xdmAgentGetSyncMode()I
    .registers 3

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, nSync:I
    sget v0, Lcom/wssyncmldm/agent/XDMAgent;->m_nDMSync:I

    .line 140
    if-eqz v0, :cond_1b

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nSync = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 143
    :cond_1b
    return v0
.end method

.method public static xdmAgentInit()I
    .registers 1

    .prologue
    .line 236
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMWorkspace;-><init>()V

    sput-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 237
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    if-nez v0, :cond_d

    .line 238
    const/4 v0, -0x1

    .line 245
    :goto_c
    return v0

    .line 240
    :cond_d
    const-string v0, "./SyncML/DMAcc"

    sput-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 243
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMAccXNode;-><init>()V

    sput-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    .line 245
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static xdmAgentInitParser(Lcom/wssyncmldm/eng/core/XDMWorkspace;Lcom/wssyncmldm/eng/parser/XDMParser;)I
    .registers 3
    .parameter "ws"
    .parameter "p"

    .prologue
    .line 110
    invoke-virtual {p1, p1, p0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseInit(Lcom/wssyncmldm/eng/parser/XDMParser;Ljava/lang/Object;)V

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public static xdmAgentMakeBootStrapNode()I
    .registers 6

    .prologue
    const/4 v5, 0x1

    .line 2682
    sget-object v3, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 2683
    .local v3, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v1, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 2685
    .local v1, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const/4 v2, 0x0

    .line 2687
    .local v2, ret:I
    const-string v4, "start xdmAgentMakeBootStrapNode"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2688
    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmInit(Lcom/wssyncmldm/eng/core/XDMOmTree;)I

    move-result v4

    if-eqz v4, :cond_13

    .line 2690
    const/4 v2, -0x1

    .line 2713
    .end local v2           #ret:I
    :goto_12
    return v2

    .line 2692
    .restart local v2       #ret:I
    :cond_13
    const-string v4, "*"

    invoke-static {v1, v4}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmSetServerId(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)I

    .line 2694
    const/16 v0, 0x9

    .line 2695
    .local v0, aclValue:I
    const-string v4, "."

    invoke-static {v1, v4, v0, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 2697
    const/16 v0, 0x1b

    .line 2698
    const-string v4, "./SyncML"

    invoke-static {v1, v4, v0, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 2701
    const/16 v0, 0x1b

    .line 2702
    const-string v4, "./DMAcc"

    invoke-static {v1, v4, v0, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 2710
    const/16 v0, 0x1b

    .line 2711
    const-string v4, "./SyncML/Con"

    invoke-static {v1, v4, v0, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    goto :goto_12
.end method

.method public static xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V
    .registers 8
    .parameter "om"
    .parameter "szPath"
    .parameter "aclValue"
    .parameter "scope"

    .prologue
    .line 2065
    const/4 v0, 0x0

    .line 2066
    .local v0, acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    const/4 v1, 0x0

    .line 2067
    .local v1, item:Lcom/wssyncmldm/eng/core/XDMOmList;
    const/4 v2, 0x0

    .line 2069
    .local v2, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    invoke-static {p0, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v2

    .line 2070
    if-eqz v2, :cond_1c

    .line 2073
    if-eqz p2, :cond_16

    .line 2075
    iget-object v1, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 2076
    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .end local v0           #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    check-cast v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;

    .line 2077
    .restart local v0       #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    iput p2, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    .line 2083
    :goto_13
    iput p3, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->scope:I

    .line 2089
    :goto_15
    return-void

    .line 2081
    :cond_16
    const-string v3, "ACL is XDM_OMACL_NONE"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_13

    .line 2087
    :cond_1c
    const-string v3, "Not Exist"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public static xdmAgentParsingWbxml([B)I
    .registers 5
    .parameter "buf"

    .prologue
    const/4 v3, 0x0

    .line 279
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 280
    .local v2, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v1, 0x0

    .line 282
    .local v1, res:I
    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextMsg:Z

    .line 283
    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    .line 284
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParser;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/eng/parser/XDMParser;-><init>([B)V

    .line 285
    .local v0, p:Lcom/wssyncmldm/eng/parser/XDMParser;
    invoke-static {v2, v0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentInitParser(Lcom/wssyncmldm/eng/core/XDMWorkspace;Lcom/wssyncmldm/eng/parser/XDMParser;)I

    .line 286
    invoke-virtual {v0}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParse()I

    move-result v1

    .line 287
    if-eqz v1, :cond_17

    .line 289
    const/4 v3, -0x2

    .line 291
    :cond_17
    return v3
.end method

.method public static xdmAgentReMakeFwUpdateNode(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)I
    .registers 13
    .parameter "om"
    .parameter "szFumoNodePath"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 1648
    const/4 v1, 0x0

    .line 1649
    .local v1, szFUMONode:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1650
    .local v6, szFUMOPackageNode:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1651
    .local v9, szTmpbuf:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1652
    .local v10, tmpbuf_2:[C
    const/4 v8, 0x0

    .line 1654
    .local v8, szStatus:Ljava/lang/String;
    const-string v1, ""

    .line 1655
    const-string v6, ""

    .line 1656
    const-string v8, ""

    .line 1657
    const-string v9, ""

    .line 1658
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v10, v0, [C

    .line 1660
    move-object v7, p1

    .line 1661
    .local v7, szPath:Ljava/lang/String;
    move-object v9, v7

    .line 1665
    :goto_17
    invoke-static {v7, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmMakeParentPath(Ljava/lang/String;[C)V

    .line 1666
    invoke-static {v10}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v9

    .line 1667
    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1669
    const-string v0, "/Update"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14e

    const-string v0, "/DownloadAndUpdate"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14e

    const-string v0, "/Download"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14e

    const-string v0, "/Ext"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14e

    .line 1672
    invoke-static {p0, v9}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v0

    if-nez v0, :cond_4d

    .line 1674
    const/16 v0, 0x18

    const/4 v2, 0x1

    invoke-static {p0, v9, v0, v2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmProcessCmdImplicitAdd(Ljava/lang/Object;Ljava/lang/String;II)Z

    .line 1683
    :cond_4d
    move-object v6, v9

    .line 1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/PkgName"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1687
    const/16 v4, 0x19

    .line 1688
    .local v4, aclValue:I
    const-string v0, " "

    invoke-static {p0, v1, v0, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/PkgVersion"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1691
    const/16 v4, 0x19

    .line 1692
    const-string v0, " "

    invoke-static {p0, v1, v0, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Download"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1695
    const/16 v4, 0xd

    .line 1696
    invoke-static {p0, v1, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1698
    const-string v0, "/PkgURL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1699
    const/16 v4, 0x19

    .line 1700
    const-string v0, " "

    invoke-static {p0, v1, v0, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Update"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1703
    const/16 v4, 0x1d

    .line 1704
    invoke-static {p0, v1, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1706
    const-string v0, "/PkgData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1707
    const/16 v4, 0x10

    .line 1708
    const-string v2, ""

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccBin(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DownloadAndUpdate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1711
    const/16 v4, 0x1d

    .line 1712
    invoke-static {p0, v1, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1714
    const-string v0, "/PkgURL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1715
    const/16 v4, 0x19

    .line 1716
    const-string v0, " "

    invoke-static {p0, v1, v0, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/State"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1719
    const/16 v4, 0x8

    .line 1722
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1723
    invoke-static {p0, v1, v8, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Ext"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1727
    const/16 v4, 0x19

    .line 1728
    invoke-static {p0, v1, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1730
    const-string v0, "/SvcState"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1731
    const/16 v4, 0x19

    .line 1732
    const-string v0, " "

    invoke-static {p0, v1, v0, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pFUMONode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1735
    return v3

    .line 1678
    .end local v4           #aclValue:I
    :cond_14e
    move-object v7, v9

    goto/16 :goto_17
.end method

.method public static xdmAgentSaveBootstrapDateToFFS(Lcom/wssyncmldm/db/file/XDBProfileInfo;)V
    .registers 4
    .parameter "pProfileInfo"

    .prologue
    .line 3605
    const/4 v0, 0x0

    .line 3606
    .local v0, Index:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerID["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3607
    iget-object v1, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetActiveProfileIndexByServerID(Ljava/lang/String;)I

    move-result v0

    .line 3608
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileInfo(Lcom/wssyncmldm/db/file/XDBProfileInfo;)Z

    .line 3609
    iget-object v1, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileName(ILjava/lang/String;)V

    .line 3611
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    invoke-static {v0, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDMXNodeInfo(ILjava/lang/Object;)V

    .line 3612
    return-void
.end method

.method public static xdmAgentSetOM(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .parameter "szPath"
    .parameter "data"

    .prologue
    .line 2244
    sget-object v8, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 2247
    .local v8, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v2, 0x0

    .line 2249
    .local v2, nLen:I
    if-nez p1, :cond_6

    .line 2274
    :cond_5
    :goto_5
    return-void

    .line 2254
    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    .line 2255
    if-gtz v2, :cond_17

    .line 2257
    iget-object v0, v8, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmDeleteImplicit(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Z)I

    .line 2260
    :cond_17
    iget-object v0, v8, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    .line 2262
    iget-object v0, v8, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    invoke-static {v0, p0}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v7

    .line 2263
    .local v7, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz v7, :cond_5

    .line 2265
    iget-object v0, v7, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v0, :cond_31

    .line 2266
    iget-object v0, v7, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsDeleteMimeList(Lcom/wssyncmldm/eng/core/XDMOmList;)V

    .line 2268
    :cond_31
    new-instance v6, Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-direct {v6}, Lcom/wssyncmldm/eng/core/XDMOmList;-><init>()V

    .line 2269
    .local v6, list:Lcom/wssyncmldm/eng/core/XDMOmList;
    const-string v0, "text/plain"

    iput-object v0, v6, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .line 2270
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 2271
    iput-object v6, v7, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 2272
    const/4 v0, 0x4

    iput v0, v7, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    goto :goto_5
.end method

.method public static xdmAgentSetOMAccBin(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 12
    .parameter "omt"
    .parameter "szPath"
    .parameter "szData"
    .parameter "size"
    .parameter "aclValue"
    .parameter "scope"

    .prologue
    .line 2159
    move-object v1, p0

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 2163
    .local v1, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    invoke-static {v1, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v0

    .line 2165
    .local v0, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v0, :cond_10

    .line 2167
    invoke-static {p1, p2, p3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMBin(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2168
    invoke-static {v1, p1, p4, p5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 2185
    :cond_f
    :goto_f
    return-void

    .line 2172
    :cond_10
    iget v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v3, v4, [C

    .line 2173
    .local v3, temp:[C
    const/4 v4, 0x0

    iget v5, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v1, p1, v4, v3, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 2175
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 2177
    .local v2, szTmp:Ljava/lang/String;
    iget v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    if-eq p3, v4, :cond_26

    .line 2179
    invoke-static {p1, p2, p3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMBin(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_f

    .line 2181
    :cond_26
    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_f

    .line 2183
    invoke-static {p1, p2, p3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMBin(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_f
.end method

.method public static xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11
    .parameter "omt"
    .parameter "szPath"
    .parameter "szData"
    .parameter "aclValue"
    .parameter "scope"

    .prologue
    .line 2093
    move-object v1, p0

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 2097
    .local v1, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    invoke-static {v1, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v0

    .line 2098
    .local v0, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2100
    const-string p2, ""

    .line 2103
    :cond_f
    if-nez v0, :cond_18

    .line 2105
    invoke-static {p1, p2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOM(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2106
    invoke-static {v1, p1, p3, p4}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 2125
    :goto_17
    return-void

    .line 2110
    :cond_18
    iget v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v3, v4, [C

    .line 2111
    .local v3, temp:[C
    const/4 v4, 0x0

    iget v5, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v1, p1, v4, v3, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 2113
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 2114
    .local v2, szTmp:Ljava/lang/String;
    iget v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_33

    .line 2116
    invoke-static {p1, p2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOM(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2123
    :cond_31
    :goto_31
    const/4 v3, 0x0

    .line 2125
    goto :goto_17

    .line 2118
    :cond_33
    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_31

    .line 2120
    invoke-static {p1, p2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOM(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_31
.end method

.method public static xdmAgentSetOMBin(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .parameter "szPath"
    .parameter "szData"
    .parameter "datasize"

    .prologue
    .line 2189
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 2192
    .local v7, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v0, v7, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p2

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    .line 2193
    iget-object v0, v7, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    invoke-static {v0, p0}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v6

    .line 2195
    .local v6, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz v6, :cond_23

    .line 2197
    iget-object v0, v6, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v0, :cond_1d

    .line 2199
    iget-object v0, v6, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsDeleteMimeList(Lcom/wssyncmldm/eng/core/XDMOmList;)V

    .line 2201
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 2202
    const/4 v0, 0x2

    iput v0, v6, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    .line 2204
    :cond_23
    return-void
.end method

.method public static xdmAgentSetServerInitiatedStatus(Z)V
    .registers 3
    .parameter "bState"

    .prologue
    .line 156
    sput-boolean p0, Lcom/wssyncmldm/agent/XDMAgent;->m_bServerInitiatedStatus:Z

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set bServerInitiatedStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssyncmldm/agent/XDMAgent;->m_bServerInitiatedStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static xdmAgentSetSyncMode(I)Z
    .registers 3
    .parameter "nSync"

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nSync = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 149
    sput p0, Lcom/wssyncmldm/agent/XDMAgent;->m_nDMSync:I

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public static xdmAgentSetXNodePath(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .parameter "szPath"
    .parameter "szTarget"
    .parameter "bTndsFlag"

    .prologue
    .line 9168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 9170
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_148

    .line 9172
    new-instance v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/core/XDMAccXNode;-><init>()V

    sput-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    .line 9174
    const-string v1, "."

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "./DMAcc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_68

    .line 9176
    :cond_4a
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9177
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9178
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9181
    :cond_68
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9182
    .local v0, szTmpBuf:Ljava/lang/String;
    const-string v1, "/ToConRef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9184
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_96

    .line 9186
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    .line 9187
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    .line 9188
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    .line 9191
    :cond_96
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9192
    const-string v1, "/AppAddr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9193
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c4

    .line 9195
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 9196
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 9197
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 9200
    :cond_c4
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 9201
    const-string v1, "/Port"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9202
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_f2

    .line 9204
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    .line 9205
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    .line 9206
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    .line 9209
    :cond_f2
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9210
    const-string v1, "/AppAuth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9212
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_128

    .line 9215
    const-string v1, "ClientSide"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_129

    .line 9217
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 9218
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 9219
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 9329
    :cond_128
    :goto_128
    return-void

    .line 9223
    :cond_129
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 9224
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 9225
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    goto :goto_128

    .line 9231
    .end local v0           #szTmpBuf:Ljava/lang/String;
    :cond_148
    if-eqz p2, :cond_25a

    .line 9233
    const-string v1, "."

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_15a

    const-string v1, "./DMAcc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_178

    .line 9235
    :cond_15a
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9236
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9237
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9240
    :cond_178
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9241
    .restart local v0       #szTmpBuf:Ljava/lang/String;
    const-string v1, "/ToConRef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9242
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1a6

    .line 9244
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    .line 9245
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    .line 9246
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    .line 9249
    :cond_1a6
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9250
    const-string v1, "/AppAddr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9251
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1d4

    .line 9253
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 9254
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 9255
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 9258
    :cond_1d4
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 9259
    const-string v1, "/Port"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9260
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_202

    .line 9262
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    .line 9263
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    .line 9264
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    .line 9267
    :cond_202
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9268
    const-string v1, "/AppAuth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9269
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_128

    .line 9271
    const-string v1, "ClientSide"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_23a

    .line 9273
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 9274
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 9275
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    goto/16 :goto_128

    .line 9279
    :cond_23a
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 9280
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 9281
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    goto/16 :goto_128

    .line 9287
    .end local v0           #szTmpBuf:Ljava/lang/String;
    :cond_25a
    const-string v1, "."

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_26a

    const-string v1, "./DMAcc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_26e

    .line 9289
    :cond_26a
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p1, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9292
    :cond_26e
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9293
    .restart local v0       #szTmpBuf:Ljava/lang/String;
    const-string v1, "/ToConRef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9294
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_282

    .line 9296
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p1, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    .line 9299
    :cond_282
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9300
    const-string v1, "/AppAddr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9301
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_296

    .line 9303
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p1, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 9306
    :cond_296
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 9307
    const-string v1, "/Port"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9308
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2aa

    .line 9310
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p1, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    .line 9313
    :cond_2aa
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 9314
    const-string v1, "/AppAuth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9315
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_128

    .line 9318
    const-string v1, "ClientSide"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2c8

    .line 9320
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p1, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    goto/16 :goto_128

    .line 9324
    :cond_2c8
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iput-object p1, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    goto/16 :goto_128
.end method

.method public static xdmAgentTpSetRetryCount(I)V
    .registers 1
    .parameter "nCnt"

    .prologue
    .line 9423
    sput p0, Lcom/wssyncmldm/agent/XDMAgent;->m_nConnectRetryCount:I

    .line 9424
    return-void
.end method

.method public static xdmAgentV12GetAppAddrPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "szData"

    .prologue
    .line 3616
    const/4 v0, 0x0

    .line 3618
    .local v0, szOut:Ljava/lang/String;
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3620
    const-string v1, "m_szAppAddr is NULL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3621
    const/4 v1, 0x0

    .line 3629
    :goto_11
    return-object v1

    .line 3624
    :cond_12
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 3625
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 3627
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_20
    move-object v1, v0

    .line 3629
    goto :goto_11
.end method

.method public static xdmAgentV12GetAppAddrPortPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "szData"

    .prologue
    .line 3634
    const/4 v0, 0x0

    .line 3636
    .local v0, szOut:Ljava/lang/String;
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3638
    const-string v1, "m_szAppAddrPort is NULL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3639
    const/4 v1, 0x0

    .line 3647
    :goto_11
    return-object v1

    .line 3642
    :cond_12
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    .line 3643
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 3645
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_20
    move-object v1, v0

    .line 3647
    goto :goto_11
.end method

.method public static xdmAgentV12GetClientAppAuthPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "pStr"

    .prologue
    .line 3652
    const/4 v0, 0x0

    .line 3654
    .local v0, szOut:Ljava/lang/String;
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3656
    const-string v1, "m_szClientAppAuth is NULL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3657
    const/4 v1, 0x0

    .line 3665
    :goto_11
    return-object v1

    .line 3660
    :cond_12
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 3661
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 3663
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_20
    move-object v1, v0

    .line 3665
    goto :goto_11
.end method

.method public static xdmAgentV12GetServerAppAuthPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "szData"

    .prologue
    .line 3670
    const/4 v0, 0x0

    .line 3672
    .local v0, szOut:Ljava/lang/String;
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3674
    const-string v1, "m_szServerAppAuth is NULL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3675
    const/4 v1, 0x0

    .line 3683
    :goto_11
    return-object v1

    .line 3678
    :cond_12
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 3679
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 3681
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_20
    move-object v1, v0

    .line 3683
    goto :goto_11
.end method

.method public static xdmAgentV12GetToConRefPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "szData"

    .prologue
    .line 3688
    const/4 v0, 0x0

    .line 3690
    .local v0, szOut:Ljava/lang/String;
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3692
    const-string v1, "m_szToConRef is NULL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3693
    const/4 v1, 0x0

    .line 3701
    :goto_11
    return-object v1

    .line 3696
    :cond_12
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    .line 3697
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 3699
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_20
    move-object v1, v0

    .line 3701
    goto :goto_11
.end method

.method public static xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V
    .registers 10
    .parameter "om"
    .parameter "szPath"
    .parameter "aclValue"
    .parameter "scope"

    .prologue
    const/4 v2, 0x0

    .line 2047
    invoke-static {p0, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v0

    if-nez v0, :cond_13

    .line 2049
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    .line 2050
    invoke-static {p0, p1, p2, p3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 2052
    :cond_13
    return-void
.end method


# virtual methods
.method public xdmAgentAppendAclItem(Lcom/wssyncmldm/eng/core/XDMOmList;Ljava/lang/String;I)Lcom/wssyncmldm/eng/core/XDMOmList;
    .registers 15
    .parameter "acllist"
    .parameter "szAclValue"
    .parameter "aclflag"

    .prologue
    .line 5410
    move-object v4, p2

    .line 5413
    .local v4, szData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 5415
    .local v1, buf:[C
    const/4 v3, 0x0

    .line 5417
    .local v3, found:Z
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v1, v7, [C

    .line 5419
    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_43

    .line 5420
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/16 v8, 0x2b

    invoke-static {v7, v8, v1}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrsplit([CC[C)Ljava/lang/String;

    move-result-object v4

    .line 5426
    :goto_1d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a4

    .line 5429
    move-object v2, p1

    .line 5430
    .local v2, cur:Lcom/wssyncmldm/eng/core/XDMOmList;
    :goto_24
    if-eqz v2, :cond_4d

    iget-object v7, v2, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    if-eqz v7, :cond_4d

    .line 5432
    iget-object v0, v2, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;

    .line 5434
    .local v0, acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    iget-object v7, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_40

    .line 5436
    const/4 v3, 0x1

    .line 5437
    iget v7, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    or-int/2addr v7, p3

    iput v7, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    .line 5440
    :cond_40
    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    goto :goto_24

    .line 5423
    .end local v0           #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    .end local v2           #cur:Lcom/wssyncmldm/eng/core/XDMOmList;
    :cond_43
    const/4 v7, 0x0

    const/16 v8, 0x2a

    aput-char v8, v1, v7

    .line 5424
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-char v8, v1, v7

    goto :goto_1d

    .line 5443
    .restart local v2       #cur:Lcom/wssyncmldm/eng/core/XDMOmList;
    :cond_4d
    if-nez v3, :cond_88

    .line 5445
    const/16 v7, 0x28

    new-array v6, v7, [C

    .line 5446
    .local v6, tmp1:[C
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMOmAcl;-><init>()V

    .line 5448
    .restart local v0       #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9a

    .line 5449
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x27

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v6, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 5455
    :goto_6f
    invoke-static {v6}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    .line 5457
    iget v7, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    or-int/2addr v7, p3

    iput v7, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    .line 5458
    new-instance v5, Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/core/XDMOmList;-><init>()V

    .line 5459
    .local v5, tmp:Lcom/wssyncmldm/eng/core/XDMOmList;
    iput-object v0, v5, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .line 5460
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 5461
    invoke-static {p1, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsAppendList(Lcom/wssyncmldm/eng/core/XDMOmList;Lcom/wssyncmldm/eng/core/XDMOmList;)Lcom/wssyncmldm/eng/core/XDMOmList;

    move-result-object p1

    .line 5463
    .end local v0           #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    .end local v5           #tmp:Lcom/wssyncmldm/eng/core/XDMOmList;
    .end local v6           #tmp1:[C
    :cond_88
    const/4 v1, 0x0

    .line 5464
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    new-array v1, v7, [C

    .line 5465
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/16 v8, 0x2b

    invoke-static {v7, v8, v1}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrsplit([CC[C)Ljava/lang/String;

    move-result-object v4

    goto :goto_1d

    .line 5452
    .restart local v0       #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    .restart local v6       #tmp1:[C
    :cond_9a
    const/4 v7, 0x0

    const/16 v8, 0x2a

    aput-char v8, v6, v7

    .line 5453
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-char v8, v6, v7

    goto :goto_6f

    .line 5467
    .end local v0           #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    .end local v2           #cur:Lcom/wssyncmldm/eng/core/XDMOmList;
    .end local v6           #tmp1:[C
    :cond_a4
    return-object p1
.end method

.method public xdmAgentClientInitPackage(Lcom/wssyncmldm/eng/core/XDMEncoder;)I
    .registers 9
    .parameter "e"

    .prologue
    const/4 v3, -0x1

    const/4 v6, -0x4

    const/4 v4, 0x0

    .line 2278
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 2283
    .local v2, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const-string v5, ""

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2284
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackageStatus(Lcom/wssyncmldm/eng/core/XDMEncoder;)I

    move-result v1

    .line 2285
    .local v1, res:I
    if-eqz v1, :cond_2c

    .line 2287
    if-ne v1, v6, :cond_15

    .line 2289
    iput-boolean v4, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    .line 2351
    :goto_14
    return v3

    .line 2293
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed(%d)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_14

    .line 2298
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackageResults(Lcom/wssyncmldm/eng/core/XDMEncoder;)I

    move-result v1

    .line 2299
    if-eqz v1, :cond_4e

    .line 2301
    if-ne v1, v6, :cond_37

    .line 2303
    iput-boolean v4, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    goto :goto_14

    .line 2307
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed(%d)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_14

    .line 2312
    :cond_4e
    iget v5, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->appId:I

    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbGetNotiEvent(I)I

    move-result v0

    .line 2313
    .local v0, nNotiEvent:I
    if-lez v0, :cond_63

    .line 2315
    const-string v5, "1200"

    invoke-virtual {p0, p1, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackageAlert(Lcom/wssyncmldm/eng/core/XDMEncoder;Ljava/lang/String;)I

    move-result v1

    .line 2322
    :goto_5c
    if-eqz v1, :cond_81

    .line 2324
    if-ne v1, v6, :cond_6a

    .line 2326
    iput-boolean v4, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    goto :goto_14

    .line 2319
    :cond_63
    const-string v5, "1201"

    invoke-virtual {p0, p1, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackageAlert(Lcom/wssyncmldm/eng/core/XDMEncoder;Ljava/lang/String;)I

    move-result v1

    goto :goto_5c

    .line 2330
    :cond_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed(%d)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_14

    .line 2335
    :cond_81
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackageDevInfo(Lcom/wssyncmldm/eng/core/XDMEncoder;)I

    move-result v1

    .line 2336
    if-eqz v1, :cond_a4

    .line 2338
    if-ne v1, v6, :cond_8c

    .line 2340
    iput-boolean v4, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    goto :goto_14

    .line 2344
    :cond_8c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed(%d)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 2349
    :cond_a4
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    move v3, v4

    .line 2351
    goto/16 :goto_14
.end method

.method public xdmAgentCmdAdd(Lcom/wssyncmldm/eng/parser/XDMParserAdd;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I
    .registers 37
    .parameter "add"
    .parameter "isAtomic"
    .parameter "atomic_status"

    .prologue
    .line 6852
    sget-object v3, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 6853
    .local v3, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v14, 0x0

    .line 6854
    .local v14, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const/16 v23, 0x0

    .line 6855
    .local v23, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v0, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    move-object/from16 v18, v0

    .line 6856
    .local v18, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const/16 v24, 0x0

    .line 6857
    .local v24, szBuf:Ljava/lang/String;
    const/16 v30, 0x0

    .line 6858
    .local v30, szType:Ljava/lang/String;
    const/16 v13, 0xc

    .line 6860
    .local v13, format:I
    const/4 v12, 0x0

    .line 6861
    .local v12, cur:Lcom/wssyncmldm/eng/core/XDMList;
    const/16 v4, 0x100

    new-array v0, v4, [C

    move-object/from16 v32, v0

    .line 6862
    .local v32, tmpbuf:[C
    const/16 v27, 0x0

    .line 6864
    .local v27, szNodename:Ljava/lang/String;
    const/4 v9, 0x0

    .line 6865
    .local v9, bufsize:I
    const/16 v22, 0x0

    .line 6867
    .local v22, res:I
    const/16 v25, 0x0

    .line 6868
    .local v25, szInbox:Ljava/lang/String;
    const/4 v15, 0x0

    .line 6870
    .local v15, nFileId:I
    const/16 v28, 0x0

    .line 6871
    .local v28, szOutBuf:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdUicAlert()Z

    move-result v21

    .line 6874
    .local v21, process:Z
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdTNDS()I

    move-result v15

    .line 6876
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6877
    :cond_2c
    :goto_2c
    if-eqz v12, :cond_7f5

    .line 6879
    const/16 v30, 0x0

    .line 6880
    const/16 v13, 0xc

    .line 6881
    iget-object v14, v12, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .end local v14           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 6883
    .restart local v14       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-nez v4, :cond_6c

    .line 6885
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v4, :cond_46

    .line 6886
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 6906
    :cond_46
    :goto_46
    iget v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c2

    .line 6908
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b3

    .line 6910
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 6916
    :goto_62
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6917
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6918
    goto :goto_2c

    .line 6890
    :cond_6c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v4, :cond_46

    .line 6892
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 6894
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_92

    .line 6895
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v5, v5, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    iput-object v5, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    .line 6898
    :cond_92
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 6900
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 6901
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v5, v5, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    iput-object v5, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    goto :goto_46

    .line 6914
    :cond_b3
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    goto :goto_62

    .line 6920
    :cond_c2
    if-nez v21, :cond_fc

    .line 6922
    iget v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-lez v4, :cond_cb

    .line 6924
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 6927
    :cond_cb
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ed

    .line 6929
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "215"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 6936
    :goto_e2
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6937
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6938
    goto/16 :goto_2c

    .line 6933
    :cond_ed
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "215"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    goto :goto_e2

    .line 6942
    :cond_fc
    if-eqz p2, :cond_1c5

    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    sget-object v5, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    if-eq v4, v5, :cond_1c5

    .line 6944
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tmpItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    if-eqz v4, :cond_16f

    .line 6947
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tmpItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-virtual {v4, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_148

    .line 6949
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_139

    .line 6951
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "418"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 6958
    :goto_127
    sget-object v4, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_STEP_NOT_EXEC:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    iput-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    .line 6959
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tmpItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 6998
    :goto_12e
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6999
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7000
    goto/16 :goto_2c

    .line 6955
    :cond_139
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "418"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    goto :goto_127

    .line 6963
    :cond_148
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_160

    .line 6965
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "216"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    goto :goto_12e

    .line 6969
    :cond_160
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "216"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    goto :goto_12e

    .line 6975
    :cond_16f
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    sget-object v5, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_STEP_NOT_EXEC:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    if-ne v4, v5, :cond_19c

    .line 6977
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18d

    .line 6979
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "215"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    goto :goto_12e

    .line 6983
    :cond_18d
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "215"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    goto :goto_12e

    .line 6988
    :cond_19c
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b5

    .line 6990
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "216"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    goto/16 :goto_12e

    .line 6994
    :cond_1b5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "216"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    goto/16 :goto_12e

    .line 7003
    :cond_1c5
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1ee

    .line 7005
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "403"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7006
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7007
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7009
    if-eqz p2, :cond_2c

    .line 7011
    const-string v4, "507"

    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_2c

    .line 7016
    :cond_1ee
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 7021
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_29a

    .line 7023
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v17

    .line 7024
    .local v17, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz v17, :cond_2ad

    iget v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-nez v4, :cond_2ad

    iget-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    if-nez v4, :cond_2ad

    .line 7026
    const/16 v4, 0xa

    invoke-static {v4}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFGetMOPath(I)Ljava/lang/String;

    move-result-object v25

    .line 7027
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23a

    .line 7029
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "418"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7030
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7031
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7035
    if-eqz p2, :cond_2c

    .line 7037
    const-string v4, "507"

    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_2c

    .line 7044
    :cond_23a
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 7045
    .local v29, szTmp:Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_273

    .line 7048
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "418"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7049
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7050
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7054
    if-eqz p2, :cond_2c

    .line 7056
    const-string v4, "507"

    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_2c

    .line 7064
    :cond_273
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "418"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7065
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7066
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7067
    const-string v4, "node already Existed[418]"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 7071
    if-eqz p2, :cond_2c

    .line 7073
    const-string v4, "507"

    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_2c

    .line 7083
    .end local v17           #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    .end local v29           #szTmp:Ljava/lang/String;
    :cond_29a
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmMakeParentPath(Ljava/lang/String;[C)V

    .line 7086
    invoke-static/range {v32 .. v32}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v26

    .line 7087
    .local v26, szName:Ljava/lang/String;
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetXNodePath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7100
    .end local v26           #szName:Ljava/lang/String;
    :cond_2ad
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmMakeParentPath(Ljava/lang/String;[C)V

    .line 7101
    invoke-static/range {v32 .. v32}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v27

    .line 7103
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v17

    .line 7104
    .restart local v17       #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v17, :cond_2fe

    .line 7108
    const/4 v11, 0x0

    .line 7110
    .local v11, bResultImplicitAdd:Z
    const/16 v4, 0x1b

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-static {v0, v1, v4, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmProcessCmdImplicitAdd(Ljava/lang/Object;Ljava/lang/String;II)Z

    move-result v11

    .line 7112
    if-nez v11, :cond_2c

    .line 7114
    iget v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-lez v4, :cond_2d7

    .line 7116
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 7119
    :cond_2d7
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "500"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7120
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7121
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7123
    const-string v4, "Node depth is over 15  Command failed500"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 7125
    if-eqz p2, :cond_2c

    .line 7127
    const-string v4, "507"

    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_2c

    .line 7134
    .end local v11           #bResultImplicitAdd:Z
    :cond_2fe
    const/4 v4, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;I)Z

    move-result v4

    if-nez v4, :cond_332

    .line 7137
    iget v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-lez v4, :cond_310

    .line 7138
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 7140
    :cond_310
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "425"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7141
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7142
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7146
    if-eqz p2, :cond_2c

    .line 7148
    const-string v4, "507"

    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_2c

    .line 7155
    :cond_332
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v4, :cond_3ba

    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3ba

    const-string v4, "node"

    iget-object v5, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v5, v5, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3ba

    .line 7157
    const/16 v24, 0x0

    .line 7158
    const/4 v9, 0x0

    .line 7159
    const/4 v4, 0x0

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    .line 7160
    const/4 v13, 0x6

    .line 7161
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_363

    .line 7163
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v0, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 7253
    :cond_363
    :goto_363
    iget-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nTNDSFlag:Z

    if-eqz v4, :cond_569

    .line 7256
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_569

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_569

    .line 7258
    const-string v4, "application/vnd.syncml.dmtnds+xml"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4af

    .line 7260
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v15, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    .line 7261
    const/16 v24, 0x0

    .line 7262
    const/16 v30, 0x0

    .line 7263
    iget v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-nez v4, :cond_495

    .line 7265
    const/4 v4, 0x0

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 7266
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 7267
    const/4 v4, 0x0

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    .line 7268
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nTNDSFlag:Z

    .line 7269
    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFCreateTNDSNodeFromFile(ILcom/wssyncmldm/eng/core/XDMOmTree;)I

    move-result v22

    .line 7271
    if-lez v22, :cond_47b

    .line 7273
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "200"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7274
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7275
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7276
    goto/16 :goto_2c

    .line 7166
    :cond_3ba
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v4, :cond_433

    .line 7168
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v4, :cond_3e0

    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    if-eqz v4, :cond_3e0

    .line 7170
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStGetString(Lcom/wssyncmldm/eng/parser/XDMParserPcdata;)Ljava/lang/String;

    move-result-object v24

    .line 7171
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_413

    .line 7173
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget v9, v4, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    .line 7174
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v24

    .line 7181
    :cond_3e0
    :goto_3e0
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    if-lez v4, :cond_418

    .line 7183
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    .line 7184
    const/4 v4, 0x0

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 7206
    :cond_3ef
    :goto_3ef
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3ff

    .line 7208
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v0, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 7210
    :cond_3ff
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_363

    .line 7212
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssyncmldm/eng/core/XDMOmList;->xdmOmGetFormatFromString(Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_363

    .line 7178
    :cond_413
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v9

    goto :goto_3e0

    .line 7186
    :cond_418
    iget v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    if-nez v4, :cond_3ef

    .line 7190
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v4, :cond_430

    .line 7192
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    if-lez v4, :cond_42d

    .line 7194
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    goto :goto_3ef

    .line 7198
    :cond_42d
    iput v9, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    goto :goto_3ef

    .line 7203
    :cond_430
    iput v9, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    goto :goto_3ef

    .line 7218
    :cond_433
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v4, :cond_46f

    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    if-eqz v4, :cond_46f

    .line 7220
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStGetString(Lcom/wssyncmldm/eng/parser/XDMParserPcdata;)Ljava/lang/String;

    move-result-object v24

    .line 7221
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_46a

    .line 7223
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget v9, v4, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    .line 7224
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    if-eqz v4, :cond_467

    .line 7225
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v24

    .line 7234
    :goto_45b
    iget-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    if-nez v4, :cond_363

    .line 7236
    iput v9, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    .line 7237
    const/16 v30, 0x0

    .line 7238
    const/16 v13, 0xc

    goto/16 :goto_363

    .line 7227
    :cond_467
    const/16 v24, 0x0

    goto :goto_45b

    .line 7231
    :cond_46a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v9

    goto :goto_45b

    .line 7243
    :cond_46f
    const/16 v24, 0x0

    .line 7244
    const/4 v9, 0x0

    .line 7245
    const/4 v4, 0x0

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    .line 7246
    const/16 v13, 0xc

    .line 7247
    const/16 v30, 0x0

    goto/16 :goto_363

    .line 7278
    :cond_47b
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "500"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7279
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7280
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7281
    goto/16 :goto_2c

    .line 7284
    :cond_495
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "213"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7285
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7286
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7287
    goto/16 :goto_2c

    .line 7289
    :cond_4af
    const-string v4, "application/vnd.syncml.dmtnds+wbxml"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_569

    .line 7291
    const-string v4, "### SYNCML_MIME_TYPE_TNDS_WBXML ###"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 7293
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v15, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    .line 7295
    iget v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-nez v4, :cond_54f

    .line 7297
    const/16 v16, 0x0

    .line 7298
    .local v16, nWbxmlDataLen:I
    const/16 v20, 0x0

    .line 7299
    .local v20, pWbxmlData:[B
    const/16 v31, 0x0

    .line 7300
    .local v31, szWbxml:Ljava/lang/String;
    const/4 v4, 0x0

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 7301
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 7302
    const/4 v4, 0x0

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    .line 7303
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nTNDSFlag:Z

    .line 7306
    invoke-static {v15}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileSize(I)I

    move-result v16

    .line 7307
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 7308
    const/4 v4, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v15, v4, v0, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbReadFile(III[B)Z

    .line 7309
    new-instance v31, Ljava/lang/String;

    .end local v31           #szWbxml:Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 7310
    .restart local v31       #szWbxml:Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmTndsWbxmlParse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 7311
    const/16 v19, 0x0

    .line 7312
    .local v19, outBufSize:I
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50c

    .line 7314
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v19

    .line 7316
    :cond_50c
    move-object/from16 v0, v28

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFCreateTNDSNode(Ljava/lang/String;ILcom/wssyncmldm/eng/core/XDMOmTree;)I

    move-result v22

    .line 7317
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmTndsParseFinish()V

    .line 7319
    if-lez v22, :cond_535

    .line 7321
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "200"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7322
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7323
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7324
    goto/16 :goto_2c

    .line 7326
    :cond_535
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "500"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7327
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7328
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7329
    goto/16 :goto_2c

    .line 7331
    .end local v16           #nWbxmlDataLen:I
    .end local v19           #outBufSize:I
    .end local v20           #pWbxmlData:[B
    .end local v31           #szWbxml:Ljava/lang/String;
    :cond_54f
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "213"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7332
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7333
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7334
    goto/16 :goto_2c

    .line 7340
    :cond_569
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6b9

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6b9

    .line 7342
    const-string v4, "application/vnd.syncml.dmtnds+xml"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_605

    .line 7345
    iget v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-lez v4, :cond_5b6

    .line 7347
    iget v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    add-int/2addr v4, v9

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 7348
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 7350
    iget-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nTNDSFlag:Z

    if-nez v4, :cond_595

    .line 7352
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nTNDSFlag:Z

    .line 7353
    invoke-static {v15}, Lcom/wssyncmldm/db/file/XDB;->xdbDeleteFile(I)I

    .line 7356
    :cond_595
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v15, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    .line 7358
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "213"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7359
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7360
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7361
    goto/16 :goto_2c

    .line 7363
    :cond_5b6
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v9, v1}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFCreateTNDSNode(Ljava/lang/String;ILcom/wssyncmldm/eng/core/XDMOmTree;)I

    move-result v22

    .line 7364
    if-lez v22, :cond_5e2

    .line 7366
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "200"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7367
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7368
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7372
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetAccountFromOM(Lcom/wssyncmldm/eng/core/XDMOmTree;)I

    move-result v22

    .line 7374
    goto/16 :goto_2c

    .line 7377
    :cond_5e2
    const/16 v24, 0x0

    .line 7378
    const/16 v30, 0x0

    .line 7379
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "500"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7380
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7381
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7382
    const-string v4, "Fail"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 7383
    const/4 v4, -0x1

    .line 7563
    .end local v17           #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    :goto_604
    return v4

    .line 7385
    .restart local v17       #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_605
    const-string v4, "application/vnd.syncml.dmtnds+wbxml"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6b9

    .line 7387
    const-string v4, "### SYNCML_MIME_TYPE_TNDS_WBXML ###\n"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 7388
    iget v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-lez v4, :cond_64b

    .line 7390
    iget v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    add-int/2addr v4, v9

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 7391
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 7393
    iget-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nTNDSFlag:Z

    if-nez v4, :cond_62a

    .line 7395
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nTNDSFlag:Z

    .line 7396
    invoke-static {v15}, Lcom/wssyncmldm/db/file/XDB;->xdbDeleteFile(I)I

    .line 7399
    :cond_62a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v15, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    .line 7400
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "213"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7401
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7402
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7403
    goto/16 :goto_2c

    .line 7406
    :cond_64b
    move-object/from16 v0, v24

    invoke-static {v0, v9}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmTndsWbxmlParse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 7407
    const/16 v19, 0x0

    .line 7408
    .restart local v19       #outBufSize:I
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_65d

    .line 7410
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v19

    .line 7412
    :cond_65d
    move-object/from16 v0, v28

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFCreateTNDSNode(Ljava/lang/String;ILcom/wssyncmldm/eng/core/XDMOmTree;)I

    move-result v22

    .line 7413
    invoke-static {}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmTndsParseFinish()V

    .line 7415
    if-lez v22, :cond_695

    .line 7417
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "200"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7418
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7419
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7421
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2c

    .line 7423
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetAccountFromOM(Lcom/wssyncmldm/eng/core/XDMOmTree;)I

    move-result v22

    goto/16 :goto_2c

    .line 7429
    :cond_695
    const/16 v24, 0x0

    .line 7430
    const/16 v30, 0x0

    .line 7431
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "500"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7432
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7433
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7434
    const-string v4, "xdmAgentBuildCmdStatus : Warning!!!. Fail"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 7435
    const/4 v4, -0x1

    goto/16 :goto_604

    .line 7441
    .end local v19           #outBufSize:I
    :cond_6b9
    iget v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    if-nez v4, :cond_71f

    .line 7443
    iget-object v5, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    iget v6, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    const/4 v7, 0x0

    move-object/from16 v4, v18

    move-object/from16 v8, v24

    invoke-static/range {v4 .. v9}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    move-result v22

    .line 7447
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetAclDynamicFUMONode(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)I

    .line 7450
    const-string v4, "ADD (NO DATA)"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 7451
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v17

    .line 7452
    const/16 v4, 0xc

    if-eq v13, v4, :cond_6e8

    .line 7454
    move-object/from16 v0, v17

    iput v13, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    .line 7500
    :cond_6e8
    :goto_6e8
    if-gez v22, :cond_779

    .line 7502
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 7504
    iget v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-lez v4, :cond_6f8

    .line 7506
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 7510
    :cond_6f8
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "500"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7511
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7513
    const/16 v24, 0x0

    .line 7514
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 7515
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7517
    if-eqz p2, :cond_2c

    .line 7519
    const-string v4, "507"

    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_2c

    .line 7460
    :cond_71f
    iget v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    if-nez v4, :cond_769

    .line 7464
    const-string v4, "/Update/PkgData"

    iget-object v5, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_767

    .line 7466
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    iget v5, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    invoke-static {v4, v5}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsGetFreeVaddr(Lcom/wssyncmldm/eng/core/XDMOmVfs;I)I

    move-result v10

    .line 7473
    .local v10, addr:I
    :goto_737
    if-gez v10, :cond_769

    .line 7476
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "420"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7477
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7478
    const-string v4, "ADD STATUS_DEVICE_FULL"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 7480
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7482
    iget v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-lez v4, :cond_75d

    .line 7484
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 7488
    :cond_75d
    if-eqz p2, :cond_2c

    .line 7490
    const-string v4, "507"

    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_2c

    .line 7470
    .end local v10           #addr:I
    :cond_767
    const/4 v10, 0x0

    .restart local v10       #addr:I
    goto :goto_737

    .line 7496
    .end local v10           #addr:I
    :cond_769
    iget-object v5, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    iget v6, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    iget v7, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    move-object/from16 v4, v18

    move-object/from16 v8, v24

    invoke-static/range {v4 .. v9}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    move-result v22

    goto/16 :goto_6e8

    .line 7524
    :cond_779
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v17

    .line 7525
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7ac

    .line 7527
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v4, :cond_794

    .line 7529
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-static {v4}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsDeleteMimeList(Lcom/wssyncmldm/eng/core/XDMOmList;)V

    .line 7531
    :cond_794
    new-instance v4, Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/core/XDMOmList;-><init>()V

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 7532
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    move-object/from16 v0, v30

    iput-object v0, v4, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .line 7533
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 7535
    :cond_7ac
    const/16 v4, 0xc

    if-eq v13, v4, :cond_7b4

    .line 7537
    move-object/from16 v0, v17

    iput v13, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    .line 7541
    :cond_7b4
    const/16 v24, 0x0

    .line 7543
    iget v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-nez v4, :cond_7dd

    .line 7545
    const/4 v4, 0x0

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 7546
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 7547
    const/4 v4, 0x0

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    .line 7550
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "200"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    .line 7560
    :goto_7d2
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 7561
    iget-object v12, v12, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    goto/16 :goto_2c

    .line 7554
    :cond_7dd
    iget v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    add-int/2addr v4, v9

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 7555
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 7558
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v5, "Add"

    const/4 v6, 0x0

    iget-object v7, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "213"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v23

    goto :goto_7d2

    .line 7563
    .end local v17           #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_7f5
    const/4 v4, 0x0

    goto/16 :goto_604
.end method

.method public xdmAgentCmdAlert(Lcom/wssyncmldm/eng/parser/XDMParserAlert;Z)I
    .registers 15
    .parameter "alert"
    .parameter "isAtomic"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6670
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 6671
    .local v0, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v10, 0x0

    .line 6672
    .local v10, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    const/4 v7, 0x0

    .line 6673
    .local v7, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const/4 v6, 0x0

    .line 6674
    .local v6, cur:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v11, 0x0

    .line 6676
    .local v11, szData:Ljava/lang/String;
    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_ALERT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->procState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 6678
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 6680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6688
    iget v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    if-eq v1, v4, :cond_4d

    .line 6690
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    const-string v2, "Alert"

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v10

    .line 6691
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v10}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6846
    :cond_40
    :goto_40
    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->procState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 6847
    const/4 v1, 0x0

    :goto_45
    return v1

    .line 6684
    :cond_46
    const-string v1, "alert->data is NULL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6685
    const/4 v1, -0x1

    goto :goto_45

    .line 6694
    :cond_4d
    if-eqz p2, :cond_60

    .line 6696
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    const-string v2, "Alert"

    const-string v5, "215"

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v10

    .line 6697
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v10}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_40

    .line 6699
    :cond_60
    const-string v1, "1222"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7d

    .line 6701
    iput-boolean v4, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextMsg:Z

    .line 6702
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    const-string v2, "Alert"

    const-string v5, "200"

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v10

    .line 6703
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v10}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_40

    .line 6706
    :cond_7d
    const-string v1, "1100"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_af

    const-string v1, "1101"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_af

    const-string v1, "1102"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_af

    const-string v1, "1103"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_af

    const-string v1, "1104"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_202

    .line 6713
    :cond_af
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    if-eqz v1, :cond_ba

    .line 6715
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicFreeUicOption(Lcom/wssyncmldm/eng/core/XDMUicOption;)Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 6716
    iput-object v3, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 6719
    :cond_ba
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    if-nez v1, :cond_c4

    .line 6721
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCreateUicOption()Lcom/wssyncmldm/eng/core/XDMUicOption;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 6724
    :cond_c4
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicGetUicType(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->UICType:I

    .line 6726
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6727
    iget-object v7, v6, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .end local v7           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 6731
    .restart local v7       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v1, :cond_1c4

    .line 6733
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStGetString(Lcom/wssyncmldm/eng/parser/XDMParserPcdata;)Ljava/lang/String;

    move-result-object v11

    .line 6734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "str = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 6741
    :goto_f4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 6744
    const-string v1, "1100"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12c

    const-string v1, "1101"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12c

    const-string v1, "1102"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12c

    const-string v1, "1103"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12c

    const-string v1, "1104"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1cb

    .line 6750
    :cond_12c
    const-string v11, "MINDT=30"

    .line 6764
    :cond_12e
    :goto_12e
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    invoke-static {v11, v1}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicOptionProcess(Ljava/lang/String;Lcom/wssyncmldm/eng/core/XDMUicOption;)Ljava/lang/String;

    move-result-object v11

    .line 6765
    iget-object v6, v6, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6767
    if-eqz v6, :cond_13c

    .line 6769
    iget-object v7, v6, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .end local v7           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 6772
    .restart local v7       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    :cond_13c
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v1, :cond_146

    .line 6774
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStGetString(Lcom/wssyncmldm/eng/parser/XDMParserPcdata;)Ljava/lang/String;

    move-result-object v11

    .line 6777
    :cond_146
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 6779
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v1, :cond_15e

    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    if-eqz v1, :cond_15e

    .line 6781
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    .line 6785
    :cond_15e
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_170

    .line 6787
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    invoke-static {v2, v11}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppendStrText(Lcom/wssyncmldm/eng/core/XDMText;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMText;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    .line 6791
    :cond_170
    const-string v1, "1103"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_184

    const-string v1, "1104"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1e4

    .line 6793
    :cond_184
    const/4 v8, 0x0

    .line 6794
    .local v8, iuicMenu:I
    if-eqz v6, :cond_1e0

    .line 6796
    iget-object v6, v6, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    move v9, v8

    .line 6797
    .end local v8           #iuicMenu:I
    .local v9, iuicMenu:I
    :goto_18a
    if-eqz v6, :cond_1df

    .line 6799
    iget-object v7, v6, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .end local v7           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 6801
    .restart local v7       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v1, :cond_19a

    .line 6803
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStGetString(Lcom/wssyncmldm/eng/parser/XDMParserPcdata;)Ljava/lang/String;

    move-result-object v11

    .line 6806
    :cond_19a
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 6808
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v1, :cond_1b2

    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    if-eqz v1, :cond_1b2

    .line 6810
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    .line 6814
    :cond_1b2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21d

    .line 6816
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    add-int/lit8 v8, v9, 0x1

    .end local v9           #iuicMenu:I
    .restart local v8       #iuicMenu:I
    aput-object v11, v1, v9

    .line 6819
    :goto_1c0
    iget-object v6, v6, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    move v9, v8

    .end local v8           #iuicMenu:I
    .restart local v9       #iuicMenu:I
    goto :goto_18a

    .line 6738
    .end local v9           #iuicMenu:I
    :cond_1c4
    const-string v1, "str = NULL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_f4

    .line 6755
    :cond_1cb
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v1, :cond_12e

    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    if-eqz v1, :cond_12e

    .line 6759
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_12e

    .restart local v9       #iuicMenu:I
    :cond_1df
    move v8, v9

    .line 6822
    .end local v9           #iuicMenu:I
    .restart local v8       #iuicMenu:I
    :cond_1e0
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iput v8, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuNumbers:I

    .line 6825
    .end local v8           #iuicMenu:I
    :cond_1e4
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->appId:I

    iput v2, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->appId:I

    .line 6827
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicAlert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    if-eqz v1, :cond_1f3

    .line 6829
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicAlert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteAlert(Ljava/lang/Object;)V

    .line 6831
    :cond_1f3
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserAlert;-><init>()V

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicAlert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    .line 6832
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicAlert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    invoke-static {v1, p1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplAlert(Lcom/wssyncmldm/eng/parser/XDMParserAlert;Lcom/wssyncmldm/eng/parser/XDMParserAlert;)V

    .line 6834
    const/4 v1, -0x5

    goto/16 :goto_45

    .line 6836
    :cond_202
    const-string v1, "1223"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_211

    .line 6838
    iput v4, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sessionAbort:I

    .line 6839
    const/4 v1, 0x3

    goto/16 :goto_45

    .line 6841
    :cond_211
    const-string v1, "1226"

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_40

    goto/16 :goto_40

    .restart local v9       #iuicMenu:I
    :cond_21d
    move v8, v9

    .end local v9           #iuicMenu:I
    .restart local v8       #iuicMenu:I
    goto :goto_1c0
.end method

.method public xdmAgentCmdAtomic(Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)I
    .registers 6
    .parameter "atomic"

    .prologue
    const/4 v2, -0x1

    .line 9070
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 9073
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v3, :cond_f

    .line 9075
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, p1, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdAtomicBlock(Lcom/wssyncmldm/eng/parser/XDMParserAtomic;Lcom/wssyncmldm/eng/core/XDMLinkedList;)I

    move-result v0

    .line 9079
    .local v0, res:I
    if-gez v0, :cond_10

    .line 9084
    .end local v0           #res:I
    :cond_f
    :goto_f
    return v2

    .line 9083
    .restart local v0       #res:I
    :cond_10
    iget v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->numAction:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->numAction:I

    .line 9084
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public xdmAgentCmdAtomicBlock(Lcom/wssyncmldm/eng/parser/XDMParserAtomic;Lcom/wssyncmldm/eng/core/XDMLinkedList;)I
    .registers 16
    .parameter "atomic"
    .parameter "list"

    .prologue
    .line 3750
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 3752
    .local v0, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v8, 0x0

    .line 3753
    .local v8, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const/4 v12, 0x0

    .line 3754
    .local v12, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    const/4 v7, 0x1

    .line 3756
    .local v7, isProcess:Z
    const/4 v10, 0x0

    .line 3757
    .local v10, r:I
    const/4 v9, 0x1

    .line 3759
    .local v9, num:I
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tmpItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 3760
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 3761
    invoke-static {p2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wssyncmldm/agent/XDMAgent;

    .line 3763
    .local v6, cmd:Lcom/wssyncmldm/agent/XDMAgent;
    :goto_14
    if-eqz v6, :cond_24

    .line 3765
    invoke-virtual {p0, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentVefifyAtomicCmd(Lcom/wssyncmldm/agent/XDMAgent;)Z

    move-result v11

    .line 3766
    .local v11, res:Z
    if-nez v11, :cond_1d

    .line 3768
    const/4 v7, 0x0

    .line 3770
    :cond_1d
    invoke-static {p2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v6, Lcom/wssyncmldm/agent/XDMAgent;

    .restart local v6       #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    goto :goto_14

    .line 3773
    .end local v11           #res:Z
    :cond_24
    if-eqz v7, :cond_80

    .line 3775
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->cmdid:I

    const-string v2, "Atomic"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "200"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v12

    .line 3776
    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    .line 3784
    :goto_36
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v12}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 3786
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 3787
    invoke-static {p2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v6, Lcom/wssyncmldm/agent/XDMAgent;

    .line 3788
    .restart local v6       #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    :goto_45
    if-eqz v6, :cond_2f6

    .line 3790
    iget-boolean v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicFlag:Z

    if-eqz v1, :cond_1e1

    .line 3792
    const-string v1, "Get"

    iget-object v2, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a0

    .line 3794
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_Get:Lcom/wssyncmldm/eng/parser/XDMParserGet;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    iget-object v8, v1, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .end local v8           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 3795
    .restart local v8       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget-object v1, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 3797
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_Get:Lcom/wssyncmldm/eng/parser/XDMParserGet;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v2, "Get"

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v5, "215"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v12

    .line 3804
    :goto_74
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v12}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 3981
    :goto_79
    invoke-static {p2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v6, Lcom/wssyncmldm/agent/XDMAgent;

    .restart local v6       #cmd:Lcom/wssyncmldm/agent/XDMAgent;
    goto :goto_45

    .line 3780
    :cond_80
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->cmdid:I

    const-string v2, "Atomic"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "507"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v12

    .line 3781
    sget-object v1, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_STEP_ROLLBACK:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    goto :goto_36

    .line 3801
    :cond_91
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_Get:Lcom/wssyncmldm/eng/parser/XDMParserGet;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v2, "Get"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "404"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v12

    goto :goto_74

    .line 3806
    :cond_a0
    const-string v1, "Exec"

    iget-object v2, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_de

    .line 3808
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_Exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    iget-object v8, v1, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .end local v8           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 3809
    .restart local v8       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget-object v1, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cf

    .line 3811
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_Exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v2, "Exec"

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v5, "215"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v12

    .line 3818
    :goto_c9
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v12}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_79

    .line 3815
    :cond_cf
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_Exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v2, "Get"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "404"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v12

    goto :goto_c9

    .line 3820
    :cond_de
    const-string v1, "Add"

    iget-object v2, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11d

    .line 3822
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_AddCmd:Lcom/wssyncmldm/eng/parser/XDMParserAdd;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    iget-object v8, v1, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .end local v8           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 3823
    .restart local v8       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget-object v1, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10e

    .line 3825
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_AddCmd:Lcom/wssyncmldm/eng/parser/XDMParserAdd;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v2, "Add"

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v5, "215"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v12

    .line 3832
    :goto_107
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v12}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto/16 :goto_79

    .line 3829
    :cond_10e
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_AddCmd:Lcom/wssyncmldm/eng/parser/XDMParserAdd;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    const-string v2, "Get"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "404"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v12

    goto :goto_107

    .line 3834
    :cond_11d
    const-string v1, "Delete"

    iget-object v2, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_15c

    .line 3836
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_DeleteCmd:Lcom/wssyncmldm/eng/parser/XDMParserDelete;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    iget-object v8, v1, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .end local v8           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 3838
    .restart local v8       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget-object v1, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14d

    .line 3840
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_DeleteCmd:Lcom/wssyncmldm/eng/parser/XDMParserDelete;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v2, "Delete"

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v5, "215"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v12

    .line 3846
    :goto_146
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v12}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto/16 :goto_79

    .line 3844
    :cond_14d
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_DeleteCmd:Lcom/wssyncmldm/eng/parser/XDMParserDelete;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v2, "Get"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "404"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v12

    goto :goto_146

    .line 3848
    :cond_15c
    const-string v1, "Replace"

    iget-object v2, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_19b

    .line 3850
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_ReplaceCmd:Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    iget-object v8, v1, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .end local v8           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 3851
    .restart local v8       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget-object v1, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18c

    .line 3853
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_ReplaceCmd:Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v2, "Replace"

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v5, "215"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v12

    .line 3859
    :goto_185
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v12}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto/16 :goto_79

    .line 3857
    :cond_18c
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_ReplaceCmd:Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v2, "Get"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "404"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v12

    goto :goto_185

    .line 3861
    :cond_19b
    const-string v1, "Copy"

    iget-object v2, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1da

    .line 3863
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_CopyCmd:Lcom/wssyncmldm/eng/parser/XDMParserCopy;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    iget-object v8, v1, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .end local v8           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 3864
    .restart local v8       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget-object v1, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1cb

    .line 3866
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_CopyCmd:Lcom/wssyncmldm/eng/parser/XDMParserCopy;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v2, "Copy"

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v5, "215"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v12

    .line 3872
    :goto_1c4
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v12}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto/16 :goto_79

    .line 3870
    :cond_1cb
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_CopyCmd:Lcom/wssyncmldm/eng/parser/XDMParserCopy;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v2, "Get"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "404"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v12

    goto :goto_1c4

    .line 3876
    :cond_1da
    const-string v1, "unknown command"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_79

    .line 3881
    :cond_1e1
    const-string v1, "Get"

    iget-object v2, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1ff

    .line 3883
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_Get:Lcom/wssyncmldm/eng/parser/XDMParserGet;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdGet(Lcom/wssyncmldm/eng/parser/XDMParserGet;Z)I

    move-result v10

    .line 3884
    if-eqz v10, :cond_1fb

    .line 3886
    const-string v1, "get failed"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 3887
    const/4 v9, -0x1

    .line 3985
    .end local v9           #num:I
    :goto_1fa
    return v9

    .line 3889
    .restart local v9       #num:I
    :cond_1fb
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_79

    .line 3891
    :cond_1ff
    const-string v1, "Exec"

    iget-object v2, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_229

    .line 3893
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_Exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdExec(Lcom/wssyncmldm/eng/parser/XDMParserExec;)I

    move-result v10

    .line 3895
    const-string v1, "507"

    iget-object v2, v12, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_21c

    .line 3897
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicFlag:Z

    .line 3900
    :cond_21c
    if-eqz v10, :cond_225

    .line 3902
    const-string v1, "exec failed"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 3903
    const/4 v9, -0x1

    goto :goto_1fa

    .line 3905
    :cond_225
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_79

    .line 3907
    :cond_229
    const-string v1, "Add"

    iget-object v2, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_254

    .line 3909
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_AddCmd:Lcom/wssyncmldm/eng/parser/XDMParserAdd;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v12}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdAdd(Lcom/wssyncmldm/eng/parser/XDMParserAdd;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I

    move-result v10

    .line 3911
    const-string v1, "507"

    iget-object v2, v12, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_247

    .line 3913
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicFlag:Z

    .line 3916
    :cond_247
    if-eqz v10, :cond_250

    .line 3918
    const-string v1, "Add failed"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 3919
    const/4 v9, -0x1

    goto :goto_1fa

    .line 3921
    :cond_250
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_79

    .line 3923
    :cond_254
    const-string v1, "Delete"

    iget-object v2, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_27f

    .line 3925
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_DeleteCmd:Lcom/wssyncmldm/eng/parser/XDMParserDelete;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v12}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdDelete(Lcom/wssyncmldm/eng/parser/XDMParserDelete;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I

    move-result v10

    .line 3927
    const-string v1, "507"

    iget-object v2, v12, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_272

    .line 3929
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicFlag:Z

    .line 3932
    :cond_272
    if-eqz v10, :cond_27b

    .line 3934
    const-string v1, "Delete failed"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 3935
    const/4 v9, -0x1

    goto :goto_1fa

    .line 3937
    :cond_27b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_79

    .line 3939
    :cond_27f
    const-string v1, "Replace"

    iget-object v2, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2ab

    .line 3941
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_ReplaceCmd:Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v12}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdReplace(Lcom/wssyncmldm/eng/parser/XDMParserReplace;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I

    move-result v10

    .line 3943
    const-string v1, "507"

    iget-object v2, v12, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_29d

    .line 3945
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicFlag:Z

    .line 3948
    :cond_29d
    if-eqz v10, :cond_2a7

    .line 3950
    const-string v1, "Replace failed"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 3951
    const/4 v9, -0x1

    goto/16 :goto_1fa

    .line 3953
    :cond_2a7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_79

    .line 3955
    :cond_2ab
    const-string v1, "Copy"

    iget-object v2, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2d7

    .line 3957
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_CopyCmd:Lcom/wssyncmldm/eng/parser/XDMParserCopy;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v12}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdCopy(Lcom/wssyncmldm/eng/parser/XDMParserCopy;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I

    move-result v10

    .line 3959
    const-string v1, "507"

    iget-object v2, v12, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2c9

    .line 3961
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicFlag:Z

    .line 3964
    :cond_2c9
    if-eqz v10, :cond_2d3

    .line 3966
    const-string v1, "Copy failed"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 3967
    const/4 v9, -0x1

    goto/16 :goto_1fa

    .line 3969
    :cond_2d3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_79

    .line 3971
    :cond_2d7
    const-string v1, "Atomic_Start"

    iget-object v2, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2ef

    .line 3973
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicFlag:Z

    .line 3974
    iget-object v1, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    iget-object v2, v6, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    iget-object v2, v2, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v1, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdAtomicBlock(Lcom/wssyncmldm/eng/parser/XDMParserAtomic;Lcom/wssyncmldm/eng/core/XDMLinkedList;)I

    goto/16 :goto_79

    .line 3978
    :cond_2ef
    const-string v1, "unknown command"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_79

    .line 3983
    :cond_2f6
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListClearLinkedList(Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    goto/16 :goto_1fa
.end method

.method public xdmAgentCmdCopy(Lcom/wssyncmldm/eng/parser/XDMParserCopy;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I
    .registers 32
    .parameter "copy"
    .parameter "isAtomic"
    .parameter "atomic_status"

    .prologue
    .line 8532
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 8533
    .local v2, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v0, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    move-object/from16 v16, v0

    .line 8534
    .local v16, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const/16 v21, 0x0

    .line 8535
    .local v21, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    const/4 v14, 0x0

    .line 8536
    .local v14, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const/4 v11, 0x0

    .line 8538
    .local v11, cur:Lcom/wssyncmldm/eng/core/XDMList;
    const/16 v19, 0x0

    .line 8539
    .local v19, sourcedata:[C
    const/16 v25, 0x0

    .line 8544
    .local v25, targetdata:[C
    const/16 v3, 0x50

    new-array v0, v3, [C

    move-object/from16 v27, v0

    .line 8545
    .local v27, tmpbuf:[C
    const/4 v8, 0x0

    .line 8546
    .local v8, sourcesize:I
    const/16 v26, 0x0

    .line 8547
    .local v26, targetsize:I
    const/4 v9, 0x0

    .line 8548
    .local v9, bufsize:I
    const/4 v10, 0x0

    .line 8551
    .local v10, bufsize1:I
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdUicAlert()Z

    move-result v17

    .line 8552
    .local v17, process:Z
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8553
    :cond_21
    :goto_21
    if-eqz v11, :cond_3be

    .line 8555
    const/16 v24, 0x0

    .line 8556
    .local v24, szType:Ljava/lang/String;
    const/16 v12, 0xc

    .line 8557
    .local v12, format:I
    iget-object v14, v11, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .end local v14           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 8559
    .restart local v14       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_60

    .line 8561
    iget-object v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 8563
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    iget-object v7, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    .line 8570
    :goto_47
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8571
    iget-object v11, v11, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8572
    goto :goto_21

    .line 8567
    :cond_51
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    goto :goto_47

    .line 8574
    :cond_60
    if-nez v17, :cond_99

    .line 8577
    iget v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-lez v3, :cond_69

    .line 8579
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 8582
    :cond_69
    iget-object v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 8584
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "215"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    .line 8591
    :goto_80
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8592
    iget-object v11, v11, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8593
    goto :goto_21

    .line 8588
    :cond_8a
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "215"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    goto :goto_80

    .line 8597
    :cond_99
    if-eqz p2, :cond_162

    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    sget-object v4, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    if-eq v3, v4, :cond_162

    .line 8599
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tmpItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    if-eqz v3, :cond_10c

    .line 8602
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tmpItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-virtual {v3, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 8604
    iget-object v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d6

    .line 8606
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "418"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    .line 8613
    :goto_c4
    sget-object v3, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_STEP_NOT_EXEC:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    .line 8614
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tmpItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 8654
    :goto_cb
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8655
    iget-object v11, v11, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8656
    goto/16 :goto_21

    .line 8610
    :cond_d6
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "418"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    goto :goto_c4

    .line 8619
    :cond_e5
    iget-object v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_fd

    .line 8621
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "216"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    goto :goto_cb

    .line 8625
    :cond_fd
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "216"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    goto :goto_cb

    .line 8631
    :cond_10c
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    sget-object v4, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_STEP_NOT_EXEC:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    if-ne v3, v4, :cond_139

    .line 8633
    iget-object v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12a

    .line 8635
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "215"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    goto :goto_cb

    .line 8639
    :cond_12a
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "215"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    goto :goto_cb

    .line 8644
    :cond_139
    iget-object v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_152

    .line 8646
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "216"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    goto/16 :goto_cb

    .line 8650
    :cond_152
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "216"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    goto/16 :goto_cb

    .line 8659
    :cond_162
    iget-object v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_183

    .line 8661
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "404"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    .line 8662
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8663
    iget-object v11, v11, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8664
    goto/16 :goto_21

    .line 8667
    :cond_183
    iget-object v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a4

    .line 8669
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "404"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    .line 8670
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8671
    iget-object v11, v11, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8672
    goto/16 :goto_21

    .line 8675
    :cond_1a4
    iget-object v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v15

    .line 8677
    .local v15, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v15, :cond_1d2

    .line 8679
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    const-string v7, "215"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    .line 8680
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8681
    iget-object v11, v11, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8685
    if-eqz p2, :cond_21

    if-eqz p3, :cond_21

    .line 8687
    const-string v3, "507"

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_21

    .line 8695
    :cond_1d2
    iget v9, v15, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 8696
    move v8, v9

    .line 8697
    new-array v0, v8, [C

    move-object/from16 v19, v0

    .line 8698
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    move-object/from16 v0, v19

    invoke-static {v3, v15, v0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsGetData(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;[C)I

    .line 8700
    iget v12, v15, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    .line 8702
    iget-object v3, v15, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v3, :cond_246

    iget-object v3, v15, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    iget-object v3, v3, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    if-eqz v3, :cond_246

    .line 8704
    iget-object v3, v15, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    iget-object v3, v3, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 8712
    :goto_1f6
    iget v0, v15, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    move/from16 v20, v0

    .line 8715
    .local v20, sourceformat:I
    iget-object v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v15

    .line 8716
    if-eqz v15, :cond_2ad

    iget v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-nez v3, :cond_2ad

    iget-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    if-nez v3, :cond_2ad

    .line 8718
    iget v10, v15, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 8719
    move/from16 v26, v10

    .line 8721
    move/from16 v0, v26

    if-ge v0, v8, :cond_249

    .line 8723
    const/16 v25, 0x0

    .line 8724
    new-array v0, v8, [C

    move-object/from16 v25, v0

    .line 8725
    move v10, v9

    .line 8726
    move/from16 v26, v8

    .line 8734
    :goto_21d
    iget v3, v15, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_252

    .line 8736
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    const-string v7, "215"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    .line 8737
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8738
    iget-object v11, v11, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8740
    if-eqz p2, :cond_21

    if-eqz p3, :cond_21

    .line 8742
    const-string v3, "507"

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_21

    .line 8708
    .end local v20           #sourceformat:I
    :cond_246
    const/16 v24, 0x0

    goto :goto_1f6

    .line 8730
    .restart local v20       #sourceformat:I
    :cond_249
    const/16 v25, 0x0

    .line 8731
    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v25, v0

    goto :goto_21d

    .line 8748
    :cond_252
    const/4 v13, 0x0

    .local v13, i:I
    :goto_253
    if-ge v13, v8, :cond_25c

    .line 8749
    aget-char v3, v19, v13

    aput-char v3, v25, v13

    .line 8748
    add-int/lit8 v13, v13, 0x1

    goto :goto_253

    .line 8750
    :cond_25c
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 8751
    .local v22, szData:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    move-object/from16 v0, v22

    invoke-static {v3, v15, v0, v9}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsSetData(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;Ljava/lang/Object;I)I

    .line 8754
    iget v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-nez v3, :cond_295

    .line 8756
    const/4 v3, 0x0

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 8757
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 8758
    const/4 v3, 0x0

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    .line 8761
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "200"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    .line 8879
    .end local v13           #i:I
    .end local v22           #szData:Ljava/lang/String;
    :goto_28a
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8880
    iget-object v11, v11, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    goto/16 :goto_21

    .line 8765
    .restart local v13       #i:I
    .restart local v22       #szData:Ljava/lang/String;
    :cond_295
    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    add-int/2addr v3, v10

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 8766
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 8769
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "213"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    goto :goto_28a

    .line 8774
    .end local v13           #i:I
    .end local v22           #szData:Ljava/lang/String;
    :cond_2ad
    iget-object v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmMakeParentPath(Ljava/lang/String;[C)V

    .line 8775
    invoke-static/range {v27 .. v27}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v23

    .line 8777
    .local v23, szPathName:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v15

    .line 8778
    if-nez v15, :cond_2ed

    .line 8781
    iget v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-lez v3, :cond_2c9

    .line 8783
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 8786
    :cond_2c9
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "500"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    .line 8787
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8788
    iget-object v11, v11, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8792
    if-eqz p2, :cond_21

    if-eqz p3, :cond_21

    .line 8794
    const-string v3, "507"

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_21

    .line 8801
    :cond_2ed
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v15, v3}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;I)Z

    move-result v3

    if-nez v3, :cond_317

    .line 8804
    iget v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-lez v3, :cond_2fd

    .line 8806
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 8808
    :cond_2fd
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "425"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    .line 8809
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8810
    iget-object v11, v11, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8811
    goto/16 :goto_21

    .line 8814
    :cond_317
    iput v9, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    .line 8815
    move/from16 v12, v20

    .line 8816
    const/16 v24, 0x0

    .line 8817
    iget-object v4, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    iget v5, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, v16

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    move-result v18

    .line 8820
    .local v18, res:I
    if-gez v18, :cond_35c

    .line 8823
    iget v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-lez v3, :cond_335

    .line 8825
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 8829
    :cond_335
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "500"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    .line 8830
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8832
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 8833
    iget-object v11, v11, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8837
    if-eqz p2, :cond_21

    if-eqz p3, :cond_21

    .line 8839
    const-string v3, "507"

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_21

    .line 8846
    :cond_35c
    iget-object v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v15

    .line 8847
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_385

    .line 8849
    iget-object v3, v15, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v3, :cond_373

    .line 8851
    iget-object v3, v15, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-static {v3}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsDeleteMimeList(Lcom/wssyncmldm/eng/core/XDMOmList;)V

    .line 8853
    :cond_373
    new-instance v3, Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/core/XDMOmList;-><init>()V

    iput-object v3, v15, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 8854
    iget-object v3, v15, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .line 8855
    iget-object v3, v15, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 8857
    :cond_385
    iput v12, v15, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    .line 8860
    iget v3, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-nez v3, :cond_3a5

    .line 8862
    const/4 v3, 0x0

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 8863
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 8864
    const/4 v3, 0x0

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    .line 8867
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "200"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    goto/16 :goto_28a

    .line 8871
    :cond_3a5
    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    add-int/2addr v3, v9

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 8872
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 8875
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->cmdid:I

    const-string v4, "Copy"

    const/4 v5, 0x0

    iget-object v6, v14, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "213"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v21

    goto/16 :goto_28a

    .line 8882
    .end local v12           #format:I
    .end local v15           #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    .end local v18           #res:I
    .end local v20           #sourceformat:I
    .end local v23           #szPathName:Ljava/lang/String;
    .end local v24           #szType:Ljava/lang/String;
    :cond_3be
    const/4 v3, 0x0

    return v3
.end method

.method public xdmAgentCmdDelete(Lcom/wssyncmldm/eng/parser/XDMParserDelete;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I
    .registers 18
    .parameter "delcmd"
    .parameter "isAtomic"
    .parameter "atomic_status"

    .prologue
    .line 8887
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 8888
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v10, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 8889
    .local v10, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const/4 v13, 0x0

    .line 8890
    .local v13, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    const/4 v8, 0x0

    .line 8891
    .local v8, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const/4 v7, 0x0

    .line 8892
    .local v7, cur:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v9, 0x0

    .line 8896
    .local v9, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdUicAlert()Z

    move-result v11

    .line 8898
    .local v11, process:Z
    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8899
    :goto_e
    if-eqz v7, :cond_201

    .line 8901
    iget-object v8, v7, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .end local v8           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 8902
    .restart local v8       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const/4 v13, 0x0

    .line 8903
    iget v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_44

    .line 8905
    iget-object v2, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 8907
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    iget-object v6, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 8913
    :goto_2f
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2, v13}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8914
    iget-object v7, v7, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8915
    goto :goto_e

    .line 8911
    :cond_37
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    goto :goto_2f

    .line 8918
    :cond_44
    iget-object v2, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 8920
    iget-object v2, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v10, v2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v9

    .line 8923
    :cond_52
    if-nez v11, :cond_8a

    .line 8925
    iget-object v2, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 8927
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "215"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 8934
    :goto_69
    if-eqz p2, :cond_73

    if-eqz p3, :cond_73

    .line 8936
    const-string v2, "507"

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    .line 9058
    :cond_73
    :goto_73
    if-eqz v13, :cond_7a

    .line 9060
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2, v13}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 9063
    :cond_7a
    iget-object v7, v7, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_e

    .line 8931
    :cond_7d
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "215"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    goto :goto_69

    .line 8940
    :cond_8a
    if-eqz p2, :cond_13b

    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    sget-object v3, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    if-eq v2, v3, :cond_13b

    .line 8942
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tmpItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    if-eqz v2, :cond_eb

    .line 8945
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tmpItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 8947
    iget-object v2, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bb

    .line 8949
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "404"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 8955
    :goto_b3
    sget-object v2, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_STEP_NOT_EXEC:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    .line 8956
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tmpItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    goto :goto_73

    .line 8953
    :cond_bb
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "404"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    goto :goto_b3

    .line 8960
    :cond_c8
    iget-object v2, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_de

    .line 8962
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "216"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    goto :goto_73

    .line 8966
    :cond_de
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "216"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    goto :goto_73

    .line 8972
    :cond_eb
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    sget-object v3, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_STEP_NOT_EXEC:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    if-ne v2, v3, :cond_116

    .line 8974
    iget-object v2, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_108

    .line 8976
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "215"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    goto/16 :goto_73

    .line 8980
    :cond_108
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "215"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    goto/16 :goto_73

    .line 8985
    :cond_116
    iget-object v2, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12d

    .line 8987
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "216"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    goto/16 :goto_73

    .line 8991
    :cond_12d
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "216"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    goto/16 :goto_73

    .line 8996
    :cond_13b
    if-nez v9, :cond_16b

    .line 8998
    iget-object v2, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15e

    .line 9000
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "404"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 9007
    :goto_152
    if-eqz p2, :cond_73

    if-eqz p3, :cond_73

    .line 9009
    const-string v2, "507"

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_73

    .line 9004
    :cond_15e
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "404"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    goto :goto_152

    .line 9013
    :cond_16b
    iget-object v2, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v10, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentIsPermanentNode(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 9015
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 9017
    if-eqz p2, :cond_73

    if-eqz p3, :cond_73

    .line 9019
    const-string v2, "507"

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_73

    .line 9022
    :cond_18c
    const/4 v2, 0x2

    invoke-static {v10, v9, v2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;I)Z

    move-result v2

    if-nez v2, :cond_1ac

    .line 9024
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "425"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 9026
    if-eqz p2, :cond_73

    if-eqz p3, :cond_73

    .line 9028
    const-string v2, "507"

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_73

    .line 9031
    :cond_1ac
    iget-object v2, v10, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    if-ne v9, v2, :cond_1cb

    .line 9033
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 9035
    if-eqz p2, :cond_73

    if-eqz p3, :cond_73

    .line 9037
    const-string v2, "507"

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_73

    .line 9042
    :cond_1cb
    iget-object v2, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 9043
    iget-object v2, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v10, v2, v3}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmDelete(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Z)I

    move-result v12

    .line 9044
    .local v12, res:I
    if-gez v12, :cond_1f2

    .line 9046
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 9047
    if-eqz p2, :cond_73

    if-eqz p3, :cond_73

    .line 9049
    const-string v2, "507"

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto/16 :goto_73

    .line 9054
    :cond_1f2
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    const-string v3, "Delete"

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "200"

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    goto/16 :goto_73

    .line 9065
    .end local v12           #res:I
    :cond_201
    const/4 v2, 0x0

    return v2
.end method

.method public xdmAgentCmdExec(Lcom/wssyncmldm/eng/parser/XDMParserExec;)I
    .registers 14
    .parameter "exec"

    .prologue
    .line 6518
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 6519
    .local v0, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v7, 0x0

    .line 6520
    .local v7, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const/4 v6, 0x0

    .line 6521
    .local v6, cur:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v9, 0x0

    .line 6522
    .local v9, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    const/4 v11, 0x0

    .line 6523
    .local v11, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v10, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 6525
    .local v10, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6527
    :goto_a
    if-eqz v6, :cond_1c7

    .line 6529
    iget-object v7, v6, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .end local v7           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 6531
    .restart local v7       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_47

    .line 6533
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 6534
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    .line 6535
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 6537
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v2, "Exec"

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 6544
    :goto_32
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6545
    iget-object v6, v6, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6546
    goto :goto_a

    .line 6541
    :cond_3a
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v2, "Exec"

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    goto :goto_32

    .line 6549
    :cond_47
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 6551
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 6552
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    .line 6553
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v2, "Exec"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "404"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 6554
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6555
    iget-object v6, v6, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6556
    goto :goto_a

    .line 6559
    :cond_6b
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v9

    .line 6560
    if-nez v9, :cond_91

    .line 6562
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 6563
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    .line 6564
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v2, "Exec"

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v5, "404"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 6565
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6566
    iget-object v6, v6, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6567
    goto/16 :goto_a

    .line 6570
    :cond_91
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentIsAccessibleNode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_af

    .line 6572
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v2, "Exec"

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v5, "405"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 6573
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6574
    iget-object v6, v6, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6575
    goto/16 :goto_a

    .line 6578
    :cond_af
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-virtual {p0, v10, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentIsPermanentNode(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 6580
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v2, "Exec"

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v5, "405"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 6581
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6582
    iget-object v6, v6, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6583
    goto/16 :goto_a

    .line 6587
    :cond_cd
    const/4 v1, 0x4

    invoke-static {v10, v9, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;I)Z

    move-result v1

    if-nez v1, :cond_ea

    .line 6589
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v2, "Exec"

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v5, "425"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 6590
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6591
    iget-object v6, v6, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6592
    goto/16 :goto_a

    .line 6595
    :cond_ea
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19b

    .line 6597
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6601
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v10, v1, v2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckAclCurrentNode(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_116

    .line 6603
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v2, "Exec"

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v5, "425"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 6604
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6605
    iget-object v6, v6, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6606
    goto/16 :goto_a

    .line 6609
    :cond_116
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v2, "/DownloadAndUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_159

    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v2, "/Download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_159

    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v2, "/Update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_159

    .line 6612
    const-string v1, "Node is not exsisted"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6614
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 6615
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    .line 6616
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v2, "Exec"

    const/4 v3, 0x0

    iget-object v4, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v5, "406"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 6619
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6620
    iget-object v6, v6, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6621
    goto/16 :goto_a

    .line 6625
    :cond_159
    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v2, "/Update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_177

    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v2, "/DownloadAndUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_177

    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v2, "/Download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_196

    .line 6628
    :cond_177
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDmAgentType(I)V

    .line 6647
    :goto_17b
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->m_szCorrelator:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_188

    .line 6649
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->m_szCorrelator:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOCorrelator(Ljava/lang/String;)V

    .line 6652
    :cond_188
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDmAgentType()I

    move-result v8

    .line 6654
    .local v8, nAgentType:I
    const/4 v1, 0x1

    if-ne v8, v1, :cond_1bf

    .line 6656
    invoke-direct {p0, v0, p1, v7}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdExecFumo(Lcom/wssyncmldm/eng/core/XDMWorkspace;Lcom/wssyncmldm/eng/parser/XDMParserExec;Lcom/wssyncmldm/eng/parser/XDMParserItem;)V

    .line 6663
    :goto_192
    iget-object v6, v6, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6664
    goto/16 :goto_a

    .line 6632
    .end local v8           #nAgentType:I
    :cond_196
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDmAgentType(I)V

    goto :goto_17b

    .line 6638
    :cond_19b
    const-string v1, "Error item->target->pLocURI is NULL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6639
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    .line 6640
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 6641
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    const-string v2, "Exec"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "403"

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 6642
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6643
    iget-object v6, v6, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 6644
    goto/16 :goto_a

    .line 6660
    .restart local v8       #nAgentType:I
    :cond_1bf
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_192

    .line 6665
    .end local v8           #nAgentType:I
    :cond_1c7
    const/4 v1, 0x0

    return v1
.end method

.method public xdmAgentCmdGet(Lcom/wssyncmldm/eng/parser/XDMParserGet;Z)I
    .registers 32
    .parameter "get"
    .parameter "isAtomic"

    .prologue
    .line 3990
    sget-object v3, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 3991
    .local v3, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v0, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    move-object/from16 v20, v0

    .line 3992
    .local v20, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const/16 v18, 0x0

    .line 3993
    .local v18, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    const/16 v25, 0x0

    .line 3994
    .local v25, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    const/16 v24, 0x0

    .line 3995
    .local v24, results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    const/4 v7, 0x0

    .line 3996
    .local v7, szType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3997
    .local v6, szFormat:Ljava/lang/String;
    const/16 v27, 0x0

    .line 3998
    .local v27, szResultbuf:Ljava/lang/String;
    const/16 v4, 0x64

    new-array v15, v4, [Ljava/lang/String;

    .line 3999
    .local v15, chlist:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 4001
    .local v16, cur:Lcom/wssyncmldm/eng/core/XDMList;
    const/16 v19, 0x0

    .line 4002
    .local v19, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    const/16 v22, 0x1

    .line 4003
    .local v22, process:Z
    const/4 v14, 0x0

    .line 4005
    .local v14, bufsize:I
    const/16 v21, 0x0

    .line 4007
    .local v21, pData:[C
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdUicAlert()Z

    move-result v22

    .line 4009
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    move-object/from16 v16, v0

    move-object/from16 v26, v6

    .end local v6           #szFormat:Ljava/lang/String;
    .local v26, szFormat:Ljava/lang/String;
    move-object/from16 v28, v7

    .line 4010
    .end local v7           #szType:Ljava/lang/String;
    .local v28, szType:Ljava/lang/String;
    :goto_2b
    if-eqz v16, :cond_352

    .line 4012
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    move-object/from16 v18, v0

    .end local v18           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    check-cast v18, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 4014
    .restart local v18       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_72

    .line 4016
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 4018
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v5, "Get"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v25

    .line 4024
    :goto_55
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4025
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    move-object/from16 v16, v0

    .line 4026
    goto :goto_2b

    .line 4022
    :cond_63
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v5, "Get"

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v25

    goto :goto_55

    .line 4029
    :cond_72
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 4032
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v5, "Get"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "404"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v25

    .line 4033
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4034
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    move-object/from16 v16, v0

    .line 4035
    goto :goto_2b

    .line 4038
    :cond_98
    if-nez v22, :cond_d5

    .line 4040
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c6

    .line 4042
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v5, "Get"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "215"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v25

    .line 4049
    :goto_b5
    if-eqz v25, :cond_be

    .line 4051
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4053
    :cond_be
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    move-object/from16 v16, v0

    .line 4054
    goto/16 :goto_2b

    .line 4046
    :cond_c6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v5, "Get"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "215"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v25

    goto :goto_b5

    .line 4057
    :cond_d5
    if-eqz p2, :cond_112

    .line 4059
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_103

    .line 4061
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v5, "Get"

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "215"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v25

    .line 4068
    :goto_f2
    if-eqz v25, :cond_fb

    .line 4070
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4072
    :cond_fb
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    move-object/from16 v16, v0

    .line 4073
    goto/16 :goto_2b

    .line 4065
    :cond_103
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v5, "Get"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "215"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v25

    goto :goto_f2

    .line 4076
    :cond_112
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v5, "?"

    invoke-static {v4, v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrstr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_136

    .line 4078
    const-string v4, "Get"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v4, v1, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdProp(Ljava/lang/String;Lcom/wssyncmldm/eng/parser/XDMParserItem;Ljava/lang/Object;)I

    move-result v23

    .line 4079
    .local v23, res:I
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    move-object/from16 v16, v0

    .line 4080
    goto/16 :goto_2b

    .line 4083
    .end local v23           #res:I
    :cond_136
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v19

    .line 4084
    if-nez v19, :cond_162

    .line 4086
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v5, "Get"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "404"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v25

    .line 4087
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4088
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    move-object/from16 v16, v0

    .line 4089
    goto/16 :goto_2b

    .line 4092
    :cond_162
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentIsAccessibleNode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18e

    .line 4094
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v5, "Get"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "405"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v25

    .line 4095
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4096
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    move-object/from16 v16, v0

    .line 4097
    goto/16 :goto_2b

    .line 4099
    :cond_18e
    const/16 v4, 0x8

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;I)Z

    move-result v4

    if-nez v4, :cond_1ba

    .line 4101
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v5, "Get"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "425"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v25

    .line 4102
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4103
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    move-object/from16 v16, v0

    .line 4104
    goto/16 :goto_2b

    .line 4107
    :cond_1ba
    move-object/from16 v0, v19

    iget v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    if-gez v4, :cond_252

    move-object/from16 v0, v19

    iget v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    if-gtz v4, :cond_252

    .line 4109
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v5, "Get"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "200"

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v25

    .line 4110
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4112
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const/16 v5, 0x64

    move-object/from16 v0, v20

    invoke-static {v0, v4, v15, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetChild(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v23

    .line 4116
    .restart local v23       #res:I
    move-object/from16 v0, v19

    iget v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    invoke-static {v4}, Lcom/wssyncmldm/eng/core/XDMOmList;->xdmOmGetFormatString(I)Ljava/lang/String;

    move-result-object v6

    .line 4117
    .end local v26           #szFormat:Ljava/lang/String;
    .restart local v6       #szFormat:Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v4, :cond_22a

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    if-eqz v4, :cond_22a

    .line 4119
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4126
    .end local v28           #szType:Ljava/lang/String;
    .restart local v7       #szType:Ljava/lang/String;
    :goto_20a
    if-lez v23, :cond_22c

    .line 4128
    const/4 v4, 0x0

    aget-object v27, v15, v4

    .line 4129
    const/16 v17, 0x1

    .local v17, i:I
    :goto_211
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_22e

    .line 4131
    const-string v4, "/"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 4132
    aget-object v4, v15, v17

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 4129
    add-int/lit8 v17, v17, 0x1

    goto :goto_211

    .line 4123
    .end local v7           #szType:Ljava/lang/String;
    .end local v17           #i:I
    .restart local v28       #szType:Ljava/lang/String;
    :cond_22a
    const/4 v7, 0x0

    .end local v28           #szType:Ljava/lang/String;
    .restart local v7       #szType:Ljava/lang/String;
    goto :goto_20a

    .line 4137
    :cond_22c
    const-string v27, ""

    .line 4139
    :cond_22e
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdDetailResults(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[C)Lcom/wssyncmldm/eng/parser/XDMParserResults;

    move-result-object v24

    .line 4140
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4196
    .end local v23           #res:I
    :goto_246
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    move-object/from16 v16, v0

    move-object/from16 v26, v6

    .end local v6           #szFormat:Ljava/lang/String;
    .restart local v26       #szFormat:Ljava/lang/String;
    move-object/from16 v28, v7

    .end local v7           #szType:Ljava/lang/String;
    .restart local v28       #szType:Ljava/lang/String;
    goto/16 :goto_2b

    .line 4144
    :cond_252
    move-object/from16 v0, v19

    iget v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    iget v5, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverMaxObjSize:I

    if-le v4, v5, :cond_27b

    .line 4146
    move-object/from16 v0, p1

    iget v9, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v10, "Get"

    const/4 v11, 0x0

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v13, "413"

    move-object v8, v3

    invoke-static/range {v8 .. v13}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v25

    .line 4147
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4148
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    move-object/from16 v16, v0

    .line 4149
    goto/16 :goto_2b

    .line 4152
    :cond_27b
    move-object/from16 v0, v19

    iget v14, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 4154
    move-object/from16 v0, v19

    iget v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    invoke-static {v4}, Lcom/wssyncmldm/eng/core/XDMOmList;->xdmOmGetFormatString(I)Ljava/lang/String;

    move-result-object v6

    .line 4156
    .end local v26           #szFormat:Ljava/lang/String;
    .restart local v6       #szFormat:Ljava/lang/String;
    move-object/from16 v0, v19

    iget v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v0, v4, [C

    move-object/from16 v21, v0

    .line 4157
    if-eqz v21, :cond_296

    move-object/from16 v0, v21

    array-length v4, v0

    if-nez v4, :cond_2bb

    .line 4159
    :cond_296
    move-object/from16 v0, p1

    iget v9, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v10, "Get"

    const/4 v11, 0x0

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v13, "215"

    move-object v8, v3

    invoke-static/range {v8 .. v13}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v25

    .line 4160
    if-eqz v25, :cond_2b1

    .line 4162
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4164
    :cond_2b1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    move-object/from16 v16, v0

    move-object/from16 v26, v6

    .line 4165
    .end local v6           #szFormat:Ljava/lang/String;
    .restart local v26       #szFormat:Ljava/lang/String;
    goto/16 :goto_2b

    .line 4168
    .end local v26           #szFormat:Ljava/lang/String;
    .restart local v6       #szFormat:Ljava/lang/String;
    :cond_2bb
    move-object/from16 v0, p1

    iget v9, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v10, "Get"

    const/4 v11, 0x0

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v13, "200"

    move-object v8, v3

    invoke-static/range {v8 .. v13}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v25

    .line 4170
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4172
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v4, :cond_350

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    if-eqz v4, :cond_350

    .line 4174
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4181
    .end local v28           #szType:Ljava/lang/String;
    .restart local v7       #szType:Ljava/lang/String;
    :goto_2ec
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    iget v8, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v4, v5, v1, v8}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 4182
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move v8, v14

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v9}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdDetailResults(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[C)Lcom/wssyncmldm/eng/parser/XDMParserResults;

    move-result-object v24

    .line 4184
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4187
    if-eqz v21, :cond_34b

    .line 4189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item.target = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item.data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 4193
    :cond_34b
    const/4 v6, 0x0

    .line 4194
    const/16 v21, 0x0

    goto/16 :goto_246

    .line 4178
    .end local v7           #szType:Ljava/lang/String;
    .restart local v28       #szType:Ljava/lang/String;
    :cond_350
    const/4 v7, 0x0

    .end local v28           #szType:Ljava/lang/String;
    .restart local v7       #szType:Ljava/lang/String;
    goto :goto_2ec

    .line 4198
    .end local v6           #szFormat:Ljava/lang/String;
    .end local v7           #szType:Ljava/lang/String;
    .restart local v26       #szFormat:Ljava/lang/String;
    .restart local v28       #szType:Ljava/lang/String;
    :cond_352
    const/4 v4, 0x0

    return v4
.end method

.method public xdmAgentCmdProp(Ljava/lang/String;Lcom/wssyncmldm/eng/parser/XDMParserItem;Ljava/lang/Object;)I
    .registers 19
    .parameter "szCmd"
    .parameter "item"
    .parameter "p"

    .prologue
    .line 4259
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 4261
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v7, 0x0

    .line 4262
    .local v7, nodename:[C
    const/4 v10, 0x0

    .line 4263
    .local v10, prop:[C
    const-string v14, ""

    .line 4264
    .local v14, szData:Ljava/lang/String;
    const/4 v12, 0x0

    .line 4266
    .local v12, ret:I
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    .line 4268
    const-string v2, "Get"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_ee

    move-object/from16 v9, p3

    .line 4270
    check-cast v9, Lcom/wssyncmldm/eng/parser/XDMParserGet;

    .line 4272
    .local v9, get:Lcom/wssyncmldm/eng/parser/XDMParserGet;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 4274
    const-string v2, "ptr is null"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4275
    iget v2, v9, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 4276
    .local v13, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2, v13}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4277
    const/4 v2, 0x0

    .line 4350
    .end local v9           #get:Lcom/wssyncmldm/eng/parser/XDMParserGet;
    .end local v13           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :goto_39
    return v2

    .line 4280
    .restart local v9       #get:Lcom/wssyncmldm/eng/parser/XDMParserGet;
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ptr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4281
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    new-array v7, v2, [C

    .line 4282
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/16 v3, 0x3f

    invoke-static {v2, v3, v7}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrsplit([CC[C)Ljava/lang/String;

    move-result-object v14

    .line 4283
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 4285
    const-string v2, "ptr is null"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4286
    iget v2, v9, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 4287
    .restart local v13       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2, v13}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4288
    const/4 v2, 0x0

    goto :goto_39

    .line 4291
    .end local v13           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ptr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4292
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    new-array v10, v2, [C

    .line 4293
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/16 v3, 0x3d

    invoke-static {v2, v3, v10}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrsplit([CC[C)Ljava/lang/String;

    move-result-object v14

    .line 4294
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 4296
    const-string v2, "ptr is null"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4297
    iget v2, v9, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 4298
    .restart local v13       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2, v13}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4299
    const/4 v2, 0x0

    goto/16 :goto_39

    .line 4302
    .end local v13           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_c9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ptr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, v1

    move-object/from16 v4, p2

    move-object v5, v14

    move-object v6, v10

    move-object/from16 v8, p3

    .line 4303
    invoke-virtual/range {v2 .. v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdPropGet(Lcom/wssyncmldm/eng/core/XDMWorkspace;Lcom/wssyncmldm/eng/parser/XDMParserItem;Ljava/lang/String;[C[CLjava/lang/Object;)I

    move-result v12

    .end local v9           #get:Lcom/wssyncmldm/eng/parser/XDMParserGet;
    :goto_eb
    move v2, v12

    .line 4350
    goto/16 :goto_39

    .line 4305
    :cond_ee
    const-string v2, "Replace"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1f3

    move-object/from16 v11, p3

    .line 4307
    check-cast v11, Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    .line 4309
    .local v11, replace:Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 4311
    const-string v2, "ptr is null"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4312
    iget v2, v11, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 4313
    .restart local v13       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2, v13}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4314
    const/4 v2, 0x0

    goto/16 :goto_39

    .line 4317
    .end local v13           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_11e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ptr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4318
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    new-array v7, v2, [C

    .line 4319
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/16 v3, 0x3f

    invoke-static {v2, v3, v7}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrsplit([CC[C)Ljava/lang/String;

    move-result-object v14

    .line 4320
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_166

    .line 4322
    const-string v2, "ptr is null"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4323
    iget v2, v11, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 4324
    .restart local v13       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2, v13}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4325
    const/4 v2, 0x0

    goto/16 :goto_39

    .line 4327
    .end local v13           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ptr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4328
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    new-array v10, v2, [C

    .line 4329
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/16 v3, 0x3d

    invoke-static {v2, v3, v10}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrsplit([CC[C)Ljava/lang/String;

    move-result-object v14

    .line 4330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4331
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d0

    .line 4333
    const-string v2, "ptr is null"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4334
    iget v2, v11, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 4335
    .restart local v13       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2, v13}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4336
    const/4 v2, 0x0

    goto/16 :goto_39

    .line 4339
    .end local v13           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_1d0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ptr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, v1

    move-object/from16 v5, p2

    move-object v6, v14

    move-object/from16 v8, p3

    .line 4340
    invoke-virtual/range {v3 .. v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdPropReplace(Lcom/wssyncmldm/eng/core/XDMWorkspace;Lcom/wssyncmldm/eng/parser/XDMParserItem;Ljava/lang/String;[CLjava/lang/Object;)I

    move-result v12

    .line 4341
    goto/16 :goto_eb

    .end local v11           #replace:Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    :cond_1f3
    move-object/from16 v9, p3

    .line 4344
    check-cast v9, Lcom/wssyncmldm/eng/parser/XDMParserGet;

    .line 4346
    .restart local v9       #get:Lcom/wssyncmldm/eng/parser/XDMParserGet;
    iget v2, v9, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v13

    .line 4347
    .restart local v13       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2, v13}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4348
    const/4 v2, 0x0

    goto/16 :goto_39
.end method

.method public xdmAgentCmdPropGet(Lcom/wssyncmldm/eng/core/XDMWorkspace;Lcom/wssyncmldm/eng/parser/XDMParserItem;Ljava/lang/String;[C[CLjava/lang/Object;)I
    .registers 40
    .parameter "ws"
    .parameter "item"
    .parameter "szData"
    .parameter "prop"
    .parameter "pNodeName"
    .parameter "pkg"

    .prologue
    .line 4355
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    move-object/from16 v27, v0

    .local v27, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    move-object/from16 v24, p6

    .line 4356
    check-cast v24, Lcom/wssyncmldm/eng/parser/XDMParserGet;

    .line 4360
    .local v24, get:Lcom/wssyncmldm/eng/parser/XDMParserGet;
    const/16 v16, 0x0

    .line 4361
    .local v16, szOutbuf:Ljava/lang/String;
    const/4 v11, 0x0

    .line 4362
    .local v11, chreBuf:[C
    const/16 v25, 0x0

    .line 4363
    .local v25, nFileId:I
    const/16 v29, 0x0

    .line 4366
    .local v29, ret:Z
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdTNDS()I

    move-result v25

    .line 4368
    invoke-static/range {p5 .. p5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v31

    .line 4369
    .local v31, szNodename:Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v26

    .line 4371
    .local v26, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v26, :cond_43

    .line 4373
    move-object/from16 v0, v24

    iget v6, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v7, "Get"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v10, "404"

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v30

    .line 4374
    .local v30, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4375
    const/4 v5, 0x0

    move-object/from16 v9, v16

    .line 4545
    .end local v16           #szOutbuf:Ljava/lang/String;
    :goto_42
    return v5

    .line 4377
    .end local v30           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    .restart local v16       #szOutbuf:Ljava/lang/String;
    :cond_43
    invoke-static/range {p4 .. p4}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v32

    .line 4378
    .local v32, szPropname:Ljava/lang/String;
    const-string v5, "list"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_131

    .line 4381
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentIsAccessibleNode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    .line 4383
    move-object/from16 v0, v24

    iget v6, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v7, "Get"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v10, "405"

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v30

    .line 4384
    .restart local v30       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4385
    const/4 v5, 0x0

    move-object/from16 v9, v16

    .local v9, szOutbuf:Ljava/lang/Object;
    goto :goto_42

    .line 4388
    .end local v9           #szOutbuf:Ljava/lang/Object;
    .end local v30           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_7d
    const/16 v5, 0x8

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;I)Z

    move-result v5

    if-nez v5, :cond_a9

    .line 4390
    move-object/from16 v0, v24

    iget v6, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v7, "Get"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v10, "425"

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v30

    .line 4391
    .restart local v30       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4392
    const/4 v5, 0x0

    move-object/from16 v9, v16

    .restart local v9       #szOutbuf:Ljava/lang/Object;
    goto :goto_42

    .line 4395
    .end local v9           #szOutbuf:Ljava/lang/Object;
    .end local v30           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_a9
    const-string v5, "Struct"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_de

    .line 4397
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdPropGetStruct(Lcom/wssyncmldm/eng/parser/XDMParserGet;Lcom/wssyncmldm/eng/core/XDMVnode;Z)V

    .line 4418
    :cond_bd
    :goto_bd
    move-object/from16 v0, v24

    iget v6, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v7, "Get"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v10, "200"

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v30

    .line 4419
    .restart local v30       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4420
    const/4 v5, 0x0

    move-object/from16 v9, v16

    .restart local v9       #szOutbuf:Ljava/lang/Object;
    goto/16 :goto_42

    .line 4399
    .end local v9           #szOutbuf:Ljava/lang/Object;
    .end local v30           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_de
    const-string v5, "StructData"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_f3

    .line 4401
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdPropGetStruct(Lcom/wssyncmldm/eng/parser/XDMParserGet;Lcom/wssyncmldm/eng/core/XDMVnode;Z)V

    goto :goto_bd

    .line 4403
    :cond_f3
    const-string v5, "TNDS"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 4407
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move-object/from16 v3, v26

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdPropGetTnds(Lcom/wssyncmldm/eng/parser/XDMParserGet;Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;Ljava/lang/String;)Z

    move-result v29

    .line 4408
    if-nez v29, :cond_bd

    .line 4410
    invoke-static/range {v25 .. v25}, Lcom/wssyncmldm/db/file/XDB;->xdbDeleteFile(I)I

    .line 4411
    sget-object v5, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    move-object/from16 v0, v24

    iget v6, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v7, "Get"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v10, "404"

    invoke-static/range {v5 .. v10}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v30

    .line 4412
    .restart local v30       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    sget-object v5, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget-object v5, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4413
    const/4 v5, 0x0

    move-object/from16 v9, v16

    .restart local v9       #szOutbuf:Ljava/lang/Object;
    goto/16 :goto_42

    .line 4424
    .end local v9           #szOutbuf:Ljava/lang/Object;
    .end local v30           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_131
    const/16 v5, 0x8

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;I)Z

    move-result v5

    if-nez v5, :cond_15e

    .line 4426
    move-object/from16 v0, v24

    iget v6, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v7, "Get"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v10, "425"

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v30

    .line 4427
    .restart local v30       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4428
    const/4 v5, 0x0

    move-object/from16 v9, v16

    .restart local v9       #szOutbuf:Ljava/lang/Object;
    goto/16 :goto_42

    .line 4431
    .end local v9           #szOutbuf:Ljava/lang/Object;
    .end local v30           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_15e
    const-string v5, "ACL"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1ba

    .line 4433
    move-object/from16 v0, v24

    iget v6, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v7, "Get"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v10, "200"

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v30

    .line 4434
    .restart local v30       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4436
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetAclStr(Lcom/wssyncmldm/eng/core/XDMOmList;Lcom/wssyncmldm/eng/parser/XDMParserItem;)Ljava/lang/String;

    move-result-object v9

    .line 4437
    .end local v16           #szOutbuf:Ljava/lang/String;
    .local v9, szOutbuf:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19a

    .line 4438
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 4441
    :cond_19a
    move-object/from16 v0, v24

    iget v6, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "chr"

    const-string v9, "text/plain"

    .end local v9           #szOutbuf:Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v11}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdDetailResults(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[C)Lcom/wssyncmldm/eng/parser/XDMParserResults;

    move-result-object v28

    .line 4442
    .local v28, results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4444
    const/4 v9, 0x0

    .line 4445
    .restart local v9       #szOutbuf:Ljava/lang/String;
    const/4 v5, 0x0

    goto/16 :goto_42

    .line 4447
    .end local v9           #szOutbuf:Ljava/lang/String;
    .end local v28           #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    .end local v30           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    .restart local v16       #szOutbuf:Ljava/lang/String;
    :cond_1ba
    const-string v5, "Format"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_212

    .line 4449
    move-object/from16 v0, v26

    iget v5, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMOmList;->xdmOmGetFormatString(I)Ljava/lang/String;

    move-result-object v9

    .line 4450
    .end local v16           #szOutbuf:Ljava/lang/String;
    .restart local v9       #szOutbuf:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d6

    .line 4451
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 4453
    :cond_1d6
    move-object/from16 v0, v24

    iget v6, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v7, "Get"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    .end local v9           #szOutbuf:Ljava/lang/String;
    const-string v10, "200"

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v30

    .line 4454
    .restart local v30       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4457
    move-object/from16 v0, v24

    iget v6, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "chr"

    const-string v9, "text/plain"

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v11}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdDetailResults(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[C)Lcom/wssyncmldm/eng/parser/XDMParserResults;

    move-result-object v28

    .line 4458
    .restart local v28       #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4460
    const/4 v9, 0x0

    .line 4545
    .end local v28           #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    :goto_20f
    const/4 v5, 0x0

    goto/16 :goto_42

    .line 4462
    .end local v30           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    .restart local v16       #szOutbuf:Ljava/lang/String;
    :cond_212
    const-string v5, "Type"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_297

    .line 4464
    move-object/from16 v0, v24

    iget v6, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v7, "Get"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v10, "200"

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v30

    .line 4465
    .restart local v30       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4467
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v5, :cond_276

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    iget-object v5, v5, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    if-eqz v5, :cond_276

    .line 4469
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    iget-object v5, v5, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 4470
    .end local v16           #szOutbuf:Ljava/lang/String;
    .restart local v9       #szOutbuf:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25a

    .line 4471
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 4473
    :cond_25a
    move-object/from16 v0, v24

    iget v6, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v8, "chr"

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v11}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdDetailResults(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[C)Lcom/wssyncmldm/eng/parser/XDMParserResults;

    move-result-object v28

    .line 4474
    .restart local v28       #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4476
    const/4 v9, 0x0

    goto :goto_20f

    .line 4480
    .end local v9           #szOutbuf:Ljava/lang/String;
    .end local v28           #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    .restart local v16       #szOutbuf:Ljava/lang/String;
    :cond_276
    move-object/from16 v0, v24

    iget v13, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v15, ""

    const/16 v17, 0x0

    move-object/from16 v12, p1

    move-object/from16 v18, v11

    invoke-static/range {v12 .. v18}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdDetailResults(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[C)Lcom/wssyncmldm/eng/parser/XDMParserResults;

    move-result-object v28

    .line 4481
    .restart local v28       #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    move-object/from16 v9, v16

    .local v9, szOutbuf:Ljava/lang/Object;
    goto/16 :goto_20f

    .line 4485
    .end local v9           #szOutbuf:Ljava/lang/Object;
    .end local v28           #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    .end local v30           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_297
    const-string v5, "Size"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_32d

    .line 4487
    move-object/from16 v0, v26

    iget v5, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    if-ltz v5, :cond_308

    move-object/from16 v0, v26

    iget v5, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    if-lez v5, :cond_308

    .line 4489
    move-object/from16 v0, v24

    iget v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    move/from16 v18, v0

    const-string v19, "Get"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "200"

    move-object/from16 v17, p1

    invoke-static/range {v17 .. v22}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v30

    .line 4490
    .restart local v30       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4492
    move-object/from16 v0, v26

    iget v5, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 4493
    .end local v16           #szOutbuf:Ljava/lang/String;
    .local v9, szOutbuf:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2e2

    .line 4494
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 4497
    :cond_2e2
    move-object/from16 v0, v24

    iget v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "chr"

    const-string v21, "text/plain"

    const/16 v22, 0x0

    move-object/from16 v17, p1

    move-object/from16 v23, v11

    invoke-static/range {v17 .. v23}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdDetailResults(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[C)Lcom/wssyncmldm/eng/parser/XDMParserResults;

    move-result-object v28

    .line 4498
    .restart local v28       #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4500
    const/4 v9, 0x0

    goto/16 :goto_20f

    .line 4504
    .end local v9           #szOutbuf:Ljava/lang/String;
    .end local v28           #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    .end local v30           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    .restart local v16       #szOutbuf:Ljava/lang/String;
    :cond_308
    move-object/from16 v0, v24

    iget v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    move/from16 v18, v0

    const-string v19, "Get"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "406"

    move-object/from16 v17, p1

    invoke-static/range {v17 .. v22}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v30

    .line 4505
    .restart local v30       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    move-object/from16 v9, v16

    .local v9, szOutbuf:Ljava/lang/Object;
    goto/16 :goto_20f

    .line 4508
    .end local v9           #szOutbuf:Ljava/lang/Object;
    .end local v30           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_32d
    const-string v5, "Name"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_38c

    .line 4510
    move-object/from16 v0, v24

    iget v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    move/from16 v18, v0

    const-string v19, "Get"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "200"

    move-object/from16 v17, p1

    invoke-static/range {v17 .. v22}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v30

    .line 4511
    .restart local v30       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4513
    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    .line 4514
    .end local v16           #szOutbuf:Ljava/lang/String;
    .local v9, szOutbuf:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_366

    .line 4515
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 4518
    :cond_366
    move-object/from16 v0, v24

    iget v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "chr"

    const-string v21, "text/plain"

    const/16 v22, 0x0

    move-object/from16 v17, p1

    move-object/from16 v23, v11

    invoke-static/range {v17 .. v23}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdDetailResults(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[C)Lcom/wssyncmldm/eng/parser/XDMParserResults;

    move-result-object v28

    .line 4519
    .restart local v28       #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4521
    const/4 v9, 0x0

    goto/16 :goto_20f

    .line 4523
    .end local v9           #szOutbuf:Ljava/lang/String;
    .end local v28           #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    .end local v30           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    .restart local v16       #szOutbuf:Ljava/lang/String;
    :cond_38c
    const-string v5, "Title"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3eb

    .line 4525
    move-object/from16 v0, v24

    iget v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    move/from16 v18, v0

    const-string v19, "Get"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "200"

    move-object/from16 v17, p1

    invoke-static/range {v17 .. v22}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v30

    .line 4526
    .restart local v30       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4528
    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->title:Ljava/lang/String;

    .line 4529
    .end local v16           #szOutbuf:Ljava/lang/String;
    .restart local v9       #szOutbuf:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3c5

    .line 4530
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 4533
    :cond_3c5
    move-object/from16 v0, v24

    iget v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "chr"

    const-string v21, "text/plain"

    const/16 v22, 0x0

    move-object/from16 v17, p1

    move-object/from16 v23, v11

    invoke-static/range {v17 .. v23}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdDetailResults(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[C)Lcom/wssyncmldm/eng/parser/XDMParserResults;

    move-result-object v28

    .line 4534
    .restart local v28       #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4536
    const/4 v9, 0x0

    goto/16 :goto_20f

    .line 4540
    .end local v9           #szOutbuf:Ljava/lang/String;
    .end local v28           #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    .end local v30           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    .restart local v16       #szOutbuf:Ljava/lang/String;
    :cond_3eb
    move-object/from16 v0, v24

    iget v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    move/from16 v18, v0

    const-string v19, "Get"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "405"

    move-object/from16 v17, p1

    invoke-static/range {v17 .. v22}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v30

    .line 4541
    .restart local v30       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4542
    const/4 v5, 0x0

    move-object/from16 v9, v16

    .local v9, szOutbuf:Ljava/lang/Object;
    goto/16 :goto_42
.end method

.method public xdmAgentCmdPropGetStruct(Lcom/wssyncmldm/eng/parser/XDMParserGet;Lcom/wssyncmldm/eng/core/XDMVnode;Z)V
    .registers 15
    .parameter "get"
    .parameter "node"
    .parameter "makedata"

    .prologue
    .line 4556
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 4557
    .local v0, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v9, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 4559
    .local v9, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const-string v2, ""

    .line 4560
    .local v2, szName:Ljava/lang/String;
    const-string v3, ""

    .line 4561
    .local v3, szFormat:Ljava/lang/String;
    const-string v4, ""

    .line 4562
    .local v4, szType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 4563
    .local v6, data:[C
    const/4 v8, 0x0

    .line 4565
    .local v8, cur:Lcom/wssyncmldm/eng/core/XDMVnode;
    const/4 v5, 0x0

    .line 4567
    .local v5, datasize:I
    if-nez p2, :cond_10

    .line 4621
    :cond_f
    return-void

    .line 4572
    :cond_10
    iget-object v8, p2, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 4574
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    invoke-virtual {p0, v1, p2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetPathFromNode(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;)Ljava/lang/String;

    move-result-object v2

    .line 4576
    if-eqz p3, :cond_5f

    .line 4578
    iget v1, p2, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    if-ltz v1, :cond_58

    iget v1, p2, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    if-lez v1, :cond_58

    .line 4580
    iget v1, p2, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    if-lez v1, :cond_55

    .line 4582
    iget v1, p2, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMOmList;->xdmOmGetFormatString(I)Ljava/lang/String;

    move-result-object v3

    .line 4589
    :goto_2c
    iget v7, p2, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 4590
    .local v7, bufsize:I
    new-array v6, v7, [C

    .line 4592
    const/4 v1, 0x0

    invoke-static {v9, v2, v1, v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 4593
    iget v5, p2, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 4606
    .end local v7           #bufsize:I
    :goto_36
    iget-object v1, p2, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentIsAccessibleNode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 4608
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdDetailResults(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[C)Lcom/wssyncmldm/eng/parser/XDMParserResults;

    move-result-object v10

    .line 4609
    .local v10, results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v10}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4611
    .end local v10           #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    :cond_49
    const/4 v2, 0x0

    .line 4612
    const/4 v3, 0x0

    .line 4613
    const/4 v4, 0x0

    .line 4614
    const/4 v6, 0x0

    .line 4616
    :goto_4d
    if-eqz v8, :cond_f

    .line 4618
    invoke-virtual {p0, p1, v8, p3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdPropGetStruct(Lcom/wssyncmldm/eng/parser/XDMParserGet;Lcom/wssyncmldm/eng/core/XDMVnode;Z)V

    .line 4619
    iget-object v8, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_4d

    .line 4586
    :cond_55
    const-string v3, ""

    goto :goto_2c

    .line 4598
    :cond_58
    iget v1, p2, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMOmList;->xdmOmGetFormatString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_36

    .line 4603
    :cond_5f
    iget v1, p2, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMOmList;->xdmOmGetFormatString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_36
.end method

.method public xdmAgentCmdPropGetTnds(Lcom/wssyncmldm/eng/parser/XDMParserGet;Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;Ljava/lang/String;)Z
    .registers 28
    .parameter "get"
    .parameter "om"
    .parameter "node"
    .parameter "szPropertylist"

    .prologue
    .line 4988
    const-string v19, ""

    .line 4989
    .local v19, szTemp:Ljava/lang/String;
    const-string v18, ""

    .line 4990
    .local v18, szTag:Ljava/lang/String;
    const-string v5, ""

    .line 4991
    .local v5, szName:Ljava/lang/String;
    const-string v6, ""

    .line 4992
    .local v6, szFormat:Ljava/lang/String;
    const-string v17, ""

    .line 4993
    .local v17, szData:Ljava/lang/String;
    const/4 v14, 0x0

    .line 4994
    .local v14, nFlag:I
    const/4 v8, 0x0

    .line 4995
    .local v8, nSize:I
    const-string v21, ""

    .line 4996
    .local v21, szToken:Ljava/lang/String;
    const/4 v15, 0x0

    .line 4997
    .local v15, ptr:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 4998
    .local v16, results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    sget-object v3, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 4999
    .local v3, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/16 v22, 0x0

    .line 5002
    .local v22, tempPath:[C
    const/4 v13, 0x0

    .line 5004
    .local v13, nFileId:I
    const-string v4, ""

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5005
    if-nez p3, :cond_1f

    .line 5007
    const/4 v4, 0x0

    .line 5126
    :goto_1e
    return v4

    .line 5010
    :cond_1f
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    if-nez v4, :cond_27

    .line 5012
    const/4 v4, 0x0

    goto :goto_1e

    .line 5015
    :cond_27
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdTNDS()I

    move-result v13

    .line 5017
    const-string v4, "\\+"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 5019
    if-nez v15, :cond_37

    .line 5021
    const/4 v4, 0x0

    goto :goto_1e

    .line 5024
    :cond_37
    const/4 v4, 0x0

    aget-object v21, v15, v4

    .line 5025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "token : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5026
    array-length v4, v15

    const/4 v7, 0x1

    if-le v4, v7, :cond_93

    .line 5028
    const/4 v11, 0x1

    .line 5030
    .local v11, i:I
    :goto_57
    array-length v4, v15

    if-ge v11, v4, :cond_c6

    .line 5032
    const-string v4, "ACL"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6c

    .line 5034
    or-int/lit8 v14, v14, 0x1

    .line 5049
    :cond_66
    :goto_66
    add-int/lit8 v12, v11, 0x1

    .end local v11           #i:I
    .local v12, i:I
    aget-object v21, v15, v11

    move v11, v12

    .end local v12           #i:I
    .restart local v11       #i:I
    goto :goto_57

    .line 5036
    :cond_6c
    const-string v4, "Format"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_79

    .line 5038
    or-int/lit8 v14, v14, 0x2

    goto :goto_66

    .line 5040
    :cond_79
    const-string v4, "Type"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_86

    .line 5042
    or-int/lit8 v14, v14, 0x4

    goto :goto_66

    .line 5044
    :cond_86
    const-string v4, "Value"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_66

    .line 5046
    or-int/lit8 v14, v14, 0x8

    goto :goto_66

    .line 5054
    .end local v11           #i:I
    :cond_93
    const/16 v14, 0xd

    .line 5055
    const-string v4, "-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 5056
    if-eqz v15, :cond_c6

    .line 5058
    const/4 v4, 0x0

    aget-object v21, v15, v4

    .line 5059
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "token : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5061
    const-string v4, "ACL"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1c1

    .line 5063
    and-int/lit16 v14, v14, 0xfe

    .line 5080
    :cond_c6
    :goto_c6
    invoke-static {v13}, Lcom/wssyncmldm/db/file/XDB;->xdbDeleteFile(I)I

    .line 5082
    sget-object v4, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v7, 0x22

    aget-object v18, v4, v7

    .line 5083
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 5085
    sget-object v4, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v18, v4, v7

    .line 5086
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 5088
    sget-object v4, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v18, v4, v7

    .line 5089
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 5090
    const-string v4, "1.2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 5092
    sget-object v4, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v18, v4, v7

    .line 5093
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 5094
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v13, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    .line 5096
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetPathFromNode(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;)Ljava/lang/String;

    move-result-object v20

    .line 5097
    .local v20, szTempPath:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [C

    move-object/from16 v22, v0

    .line 5098
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmMakeParentPath(Ljava/lang/String;[C)V

    .line 5099
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tempPath : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v22 .. v22}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5100
    invoke-static/range {v22 .. v22}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v14, v4}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeTndsSubTree(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;ILjava/lang/String;)V

    .line 5102
    sget-object v4, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v18, v4, v7

    .line 5103
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v13, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    .line 5105
    sget-object v4, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v7, 0x23

    aget-object v18, v4, v7

    .line 5106
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v13, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    .line 5108
    invoke-static {v13}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileSize(I)I

    move-result v8

    .line 5109
    const/4 v4, 0x0

    invoke-static {v13, v4, v8}, Lcom/wssyncmldm/db/file/XDB;->xdbReadFile(III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v10, v4

    check-cast v10, [B

    .line 5110
    .local v10, bTemp:[B
    new-instance v17, Ljava/lang/String;

    .end local v17           #szData:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 5111
    .restart local v17       #szData:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetPathFromNode(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;)Ljava/lang/String;

    move-result-object v5

    .line 5112
    const/16 v4, 0x8

    invoke-static {v4}, Lcom/wssyncmldm/eng/core/XDMOmList;->xdmOmGetFormatString(I)Ljava/lang/String;

    move-result-object v6

    .line 5114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 5115
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1eb

    .line 5117
    const-string v4, "_____ TNDSResults File Read Error!"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 5118
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v7, "application/vnd.syncml.dmtnds+xml"

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdDetailResults(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[C)Lcom/wssyncmldm/eng/parser/XDMParserResults;

    move-result-object v16

    .line 5124
    :goto_1b7
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 5126
    const/4 v4, 0x1

    goto/16 :goto_1e

    .line 5065
    .end local v10           #bTemp:[B
    .end local v20           #szTempPath:Ljava/lang/String;
    :cond_1c1
    const-string v4, "Format"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1cf

    .line 5067
    and-int/lit16 v14, v14, 0xfd

    goto/16 :goto_c6

    .line 5069
    :cond_1cf
    const-string v4, "Type"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1dd

    .line 5071
    and-int/lit16 v14, v14, 0xfb

    goto/16 :goto_c6

    .line 5073
    :cond_1dd
    const-string v4, "Value"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_c6

    .line 5075
    and-int/lit16 v14, v14, 0xf7

    goto/16 :goto_c6

    .line 5122
    .restart local v10       #bTemp:[B
    .restart local v20       #szTempPath:Ljava/lang/String;
    :cond_1eb
    move-object/from16 v0, p1

    iget v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    const-string v7, "application/vnd.syncml.dmtnds+xml"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdDetailResults(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[C)Lcom/wssyncmldm/eng/parser/XDMParserResults;

    move-result-object v16

    goto :goto_1b7
.end method

.method public xdmAgentCmdPropReplace(Lcom/wssyncmldm/eng/core/XDMWorkspace;Lcom/wssyncmldm/eng/parser/XDMParserItem;Ljava/lang/String;[CLjava/lang/Object;)I
    .registers 20
    .parameter "ws"
    .parameter "item"
    .parameter "szData"
    .parameter "pNodeName"
    .parameter "pkg"

    .prologue
    .line 4669
    iget-object v9, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .local v9, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    move-object/from16 v10, p5

    .line 4670
    check-cast v10, Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    .line 4673
    .local v10, replace:Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    const/4 v13, 0x0

    .line 4674
    .local v13, szOutbuf:Ljava/lang/String;
    const/4 v7, 0x0

    .line 4676
    .local v7, acllist:Lcom/wssyncmldm/eng/core/XDMOmList;
    invoke-static/range {p4 .. p4}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v12

    .line 4677
    .local v12, szNodeName:Ljava/lang/String;
    invoke-static {v9, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 4678
    .local v8, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v8, :cond_2e

    .line 4680
    const-string v1, "!node"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4682
    iget v2, v10, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v3, "Replace"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "404"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 4683
    .local v11, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4684
    const/4 v1, 0x0

    .line 4773
    :goto_2d
    return v1

    .line 4687
    .end local v11           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_2e
    invoke-virtual {p0, v9, v12}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentIsPermanentNode(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 4689
    iget v2, v10, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v3, "Replace"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 4690
    .restart local v11       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4691
    const/4 v1, 0x0

    goto :goto_2d

    .line 4697
    .end local v11           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_4b
    const/16 v1, 0x10

    invoke-static {v9, v8, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;I)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 4699
    const-string v1, "!XDM_OMACL_REPLACE"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4701
    iget v2, v10, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v3, "Replace"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "425"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 4702
    .restart local v11       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4703
    const/4 v1, 0x0

    goto :goto_2d

    .line 4706
    .end local v11           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_6f
    const-string v1, "ACL"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_fb

    .line 4708
    const-string v1, "ACL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4711
    iget v1, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_bf

    .line 4713
    iget-object v1, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->ptParentNode:Lcom/wssyncmldm/eng/core/XDMVnode;

    const/16 v2, 0x10

    invoke-static {v9, v1, v2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;I)Z

    move-result v1

    if-nez v1, :cond_bf

    .line 4715
    iget v2, v10, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v3, "Replace"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "425"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 4716
    .restart local v11       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATUS_COMMAND_NOT_ALLOWED="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4718
    const/4 v1, 0x0

    goto/16 :goto_2d

    .line 4721
    .end local v11           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_bf
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStGetString(Lcom/wssyncmldm/eng/parser/XDMParserPcdata;)Ljava/lang/String;

    move-result-object v13

    .line 4722
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 4724
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    .line 4726
    :cond_d7
    invoke-virtual {p0, v7, v13}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeAcl(Lcom/wssyncmldm/eng/core/XDMOmList;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMOmList;

    move-result-object v7

    .line 4727
    const/4 v13, 0x0

    .line 4728
    iget-object v1, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMOmList;->xdmOmDeleteAclList(Lcom/wssyncmldm/eng/core/XDMOmList;)V

    .line 4729
    iput-object v7, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 4731
    iget v2, v10, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v3, "Replace"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "200"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 4732
    .restart local v11       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4773
    :cond_f8
    :goto_f8
    const/4 v1, 0x0

    goto/16 :goto_2d

    .line 4734
    .end local v11           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_fb
    const-string v1, "Format"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11b

    .line 4736
    iget v2, v10, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v3, "Replace"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 4737
    .restart local v11       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_f8

    .line 4739
    .end local v11           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_11b
    const-string v1, "Type"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_13b

    .line 4741
    iget v2, v10, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v3, "Replace"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 4742
    .restart local v11       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_f8

    .line 4744
    .end local v11           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_13b
    const-string v1, "Size"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_15b

    .line 4746
    iget v2, v10, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v3, "Replace"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 4747
    .restart local v11       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto :goto_f8

    .line 4749
    .end local v11           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_15b
    const-string v1, "Name"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_17c

    .line 4751
    iget v2, v10, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v3, "Replace"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 4752
    .restart local v11       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto/16 :goto_f8

    .line 4754
    .end local v11           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_17c
    const-string v1, "Title"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1cc

    .line 4756
    iget v2, v10, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v3, "Replace"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "200"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 4757
    .restart local v11       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4758
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->title:Ljava/lang/String;

    .line 4759
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStGetString(Lcom/wssyncmldm/eng/parser/XDMParserPcdata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->title:Ljava/lang/String;

    .line 4760
    iget-object v1, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 4762
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v1, :cond_f8

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    if-eqz v1, :cond_f8

    .line 4764
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->title:Ljava/lang/String;

    goto/16 :goto_f8

    .line 4770
    .end local v11           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_1cc
    iget v2, v10, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v3, "Replace"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v6, "405"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v11

    .line 4771
    .restart local v11       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v11}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto/16 :goto_f8
.end method

.method public xdmAgentCmdReplace(Lcom/wssyncmldm/eng/parser/XDMParserReplace;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I
    .registers 25
    .parameter "replace"
    .parameter "isAtomic"
    .parameter "atomic_status"

    .prologue
    .line 7951
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 7952
    .local v2, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v15, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 7955
    .local v15, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const/16 v20, 0x0

    .line 7956
    .local v20, szType:Ljava/lang/String;
    const/16 v19, 0x0

    .line 7959
    .local v19, szBuf:Ljava/lang/String;
    const/16 v10, 0xc

    .line 7962
    .local v10, format:I
    const/4 v8, 0x0

    .line 7963
    .local v8, bufsize:I
    const/16 v17, 0x0

    .line 7964
    .local v17, res:I
    const/4 v13, 0x0

    .line 7966
    .local v13, nFileId:I
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdUicAlert()Z

    move-result v16

    .line 7969
    .local v16, process:Z
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdTNDS()I

    move-result v13

    .line 7971
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 7972
    .local v9, cur:Lcom/wssyncmldm/eng/core/XDMList;
    :goto_1a
    if-eqz v9, :cond_594

    .line 7974
    iget-object v11, v9, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    check-cast v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 7976
    .local v11, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-nez v3, :cond_58

    .line 7978
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v3, :cond_30

    .line 7979
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 7999
    :cond_30
    :goto_30
    const/16 v18, 0x0

    .line 8001
    .local v18, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_ae

    .line 8003
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9f

    .line 8005
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    iget-object v7, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8012
    :goto_4e
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8013
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8014
    goto :goto_1a

    .line 7983
    .end local v18           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_58
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v3, :cond_30

    .line 7985
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 7987
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 7988
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    iput-object v4, v3, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    .line 7991
    :cond_7e
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 7993
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 7994
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v4, v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    iput-object v4, v3, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    goto :goto_30

    .line 8009
    .restart local v18       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_9f
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    goto :goto_4e

    .line 8016
    :cond_ae
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v3, :cond_bd

    .line 8018
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 8022
    :cond_bd
    if-eqz p2, :cond_18a

    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    sget-object v4, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    if-eq v3, v4, :cond_18a

    .line 8024
    const/16 v18, 0x0

    .line 8025
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tmpItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    if-eqz v3, :cond_134

    .line 8028
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tmpItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 8030
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_fe

    .line 8032
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "404"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8038
    :goto_ea
    sget-object v3, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_STEP_NOT_EXEC:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    .line 8039
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tmpItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 8079
    :goto_f1
    if-eqz v18, :cond_fa

    .line 8081
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8083
    :cond_fa
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8084
    goto/16 :goto_1a

    .line 8036
    :cond_fe
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "404"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    goto :goto_ea

    .line 8043
    :cond_10d
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_125

    .line 8045
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "216"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    goto :goto_f1

    .line 8049
    :cond_125
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "216"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    goto :goto_f1

    .line 8055
    :cond_134
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    sget-object v4, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_STEP_NOT_EXEC:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    if-ne v3, v4, :cond_161

    .line 8057
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_152

    .line 8059
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "215"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    goto :goto_f1

    .line 8063
    :cond_152
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "215"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    goto :goto_f1

    .line 8068
    :cond_161
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17a

    .line 8070
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "216"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    goto/16 :goto_f1

    .line 8074
    :cond_17a
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "216"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    goto/16 :goto_f1

    .line 8087
    :cond_18a
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a4

    .line 8089
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "404"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8090
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8091
    goto/16 :goto_1a

    .line 8095
    :cond_1a4
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1bc

    .line 8097
    const-string v3, "Replace"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v11, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdProp(Ljava/lang/String;Lcom/wssyncmldm/eng/parser/XDMParserItem;Ljava/lang/Object;)I

    move-result v17

    .line 8098
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8099
    goto/16 :goto_1a

    .line 8102
    :cond_1bc
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v15, v3}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v14

    .line 8103
    .local v14, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v16, :cond_1ea

    .line 8105
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "215"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8109
    if-eqz p2, :cond_1dd

    if-eqz p3, :cond_1dd

    .line 8111
    const-string v3, "507"

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    .line 8115
    :cond_1dd
    if-eqz v18, :cond_1e6

    .line 8117
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8119
    :cond_1e6
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8120
    goto/16 :goto_1a

    .line 8122
    :cond_1ea
    if-nez v14, :cond_2f6

    .line 8124
    const-string v3, "node == null(not exist)"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 8125
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v4, "/DownloadAndUpdate/PkgURL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_219

    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v4, "/Download/PkgURL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_219

    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v4, "/Update/PkgData"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_219

    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v4, "/SvcState"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d0

    .line 8129
    :cond_219
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v15, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentReMakeFwUpdateNode(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)I

    .line 8187
    :cond_21e
    const-string v3, "else"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 8188
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 8190
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v3, :cond_386

    .line 8192
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23c

    .line 8194
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v0, v3, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 8196
    :cond_23c
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24e

    .line 8198
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v3}, Lcom/wssyncmldm/eng/core/XDMOmList;->xdmOmGetFormatFromString(Ljava/lang/String;)I

    move-result v10

    .line 8201
    :cond_24e
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    if-lez v3, :cond_35e

    .line 8203
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    .line 8204
    const/4 v3, 0x0

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 8218
    :cond_25d
    :goto_25d
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v3, :cond_379

    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    if-eqz v3, :cond_379

    .line 8220
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStGetString(Lcom/wssyncmldm/eng/parser/XDMParserPcdata;)Ljava/lang/String;

    move-result-object v19

    .line 8221
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_373

    .line 8223
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget v8, v3, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    .line 8224
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v19

    .line 8258
    :cond_27f
    :goto_27f
    iget-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nTNDSFlag:Z

    if-eqz v3, :cond_3e9

    .line 8260
    const-string v3, "REPLACE ws.nTNDSFlag = true"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 8262
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_290

    .line 8264
    const-string v19, ""

    .line 8266
    :cond_290
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v13, v3}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    .line 8267
    iget v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-nez v3, :cond_3cf

    .line 8269
    const/4 v3, 0x0

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 8270
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 8271
    const/4 v3, 0x0

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    .line 8272
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nTNDSFlag:Z

    .line 8273
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v15, v3, v4}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmDeleteImplicit(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Z)I

    move-result v17

    .line 8274
    if-ltz v17, :cond_2b4

    .line 8276
    invoke-static {v13, v15}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFCreateTNDSNodeFromFile(ILcom/wssyncmldm/eng/core/XDMOmTree;)I

    move-result v17

    .line 8279
    :cond_2b4
    if-lez v17, :cond_3b5

    .line 8281
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "200"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8282
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8283
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8284
    goto/16 :goto_1a

    .line 8133
    :cond_2d0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "404"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8135
    if-eqz p2, :cond_2e9

    if-eqz p3, :cond_2e9

    .line 8136
    const-string v3, "507"

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    .line 8139
    :cond_2e9
    if-eqz v18, :cond_2f2

    .line 8140
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8142
    :cond_2f2
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8143
    goto/16 :goto_1a

    .line 8146
    :cond_2f6
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentIsPermanentNode(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32b

    .line 8148
    const-string v3, "Fail"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 8149
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "405"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8153
    if-eqz p2, :cond_31e

    if-eqz p3, :cond_31e

    .line 8155
    const-string v3, "507"

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    .line 8159
    :cond_31e
    if-eqz v18, :cond_327

    .line 8161
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8163
    :cond_327
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8164
    goto/16 :goto_1a

    .line 8166
    :cond_32b
    const/16 v3, 0x10

    invoke-static {v15, v14, v3}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;I)Z

    move-result v3

    if-nez v3, :cond_21e

    .line 8168
    const-string v3, "xdmOmCheckAcl Fail"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 8169
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "425"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8173
    if-eqz p2, :cond_351

    if-eqz p3, :cond_351

    .line 8175
    const-string v3, "507"

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    .line 8179
    :cond_351
    if-eqz v18, :cond_35a

    .line 8181
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8183
    :cond_35a
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8184
    goto/16 :goto_1a

    .line 8206
    :cond_35e
    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    if-nez v3, :cond_25d

    .line 8208
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v3, :cond_36e

    .line 8210
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    goto/16 :goto_25d

    .line 8214
    :cond_36e
    const/4 v3, 0x0

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    goto/16 :goto_25d

    .line 8228
    :cond_373
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v8

    goto/16 :goto_27f

    .line 8233
    :cond_379
    const/4 v8, 0x0

    .line 8234
    const/16 v19, 0x0

    .line 8235
    const/4 v3, 0x0

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    .line 8236
    const-string v3, "REPLACE ( no item->data)"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_27f

    .line 8239
    :cond_386
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    if-eqz v3, :cond_27f

    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    if-eqz v3, :cond_27f

    .line 8241
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStGetString(Lcom/wssyncmldm/eng/parser/XDMParserPcdata;)Ljava/lang/String;

    move-result-object v19

    .line 8242
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b0

    .line 8244
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget v8, v3, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    .line 8245
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    iget-object v3, v3, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v19

    .line 8251
    :goto_3a8
    iget-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    if-nez v3, :cond_27f

    .line 8253
    iput v8, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    goto/16 :goto_27f

    .line 8249
    :cond_3b0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_3a8

    .line 8286
    :cond_3b5
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "500"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8287
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8288
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8289
    goto/16 :goto_1a

    .line 8292
    :cond_3cf
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "213"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8293
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8294
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8295
    goto/16 :goto_1a

    .line 8298
    :cond_3e9
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4ab

    .line 8300
    const-string v3, "application/vnd.syncml.dmtnds+xml"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_482

    .line 8302
    iget v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-lez v3, :cond_438

    .line 8304
    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    add-int/2addr v3, v8

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 8305
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 8307
    iget-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nTNDSFlag:Z

    if-nez v3, :cond_40f

    .line 8309
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nTNDSFlag:Z

    .line 8310
    invoke-static {v13}, Lcom/wssyncmldm/db/file/XDB;->xdbDeleteFile(I)I

    .line 8313
    :cond_40f
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_417

    .line 8315
    const-string v19, ""

    .line 8317
    :cond_417
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v13, v3}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    .line 8319
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "213"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8320
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8321
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8322
    goto/16 :goto_1a

    .line 8324
    :cond_438
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v15, v3, v4}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmDeleteImplicit(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Z)I

    move-result v17

    .line 8325
    if-ltz v17, :cond_463

    .line 8327
    move-object/from16 v0, v19

    invoke-static {v0, v8, v15}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFCreateTNDSNode(Ljava/lang/String;ILcom/wssyncmldm/eng/core/XDMOmTree;)I

    move-result v17

    .line 8329
    if-lez v17, :cond_463

    .line 8331
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "200"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8332
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8333
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8334
    goto/16 :goto_1a

    .line 8338
    :cond_463
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "500"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8339
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8340
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8341
    const-string v3, "Delete Fail.\n"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 8342
    const/4 v3, -0x1

    .line 8461
    .end local v11           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    .end local v14           #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    .end local v18           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :goto_481
    return v3

    .line 8344
    .restart local v11       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    .restart local v14       #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    .restart local v18       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_482
    const-string v3, "application/vnd.syncml.dmtnds+wbxml"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4ab

    .line 8346
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "406"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8348
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8349
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 8350
    const-string v3, "Not Support TNDS with WBXML Type.\n"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 8351
    const/4 v3, -0x1

    goto :goto_481

    .line 8357
    :cond_4ab
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentVerifyUpdateMechanism(Lcom/wssyncmldm/eng/core/XDMWorkspace;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 8359
    if-lez v17, :cond_512

    .line 8363
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentVerifyPollingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 8366
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 8367
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 8368
    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 8369
    iget-object v4, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    iget v5, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    iget v6, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    move-object v3, v15

    move-object/from16 v7, v19

    invoke-static/range {v3 .. v8}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    move-result v17

    .line 8379
    :goto_4e2
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51a

    .line 8381
    const/16 v19, 0x0

    .line 8389
    :cond_4ea
    :goto_4ea
    if-gez v17, :cond_523

    .line 8392
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "500"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    .line 8396
    if-eqz p2, :cond_505

    if-eqz p3, :cond_505

    .line 8398
    const-string v3, "507"

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    .line 8454
    :cond_505
    :goto_505
    if-eqz v18, :cond_50e

    .line 8456
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 8458
    :cond_50e
    iget-object v9, v9, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    goto/16 :goto_1a

    .line 8373
    :cond_512
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 8374
    const/16 v17, -0x1

    goto :goto_4e2

    .line 8383
    :cond_51a
    if-eqz v14, :cond_4ea

    .line 8385
    const/4 v3, -0x1

    iput v3, v14, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    .line 8386
    const/4 v3, 0x0

    iput v3, v14, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    goto :goto_4ea

    .line 8405
    :cond_523
    iget-object v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-static {v15, v3}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v14

    .line 8406
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_546

    .line 8408
    iget-object v3, v14, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v3, :cond_538

    .line 8410
    iget-object v3, v14, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-static {v3}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsDeleteMimeList(Lcom/wssyncmldm/eng/core/XDMOmList;)V

    .line 8412
    :cond_538
    new-instance v12, Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-direct {v12}, Lcom/wssyncmldm/eng/core/XDMOmList;-><init>()V

    .line 8413
    .local v12, list:Lcom/wssyncmldm/eng/core/XDMOmList;
    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .line 8414
    const/4 v3, 0x0

    iput-object v3, v12, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 8415
    iput-object v12, v14, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 8418
    .end local v12           #list:Lcom/wssyncmldm/eng/core/XDMOmList;
    :cond_546
    if-lez v10, :cond_54a

    .line 8420
    iput v10, v14, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    .line 8425
    :cond_54a
    iget v3, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    if-nez v3, :cond_571

    .line 8427
    const/4 v3, 0x0

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 8428
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 8429
    const/4 v3, 0x0

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataTotalSize:I

    .line 8431
    iget-char v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nUpdateMechanism:C

    const/4 v4, 0x1

    if-ne v3, v4, :cond_561

    .line 8433
    const/16 v3, 0x28

    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 8437
    :cond_561
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "200"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    goto :goto_505

    .line 8441
    :cond_571
    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    add-int/2addr v3, v8

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->prevBufPos:I

    .line 8442
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 8444
    iget-char v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nUpdateMechanism:C

    const/4 v4, 0x1

    if-ne v3, v4, :cond_583

    .line 8446
    const/16 v3, 0x1e

    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 8450
    :cond_583
    move-object/from16 v0, p1

    iget v3, v0, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->cmdid:I

    const-string v4, "Replace"

    const/4 v5, 0x0

    iget-object v6, v11, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    const-string v7, "213"

    invoke-static/range {v2 .. v7}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v18

    goto/16 :goto_505

    .line 8461
    .end local v11           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    .end local v14           #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    .end local v18           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_594
    const/4 v3, 0x0

    goto/16 :goto_481
.end method

.method public xdmAgentCmdSequence(Lcom/wssyncmldm/eng/parser/XDMParserSequence;)I
    .registers 12
    .parameter "sequence"

    .prologue
    const/4 v3, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x5

    .line 9089
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 9091
    .local v0, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v6, 0x0

    .line 9093
    .local v6, res:I
    iget-boolean v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->IsSequenceProcessing:Z

    if-nez v1, :cond_1a

    .line 9095
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->cmdid:I

    const-string v2, "Sequence"

    const-string v5, "200"

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v7

    .line 9096
    .local v7, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v7}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 9098
    .end local v7           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_1a
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v1, :cond_28

    .line 9100
    iget-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdSequenceBlock(Lcom/wssyncmldm/eng/core/XDMLinkedList;)I

    move-result v6

    .line 9107
    if-ne v6, v8, :cond_2a

    move v1, v8

    .line 9118
    :goto_27
    return v1

    :cond_28
    move v1, v9

    .line 9104
    goto :goto_27

    .line 9112
    :cond_2a
    if-gez v6, :cond_2e

    move v1, v9

    .line 9114
    goto :goto_27

    :cond_2e
    move v1, v6

    .line 9118
    goto :goto_27
.end method

.method public xdmAgentCmdSequenceBlock(Lcom/wssyncmldm/eng/core/XDMLinkedList;)I
    .registers 11
    .parameter "list"

    .prologue
    const/4 v8, 0x0

    const/4 v5, -0x5

    .line 6008
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 6010
    .local v4, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v3, 0x0

    .line 6011
    .local v3, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    const/4 v2, 0x0

    .line 6012
    .local v2, res:I
    const/4 v1, 0x0

    .line 6014
    .local v1, isAtomic:Z
    invoke-static {p1, v8}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 6015
    invoke-static {p1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .line 6017
    .local v0, cmditem:Lcom/wssyncmldm/agent/XDMAgent;
    if-eqz v0, :cond_15

    .line 6018
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->IsSequenceProcessing:Z

    .line 6019
    :cond_15
    if-eqz v0, :cond_c3

    .line 6024
    const-string v6, "Get"

    iget-object v7, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5d

    const-string v6, "Exec"

    iget-object v7, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5d

    const-string v6, "Alert"

    iget-object v7, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5d

    const-string v6, "Add"

    iget-object v7, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5d

    const-string v6, "Replace"

    iget-object v7, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5d

    const-string v6, "Copy"

    iget-object v7, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5d

    const-string v6, "Delete"

    iget-object v7, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_63

    .line 6032
    :cond_5d
    iget v6, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->numAction:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->numAction:I

    .line 6035
    :cond_63
    const-string v6, "Atomic_Start"

    iget-object v7, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_91

    .line 6037
    const/4 v1, 0x1

    .line 6038
    const-string v6, "Atomic_Start"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6040
    iget-boolean v6, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    if-eqz v6, :cond_8c

    .line 6042
    iget-object v6, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    invoke-virtual {p0, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdAtomic(Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)I

    move-result v2

    .line 6048
    :goto_7d
    const/4 v1, 0x0

    .line 6067
    :goto_7e
    invoke-static {p1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmditem:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .line 6068
    .restart local v0       #cmditem:Lcom/wssyncmldm/agent/XDMAgent;
    invoke-static {p1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListRemoveObjAtFirst(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    .line 6070
    if-ne v2, v5, :cond_b5

    .line 6074
    iput-object p1, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sequenceList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 6092
    :goto_8b
    return v5

    .line 6046
    :cond_8c
    invoke-virtual {p0, v0, v1, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentVerifyCmd(Lcom/wssyncmldm/agent/XDMAgent;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I

    move-result v2

    goto :goto_7d

    .line 6050
    :cond_91
    const-string v6, "Sequence_Start"

    iget-object v7, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b0

    .line 6052
    const-string v6, "Sequence_Start"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6053
    iget-boolean v6, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    if-eqz v6, :cond_ab

    .line 6055
    iget-object v6, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    invoke-virtual {p0, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdSequence(Lcom/wssyncmldm/eng/parser/XDMParserSequence;)I

    move-result v2

    goto :goto_7e

    .line 6059
    :cond_ab
    invoke-virtual {p0, v0, v1, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentVerifyCmd(Lcom/wssyncmldm/agent/XDMAgent;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I

    move-result v2

    goto :goto_7e

    .line 6064
    :cond_b0
    invoke-virtual {p0, v0, v1, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentVerifyCmd(Lcom/wssyncmldm/agent/XDMAgent;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I

    move-result v2

    goto :goto_7e

    .line 6077
    :cond_b5
    const/4 v6, 0x3

    if-ne v2, v6, :cond_ba

    move v5, v2

    .line 6079
    goto :goto_8b

    .line 6081
    :cond_ba
    if-eqz v2, :cond_15

    .line 6083
    const-string v5, "Processing failed"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 6084
    const/4 v5, -0x1

    goto :goto_8b

    .line 6090
    :cond_c3
    invoke-static {p1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListClearLinkedList(Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 6091
    iput-boolean v8, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->IsSequenceProcessing:Z

    move v5, v2

    .line 6092
    goto :goto_8b
.end method

.method public xdmAgentCmdStatus(Lcom/wssyncmldm/eng/parser/XDMParserStatus;)I
    .registers 13
    .parameter "status"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 6201
    sget-object v5, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 6204
    .local v5, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v0, 0x0

    .line 6206
    .local v0, dValue:[B
    const-string v6, "401"

    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_82

    .line 6208
    const/4 v6, -0x7

    iput v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authState:I

    .line 6209
    const-string v6, "Client invalid credential(401)"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 6210
    const-string v6, "SyncHdr"

    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2e

    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-nez v6, :cond_2e

    .line 6212
    const-string v6, "SyncHdr Status 401. and No Chal"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 6213
    const/4 v6, 0x3

    iput v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authCount:I

    .line 6251
    :cond_2e
    :goto_2e
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v6, :cond_13d

    .line 6253
    const-string v6, "syncml:auth-md5"

    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v7, v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_15f

    .line 6255
    iput v8, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    .line 6256
    iget v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetAuthType(I)V

    .line 6258
    const-string v6, "b64"

    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v7, v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_13e

    .line 6268
    sget-object v6, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v6, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 6269
    .local v2, szAccBuf:Ljava/lang/String;
    const-string v6, "/AAuthData"

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6271
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMB64(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6273
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Decode([B)[B

    move-result-object v0

    .line 6274
    if-eqz v0, :cond_f5

    .line 6276
    array-length v6, v0

    new-array v6, v6, [B

    iput-object v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    .line 6277
    const/4 v1, 0x0

    .local v1, i:I
    :goto_76
    array-length v6, v0

    if-ge v1, v6, :cond_fa

    .line 6278
    iget-object v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    aget-byte v7, v0, v1

    aput-byte v7, v6, v1

    .line 6277
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 6216
    .end local v1           #i:I
    .end local v2           #szAccBuf:Ljava/lang/String;
    :cond_82
    const-string v6, "212"

    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8f

    .line 6218
    iput v8, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authState:I

    goto :goto_2e

    .line 6220
    :cond_8f
    const-string v6, "200"

    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b7

    const-string v6, "SyncHdr"

    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b7

    .line 6222
    iget v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    if-ne v6, v10, :cond_b4

    .line 6224
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v6, :cond_ad

    .line 6226
    iput v8, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authState:I

    .line 6233
    :cond_ad
    :goto_ad
    const-string v6, "Client Authrization Accepted (Catch 200)"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 6231
    :cond_b4
    iput v8, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authState:I

    goto :goto_ad

    .line 6235
    :cond_b7
    const-string v6, "213"

    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2e

    .line 6237
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received Status \'buffered\' cmd "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6239
    iget-object v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tempResults:Lcom/wssyncmldm/eng/parser/XDMParserResults;

    if-eqz v6, :cond_ee

    .line 6241
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserResults;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserResults;-><init>()V

    .line 6242
    .local v4, tmp:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    iget-object v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->tempResults:Lcom/wssyncmldm/eng/parser/XDMParserResults;

    invoke-static {v4, v6}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDuplResults(Lcom/wssyncmldm/eng/parser/XDMParserResults;Lcom/wssyncmldm/eng/parser/XDMParserResults;)V

    .line 6243
    iget-object v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v6, v4}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtFirst(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    goto/16 :goto_2e

    .line 6247
    .end local v4           #tmp:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    :cond_ee
    const-string v6, "can\'t find cached results can\'t send multi-messaged"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 6282
    .restart local v2       #szAccBuf:Ljava/lang/String;
    :cond_f5
    const-string v6, "########## dValue is NULL"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6285
    :cond_fa
    new-instance v3, Ljava/lang/String;

    iget-object v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 6287
    .local v3, szTemp:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive nextNonce:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v7, v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "B64 decode String(ws.nextNonce):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 6307
    .end local v3           #szTemp:Ljava/lang/String;
    :goto_125
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetClientNonce(Ljava/lang/String;)V

    .line 6316
    sget-object v6, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v6, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 6317
    const-string v6, "/AAuthPref"

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6319
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOM(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6401
    .end local v2           #szAccBuf:Ljava/lang/String;
    :cond_13d
    :goto_13d
    return v9

    .line 6293
    :cond_13e
    const-string v6, "!B64"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6301
    sget-object v6, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v6, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 6302
    .restart local v2       #szAccBuf:Ljava/lang/String;
    const-string v6, "/AAuthData"

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6304
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOM(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6305
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iput-object v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    goto :goto_125

    .line 6321
    .end local v2           #szAccBuf:Ljava/lang/String;
    :cond_15f
    const-string v6, "syncml:auth-MAC"

    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v7, v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_207

    .line 6323
    iput v10, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    .line 6324
    iget v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetAuthType(I)V

    .line 6326
    const-string v6, "b64"

    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v7, v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1eb

    .line 6335
    sget-object v6, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v6, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 6336
    .restart local v2       #szAccBuf:Ljava/lang/String;
    const-string v6, "/AAuthData"

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6338
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMB64(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6339
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Decode([B)[B

    move-result-object v0

    .line 6340
    if-eqz v0, :cond_1af

    .line 6342
    array-length v6, v0

    new-array v6, v6, [B

    iput-object v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    .line 6343
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1a3
    array-length v6, v0

    if-ge v1, v6, :cond_1b4

    .line 6344
    iget-object v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    aget-byte v7, v0, v1

    aput-byte v7, v6, v1

    .line 6343
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a3

    .line 6348
    .end local v1           #i:I
    :cond_1af
    const-string v6, "########## dValue is NULL"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 6350
    :cond_1b4
    new-instance v3, Ljava/lang/String;

    iget-object v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 6351
    .restart local v3       #szTemp:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "B64 decode nextNonce"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 6368
    .end local v3           #szTemp:Ljava/lang/String;
    :goto_1d1
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetClientNonce(Ljava/lang/String;)V

    .line 6377
    sget-object v6, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v6, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 6378
    const-string v6, "/AAuthPref"

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6380
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOM(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_13d

    .line 6362
    .end local v2           #szAccBuf:Ljava/lang/String;
    :cond_1eb
    sget-object v6, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v6, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 6363
    .restart local v2       #szAccBuf:Ljava/lang/String;
    const-string v6, "/AAuthData"

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6365
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOM(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6366
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iput-object v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    goto :goto_1d1

    .line 6382
    .end local v2           #szAccBuf:Ljava/lang/String;
    :cond_207
    const-string v6, "syncml:auth-basic"

    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v7, v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_13d

    .line 6385
    iput v9, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    .line 6386
    iget v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetAuthType(I)V

    .line 6395
    sget-object v6, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v6, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 6396
    .restart local v2       #szAccBuf:Ljava/lang/String;
    const-string v6, "/AAuthPref"

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6398
    iget-object v6, p1, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOM(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_13d
.end method

.method public xdmAgentCmdSyncHeader(Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;)I
    .registers 11
    .parameter "synchdr"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v5, -0x9

    const/high16 v4, 0x10

    .line 6097
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 6100
    .local v0, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->msgid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szMsgRef:Ljava/lang/String;

    .line 6102
    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szRespUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 6104
    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szRespUri:Ljava/lang/String;

    iput-object v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szTargetURI:Ljava/lang/String;

    .line 6105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "synchdr->respuri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szRespUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 6106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ws->targetURI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szTargetURI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 6109
    :cond_4d
    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-eqz v2, :cond_b6

    .line 6111
    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget v2, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxobjsize:I

    if-lez v2, :cond_ae

    .line 6113
    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget v2, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxobjsize:I

    iput v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverMaxObjSize:I

    .line 6114
    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverMaxObjSize:I

    if-gtz v2, :cond_a4

    .line 6116
    iput v4, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverMaxObjSize:I

    .line 6128
    :cond_63
    :goto_63
    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget v2, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxmsgsize:I

    if-lez v2, :cond_b1

    .line 6130
    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget v2, v2, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxmsgsize:I

    iput v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverMaxMsgSize:I

    .line 6143
    :goto_6f
    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    if-eq v2, v7, :cond_81

    .line 6145
    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    if-eq v2, v8, :cond_d2

    .line 6147
    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    if-eqz v2, :cond_bd

    .line 6149
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentVerifyServerAuth(Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;)I

    move-result v2

    iput v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    .line 6171
    :cond_81
    :goto_81
    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    if-ne v2, v7, :cond_de

    .line 6173
    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    if-ne v2, v8, :cond_d9

    .line 6175
    const-string v2, "200"

    iput-object v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    .line 6181
    :goto_8d
    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerAuthType(I)V

    .line 6193
    :goto_92
    const-string v2, "SyncHdr"

    iget-object v3, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szHostname:Ljava/lang/String;

    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSourceURI:Ljava/lang/String;

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v6

    .line 6194
    .local v6, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2, v6}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 6196
    return v1

    .line 6118
    .end local v6           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_a4
    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverMaxObjSize:I

    const v3, 0x4e2000

    if-le v2, v3, :cond_63

    .line 6120
    iput v4, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverMaxObjSize:I

    goto :goto_63

    .line 6125
    :cond_ae
    iput v4, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverMaxObjSize:I

    goto :goto_63

    .line 6134
    :cond_b1
    const/16 v2, 0x1400

    iput v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverMaxMsgSize:I

    goto :goto_6f

    .line 6139
    :cond_b6
    iput v4, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverMaxObjSize:I

    .line 6140
    const/16 v2, 0x1400

    iput v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverMaxMsgSize:I

    goto :goto_6f

    .line 6153
    :cond_bd
    const-string v2, "Not Used Server Authentication"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 6154
    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    const/4 v3, -0x7

    if-eq v2, v3, :cond_cb

    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    if-ne v2, v5, :cond_cf

    .line 6156
    :cond_cb
    const/4 v2, -0x1

    iput v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    goto :goto_81

    .line 6161
    :cond_cf
    iput v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    goto :goto_81

    .line 6167
    :cond_d2
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentVerifyServerAuth(Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;)I

    move-result v2

    iput v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    goto :goto_81

    .line 6179
    :cond_d9
    const-string v2, "212"

    iput-object v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    goto :goto_8d

    .line 6184
    :cond_de
    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    if-ne v2, v5, :cond_e7

    .line 6186
    const-string v2, "407"

    iput-object v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    goto :goto_92

    .line 6190
    :cond_e7
    const-string v2, "401"

    iput-object v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    goto :goto_92
.end method

.method public xdmAgentCmdUicAlert()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 4203
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 4204
    .local v0, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v6, 0x0

    .line 4206
    .local v6, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicAlert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    if-eqz v1, :cond_38

    .line 4208
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    sget-object v2, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TRUE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    if-eq v1, v2, :cond_14

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    sget-object v2, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_NONE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    if-ne v1, v2, :cond_46

    .line 4210
    :cond_14
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicAlert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    const-string v2, "Alert"

    const-string v5, "200"

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v6

    .line 4211
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_29

    .line 4213
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    iput-object v1, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 4240
    :cond_29
    :goto_29
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v1, v6}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 4241
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicAlert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteAlert(Ljava/lang/Object;)V

    .line 4242
    iput-object v3, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    .line 4243
    iput-object v3, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicAlert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    .line 4244
    const/4 v6, 0x0

    .line 4247
    :cond_38
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    sget-object v2, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TRUE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    if-eq v1, v2, :cond_44

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    sget-object v2, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_NONE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    if-ne v1, v2, :cond_94

    .line 4249
    :cond_44
    const/4 v1, 0x1

    .line 4253
    :goto_45
    return v1

    .line 4216
    :cond_46
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    sget-object v2, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_FALSE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    if-ne v1, v2, :cond_62

    .line 4218
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicAlert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    const-string v2, "Alert"

    const-string v5, "304"

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v6

    .line 4219
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_29

    .line 4221
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    iput-object v1, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_29

    .line 4224
    :cond_62
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    sget-object v2, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_CANCELED:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    if-ne v1, v2, :cond_7e

    .line 4226
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicAlert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    const-string v2, "Alert"

    const-string v5, "214"

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v6

    .line 4227
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_29

    .line 4229
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    iput-object v1, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_29

    .line 4234
    :cond_7e
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicAlert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    iget v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    const-string v2, "Alert"

    const-string v5, "215"

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdStatus(Lcom/wssyncmldm/eng/core/XDMWorkspace;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    move-result-object v6

    .line 4235
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    if-eqz v1, :cond_29

    .line 4237
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    iput-object v1, v6, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_29

    .line 4253
    :cond_94
    const/4 v1, 0x0

    goto :goto_45
.end method

.method public xdmAgentCreatePackage()I
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x4

    const/4 v6, -0x1

    const/4 v9, 0x0

    .line 622
    const/16 v0, 0x6a

    .line 624
    .local v0, WBXML_CHARSET_UTF8:I
    sget-object v5, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 626
    .local v5, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v3, 0x0

    .line 627
    .local v3, res:I
    iget-object v1, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->e:Lcom/wssyncmldm/eng/core/XDMEncoder;

    .line 629
    .local v1, e:Lcom/wssyncmldm/eng/core/XDMEncoder;
    iget-object v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    sget-object v8, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_INIT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    if-ne v7, v8, :cond_2c

    .line 631
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentLoadWorkSpace()I

    move-result v3

    .line 632
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOInitiatedType()I

    move-result v7

    if-eqz v7, :cond_27

    .line 633
    sget-object v7, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_GENERIC_ALERT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    iput-object v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 641
    :cond_1f
    :goto_1f
    if-eqz v3, :cond_3d

    .line 643
    const-string v7, "xdmAgentCreatePackage failed"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 785
    :goto_26
    return v6

    .line 635
    :cond_27
    sget-object v7, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_CLIENT_INIT_MGMT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    iput-object v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    goto :goto_1f

    .line 637
    :cond_2c
    iget-object v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    sget-object v8, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_GENERIC_ALERT_REPORT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    if-eq v7, v8, :cond_38

    iget-object v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    sget-object v8, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_ABORT_ALERT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    if-ne v7, v8, :cond_1f

    .line 639
    :cond_38
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentLoadWorkSpace()I

    move-result v3

    goto :goto_1f

    .line 647
    :cond_3d
    iget-object v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 648
    iget-object v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v7}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncInit(Ljava/io/ByteArrayOutputStream;)V

    .line 650
    const-string v4, "-//SYNCML//DTD SyncML 1.2//EN"

    .line 654
    .local v4, szWbxmlStrTbl:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v9, v0, v4, v7}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncStartSyncml(IILjava/lang/String;I)I

    .line 655
    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdSyncHeader(Lcom/wssyncmldm/eng/core/XDMWorkspace;)Lcom/wssyncmldm/eng/core/XDMWorkspace;

    move-result-object v5

    .line 656
    iget-object v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->syncHeader:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;

    invoke-virtual {v1, v7}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddSyncHeader(Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;)I

    .line 657
    invoke-virtual {v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncStartSyncbody()I

    .line 659
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent$1;->$SwitchMap$com$wssyncmldm$interfaces$XDMInterface$XDMSyncMLState:[I

    iget-object v8, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    invoke-virtual {v8}, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_198

    .line 777
    :goto_69
    iget-boolean v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    if-nez v6, :cond_71

    iget-boolean v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sendRemain:Z

    if-eqz v6, :cond_73

    .line 779
    :cond_71
    iput-boolean v9, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    .line 782
    :cond_73
    iget-boolean v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    invoke-virtual {v1, v6}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncEndSyncbody(Z)I

    .line 783
    invoke-virtual {v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncEndSyncml()I

    move v6, v3

    .line 785
    goto :goto_26

    .line 662
    :pswitch_7d
    const-string v6, "XDM_STATE_CLIENT_INIT_MGMT"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClientInitPackage(Lcom/wssyncmldm/eng/core/XDMEncoder;)I

    goto :goto_69

    .line 666
    :pswitch_86
    const-string v6, "XDM_STATE_PROCESSING"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMgmtPackage(Lcom/wssyncmldm/eng/core/XDMEncoder;)I

    goto :goto_69

    .line 670
    :pswitch_8f
    const-string v7, "XDM_STATE_GENERIC_ALERT"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClientInitPackage(Lcom/wssyncmldm/eng/core/XDMEncoder;)I

    move-result v3

    .line 673
    if-eqz v3, :cond_b7

    .line 675
    if-ne v3, v10, :cond_9f

    .line 677
    iput-boolean v9, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    goto :goto_26

    .line 681
    :cond_9f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed(%d)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 686
    :cond_b7
    const-string v7, "1226"

    invoke-virtual {p0, v1, v7}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackageGenericAlert(Lcom/wssyncmldm/eng/core/XDMEncoder;Ljava/lang/String;)I

    move-result v3

    .line 687
    if-eqz v3, :cond_dd

    .line 689
    if-ne v3, v10, :cond_c5

    .line 691
    iput-boolean v9, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    goto/16 :goto_26

    .line 695
    :cond_c5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed(%d)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 699
    :cond_dd
    iput-boolean v11, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    goto :goto_69

    .line 702
    :pswitch_e0
    const-string v7, "XDM_STATE_GENERIC_ALERT_REPORT"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClientInitPackage(Lcom/wssyncmldm/eng/core/XDMEncoder;)I

    move-result v3

    .line 705
    if-eqz v3, :cond_109

    .line 707
    if-ne v3, v10, :cond_f1

    .line 709
    iput-boolean v9, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    goto/16 :goto_26

    .line 713
    :cond_f1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed(%d)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 718
    :cond_109
    const-string v7, "1226"

    invoke-virtual {p0, v1, v7}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackageReportGenericAlert(Lcom/wssyncmldm/eng/core/XDMEncoder;Ljava/lang/String;)I

    move-result v3

    .line 719
    if-eqz v3, :cond_12f

    .line 721
    if-ne v3, v10, :cond_117

    .line 723
    iput-boolean v9, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    goto/16 :goto_26

    .line 727
    :cond_117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed(%d)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 731
    :cond_12f
    iput-boolean v11, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    goto/16 :goto_69

    .line 734
    :pswitch_133
    const-string v7, "XDM_STATE_ABORT_ALERT"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 735
    iget v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->appId:I

    invoke-static {v7}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbGetNotiEvent(I)I

    move-result v2

    .line 736
    .local v2, nNotiEvent:I
    if-lez v2, :cond_14e

    .line 738
    const-string v7, "1200"

    invoke-virtual {p0, v1, v7}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackageAlert(Lcom/wssyncmldm/eng/core/XDMEncoder;Ljava/lang/String;)I

    move-result v3

    .line 744
    :goto_146
    if-eqz v3, :cond_16d

    .line 746
    if-ne v3, v10, :cond_155

    .line 748
    iput-boolean v9, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    goto/16 :goto_26

    .line 742
    :cond_14e
    const-string v7, "1201"

    invoke-virtual {p0, v1, v7}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackageAlert(Lcom/wssyncmldm/eng/core/XDMEncoder;Ljava/lang/String;)I

    move-result v3

    goto :goto_146

    .line 752
    :cond_155
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed(%d)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 756
    :cond_16d
    const-string v7, "1223"

    invoke-virtual {p0, v1, v7}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackageAlert(Lcom/wssyncmldm/eng/core/XDMEncoder;Ljava/lang/String;)I

    move-result v3

    .line 758
    if-eqz v3, :cond_193

    .line 760
    if-ne v3, v10, :cond_17b

    .line 762
    iput-boolean v9, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    goto/16 :goto_26

    .line 766
    :cond_17b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed(%d)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 771
    :cond_193
    iput-boolean v11, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    goto/16 :goto_69

    .line 659
    nop

    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_86
        :pswitch_8f
        :pswitch_e0
        :pswitch_133
    .end packed-switch
.end method

.method public xdmAgentCreatePackageAlert(Lcom/wssyncmldm/eng/core/XDMEncoder;Ljava/lang/String;)I
    .registers 6
    .parameter "e"
    .parameter "szData"

    .prologue
    .line 2518
    const/4 v0, 0x0

    .line 2519
    .local v0, alert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 2521
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    invoke-static {v1, p2}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdAlert(Lcom/wssyncmldm/eng/core/XDMWorkspace;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    move-result-object v0

    .line 2522
    invoke-virtual {p1, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddAlert(Lcom/wssyncmldm/eng/parser/XDMParserAlert;)I

    .line 2523
    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteAlert(Ljava/lang/Object;)V

    .line 2525
    const/4 v2, 0x0

    return v2
.end method

.method xdmAgentCreatePackageDevInfo(Lcom/wssyncmldm/eng/core/XDMEncoder;)I
    .registers 9
    .parameter "e"

    .prologue
    .line 2530
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 2531
    .local v4, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v3, 0x0

    .line 2532
    .local v3, rep:Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    const/4 v0, 0x0

    .line 2533
    .local v0, list:Lcom/wssyncmldm/eng/core/XDMLinkedList;
    iget-object v2, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 2536
    .local v2, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-result-object v0

    .line 2537
    const-string v5, "./DevInfo/Lang"

    invoke-static {v2, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    .line 2538
    .local v1, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz v1, :cond_19

    .line 2539
    const-string v5, "./DevInfo/Lang"

    iget v6, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-virtual {p0, v2, v0, v5, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgent_MAKE_REP_ITEM(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/String;I)V

    .line 2541
    :cond_19
    const-string v5, "./DevInfo/DmV"

    invoke-static {v2, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    .line 2542
    if-eqz v1, :cond_28

    .line 2543
    const-string v5, "./DevInfo/DmV"

    iget v6, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-virtual {p0, v2, v0, v5, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgent_MAKE_REP_ITEM(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/String;I)V

    .line 2545
    :cond_28
    const-string v5, "./DevInfo/Mod"

    invoke-static {v2, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    .line 2546
    if-eqz v1, :cond_37

    .line 2547
    const-string v5, "./DevInfo/Mod"

    iget v6, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-virtual {p0, v2, v0, v5, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgent_MAKE_REP_ITEM(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/String;I)V

    .line 2549
    :cond_37
    const-string v5, "./DevInfo/Man"

    invoke-static {v2, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    .line 2550
    if-eqz v1, :cond_46

    .line 2551
    const-string v5, "./DevInfo/Man"

    iget v6, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-virtual {p0, v2, v0, v5, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgent_MAKE_REP_ITEM(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/String;I)V

    .line 2553
    :cond_46
    const-string v5, "./DevInfo/DevId"

    invoke-static {v2, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    .line 2554
    if-eqz v1, :cond_55

    .line 2555
    const-string v5, "./DevInfo/DevId"

    iget v6, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-virtual {p0, v2, v0, v5, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgent_MAKE_REP_ITEM(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/String;I)V

    .line 2557
    :cond_55
    invoke-static {v4, v0}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdReplace(Lcom/wssyncmldm/eng/core/XDMWorkspace;Lcom/wssyncmldm/eng/core/XDMLinkedList;)Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    move-result-object v3

    .line 2559
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListFreeLinkedList(Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 2560
    invoke-virtual {p1, v3}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddReplace(Lcom/wssyncmldm/eng/parser/XDMParserReplace;)I

    .line 2561
    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteReplace(Ljava/lang/Object;)V

    .line 2563
    const/4 v5, 0x0

    return v5
.end method

.method public xdmAgentCreatePackageGenericAlert(Lcom/wssyncmldm/eng/core/XDMEncoder;Ljava/lang/String;)I
    .registers 6
    .parameter "e"
    .parameter "szData"

    .prologue
    .line 3707
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 3709
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const-string v2, ""

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 3710
    invoke-static {v1, p2}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdGenericAlert(Lcom/wssyncmldm/eng/core/XDMWorkspace;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    move-result-object v0

    .line 3711
    .local v0, alert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;
    invoke-virtual {p1, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddAlert(Lcom/wssyncmldm/eng/parser/XDMParserAlert;)I

    .line 3712
    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteAlert(Ljava/lang/Object;)V

    .line 3714
    const/4 v2, 0x0

    return v2
.end method

.method public xdmAgentCreatePackageReportGenericAlert(Lcom/wssyncmldm/eng/core/XDMEncoder;Ljava/lang/String;)I
    .registers 6
    .parameter "e"
    .parameter "szData"

    .prologue
    .line 3720
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 3722
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    invoke-static {v1, p2}, Lcom/wssyncmldm/agent/XDMBuildCmd;->xdmAgentBuildCmdGenericAlertReport(Lcom/wssyncmldm/eng/core/XDMWorkspace;Ljava/lang/String;)Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    move-result-object v0

    .line 3723
    .local v0, alert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;
    invoke-virtual {p1, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddAlert(Lcom/wssyncmldm/eng/parser/XDMParserAlert;)I

    .line 3724
    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteAlert(Ljava/lang/Object;)V

    .line 3726
    const/4 v2, 0x0

    return v2
.end method

.method public xdmAgentCreatePackageResults(Lcom/wssyncmldm/eng/core/XDMEncoder;)I
    .registers 25
    .parameter "e"

    .prologue
    .line 2377
    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 2378
    .local v20, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    sget-object v21, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 2379
    .local v11, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const/16 v16, 0x0

    .line 2385
    .local v16, results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    const/4 v13, 0x0

    .line 2386
    .local v13, partialsize:I
    const/4 v10, 0x0

    .line 2387
    .local v10, offset:I
    const/4 v12, 0x0

    .line 2388
    .local v12, partialsend:Z
    const/4 v2, 0x0

    .line 2390
    .local v2, buf:[C
    const/4 v15, 0x0

    .line 2392
    .local v15, res:I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 2393
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    check-cast v16, Lcom/wssyncmldm/eng/parser/XDMParserResults;

    .line 2395
    .restart local v16       #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    if-nez v16, :cond_d0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_CLIENT_INIT_MGMT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_d0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextMsg:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d0

    .line 2397
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListClearLinkedList(Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 2398
    const/16 v21, 0x0

    .line 2513
    :goto_49
    return v21

    .line 2427
    .local v4, cmdsize:I
    .local v5, datasize:I
    .local v7, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    .local v9, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    .local v14, remainsize:I
    .local v19, usedsize:I
    :cond_4a
    if-lez v5, :cond_128

    if-ge v14, v4, :cond_128

    .line 2429
    move v13, v5

    .line 2436
    :goto_4f
    if-lez v13, :cond_18c

    .line 2438
    new-array v2, v13, [C

    .line 2439
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    move-object/from16 v21, v0

    if-eqz v21, :cond_135

    .line 2441
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_135

    .line 2445
    const-string v21, "application/vnd.syncml.dmtnds+xml"

    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_135

    .line 2447
    const/4 v8, 0x0

    .line 2448
    .local v8, nFileId:I
    new-array v3, v13, [B

    .line 2449
    .local v3, buftmp:[B
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdTNDS()I

    move-result v8

    .line 2450
    invoke-static {v8, v10, v13, v3}, Lcom/wssyncmldm/db/file/XDB;->xdbReadFile(III[B)Z

    .line 2451
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 2452
    .local v17, szData1:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toCharArray()[C

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStString2Pcdata([C)Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 2453
    if-eqz v12, :cond_12b

    .line 2455
    const/16 v21, 0x1

    move/from16 v0, v21

    iput v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    .line 2456
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sendPos:I

    move/from16 v21, v0

    add-int v21, v21, v13

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sendPos:I

    .line 2463
    :goto_ae
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddResults(Lcom/wssyncmldm/eng/parser/XDMParserResults;)I

    .line 2464
    move-object/from16 v18, v16

    .line 2465
    .local v18, tmp:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    check-cast v16, Lcom/wssyncmldm/eng/parser/XDMParserResults;

    .line 2466
    .restart local v16       #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListRemoveObjAtFirst(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    .line 2467
    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteResults(Ljava/lang/Object;)V

    .line 2469
    const/4 v2, 0x0

    .line 2400
    .end local v3           #buftmp:[B
    .end local v4           #cmdsize:I
    .end local v5           #datasize:I
    .end local v7           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    .end local v8           #nFileId:I
    .end local v9           #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    .end local v14           #remainsize:I
    .end local v17           #szData1:Ljava/lang/String;
    .end local v18           #tmp:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    .end local v19           #usedsize:I
    :cond_d0
    :goto_d0
    if-eqz v16, :cond_1d8

    .line 2402
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    check-cast v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    .line 2403
    .restart local v7       #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    move-object/from16 v21, v0

    if-eqz v21, :cond_126

    .line 2405
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    move/from16 v21, v0

    if-lez v21, :cond_124

    .line 2407
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2418
    .restart local v5       #datasize:I
    :goto_102
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v9

    .line 2419
    .restart local v9       #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    invoke-static/range {p1 .. p1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncGetBufferSize(Lcom/wssyncmldm/eng/core/XDMEncoder;)I

    move-result v19

    .line 2420
    .restart local v19       #usedsize:I
    add-int/lit16 v4, v5, 0x80

    .line 2421
    .restart local v4       #cmdsize:I
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->maxMsgSize:I

    move/from16 v21, v0

    sub-int v14, v21, v19

    .line 2423
    .restart local v14       #remainsize:I
    const/16 v21, 0x80

    move/from16 v0, v21

    if-ge v14, v0, :cond_4a

    .line 2425
    const/16 v21, -0x4

    goto/16 :goto_49

    .line 2411
    .end local v4           #cmdsize:I
    .end local v5           #datasize:I
    .end local v9           #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    .end local v14           #remainsize:I
    .end local v19           #usedsize:I
    :cond_124
    const/4 v5, 0x0

    .restart local v5       #datasize:I
    goto :goto_102

    .line 2416
    .end local v5           #datasize:I
    :cond_126
    const/4 v5, 0x0

    .restart local v5       #datasize:I
    goto :goto_102

    .line 2433
    .restart local v4       #cmdsize:I
    .restart local v9       #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    .restart local v14       #remainsize:I
    .restart local v19       #usedsize:I
    :cond_128
    const/4 v13, 0x0

    goto/16 :goto_4f

    .line 2460
    .restart local v3       #buftmp:[B
    .restart local v8       #nFileId:I
    .restart local v17       #szData1:Ljava/lang/String;
    :cond_12b
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sendPos:I

    goto/16 :goto_ae

    .line 2475
    .end local v3           #buftmp:[B
    .end local v8           #nFileId:I
    .end local v17           #szData1:Ljava/lang/String;
    :cond_135
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v11, v0, v10, v2, v13}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    move-result v15

    .line 2477
    if-eqz v9, :cond_1c6

    iget v0, v9, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c6

    .line 2479
    new-instance v21, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-direct/range {v21 .. v21}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;-><init>()V

    move-object/from16 v0, v21

    iput-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 2480
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    .line 2481
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move-object/from16 v21, v0

    new-array v0, v13, [C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    .line 2483
    const/4 v6, 0x0

    .local v6, i:I
    :goto_171
    if-ge v6, v13, :cond_184

    .line 2484
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    move-object/from16 v21, v0

    aget-char v22, v2, v6

    aput-char v22, v21, v6

    .line 2483
    add-int/lit8 v6, v6, 0x1

    goto :goto_171

    .line 2485
    :cond_184
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v13, v0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    .line 2493
    .end local v6           #i:I
    :cond_18c
    :goto_18c
    if-eqz v12, :cond_1cf

    .line 2495
    const/16 v21, 0x1

    move/from16 v0, v21

    iput v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    .line 2496
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sendPos:I

    move/from16 v21, v0

    add-int v21, v21, v13

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sendPos:I

    .line 2503
    :goto_1a2
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddResults(Lcom/wssyncmldm/eng/parser/XDMParserResults;)I

    .line 2504
    move-object/from16 v18, v16

    .line 2505
    .restart local v18       #tmp:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    check-cast v16, Lcom/wssyncmldm/eng/parser/XDMParserResults;

    .line 2506
    .restart local v16       #results:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListRemoveObjAtFirst(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    .line 2507
    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteResults(Ljava/lang/Object;)V

    .line 2509
    const/4 v2, 0x0

    goto/16 :goto_d0

    .line 2489
    .end local v18           #tmp:Lcom/wssyncmldm/eng/parser/XDMParserResults;
    :cond_1c6
    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStString2Pcdata([C)Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    goto :goto_18c

    .line 2500
    :cond_1cf
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sendPos:I

    goto :goto_1a2

    .line 2511
    .end local v4           #cmdsize:I
    .end local v5           #datasize:I
    .end local v7           #item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    .end local v9           #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    .end local v14           #remainsize:I
    .end local v19           #usedsize:I
    :cond_1d8
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListClearLinkedList(Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 2513
    const/16 v21, 0x0

    goto/16 :goto_49
.end method

.method public xdmAgentCreatePackageStatus(Lcom/wssyncmldm/eng/core/XDMEncoder;)I
    .registers 7
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 2356
    const/4 v0, 0x0

    .line 2358
    .local v0, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 2359
    .local v2, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v3, v4}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 2361
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v3}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    check-cast v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    .line 2362
    .restart local v0       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :goto_11
    if-eqz v0, :cond_28

    .line 2364
    invoke-virtual {p1, v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncAddStatus(Lcom/wssyncmldm/eng/parser/XDMParserStatus;)I

    .line 2365
    move-object v1, v0

    .line 2366
    .local v1, tmp:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v3}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    check-cast v0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    .line 2367
    .restart local v0       #status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v3}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListRemoveObjAtFirst(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    .line 2368
    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStDeleteStatus(Ljava/lang/Object;)V

    goto :goto_11

    .line 2370
    .end local v1           #tmp:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    :cond_28
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v3}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListClearLinkedList(Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 2372
    return v4
.end method

.method public xdmAgentGetAccountFromOM(Lcom/wssyncmldm/eng/core/XDMOmTree;)I
    .registers 18
    .parameter "om"

    .prologue
    .line 7568
    const/4 v9, 0x0

    .line 7569
    .local v9, pProfileInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    const/4 v8, 0x0

    .line 7572
    .local v8, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    const/4 v3, 0x0

    .line 7573
    .local v3, TmpBuf:[C
    const/4 v12, 0x0

    .line 7574
    .local v12, szAddrURI:Ljava/lang/String;
    const/4 v13, 0x0

    .line 7575
    .local v13, szPortNum:Ljava/lang/String;
    const/4 v11, 0x0

    .line 7576
    .local v11, szAccTmpBuf:Ljava/lang/String;
    const/16 v14, 0x100

    new-array v2, v14, [C

    .line 7578
    .local v2, ServerUrl:[C
    const/4 v5, 0x0

    .line 7581
    .local v5, authType:I
    new-instance v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .end local v9           #pProfileInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-direct {v9}, Lcom/wssyncmldm/db/file/XDBProfileInfo;-><init>()V

    .line 7583
    .restart local v9       #pProfileInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v14, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 7585
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 7586
    const/4 v14, -0x1

    .line 7946
    :goto_1e
    return v14

    .line 7588
    :cond_1f
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v14, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 7590
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 7591
    const/4 v14, -0x1

    goto :goto_1e

    .line 7593
    :cond_2e
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v14, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3d

    .line 7595
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 7596
    const/4 v14, -0x1

    goto :goto_1e

    .line 7598
    :cond_3d
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v14, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4c

    .line 7600
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 7601
    const/4 v14, -0x1

    goto :goto_1e

    .line 7603
    :cond_4c
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v14, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5b

    .line 7605
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 7606
    const/4 v14, -0x1

    goto :goto_1e

    .line 7608
    :cond_5b
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v14, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6a

    .line 7610
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 7611
    const/4 v14, -0x1

    goto :goto_1e

    .line 7614
    :cond_6a
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 7615
    const-string v14, "/AppID"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7616
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7617
    if-eqz v8, :cond_175

    .line 7619
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7625
    .local v10, size:I
    :goto_7e
    new-array v3, v10, [C

    .line 7626
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7627
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AppID:Ljava/lang/String;

    .line 7629
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 7630
    const-string v14, "/ServerID"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7631
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7632
    if-eqz v8, :cond_178

    .line 7634
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7640
    :goto_a0
    new-array v3, v10, [C

    .line 7641
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7642
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    .line 7643
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get DM informations from OM...ServerId : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 7645
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 7646
    const-string v14, "/Name"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7647
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7648
    if-eqz v8, :cond_17b

    .line 7650
    iget v14, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v3, v14, [C

    .line 7651
    const/4 v14, 0x0

    iget v15, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v15}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7652
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    .line 7661
    :goto_ec
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 7662
    const-string v14, "/PrefConRef"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7663
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7664
    if-eqz v8, :cond_18b

    .line 7666
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7672
    :goto_100
    new-array v3, v10, [C

    .line 7673
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7674
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->PrefConRef:Ljava/lang/String;

    .line 7676
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 7677
    const-string v14, "/Addr"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7678
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7679
    if-eqz v8, :cond_18e

    .line 7681
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7687
    :goto_122
    new-array v3, v10, [C

    .line 7688
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7689
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    .line 7690
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get DM informations from OM...AddURI : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 7692
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    .line 7693
    const-string v14, "/PortNbr"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7694
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7695
    if-eqz v8, :cond_190

    .line 7697
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7703
    :goto_158
    new-array v3, v10, [C

    .line 7704
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7705
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v13

    .line 7707
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    invoke-static {v2, v14, v15}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbDoDMBootStrapURI([C[C[C)[C

    move-result-object v2

    .line 7708
    if-nez v2, :cond_192

    .line 7709
    const/4 v14, -0x1

    goto/16 :goto_1e

    .line 7623
    .end local v10           #size:I
    :cond_175
    const/4 v10, 0x0

    .restart local v10       #size:I
    goto/16 :goto_7e

    .line 7638
    :cond_178
    const/4 v10, 0x0

    goto/16 :goto_a0

    .line 7656
    :cond_17b
    iget-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    .line 7657
    const/16 v4, 0x1b

    .line 7658
    .local v4, aclValue:I
    iget-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v4, v15}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_ec

    .line 7670
    .end local v4           #aclValue:I
    :cond_18b
    const/4 v10, 0x0

    goto/16 :goto_100

    .line 7685
    :cond_18e
    const/4 v10, 0x0

    goto :goto_122

    .line 7701
    :cond_190
    const/4 v10, 0x0

    goto :goto_158

    .line 7710
    :cond_192
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v2}, Ljava/lang/String;-><init>([C)V

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 7711
    iget-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v14}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v7

    .line 7712
    .local v7, getParser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    iget-object v14, v7, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 7713
    iget-object v14, v7, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    .line 7714
    iget-object v14, v7, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pPath:Ljava/lang/String;

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path:Ljava/lang/String;

    .line 7715
    iget v14, v7, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    iput v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    .line 7716
    iget-object v14, v7, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    .line 7718
    iget-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    .line 7719
    iget-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP_Org:Ljava/lang/String;

    .line 7720
    iget-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path:Ljava/lang/String;

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path_Org:Ljava/lang/String;

    .line 7721
    iget-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol_Org:Ljava/lang/String;

    .line 7722
    iget v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    iput v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort_Org:I

    .line 7723
    const/4 v14, 0x0

    iput-boolean v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->bChangedProtocol:Z

    .line 7725
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 7726
    const-string v14, "/AAuthLevel"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7727
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7728
    if-eqz v8, :cond_361

    .line 7730
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7736
    :goto_1de
    new-array v3, v10, [C

    .line 7737
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7738
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthLevel:Ljava/lang/String;

    .line 7740
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 7741
    const-string v14, "/AAuthType"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7742
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7743
    if-eqz v8, :cond_364

    .line 7745
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7751
    :goto_200
    new-array v3, v10, [C

    .line 7752
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7754
    const-string v14, "DIGEST"

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_367

    .line 7756
    const/4 v5, 0x1

    .line 7774
    :goto_215
    iput v5, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    .line 7776
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 7777
    const-string v14, "/AAuthName"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7778
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7779
    if-eqz v8, :cond_397

    .line 7781
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7787
    :goto_22b
    new-array v3, v10, [C

    .line 7788
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7789
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    .line 7791
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 7792
    const-string v14, "/AAuthSecret"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7793
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7794
    if-eqz v8, :cond_39a

    .line 7796
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7802
    :goto_24d
    new-array v3, v10, [C

    .line 7803
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7804
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    .line 7806
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 7807
    const-string v14, "/AAuthData"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7808
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7809
    if-eqz v8, :cond_39d

    .line 7811
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7812
    iget v6, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    .line 7819
    .local v6, format:I
    :goto_271
    new-array v3, v10, [C

    .line 7820
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7821
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonce:Ljava/lang/String;

    .line 7822
    iput v6, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonceFormat:I

    .line 7824
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 7825
    const-string v14, "/AAuthLevel"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7826
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7827
    if-eqz v8, :cond_3a2

    .line 7829
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7835
    :goto_295
    new-array v3, v10, [C

    .line 7836
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7837
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerAuthLevel:Ljava/lang/String;

    .line 7839
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 7840
    const-string v14, "/AAuthType"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7841
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7842
    if-eqz v8, :cond_3a5

    .line 7844
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7850
    :goto_2b7
    new-array v3, v10, [C

    .line 7851
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7853
    const-string v14, "DIGEST"

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_3a8

    .line 7855
    const/4 v5, 0x1

    .line 7873
    :goto_2cc
    iput v5, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    .line 7875
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 7876
    const-string v14, "/AAuthName"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7877
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7878
    if-eqz v8, :cond_3d8

    .line 7880
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7886
    :goto_2e2
    new-array v3, v10, [C

    .line 7887
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7888
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    .line 7890
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 7891
    const-string v14, "/AAuthSecret"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7892
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7893
    if-eqz v8, :cond_3db

    .line 7895
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7901
    :goto_304
    new-array v3, v10, [C

    .line 7902
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7903
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    .line 7905
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 7906
    const-string v14, "/AAuthData"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7907
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7908
    if-eqz v8, :cond_3de

    .line 7910
    iget v10, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    .line 7911
    iget v6, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    .line 7918
    :goto_328
    new-array v3, v10, [C

    .line 7919
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v14, v3, v10}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 7920
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonce:Ljava/lang/String;

    .line 7921
    iput v6, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonceFormat:I

    .line 7924
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v11, v14, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 7925
    const-string v14, "/Ext"

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 7926
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v8

    .line 7927
    if-eqz v8, :cond_34a

    .line 7935
    :cond_34a
    const/4 v11, 0x0

    .line 7938
    const/4 v1, 0x0

    .line 7939
    .local v1, Index:I
    iget-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-static {v14}, Lcom/wssyncmldm/db/file/XDB;->xdbSetActiveProfileIndexByServerID(Ljava/lang/String;)I

    move-result v1

    .line 7941
    invoke-static {v9}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileInfo(Lcom/wssyncmldm/db/file/XDBProfileInfo;)Z

    .line 7942
    iget-object v14, v9, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    invoke-static {v1, v14}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileName(ILjava/lang/String;)V

    .line 7944
    const/4 v9, 0x0

    .line 7945
    const/4 v14, 0x0

    sput-object v14, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeTndsInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    .line 7946
    const/4 v14, 0x0

    goto/16 :goto_1e

    .line 7734
    .end local v1           #Index:I
    .end local v6           #format:I
    :cond_361
    const/4 v10, 0x0

    goto/16 :goto_1de

    .line 7749
    :cond_364
    const/4 v10, 0x0

    goto/16 :goto_200

    .line 7758
    :cond_367
    const-string v14, "BASIC"

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_376

    .line 7760
    const/4 v5, 0x0

    goto/16 :goto_215

    .line 7762
    :cond_376
    const-string v14, "HMAC"

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_385

    .line 7764
    const/4 v5, 0x2

    goto/16 :goto_215

    .line 7766
    :cond_385
    const-string v14, "DIGEST"

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_394

    .line 7768
    const/4 v5, 0x1

    goto/16 :goto_215

    .line 7772
    :cond_394
    const/4 v5, 0x0

    goto/16 :goto_215

    .line 7785
    :cond_397
    const/4 v10, 0x0

    goto/16 :goto_22b

    .line 7800
    :cond_39a
    const/4 v10, 0x0

    goto/16 :goto_24d

    .line 7816
    :cond_39d
    const/4 v10, 0x0

    .line 7817
    const/16 v6, 0xc

    .restart local v6       #format:I
    goto/16 :goto_271

    .line 7833
    :cond_3a2
    const/4 v10, 0x0

    goto/16 :goto_295

    .line 7848
    :cond_3a5
    const/4 v10, 0x0

    goto/16 :goto_2b7

    .line 7857
    :cond_3a8
    const-string v14, "BASIC"

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_3b7

    .line 7859
    const/4 v5, 0x0

    goto/16 :goto_2cc

    .line 7861
    :cond_3b7
    const-string v14, "HMAC"

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_3c6

    .line 7863
    const/4 v5, 0x2

    goto/16 :goto_2cc

    .line 7865
    :cond_3c6
    const-string v14, "DIGEST"

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_3d5

    .line 7867
    const/4 v5, 0x1

    goto/16 :goto_2cc

    .line 7871
    :cond_3d5
    const/4 v5, 0x0

    goto/16 :goto_2cc

    .line 7884
    :cond_3d8
    const/4 v10, 0x0

    goto/16 :goto_2e2

    .line 7899
    :cond_3db
    const/4 v10, 0x0

    goto/16 :goto_304

    .line 7915
    :cond_3de
    const/4 v10, 0x0

    .line 7916
    const/16 v6, 0xc

    goto/16 :goto_328
.end method

.method public xdmAgentGetAclStr(Lcom/wssyncmldm/eng/core/XDMOmList;Lcom/wssyncmldm/eng/parser/XDMParserItem;)Ljava/lang/String;
    .registers 16
    .parameter "acllist"
    .parameter "item"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5132
    const/4 v6, 0x5

    new-array v1, v6, [Ljava/lang/String;

    const-string v6, "\u0000"

    aput-object v6, v1, v8

    const-string v6, "\u0000"

    aput-object v6, v1, v9

    const-string v6, "\u0000"

    aput-object v6, v1, v10

    const-string v6, "\u0000"

    aput-object v6, v1, v11

    const-string v6, "\u0000"

    aput-object v6, v1, v12

    .line 5137
    .local v1, buf:[Ljava/lang/String;
    move-object v2, p1

    .line 5139
    .local v2, cur:Lcom/wssyncmldm/eng/core/XDMOmList;
    if-nez p1, :cond_21

    .line 5140
    const/4 v5, 0x0

    .line 5348
    :goto_20
    return-object v5

    .line 5142
    :cond_21
    const-string v4, "\u0000"

    .line 5149
    .local v4, szOutbuf:Ljava/lang/String;
    iget-object v6, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-nez v6, :cond_8d

    .line 5150
    const/4 v6, 0x0

    iput-object v6, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 5155
    :goto_2a
    if-eqz v2, :cond_da

    .line 5157
    iget-object v0, v2, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;

    .line 5158
    .local v0, acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    iget v6, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_42

    .line 5162
    aget-object v6, v1, v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v6, :cond_a3

    .line 5163
    iget-object v6, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    aput-object v6, v1, v8

    .line 5167
    :cond_42
    :goto_42
    iget v6, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    and-int/lit8 v6, v6, 0x2

    if-lez v6, :cond_54

    .line 5170
    aget-object v6, v1, v9

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v6, :cond_ae

    .line 5171
    iget-object v6, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    aput-object v6, v1, v9

    .line 5175
    :cond_54
    :goto_54
    iget v6, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_66

    .line 5178
    aget-object v6, v1, v10

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v6, :cond_b9

    .line 5179
    iget-object v6, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    aput-object v6, v1, v10

    .line 5183
    :cond_66
    :goto_66
    iget v6, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    and-int/lit8 v6, v6, 0x8

    if-lez v6, :cond_78

    .line 5186
    aget-object v6, v1, v11

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v6, :cond_c4

    .line 5187
    iget-object v6, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    aput-object v6, v1, v11

    .line 5191
    :cond_78
    :goto_78
    iget v6, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    and-int/lit8 v6, v6, 0x10

    if-lez v6, :cond_8a

    .line 5194
    aget-object v6, v1, v12

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v6, :cond_cf

    .line 5195
    iget-object v6, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    aput-object v6, v1, v12

    .line 5199
    :cond_8a
    :goto_8a
    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    goto :goto_2a

    .line 5151
    .end local v0           #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    :cond_8d
    iget-object v6, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 5152
    iget-object v6, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    goto :goto_2a

    .line 5154
    :cond_9d
    const-string v6, "item->meta !NULL"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_2a

    .line 5165
    .restart local v0       #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    :cond_a3
    aget-object v6, v1, v8

    iget-object v7, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v8

    goto :goto_42

    .line 5173
    :cond_ae
    aget-object v6, v1, v9

    iget-object v7, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v9

    goto :goto_54

    .line 5181
    :cond_b9
    aget-object v6, v1, v10

    iget-object v7, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v10

    goto :goto_66

    .line 5189
    :cond_c4
    aget-object v6, v1, v11

    iget-object v7, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v11

    goto :goto_78

    .line 5197
    :cond_cf
    aget-object v6, v1, v12

    iget-object v7, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v12

    goto :goto_8a

    .line 5202
    .end local v0           #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    :cond_da
    const/4 v3, 0x0

    .local v3, i:I
    :goto_db
    const/4 v6, 0x5

    if-ge v3, v6, :cond_2a8

    .line 5204
    if-nez v3, :cond_104

    aget-object v6, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_104

    .line 5206
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_f8

    .line 5208
    iget-object v6, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-nez v6, :cond_1ae

    .line 5210
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5226
    :cond_f8
    :goto_f8
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_1dc

    .line 5227
    const-string v6, "Add="

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5231
    :cond_104
    :goto_104
    if-ne v3, v9, :cond_12a

    aget-object v6, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_12a

    .line 5233
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_11e

    .line 5235
    iget-object v6, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-nez v6, :cond_1e0

    .line 5237
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5253
    :cond_11e
    :goto_11e
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_20e

    .line 5254
    const-string v6, "Delete="

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5258
    :cond_12a
    :goto_12a
    if-ne v3, v10, :cond_150

    aget-object v6, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_150

    .line 5260
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_144

    .line 5262
    iget-object v6, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-nez v6, :cond_212

    .line 5264
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5280
    :cond_144
    :goto_144
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_240

    .line 5281
    const-string v6, "Exec="

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5285
    :cond_150
    :goto_150
    if-ne v3, v11, :cond_176

    aget-object v6, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_176

    .line 5287
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_16a

    .line 5289
    iget-object v6, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-nez v6, :cond_244

    .line 5291
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5307
    :cond_16a
    :goto_16a
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_272

    .line 5308
    const-string v6, "Get="

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5312
    :cond_176
    :goto_176
    if-ne v3, v12, :cond_19c

    aget-object v6, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_19c

    .line 5314
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_190

    .line 5316
    iget-object v6, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-nez v6, :cond_276

    .line 5318
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5334
    :cond_190
    :goto_190
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_2a4

    .line 5335
    const-string v6, "Replace="

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5340
    :cond_19c
    :goto_19c
    aget-object v6, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v6, :cond_1aa

    .line 5342
    aget-object v6, v1, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5202
    :cond_1aa
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_db

    .line 5212
    :cond_1ae
    iget-object v6, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c0

    .line 5214
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_f8

    .line 5216
    :cond_1c0
    const-string v6, "xml"

    iget-object v7, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v7, v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1d4

    .line 5218
    const-string v6, "&amp;"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_f8

    .line 5222
    :cond_1d4
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_f8

    .line 5229
    :cond_1dc
    const-string v4, "Add="

    goto/16 :goto_104

    .line 5239
    :cond_1e0
    iget-object v6, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f2

    .line 5241
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_11e

    .line 5243
    :cond_1f2
    const-string v6, "xml"

    iget-object v7, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v7, v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_206

    .line 5245
    const-string v6, "&amp;"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_11e

    .line 5249
    :cond_206
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_11e

    .line 5256
    :cond_20e
    const-string v4, "Delete="

    goto/16 :goto_12a

    .line 5266
    :cond_212
    iget-object v6, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_224

    .line 5268
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_144

    .line 5270
    :cond_224
    const-string v6, "xml"

    iget-object v7, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v7, v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_238

    .line 5272
    const-string v6, "&amp;"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_144

    .line 5276
    :cond_238
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_144

    .line 5283
    :cond_240
    const-string v4, "Exec="

    goto/16 :goto_150

    .line 5293
    :cond_244
    iget-object v6, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_256

    .line 5295
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_16a

    .line 5297
    :cond_256
    const-string v6, "xml"

    iget-object v7, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v7, v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_26a

    .line 5299
    const-string v6, "&amp;"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_16a

    .line 5303
    :cond_26a
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_16a

    .line 5310
    :cond_272
    const-string v4, "Get="

    goto/16 :goto_176

    .line 5320
    :cond_276
    iget-object v6, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v6, v6, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_288

    .line 5322
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_190

    .line 5324
    :cond_288
    const-string v6, "xml"

    iget-object v7, p2, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v7, v7, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_29c

    .line 5326
    const-string v6, "&amp;"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_190

    .line 5330
    :cond_29c
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_190

    .line 5337
    :cond_2a4
    const-string v4, "Replace="

    goto/16 :goto_19c

    .line 5346
    :cond_2a8
    move-object v5, v4

    .line 5348
    .local v5, szTmp:Ljava/lang/String;
    goto/16 :goto_20
.end method

.method public xdmAgentGetDMInfoFromOmTreeVer11(Lcom/wssyncmldm/db/file/XDBProfileInfo;)I
    .registers 15
    .parameter "pProfileInfo"

    .prologue
    .line 3192
    sget-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget-object v6, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 3193
    .local v6, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const/4 v2, 0x0

    .line 3194
    .local v2, buf:[C
    const/4 v0, 0x0

    .line 3195
    .local v0, ConRefName:[C
    const-string v8, ""

    .line 3196
    .local v8, szAddURI:Ljava/lang/String;
    const-string v9, ""

    .line 3197
    .local v9, szPortNum:Ljava/lang/String;
    const-string v7, ""

    .line 3199
    .local v7, szAccBuf:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3202
    .local v4, nRet:I
    sget-object v11, Lcom/wssyncmldm/agent/XDMAgent;->pAccName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e5

    .line 3204
    sget-object v11, Lcom/wssyncmldm/agent/XDMAgent;->pAccName:Ljava/lang/String;

    sput-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3205
    const/4 v11, 0x0

    sput-object v11, Lcom/wssyncmldm/agent/XDMAgent;->pAccName:Ljava/lang/String;

    .line 3214
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3215
    const-string v11, "/UserName"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3216
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3217
    .local v5, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz v5, :cond_3a

    .line 3219
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3220
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3221
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    .line 3223
    :cond_3a
    const/4 v2, 0x0

    .line 3224
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3225
    const-string v11, "/ClientPW"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3226
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3227
    if-eqz v5, :cond_59

    .line 3229
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3230
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3231
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    .line 3233
    :cond_59
    const/4 v2, 0x0

    .line 3234
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3235
    const-string v11, "/ServerId"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3236
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3237
    if-eqz v5, :cond_78

    .line 3239
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3240
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3241
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    .line 3243
    :cond_78
    const/4 v2, 0x0

    .line 3244
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3245
    const-string v11, "/ServerPW"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3246
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3247
    if-eqz v5, :cond_97

    .line 3249
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3250
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3251
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    .line 3253
    :cond_97
    const/4 v2, 0x0

    .line 3254
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3255
    const-string v11, "/Addr"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3256
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3257
    if-eqz v5, :cond_b4

    .line 3259
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3260
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3261
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    .line 3264
    :cond_b4
    const/4 v2, 0x0

    .line 3265
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3266
    const-string v11, "/PortNbr"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3267
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3268
    if-eqz v5, :cond_d1

    .line 3270
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3271
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3272
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v9

    .line 3275
    :cond_d1
    const/16 v11, 0x100

    new-array v10, v11, [C

    .line 3276
    .local v10, temp1:[C
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbDoDMBootStrapURI([C[C[C)[C

    move-result-object v10

    .line 3277
    if-nez v10, :cond_ef

    .line 3278
    const/4 v4, -0x1

    .line 3600
    .end local v4           #nRet:I
    .end local v5           #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    .end local v10           #temp1:[C
    :goto_e4
    return v4

    .line 3209
    .restart local v4       #nRet:I
    :cond_e5
    const-string v11, "XDM_RET_FAILED"

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 3210
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 3211
    const/4 v4, -0x1

    goto :goto_e4

    .line 3280
    .restart local v5       #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    .restart local v10       #temp1:[C
    :cond_ef
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10f

    .line 3282
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get DM informations from OM...SerVerURI "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3285
    :cond_10f
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([C)V

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 3286
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Get Bootstrap ServerUrl "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3287
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v11}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v3

    .line 3288
    .local v3, getParser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    iget-object v11, v3, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 3289
    iget-object v11, v3, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    .line 3290
    iget-object v11, v3, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pPath:Ljava/lang/String;

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path:Ljava/lang/String;

    .line 3291
    iget v11, v3, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    iput v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    .line 3292
    iget-object v11, v3, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    .line 3294
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    .line 3295
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP_Org:Ljava/lang/String;

    .line 3296
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path:Ljava/lang/String;

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path_Org:Ljava/lang/String;

    .line 3297
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol_Org:Ljava/lang/String;

    .line 3298
    iget v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    iput v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort_Org:I

    .line 3300
    const/4 v11, 0x0

    iput-boolean v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->bChangedProtocol:Z

    .line 3302
    const/4 v2, 0x0

    .line 3303
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3304
    const-string v11, "/ClientNonce"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3305
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3306
    if-eqz v5, :cond_182

    .line 3308
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3309
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3310
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonce:Ljava/lang/String;

    .line 3311
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    iput v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonceFormat:I

    .line 3314
    :cond_182
    const/4 v2, 0x0

    .line 3315
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3316
    const-string v11, "/AuthPref"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3317
    if-eqz v5, :cond_1c7

    .line 3319
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3320
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3321
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3322
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AuthType : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3323
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthCredString2Type(Ljava/lang/String;)I

    move-result v11

    iput v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    .line 3324
    iget v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1c7

    .line 3326
    const/4 v11, 0x0

    iput v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    .line 3330
    :cond_1c7
    const/4 v2, 0x0

    .line 3331
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3332
    const-string v11, "/ServerNonce"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3333
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3334
    if-eqz v5, :cond_1ea

    .line 3336
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3337
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3338
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonce:Ljava/lang/String;

    .line 3339
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    iput v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonceFormat:I

    .line 3342
    :cond_1ea
    const/4 v2, 0x0

    .line 3343
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3344
    const-string v11, "/Name"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3345
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3346
    if-eqz v5, :cond_254

    .line 3348
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3349
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3350
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    .line 3359
    :goto_209
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3360
    const-string v11, "/ConRef"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3361
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3362
    if-eqz v5, :cond_261

    .line 3364
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v0, v11, [C

    .line 3365
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v0, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3377
    const/4 v11, 0x0

    sput-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3379
    const-string v11, "./SyncML/Con"

    sput-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3380
    sget-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3381
    sget-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3383
    sget-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    invoke-static {v6, v11}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3384
    if-nez v5, :cond_287

    .line 3386
    const/4 v11, 0x6

    iput v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nNetworkConnIndex:I

    .line 3387
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->Active:Z

    .line 3388
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 3389
    const/4 v4, 0x0

    goto/16 :goto_e4

    .line 3354
    :cond_254
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    iput-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    .line 3355
    const/16 v1, 0x1b

    .line 3356
    .local v1, aclValue:I
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v6, v7, v11, v1, v12}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_209

    .line 3370
    .end local v1           #aclValue:I
    :cond_261
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Name : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3372
    const/4 v11, 0x6

    iput v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nNetworkConnIndex:I

    .line 3373
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->Active:Z

    .line 3374
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 3375
    const/4 v4, 0x0

    goto/16 :goto_e4

    .line 3392
    :cond_287
    const/4 v2, 0x0

    .line 3393
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3394
    const-string v11, "/NAP/Bearer"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3395
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3396
    if-eqz v5, :cond_4c6

    .line 3398
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3399
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3400
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nBearer"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3401
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v11

    if-eqz v11, :cond_4bd

    array-length v11, v2

    if-lez v11, :cond_4bd

    .line 3403
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->nBearer:I

    .line 3415
    :goto_2d5
    const/4 v2, 0x0

    .line 3416
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3417
    const-string v11, "/NAP/AddrType"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3418
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3419
    if-eqz v5, :cond_4ec

    .line 3421
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3422
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3423
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nAddrType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3424
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v11

    if-eqz v11, :cond_4e3

    array-length v11, v2

    if-lez v11, :cond_4e3

    .line 3426
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v11

    const-string v12, "NAP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4cf

    .line 3427
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    const/4 v12, 0x1

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->nAddrType:I

    .line 3440
    :goto_324
    const/4 v2, 0x0

    .line 3441
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3442
    const-string v11, "/NAP/Addr"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3443
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3444
    if-eqz v5, :cond_4fe

    .line 3446
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3447
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3448
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v11

    if-eqz v11, :cond_4f5

    .line 3450
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Addr:Ljava/lang/String;

    .line 3461
    :goto_34d
    const/4 v2, 0x0

    .line 3462
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3463
    const-string v11, "/NAP/Auth/PAP/Id"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3464
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3465
    if-eqz v5, :cond_512

    .line 3467
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3468
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3469
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PAP_ID"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3470
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v11

    if-eqz v11, :cond_507

    .line 3472
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_ID:Ljava/lang/String;

    .line 3484
    :goto_392
    const/4 v2, 0x0

    .line 3485
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3486
    const-string v11, "/NAP/Auth/PAP/Secret"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3487
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3488
    if-eqz v5, :cond_528

    .line 3490
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3491
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3492
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v11

    if-eqz v11, :cond_51d

    .line 3494
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_Secret:Ljava/lang/String;

    .line 3506
    :goto_3bd
    const/4 v2, 0x0

    .line 3507
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3508
    const-string v11, "/PX/PortNbr"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3509
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3510
    if-eqz v5, :cond_53c

    .line 3512
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3513
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3514
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nPortNbr"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3515
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v11

    if-eqz v11, :cond_533

    array-length v11, v2

    if-lez v11, :cond_533

    .line 3517
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    .line 3528
    :goto_40b
    const/4 v2, 0x0

    .line 3529
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3530
    const-string v11, "/PX/AddrType"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3531
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3532
    if-eqz v5, :cond_54e

    .line 3534
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3535
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3536
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nAddrType"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3537
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v11

    if-eqz v11, :cond_545

    array-length v11, v2

    if-lez v11, :cond_545

    .line 3539
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBConRefPX;->nAddrType:I

    .line 3551
    :goto_459
    const/4 v2, 0x0

    .line 3552
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3553
    const-string v11, "/PX/Addr"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3554
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3555
    if-eqz v5, :cond_560

    .line 3557
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3558
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3559
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    move-result v11

    if-eqz v11, :cond_557

    .line 3561
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    .line 3573
    :goto_482
    const/4 v2, 0x0

    .line 3574
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_AccName:Ljava/lang/String;

    .line 3575
    const-string v11, "/Ext/Service"

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3576
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 3577
    if-eqz v5, :cond_570

    .line 3579
    iget v11, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v2, v11, [C

    .line 3580
    const/4 v11, 0x0

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v2, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3581
    if-eqz v2, :cond_569

    array-length v11, v2

    if-lez v11, :cond_569

    .line 3583
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->nService:I

    .line 3595
    :goto_4b0
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->Active:Z

    .line 3596
    const/4 v11, 0x6

    iput v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nNetworkConnIndex:I

    .line 3598
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    goto/16 :goto_e4

    .line 3407
    :cond_4bd
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    const/4 v12, 0x0

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->nBearer:I

    goto/16 :goto_2d5

    .line 3412
    :cond_4c6
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    const/4 v12, 0x0

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->nBearer:I

    goto/16 :goto_2d5

    .line 3429
    :cond_4cf
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->nAddrType:I

    goto/16 :goto_324

    .line 3433
    :cond_4e3
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    const/4 v12, -0x1

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->nAddrType:I

    goto/16 :goto_324

    .line 3438
    :cond_4ec
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    const/4 v12, -0x1

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->nAddrType:I

    goto/16 :goto_324

    .line 3454
    :cond_4f5
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Addr:Ljava/lang/String;

    goto/16 :goto_34d

    .line 3459
    :cond_4fe
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Addr:Ljava/lang/String;

    goto/16 :goto_34d

    .line 3476
    :cond_507
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_ID:Ljava/lang/String;

    goto/16 :goto_392

    .line 3481
    :cond_512
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_ID:Ljava/lang/String;

    goto/16 :goto_392

    .line 3498
    :cond_51d
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_Secret:Ljava/lang/String;

    goto/16 :goto_3bd

    .line 3503
    :cond_528
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_Secret:Ljava/lang/String;

    goto/16 :goto_3bd

    .line 3521
    :cond_533
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    const/4 v12, 0x0

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    goto/16 :goto_40b

    .line 3526
    :cond_53c
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    const/4 v12, 0x0

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    goto/16 :goto_40b

    .line 3543
    :cond_545
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    const/4 v12, -0x1

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBConRefPX;->nAddrType:I

    goto/16 :goto_459

    .line 3548
    :cond_54e
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    const/4 v12, -0x1

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBConRefPX;->nAddrType:I

    goto/16 :goto_459

    .line 3565
    :cond_557
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    goto/16 :goto_482

    .line 3570
    :cond_560
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v11, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    goto/16 :goto_482

    .line 3587
    :cond_569
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    const/4 v12, -0x1

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->nService:I

    goto/16 :goto_4b0

    .line 3592
    :cond_570
    iget-object v11, p1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    const/4 v12, -0x1

    iput v12, v11, Lcom/wssyncmldm/db/file/XDBInfoConRef;->nService:I

    goto/16 :goto_4b0
.end method

.method public xdmAgentGetDMInfoFromOmTreeVer12(Lcom/wssyncmldm/db/file/XDBProfileInfo;)I
    .registers 23
    .parameter "pProfileInfo"

    .prologue
    .line 2769
    sget-object v17, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 2771
    .local v11, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const/4 v5, 0x0

    .line 2772
    .local v5, buf:[C
    const/4 v2, 0x0

    .line 2773
    .local v2, ConRefName:[C
    const-string v13, ""

    .line 2774
    .local v13, szAddressURI:Ljava/lang/String;
    const-string v15, ""

    .line 2775
    .local v15, szPortNum:Ljava/lang/String;
    const-string v14, ""

    .line 2776
    .local v14, szAuthType:Ljava/lang/String;
    const/4 v12, 0x0

    .line 2778
    .local v12, szAccBuf:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2781
    .local v9, nRet:I
    sget-object v17, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_64

    sget-object v17, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_64

    sget-object v17, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_64

    sget-object v17, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_64

    sget-object v17, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_64

    sget-object v17, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_69

    .line 2785
    :cond_64
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 2786
    const/4 v9, -0x1

    .line 3186
    .end local v9           #nRet:I
    :goto_68
    return v9

    .line 2789
    .restart local v9       #nRet:I
    :cond_69
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 2790
    const/16 v17, 0x40

    move/from16 v0, v17

    new-array v2, v0, [C

    .line 2793
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/AppID"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2794
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 2795
    .local v10, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz v10, :cond_2d4

    .line 2797
    const/4 v5, 0x0

    .line 2798
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 2799
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 2801
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AppID:Ljava/lang/String;

    .line 2802
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get AppID from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AppID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 2810
    :goto_d5
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/ServerID"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2811
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 2813
    if-eqz v10, :cond_2fe

    .line 2815
    const/4 v5, 0x0

    .line 2816
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 2817
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 2818
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    .line 2820
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_141

    .line 2822
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get ServerId from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 2832
    :cond_141
    :goto_141
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/Name"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2833
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 2834
    if-eqz v10, :cond_326

    .line 2836
    const/4 v5, 0x0

    .line 2837
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 2838
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 2839
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    .line 2840
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get ProfileName from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 2852
    :goto_1a1
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/PrefConRef"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2853
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 2854
    if-eqz v10, :cond_346

    .line 2856
    const/4 v5, 0x0

    .line 2857
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 2858
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 2859
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->PrefConRef:Ljava/lang/String;

    .line 2860
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get PrefConRef from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->PrefConRef:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 2868
    :goto_201
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/Addr"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2869
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 2870
    if-eqz v10, :cond_36e

    .line 2872
    const/4 v5, 0x0

    .line 2873
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 2874
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 2875
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v13

    .line 2876
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_25d

    .line 2878
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get AddressURI from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 2888
    :cond_25d
    :goto_25d
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/PortNbr"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2889
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 2890
    if-eqz v10, :cond_38e

    .line 2892
    const/4 v5, 0x0

    .line 2893
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 2894
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 2895
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v15

    .line 2896
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2b9

    .line 2898
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get PortNum from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 2908
    :cond_2b9
    :goto_2b9
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v3, v0, [C

    .line 2909
    .local v3, URLCharArray:[C
    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbDoDMBootStrapURI([C[C[C)[C

    move-result-object v3

    .line 2910
    if-nez v3, :cond_3b2

    .line 2911
    const/4 v9, -0x1

    goto/16 :goto_68

    .line 2806
    .end local v3           #URLCharArray:[C
    :cond_2d4
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/db/file/XDB;->xdbGetAppID(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AppID:Ljava/lang/String;

    .line 2807
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get AppID from DB : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AppID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_d5

    .line 2827
    :cond_2fe
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerID()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    .line 2828
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get ServerId from DB : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_141

    .line 2845
    :cond_326
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    .line 2846
    const/16 v4, 0x1b

    .line 2847
    .local v4, aclValue:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v4, v1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2848
    const/4 v12, 0x0

    goto/16 :goto_1a1

    .line 2864
    .end local v4           #aclValue:I
    :cond_346
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPrefConRef()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->PrefConRef:Ljava/lang/String;

    .line 2865
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get PrefConRef from DB : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->PrefConRef:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_201

    .line 2883
    :cond_36e
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerUrl(I)Ljava/lang/String;

    move-result-object v13

    .line 2884
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get AddressURI from DB : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_25d

    .line 2903
    :cond_38e
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerPort(I)I

    move-result v8

    .line 2904
    .local v8, nNum:I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 2905
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get PortNum from DB : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_2b9

    .line 2913
    .end local v8           #nNum:I
    .restart local v3       #URLCharArray:[C
    :cond_3b2
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 2914
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v7

    .line 2915
    .local v7, getParser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    iget-object v0, v7, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 2916
    iget-object v0, v7, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    .line 2917
    iget-object v0, v7, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path:Ljava/lang/String;

    .line 2918
    iget v0, v7, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    .line 2919
    iget-object v0, v7, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    .line 2921
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    .line 2922
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP_Org:Ljava/lang/String;

    .line 2923
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path_Org:Ljava/lang/String;

    .line 2924
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol_Org:Ljava/lang/String;

    .line 2925
    move-object/from16 v0, p1

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort_Org:I

    .line 2926
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->bChangedProtocol:Z

    .line 2929
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/AAuthLevel"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2930
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 2931
    if-eqz v10, :cond_8f7

    .line 2933
    const/4 v5, 0x0

    .line 2934
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 2935
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 2936
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthLevel:Ljava/lang/String;

    .line 2937
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get Client Auth Level from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthLevel:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 2946
    :goto_49f
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/AAuthType"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2947
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 2948
    if-eqz v10, :cond_96a

    .line 2950
    const/4 v5, 0x0

    .line 2951
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 2952
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 2953
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v16

    .line 2957
    .local v16, szType:Ljava/lang/String;
    :try_start_4dd
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthAAuthType2String(I)Ljava/lang/String;
    :try_end_4e8
    .catch Ljava/lang/NumberFormatException; {:try_start_4dd .. :try_end_4e8} :catch_91f

    move-result-object v14

    .line 2963
    :goto_4e9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "type > "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 2965
    const-string v17, "DIGEST"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_924

    .line 2967
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    .line 2985
    :goto_521
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get Client Auth Type from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 2994
    .end local v16           #szType:Ljava/lang/String;
    :goto_53d
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/AAuthName"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2995
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 2996
    if-eqz v10, :cond_992

    .line 2998
    const/4 v5, 0x0

    .line 2999
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 3000
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3001
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    .line 3002
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get UserName from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3011
    :goto_59d
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/AAuthSecret"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 3012
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 3013
    if-eqz v10, :cond_9ba

    .line 3015
    const/4 v5, 0x0

    .line 3016
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 3017
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3018
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    .line 3019
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get Password from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3028
    :goto_5fd
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/AAuthData"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 3029
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 3030
    if-eqz v10, :cond_9e2

    .line 3032
    const/4 v5, 0x0

    .line 3033
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 3034
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3036
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonce:Ljava/lang/String;

    .line 3037
    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonceFormat:I

    .line 3038
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get ClientNonce from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonce:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3048
    :goto_66c
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/AAuthLevel"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 3049
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 3050
    if-eqz v10, :cond_a12

    .line 3052
    const/4 v5, 0x0

    .line 3053
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 3054
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3055
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerAuthLevel:Ljava/lang/String;

    .line 3056
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get Server Auth Level from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerAuthLevel:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3065
    :goto_6cc
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/AAuthType"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 3066
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 3067
    if-eqz v10, :cond_a85

    .line 3069
    const/4 v5, 0x0

    .line 3070
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 3071
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3072
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v16

    .line 3076
    .restart local v16       #szType:Ljava/lang/String;
    :try_start_70a
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthAAuthType2String(I)Ljava/lang/String;
    :try_end_715
    .catch Ljava/lang/NumberFormatException; {:try_start_70a .. :try_end_715} :catch_a3a

    move-result-object v14

    .line 3082
    :goto_716
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "type > "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3084
    const-string v17, "DIGEST"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a3f

    .line 3086
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    .line 3104
    :goto_74e
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get Server Auth Type from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3114
    .end local v16           #szType:Ljava/lang/String;
    :goto_76a
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/AAuthName"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 3115
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 3116
    if-eqz v10, :cond_7ca

    .line 3118
    const/4 v5, 0x0

    .line 3119
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 3120
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3121
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    .line 3122
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get ServerId from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3126
    :cond_7ca
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/AAuthSecret"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 3127
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 3128
    if-eqz v10, :cond_aad

    .line 3130
    const/4 v5, 0x0

    .line 3131
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 3132
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3133
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    .line 3134
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get ServerPwd from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3143
    :goto_82a
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/AAuthData"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 3144
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 3145
    if-eqz v10, :cond_ad5

    .line 3147
    const/4 v5, 0x0

    .line 3148
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v5, v0, [C

    .line 3149
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v5, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3150
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonce:Ljava/lang/String;

    .line 3151
    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonceFormat:I

    .line 3152
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get ServerNonce from OM : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonce:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 3160
    :goto_899
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/Ext"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 3161
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 3162
    if-eqz v10, :cond_8bf

    .line 3171
    :cond_8bf
    const-string v17, "%s%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "/ConRef"

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 3172
    invoke-static {v11, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v10

    .line 3173
    if-eqz v10, :cond_afd

    .line 3175
    const/16 v17, 0x0

    iget v0, v10, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v12, v0, v2, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 3185
    :cond_8f2
    :goto_8f2
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    goto/16 :goto_68

    .line 2941
    :cond_8f7
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetAuthLevel()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthLevel:Ljava/lang/String;

    .line 2942
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get Client Auth Level from DB : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthLevel:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_49f

    .line 2959
    .restart local v16       #szType:Ljava/lang/String;
    :catch_91f
    move-exception v6

    .line 2961
    .local v6, ex:Ljava/lang/NumberFormatException;
    move-object/from16 v14, v16

    goto/16 :goto_4e9

    .line 2969
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    :cond_924
    const-string v17, "BASIC"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_938

    .line 2971
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    goto/16 :goto_521

    .line 2973
    :cond_938
    const-string v17, "HMAC"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_94c

    .line 2975
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    goto/16 :goto_521

    .line 2977
    :cond_94c
    const-string v17, "DIGEST"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_960

    .line 2979
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    goto/16 :goto_521

    .line 2983
    :cond_960
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    goto/16 :goto_521

    .line 2989
    .end local v16           #szType:Ljava/lang/String;
    :cond_96a
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetAuthType()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    .line 2990
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get Client Auth Type from DB : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_53d

    .line 3006
    :cond_992
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetUsername()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    .line 3007
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get UserName from DB : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_59d

    .line 3023
    :cond_9ba
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetClientPassword()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    .line 3024
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get Password from DB : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_5fd

    .line 3042
    :cond_9e2
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetClientNonce()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonce:Ljava/lang/String;

    .line 3043
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonceFormat:I

    .line 3044
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get ClientNonce from DB : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonce:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_66c

    .line 3060
    :cond_a12
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerAuthLevel()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerAuthLevel:Ljava/lang/String;

    .line 3061
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get Server Auth Level from DB : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerAuthLevel:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_6cc

    .line 3078
    .restart local v16       #szType:Ljava/lang/String;
    :catch_a3a
    move-exception v6

    .line 3080
    .restart local v6       #ex:Ljava/lang/NumberFormatException;
    move-object/from16 v14, v16

    goto/16 :goto_716

    .line 3088
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    :cond_a3f
    const-string v17, "BASIC"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a53

    .line 3090
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    goto/16 :goto_74e

    .line 3092
    :cond_a53
    const-string v17, "HMAC"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a67

    .line 3094
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    goto/16 :goto_74e

    .line 3096
    :cond_a67
    const-string v17, "DIGEST"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a7b

    .line 3098
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    goto/16 :goto_74e

    .line 3102
    :cond_a7b
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    goto/16 :goto_74e

    .line 3108
    .end local v16           #szType:Ljava/lang/String;
    :cond_a85
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerAuthType()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    .line 3109
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get Server Auth Type from DB : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_76a

    .line 3138
    :cond_aad
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerPassword()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    .line 3139
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get ServerPwd from DB : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_82a

    .line 3156
    :cond_ad5
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerNonce()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonce:Ljava/lang/String;

    .line 3157
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get ServerNonce from DB : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonce:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_899

    .line 3179
    :cond_afd
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8f2

    .line 3181
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Name : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_8f2
.end method

.method public xdmAgentGetPathFromNode(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;)Ljava/lang/String;
    .registers 12
    .parameter "om"
    .parameter "node"

    .prologue
    .line 4632
    const/16 v7, 0xa

    new-array v0, v7, [Ljava/lang/String;

    .line 4633
    .local v0, buf:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 4634
    .local v3, level:I
    move-object v1, p2

    .line 4635
    .local v1, cur:Lcom/wssyncmldm/eng/core/XDMVnode;
    const/4 v4, 0x0

    .line 4637
    .local v4, szName:Ljava/lang/String;
    iget-object v7, p1, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    iget-object v8, p1, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    iget-object v8, v8, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    invoke-static {v7, v8, p2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsGetParent(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;Lcom/wssyncmldm/eng/core/XDMVnode;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    .line 4638
    :goto_11
    if-eqz v1, :cond_2a

    iget-object v7, p1, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    iget-object v7, v7, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    if-eq v1, v7, :cond_2a

    .line 4640
    iget-object v7, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    aput-object v7, v0, v3

    .line 4641
    add-int/lit8 v3, v3, 0x1

    .line 4642
    iget-object v7, p1, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    iget-object v8, p1, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    iget-object v8, v8, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    invoke-static {v7, v8, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsGetParent(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;Lcom/wssyncmldm/eng/core/XDMVnode;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    goto :goto_11

    .line 4645
    :cond_2a
    if-nez v1, :cond_31

    .line 4647
    const-string v6, "."

    .line 4648
    .local v6, szOutbuf:Ljava/lang/String;
    move-object v4, v6

    move-object v5, v4

    .line 4664
    .end local v4           #szName:Ljava/lang/String;
    .local v5, szName:Ljava/lang/String;
    :goto_30
    return-object v5

    .line 4652
    .end local v5           #szName:Ljava/lang/String;
    .end local v6           #szOutbuf:Ljava/lang/String;
    .restart local v4       #szName:Ljava/lang/String;
    :cond_31
    const-string v6, "./"

    .line 4653
    .restart local v6       #szOutbuf:Ljava/lang/String;
    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_35
    if-ltz v2, :cond_46

    .line 4655
    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4656
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4653
    add-int/lit8 v2, v2, -0x1

    goto :goto_35

    .line 4658
    :cond_46
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_56

    const-string v7, "./"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_5c

    .line 4660
    :cond_56
    iget-object v7, p2, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4663
    :cond_5c
    move-object v4, v6

    move-object v5, v4

    .line 4664
    .end local v4           #szName:Ljava/lang/String;
    .restart local v5       #szName:Ljava/lang/String;
    goto :goto_30
.end method

.method public xdmAgentGetWorkSpace()Lcom/wssyncmldm/eng/core/XDMWorkspace;
    .registers 2

    .prologue
    .line 116
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    if-nez v0, :cond_b

    .line 118
    const-string v0, "dm_ws is NULL"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    goto :goto_a
.end method

.method public xdmAgentHandleCmd()I
    .registers 13

    .prologue
    const/4 v6, -0x5

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 5783
    sget-object v5, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 5785
    .local v5, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v2, 0x0

    .line 5786
    .local v2, list:Lcom/wssyncmldm/eng/core/XDMLinkedList;
    const/4 v4, 0x0

    .line 5787
    .local v4, status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;
    const/4 v3, 0x0

    .line 5788
    .local v3, res:I
    const/4 v1, 0x0

    .line 5790
    .local v1, isAtomic:Z
    iget-object v8, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->procState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    sget-object v9, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    if-ne v8, v9, :cond_14

    .line 5792
    iput v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->procStep:I

    .line 5793
    iput v10, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->cmdID:I

    .line 5796
    :cond_14
    :goto_14
    iget v8, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->procStep:I

    if-eq v8, v11, :cond_10d

    .line 5799
    iget-boolean v8, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->IsSequenceProcessing:Z

    if-nez v8, :cond_b7

    .line 5801
    iget-object v2, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 5802
    invoke-static {v2, v7}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 5803
    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .line 5835
    .local v0, cmditem:Lcom/wssyncmldm/agent/XDMAgent;
    :cond_27
    :goto_27
    if-nez v0, :cond_30

    .line 5837
    iget-object v8, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicAlert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    if-eqz v8, :cond_10d

    .line 5839
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdUicAlert()Z

    .line 5848
    :cond_30
    if-eqz v0, :cond_108

    .line 5850
    const-string v8, "Get"

    iget-object v9, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_8c

    const-string v8, "Exec"

    iget-object v9, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_8c

    const-string v8, "Alert"

    iget-object v9, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_8c

    const-string v8, "Add"

    iget-object v9, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_8c

    const-string v8, "Replace"

    iget-object v9, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_8c

    const-string v8, "Copy"

    iget-object v9, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_8c

    const-string v8, "Delete"

    iget-object v9, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_8c

    const-string v8, "Atomic_Start"

    iget-object v9, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_8c

    const-string v8, "Sequence_Start"

    iget-object v9, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_92

    .line 5860
    :cond_8c
    iget v8, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->numAction:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->numAction:I

    .line 5862
    :cond_92
    iget-object v8, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5863
    iget-object v8, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    if-eqz v8, :cond_e3

    .line 5865
    iput-boolean v10, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    .line 5866
    const/4 v1, 0x1

    .line 5873
    :cond_9e
    :goto_9e
    invoke-virtual {p0, v0, v1, v4}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentVerifyCmd(Lcom/wssyncmldm/agent/XDMAgent;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I

    move-result v3

    .line 5876
    iget-boolean v8, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->IsSequenceProcessing:Z

    if-nez v8, :cond_af

    .line 5878
    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmditem:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .line 5879
    .restart local v0       #cmditem:Lcom/wssyncmldm/agent/XDMAgent;
    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListRemoveObjAtFirst(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    .line 5884
    :cond_af
    if-ne v3, v6, :cond_ea

    .line 5886
    const-string v7, "XDM_RET_PAUSED_BECAUSE_UIC_COMMAND"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5915
    .end local v0           #cmditem:Lcom/wssyncmldm/agent/XDMAgent;
    :goto_b6
    return v6

    .line 5807
    :cond_b7
    iget-object v2, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sequenceList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 5809
    invoke-static {v2, v7}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .line 5810
    .restart local v0       #cmditem:Lcom/wssyncmldm/agent/XDMAgent;
    if-eqz v0, :cond_e0

    .line 5812
    iget-object v8, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sequenceList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-virtual {p0, v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdSequenceBlock(Lcom/wssyncmldm/eng/core/XDMLinkedList;)I

    .line 5820
    :goto_c6
    iget-boolean v8, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->IsSequenceProcessing:Z

    if-nez v8, :cond_27

    .line 5822
    iget-object v2, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 5823
    invoke-static {v2, v7}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 5824
    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmditem:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .line 5828
    .restart local v0       #cmditem:Lcom/wssyncmldm/agent/XDMAgent;
    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cmditem:Lcom/wssyncmldm/agent/XDMAgent;
    check-cast v0, Lcom/wssyncmldm/agent/XDMAgent;

    .line 5829
    .restart local v0       #cmditem:Lcom/wssyncmldm/agent/XDMAgent;
    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListRemoveObjAtFirst(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    goto/16 :goto_27

    .line 5816
    :cond_e0
    iput-boolean v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->IsSequenceProcessing:Z

    goto :goto_c6

    .line 5868
    :cond_e3
    iget-object v8, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    if-eqz v8, :cond_9e

    .line 5870
    iput-boolean v10, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    goto :goto_9e

    .line 5891
    :cond_ea
    iput-boolean v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicFlag:Z

    .line 5892
    iput-boolean v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    .line 5893
    iput-boolean v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    .line 5896
    const/4 v8, 0x2

    if-eq v3, v8, :cond_f5

    if-ne v3, v10, :cond_fb

    .line 5898
    :cond_f5
    iput v11, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->procStep:I

    .line 5899
    iput v7, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->numAction:I

    move v6, v3

    .line 5900
    goto :goto_b6

    .line 5902
    :cond_fb
    if-ne v3, v11, :cond_ff

    move v6, v3

    .line 5904
    goto :goto_b6

    .line 5906
    :cond_ff
    if-eqz v3, :cond_30

    .line 5908
    const-string v6, "Processing failed"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 5909
    const/4 v6, -0x1

    goto :goto_b6

    .line 5912
    :cond_108
    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListClearLinkedList(Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    goto/16 :goto_14

    .line 5914
    .end local v0           #cmditem:Lcom/wssyncmldm/agent/XDMAgent;
    :cond_10d
    iget-object v6, v5, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v6}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListClearLinkedList(Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    move v6, v7

    .line 5915
    goto :goto_b6
.end method

.method public xdmAgentInstallBootStrap(I[B)Z
    .registers 9
    .parameter "nSize"
    .parameter "pData"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2583
    const/4 v1, 0x0

    .line 2584
    .local v1, nRet:I
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentInit()I

    .line 2585
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 2587
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    sget-object v5, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_INIT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    iput-object v5, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 2588
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iput v3, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->cmdID:I

    .line 2589
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    sget-object v5, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    iput-object v5, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    .line 2591
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeBootStrapNode()I

    move-result v1

    .line 2592
    if-eqz v1, :cond_29

    .line 2594
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 2595
    const-string v3, "Failed"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2627
    :goto_28
    return v2

    .line 2599
    :cond_29
    const/16 v4, 0x1c00

    if-le p1, v4, :cond_36

    .line 2601
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 2602
    const-string v3, "Size Over"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_28

    .line 2608
    :cond_36
    :try_start_36
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3d} :catch_53

    .line 2617
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iput p1, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->bufsize:I

    .line 2618
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    sget-object v5, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    iput-object v5, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->procState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 2620
    invoke-virtual {p0, p2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentParsingBootStrap([B)I

    move-result v1

    .line 2621
    if-eqz v1, :cond_61

    .line 2623
    const-string v3, "Bootstrap Parse Error"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_28

    .line 2610
    :catch_53
    move-exception v0

    .line 2612
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Stream Write Error"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2613
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_28

    .end local v0           #e:Ljava/io/IOException;
    :cond_61
    move v2, v3

    .line 2627
    goto :goto_28
.end method

.method public xdmAgentIsAccessibleNode(Ljava/lang/String;)Z
    .registers 6
    .parameter "szPath"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    const/4 v0, 0x0

    .line 194
    .local v0, szInbox:Ljava/lang/String;
    const-string v3, "/AAuthSecret"

    invoke-static {p1, v3}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrstr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 215
    :cond_f
    :goto_f
    return v1

    .line 199
    :cond_10
    const-string v3, "/AAuthData"

    invoke-static {p1, v3}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrstr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 204
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFGetMOPath(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move v1, v2

    .line 207
    goto :goto_f

    .line 210
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p1, v0, v3}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrncmp(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_f

    move v1, v2

    .line 215
    goto :goto_f
.end method

.method public xdmAgentIsPermanentNode(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Z
    .registers 6
    .parameter "om"
    .parameter "szPath"

    .prologue
    const/4 v1, 0x1

    .line 222
    invoke-static {p1, p2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v0

    .line 224
    .local v0, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz v0, :cond_c

    .line 226
    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->scope:I

    if-ne v2, v1, :cond_c

    .line 231
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public xdmAgentLibMakeSessionID()Ljava/lang/String;
    .registers 9

    .prologue
    .line 549
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 553
    .local v0, data:Ljava/util/Calendar;
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, szNowData:Ljava/lang/String;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 556
    .local v1, second:I
    const-string v4, "%x%x"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, szSessionid:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Make sessionid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 559
    return-object v3
.end method

.method public xdmAgentLoadWorkSpace()I
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 793
    sget-object v9, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 794
    .local v9, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    if-nez v9, :cond_8

    .line 1043
    :cond_7
    :goto_7
    return v10

    .line 798
    :cond_8
    iget-object v6, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 799
    .local v6, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const/4 v1, 0x0

    .line 800
    .local v1, dValue:[B
    const-string v7, ""

    .line 802
    .local v7, szAccBuf:Ljava/lang/String;
    const/4 v5, 0x0

    .line 803
    .local v5, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    const/4 v3, 0x0

    .line 805
    .local v3, nReSyncMode:I
    sget-object v12, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v7, v12, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 806
    const-string v12, "/AAuthName"

    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 807
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 808
    if-eqz v5, :cond_7

    .line 813
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v0, v12, [C

    .line 814
    .local v0, buf:[C
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v0, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 815
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szUserName:Ljava/lang/String;

    .line 817
    sget-object v12, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v7, v12, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 818
    const-string v12, "/AAuthSecret"

    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 819
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 820
    if-eqz v5, :cond_7

    .line 824
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v0, v12, [C

    .line 825
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v0, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 826
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szClientPW:Ljava/lang/String;

    .line 828
    sget-object v12, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v7, v12, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 829
    const-string v12, "/AAuthType"

    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 830
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 831
    if-eqz v5, :cond_7

    .line 835
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v0, v12, [C

    .line 836
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v0, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 838
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNotiReSyncMode()I

    move-result v3

    .line 840
    if-ne v3, v14, :cond_136

    .line 843
    const-string v12, "DIGEST"

    invoke-static {v12}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthAAuthtring2Type(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    .line 853
    :goto_74
    sget-object v12, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v7, v12, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 854
    const-string v12, "/AAuthType"

    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 855
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 856
    if-eqz v5, :cond_7

    .line 860
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v0, v12, [C

    .line 861
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v0, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 862
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNotiReSyncMode()I

    move-result v3

    .line 864
    if-ne v3, v14, :cond_142

    .line 867
    const-string v12, "DIGEST"

    invoke-static {v12}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthAAuthtring2Type(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    .line 880
    :cond_9b
    :goto_9b
    sget-object v12, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v7, v12, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 881
    const-string v12, "/ServerID"

    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 882
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 883
    if-eqz v5, :cond_7

    .line 887
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v0, v12, [C

    .line 888
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v0, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 889
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerID:Ljava/lang/String;

    .line 891
    sget-object v12, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v7, v12, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 892
    const-string v12, "/AAuthSecret"

    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 893
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 894
    if-eqz v5, :cond_7

    .line 899
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v0, v12, [C

    .line 900
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v0, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 901
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerPW:Ljava/lang/String;

    .line 903
    if-ne v3, v14, :cond_156

    .line 905
    iget-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    aput-byte v11, v12, v11

    .line 906
    iget-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    aput-byte v11, v12, v14

    .line 907
    iget-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    const/4 v13, 0x2

    aput-byte v11, v12, v13

    .line 908
    iget-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    const/4 v13, 0x3

    aput-byte v11, v12, v13

    .line 957
    :cond_ed
    :goto_ed
    sget-object v12, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v7, v12, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 958
    const-string v12, "/AAuthData"

    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 959
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Server szAccBuf) :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 960
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 961
    if-eqz v5, :cond_7

    .line 963
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    if-lez v12, :cond_1cc

    .line 965
    const/4 v0, 0x0

    .line 966
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v0, v12, [C

    .line 967
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v0, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 973
    :goto_121
    if-eqz v0, :cond_211

    .line 975
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    if-eq v12, v14, :cond_1cf

    .line 977
    const/4 v2, 0x0

    .local v2, i:I
    :goto_128
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    if-ge v2, v12, :cond_211

    .line 978
    iget-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    aget-char v13, v0, v2

    int-to-byte v13, v13

    aput-byte v13, v12, v2

    .line 977
    add-int/lit8 v2, v2, 0x1

    goto :goto_128

    .line 849
    .end local v2           #i:I
    :cond_136
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    .line 850
    .local v8, szTmp:Ljava/lang/String;
    invoke-static {v8}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthAAuthtring2Type(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    goto/16 :goto_74

    .line 873
    .end local v8           #szTmp:Ljava/lang/String;
    :cond_142
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    .line 874
    .restart local v8       #szTmp:Ljava/lang/String;
    invoke-static {v8}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthAAuthtring2Type(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    .line 875
    iget v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    if-ne v12, v10, :cond_9b

    .line 877
    iget v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    iput v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    goto/16 :goto_9b

    .line 912
    .end local v8           #szTmp:Ljava/lang/String;
    :cond_156
    sget-object v12, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v7, v12, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 913
    const-string v12, "/AAuthData"

    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 914
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 915
    if-eqz v5, :cond_7

    .line 917
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    if-lez v12, :cond_188

    .line 919
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v0, v12, [C

    .line 920
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v0, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 926
    :goto_173
    if-eqz v0, :cond_ed

    .line 928
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    if-eq v12, v14, :cond_1a4

    .line 930
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_17a
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    if-ge v2, v12, :cond_18a

    .line 931
    iget-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    aget-char v13, v0, v2

    int-to-byte v13, v13

    aput-byte v13, v12, v2

    .line 930
    add-int/lit8 v2, v2, 0x1

    goto :goto_17a

    .line 924
    .end local v2           #i:I
    :cond_188
    const/4 v0, 0x0

    goto :goto_173

    .line 933
    .restart local v2       #i:I
    :cond_18a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "node->size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_ed

    .line 937
    .end local v2           #i:I
    :cond_1a4
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Decode([B)[B

    move-result-object v1

    .line 938
    if-eqz v1, :cond_1c5

    .line 940
    array-length v12, v1

    new-array v12, v12, [B

    iput-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    .line 941
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1b9
    array-length v12, v1

    if-ge v2, v12, :cond_ed

    .line 942
    iget-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    aget-byte v13, v1, v2

    aput-byte v13, v12, v2

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b9

    .line 946
    .end local v2           #i:I
    :cond_1c5
    const-string v12, "dValue is NULL"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_ed

    .line 971
    :cond_1cc
    const/4 v0, 0x0

    goto/16 :goto_121

    .line 982
    :cond_1cf
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Server Next Noncenew String(buf) :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 983
    const/4 v1, 0x0

    .line 984
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Decode([B)[B

    move-result-object v1

    .line 985
    if-eqz v1, :cond_20c

    .line 987
    array-length v12, v1

    new-array v12, v12, [B

    iput-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    .line 988
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_200
    array-length v12, v1

    if-ge v2, v12, :cond_211

    .line 989
    iget-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    aget-byte v13, v1, v2

    aput-byte v13, v12, v2

    .line 988
    add-int/lit8 v2, v2, 0x1

    goto :goto_200

    .line 993
    .end local v2           #i:I
    :cond_20c
    const-string v12, " dValue is NULL"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1002
    :cond_211
    sget-object v12, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v7, v12, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 1003
    const-string v12, "/Addr"

    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1004
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 1005
    if-eqz v5, :cond_7

    .line 1009
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v0, v12, [C

    .line 1010
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v0, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 1011
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szHostname:Ljava/lang/String;

    .line 1013
    sget-object v12, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v7, v12, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    .line 1014
    const-string v12, "/PortNbr"

    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1015
    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 1016
    if-eqz v5, :cond_7

    .line 1020
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v0, v12, [C

    .line 1021
    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v7, v11, v0, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 1024
    :try_start_249
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->port:I
    :try_end_257
    .catch Ljava/lang/NumberFormatException; {:try_start_249 .. :try_end_257} :catch_274

    .line 1031
    :goto_257
    const-string v12, "./DevInfo/DevId"

    invoke-static {v6, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v5

    .line 1032
    if-eqz v5, :cond_7

    .line 1036
    iget v10, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v0, v10, [C

    .line 1037
    const-string v10, "./DevInfo/DevId"

    iget v12, v5, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v6, v10, v11, v0, v12}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 1039
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSourceURI:Ljava/lang/String;

    .line 1041
    const/4 v0, 0x0

    move v10, v11

    .line 1043
    goto/16 :goto_7

    .line 1026
    :catch_274
    move-exception v4

    .line 1028
    .local v4, ne:Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_257
.end method

.method public xdmAgentMakeAcl(Lcom/wssyncmldm/eng/core/XDMOmList;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMOmList;
    .registers 15
    .parameter "acllist"
    .parameter "szAcl"

    .prologue
    const/16 v11, 0x26

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5353
    const/4 v0, 0x0

    .line 5354
    .local v0, buf:[C
    const/4 v1, 0x0

    .line 5355
    .local v1, subbuf:[C
    move-object v3, p2

    .line 5358
    .local v3, szData:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    new-array v0, v5, [C

    .line 5359
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v5, v11, v0}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrsplit([CC[C)Ljava/lang/String;

    move-result-object v3

    .line 5360
    :goto_17
    if-eqz v0, :cond_54

    .line 5362
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 5363
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aput-char v7, v0, v5

    .line 5364
    :cond_24
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v4

    .line 5365
    .local v4, szSub:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    new-array v1, v5, [C

    .line 5366
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/16 v6, 0x3d

    invoke-static {v5, v6, v1}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrsplit([CC[C)Ljava/lang/String;

    move-result-object v4

    .line 5367
    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v2

    .line 5369
    .local v2, szCmd:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 5371
    const-string v5, "Add"

    invoke-virtual {v5, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_55

    .line 5373
    invoke-virtual {p0, p1, v4, v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentAppendAclItem(Lcom/wssyncmldm/eng/core/XDMOmList;Ljava/lang/String;I)Lcom/wssyncmldm/eng/core/XDMOmList;

    move-result-object p1

    .line 5393
    :cond_4e
    :goto_4e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 5405
    .end local v2           #szCmd:Ljava/lang/String;
    .end local v4           #szSub:Ljava/lang/String;
    :cond_54
    return-object p1

    .line 5375
    .restart local v2       #szCmd:Ljava/lang/String;
    .restart local v4       #szSub:Ljava/lang/String;
    :cond_55
    const-string v5, "Delete"

    invoke-virtual {v5, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_62

    .line 5377
    invoke-virtual {p0, p1, v4, v9}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentAppendAclItem(Lcom/wssyncmldm/eng/core/XDMOmList;Ljava/lang/String;I)Lcom/wssyncmldm/eng/core/XDMOmList;

    move-result-object p1

    goto :goto_4e

    .line 5379
    :cond_62
    const-string v5, "Replace"

    invoke-virtual {v5, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_71

    .line 5381
    const/16 v5, 0x10

    invoke-virtual {p0, p1, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentAppendAclItem(Lcom/wssyncmldm/eng/core/XDMOmList;Ljava/lang/String;I)Lcom/wssyncmldm/eng/core/XDMOmList;

    move-result-object p1

    goto :goto_4e

    .line 5383
    :cond_71
    const-string v5, "Get"

    invoke-virtual {v5, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_80

    .line 5385
    const/16 v5, 0x8

    invoke-virtual {p0, p1, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentAppendAclItem(Lcom/wssyncmldm/eng/core/XDMOmList;Ljava/lang/String;I)Lcom/wssyncmldm/eng/core/XDMOmList;

    move-result-object p1

    goto :goto_4e

    .line 5387
    :cond_80
    const-string v5, "Exec"

    invoke-virtual {v5, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4e

    .line 5389
    invoke-virtual {p0, p1, v4, v10}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentAppendAclItem(Lcom/wssyncmldm/eng/core/XDMOmList;Ljava/lang/String;I)Lcom/wssyncmldm/eng/core/XDMOmList;

    move-result-object p1

    goto :goto_4e

    .line 5395
    :cond_8d
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-ne v5, v6, :cond_b2

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_b2

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x70

    if-ne v5, v6, :cond_b2

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_b2

    .line 5398
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 5401
    :cond_b2
    const/4 v0, 0x0

    .line 5402
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [C

    .line 5403
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v5, v11, v0}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibStrsplit([CC[C)Ljava/lang/String;

    move-result-object v3

    .line 5404
    goto/16 :goto_17
.end method

.method public xdmAgentMakeDevDetailNode()I
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 1791
    sget-object v7, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 1792
    .local v7, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v2, v7, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 1795
    .local v2, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const-string v4, ""

    .line 1796
    .local v4, szHwVersion:Ljava/lang/String;
    const-string v6, ""

    .line 1797
    .local v6, szSwVersion:Ljava/lang/String;
    const-string v3, ""

    .line 1798
    .local v3, szFwVersion:Ljava/lang/String;
    const-string v5, ""

    .line 1800
    .local v5, szOEMName:Ljava/lang/String;
    const/16 v0, 0x8

    .line 1802
    .local v0, aclValue:I
    const-string v8, "./DevDetail"

    invoke-static {v2, v8, v0, v10}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1804
    const/16 v0, 0x8

    .line 1805
    const-string v8, "./DevDetail/URI"

    invoke-static {v2, v8, v0, v10}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1807
    const/16 v0, 0x8

    .line 1808
    const-string v8, "./DevDetail/URI/MaxDepth"

    const-string v9, "0"

    invoke-static {v2, v8, v9, v0, v10}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1810
    const/16 v0, 0x8

    .line 1811
    const-string v8, "./DevDetail/URI/MaxTotLen"

    const-string v9, "0"

    invoke-static {v2, v8, v9, v0, v10}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1813
    const/16 v0, 0x8

    .line 1814
    const-string v8, "./DevDetail/URI/MaxSegLen"

    const-string v9, "0"

    invoke-static {v2, v8, v9, v0, v10}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1816
    const/16 v0, 0x8

    .line 1817
    const-string v8, "./DevDetail/DevTyp"

    const-string v9, "phone"

    invoke-static {v2, v8, v9, v0, v10}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1819
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetOEMName()Ljava/lang/String;

    move-result-object v5

    .line 1820
    const/16 v0, 0x8

    .line 1821
    const-string v8, "./DevDetail/OEM"

    invoke-static {v2, v8, v5, v0, v10}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1823
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    .line 1824
    const/16 v0, 0x8

    .line 1825
    const-string v8, "./DevDetail/FwV"

    invoke-static {v2, v8, v3, v0, v10}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1827
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetSoftwareVersion()Ljava/lang/String;

    move-result-object v6

    .line 1828
    const/16 v0, 0x8

    .line 1829
    const-string v8, "./DevDetail/SwV"

    invoke-static {v2, v8, v6, v0, v10}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1831
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetHardwareVersion()Ljava/lang/String;

    move-result-object v4

    .line 1832
    const/16 v0, 0x8

    .line 1833
    const-string v8, "./DevDetail/HwV"

    invoke-static {v2, v8, v4, v0, v10}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1835
    const/16 v0, 0x8

    .line 1836
    const-string v8, "./DevDetail/LrgObj"

    const-string v9, "false"

    invoke-static {v2, v8, v9, v0, v10}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1837
    const-string v8, "./DevDetail/LrgObj"

    invoke-static {v2, v8}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    .line 1838
    .local v1, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz v1, :cond_82

    .line 1840
    const/4 v8, 0x3

    iput v8, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    .line 1841
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 1844
    :cond_82
    const/16 v0, 0xa

    .line 1845
    const-string v8, "./DevDetail/Ext"

    invoke-static {v2, v8, v0, v10}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1847
    const/4 v4, 0x0

    .line 1848
    const/4 v6, 0x0

    .line 1849
    const/4 v3, 0x0

    .line 1850
    const/4 v5, 0x0

    .line 1852
    const/4 v8, 0x0

    return v8
.end method

.method public xdmAgentMakeDevInfoNode()I
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 1740
    sget-object v6, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 1741
    .local v6, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v1, v6, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 1743
    .local v1, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const-string v5, ""

    .line 1744
    .local v5, szModelName:Ljava/lang/String;
    const-string v4, ""

    .line 1745
    .local v4, szManuFact:Ljava/lang/String;
    const-string v2, ""

    .line 1746
    .local v2, szDevID:Ljava/lang/String;
    const-string v3, ""

    .line 1748
    .local v3, szLang:Ljava/lang/String;
    const/16 v0, 0xb

    .line 1749
    .local v0, aclValue:I
    const-string v7, "./DevInfo"

    invoke-static {v1, v7, v0, v9}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1751
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetFullDeviceID()Ljava/lang/String;

    move-result-object v2

    .line 1752
    const/16 v0, 0x8

    .line 1753
    const-string v7, "./DevInfo/DevId"

    invoke-static {v1, v7, v2, v0, v9}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1755
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetManufacturer()Ljava/lang/String;

    move-result-object v4

    .line 1756
    const/16 v0, 0xb

    .line 1757
    const-string v7, "./DevInfo/Man"

    invoke-static {v1, v7, v4, v0, v9}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1759
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetModel()Ljava/lang/String;

    move-result-object v5

    .line 1760
    const/16 v0, 0xb

    .line 1761
    const-string v7, "./DevInfo/Mod"

    invoke-static {v1, v7, v5, v0, v9}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1763
    const/16 v0, 0xb

    .line 1771
    const-string v7, "./DevInfo/DmV"

    const-string v8, " 1.2"

    invoke-static {v1, v7, v8, v0, v9}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1774
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1775
    const/16 v0, 0xb

    .line 1776
    const-string v7, "./DevInfo/Lang"

    invoke-static {v1, v7, v3, v0, v9}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1778
    const/16 v0, 0xa

    .line 1779
    const-string v7, "./DevInfo/Ext"

    invoke-static {v1, v7, v0, v9}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1781
    const/4 v5, 0x0

    .line 1782
    const/4 v4, 0x0

    .line 1783
    const/4 v2, 0x0

    .line 1784
    const/4 v3, 0x0

    .line 1786
    const/4 v7, 0x0

    return v7
.end method

.method public xdmAgentMakeFwUpdateNode()I
    .registers 16

    .prologue
    .line 1857
    sget-object v14, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 1858
    .local v14, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v0, v14, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 1862
    .local v0, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const-string v10, ""

    .line 1865
    .local v10, szFUMOPackageNode:Ljava/lang/String;
    const-string v13, ""

    .line 1868
    .local v13, szStatus:Ljava/lang/String;
    const-string v2, "xdmAgentMakeFwUpdateNode Initialize"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1870
    const-string v11, "./FUMO"

    .line 1871
    .local v11, szFUMORoot:Ljava/lang/String;
    const/16 v4, 0x19

    .line 1872
    .local v4, aclValue:I
    const/4 v2, 0x1

    invoke-static {v0, v11, v4, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1874
    const-string v12, "/COMMONPkg"

    .line 1875
    .local v12, szFumoXnode:Ljava/lang/String;
    const/4 v7, 0x1

    .line 1877
    .local v7, nFumoXnodeCount:I
    const/4 v6, 0x0

    .local v6, count:I
    :goto_19
    if-ge v6, v7, :cond_e1

    .line 1879
    const/4 v2, 0x1

    if-le v7, v2, :cond_db

    .line 1882
    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v6, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1890
    :goto_2c
    const-string v9, "pFUMOPackageNode :"

    .line 1891
    .local v9, szDbg:Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1892
    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1893
    const/16 v4, 0x19

    .line 1894
    const/4 v2, 0x1

    invoke-static {v0, v10, v4, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1897
    const-string v2, "/PkgName"

    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1898
    .local v1, szFUMONode:Ljava/lang/String;
    const/16 v4, 0x19

    .line 1899
    const-string v2, "fota_delta_dp"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v4, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1901
    const-string v2, "/PkgVersion"

    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1902
    const/16 v4, 0x19

    .line 1903
    const-string v2, "1.0"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v4, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1905
    const-string v2, "/Download"

    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1906
    const/16 v4, 0x1d

    .line 1907
    const/4 v2, 0x2

    invoke-static {v0, v1, v4, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1909
    const-string v2, "/PkgURL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1910
    const/16 v4, 0x19

    .line 1911
    const-string v2, " "

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v4, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1913
    const-string v2, "/Update"

    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1914
    const/16 v4, 0x1d

    .line 1915
    const/4 v2, 0x2

    invoke-static {v0, v1, v4, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1917
    const-string v2, "/PkgData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1918
    const/16 v4, 0x10

    .line 1919
    const-string v2, ""

    const/4 v3, 0x0

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccBin(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1921
    const-string v2, "/DownloadAndUpdate"

    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1922
    const/16 v4, 0x1d

    .line 1923
    const/4 v2, 0x2

    invoke-static {v0, v1, v4, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1925
    const-string v2, "/PkgURL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1926
    const/16 v4, 0x19

    .line 1927
    const-string v2, " "

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v4, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1929
    const-string v2, "/State"

    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1930
    const/16 v4, 0x8

    .line 1933
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v8

    .line 1934
    .local v8, nStatus:I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1935
    invoke-static {v13}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1938
    const/4 v2, 0x2

    invoke-static {v0, v1, v13, v4, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1940
    const-string v2, "/Ext"

    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1941
    const/16 v4, 0x19

    .line 1942
    const/4 v2, 0x2

    invoke-static {v0, v1, v4, v2}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1944
    const-string v2, "/SvcState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1945
    const/16 v4, 0x19

    .line 1946
    const-string v2, " "

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v4, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1877
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_19

    .line 1886
    .end local v1           #szFUMONode:Ljava/lang/String;
    .end local v8           #nStatus:I
    .end local v9           #szDbg:Ljava/lang/String;
    :cond_db
    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2c

    .line 1949
    :cond_e1
    const/4 v2, 0x0

    return v2
.end method

.method public xdmAgentMakeNode()I
    .registers 4

    .prologue
    .line 595
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 596
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 598
    .local v0, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmInit(Lcom/wssyncmldm/eng/core/XDMOmTree;)I

    move-result v2

    if-eqz v2, :cond_c

    .line 600
    const/4 v2, -0x1

    .line 617
    :goto_b
    return v2

    .line 603
    :cond_c
    const-string v2, "*"

    invoke-static {v0, v2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmSetServerId(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)I

    .line 605
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeSyncMLNode()I

    .line 606
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDevInfoNode()I

    .line 607
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDevDetailNode()I

    .line 610
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeFwUpdateNode()I

    .line 614
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakePollingNode()I

    .line 617
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public xdmAgentMakePollingNode()I
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 1954
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 1955
    .local v4, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v2, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 1957
    .local v2, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const-string v3, ""

    .line 1958
    .local v3, szNodeValue:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1961
    .local v1, nNodeIntValue:I
    const-string v5, ""

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1963
    const/16 v0, 0x19

    .line 1966
    .local v0, aclValue:I
    const-string v5, "./Ext/OSPS/FirmwareUpdate"

    invoke-static {v2, v5, v0, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1969
    const-string v5, "./Ext/OSPS/FirmwareUpdate/Polling"

    invoke-static {v2, v5, v0, v6}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1972
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPollingOrgVersionUrl()Ljava/lang/String;

    move-result-object v3

    .line 1973
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 1975
    const-string v3, "http://org-fota-dn.ospserver.net/firmware/"

    .line 1977
    :cond_26
    const-string v5, "./Ext/OSPS/FirmwareUpdate/Polling/OrgVersionFileUrl"

    invoke-static {v2, v5, v3, v0, v7}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1980
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPollingVersionUrl()Ljava/lang/String;

    move-result-object v3

    .line 1981
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1983
    const-string v3, "http://fota-cloud-dn.ospserver.net/firmware/"

    .line 1985
    :cond_37
    const-string v5, "./Ext/OSPS/FirmwareUpdate/Polling/VersionFileUrl"

    invoke-static {v2, v5, v3, v0, v7}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1988
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPollingPeriod()I

    move-result v1

    .line 1989
    const-string v5, "./Ext/OSPS/FirmwareUpdate/Polling/Period"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6, v0, v7}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1992
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPollingTime()I

    move-result v1

    .line 1993
    const-string v5, "./Ext/OSPS/FirmwareUpdate/Polling/Time"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6, v0, v7}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1996
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPollingRange()I

    move-result v1

    .line 1997
    const-string v5, "./Ext/OSPS/FirmwareUpdate/Polling/Range"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6, v0, v7}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2000
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPollingPeriodUnit()Ljava/lang/String;

    move-result-object v3

    .line 2001
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 2003
    const-string v3, "day"

    .line 2005
    :cond_6f
    const-string v5, "./Ext/OSPS/FirmwareUpdate/Polling/PeriodUnit"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6, v0, v7}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2007
    const/4 v5, 0x0

    return v5
.end method

.method public xdmAgentMakeSyncMLNode()I
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x2

    .line 1303
    sget-object v9, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 1304
    .local v9, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-object v1, v9, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 1306
    .local v1, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const-string v2, ""

    .line 1307
    .local v2, szAccBuf:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1308
    .local v6, authType:I
    const-string v3, ""

    .line 1310
    .local v3, szTempBuf:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1313
    .local v7, nRet:I
    const/16 v4, 0x9

    .line 1314
    .local v4, aclValue:I
    const-string v0, "."

    invoke-static {v1, v0, v4, v11}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1317
    const/16 v4, 0x1b

    .line 1318
    const-string v0, "./SyncML"

    invoke-static {v1, v0, v4, v11}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1321
    const/16 v4, 0x1b

    .line 1322
    const-string v0, "."

    invoke-static {v1, v0, v4, v11}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1324
    const/16 v4, 0x1b

    .line 1325
    const-string v0, "./DMAcc"

    invoke-static {v1, v0, v4, v11}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1328
    const/16 v4, 0x1b

    .line 1329
    const-string v0, "./SyncML/Con"

    invoke-static {v1, v0, v4, v11}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1331
    const/16 v4, 0x1b

    .line 1332
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    invoke-static {v1, v0, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1334
    const-string v3, "w7"

    .line 1335
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 1336
    const-string v0, "/AppID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1337
    invoke-static {v1, v2, v3, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1339
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerID()Ljava/lang/String;

    move-result-object v3

    .line 1340
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 1341
    const-string v0, "/ServerID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1342
    const/16 v4, 0x1b

    .line 1343
    invoke-static {v1, v2, v3, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1345
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetProfileName()Ljava/lang/String;

    move-result-object v3

    .line 1346
    const/16 v4, 0x1b

    .line 1347
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 1348
    const-string v0, "/Name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1349
    invoke-static {v1, v2, v3, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1351
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPrefConRef()Ljava/lang/String;

    move-result-object v3

    .line 1352
    const/16 v4, 0x1b

    .line 1353
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 1354
    const-string v0, "/PrefConRef"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1355
    invoke-static {v1, v2, v3, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1357
    const/16 v4, 0x1b

    .line 1358
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 1359
    const-string v0, "/ToConRef"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1360
    invoke-static {v1, v2, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1362
    const/16 v4, 0x1b

    .line 1363
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    .line 1364
    invoke-static {v1, v2, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1366
    const/16 v4, 0x1b

    .line 1367
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    .line 1368
    const-string v0, "/ConRef"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1369
    const-string v0, "dataProxy"

    invoke-static {v1, v2, v0, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1371
    const/16 v4, 0x1b

    .line 1372
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 1373
    const-string v0, "/AppAddr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1374
    invoke-static {v1, v2, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1376
    const/16 v4, 0x1b

    .line 1377
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 1378
    invoke-static {v1, v2, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1380
    invoke-static {v12}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerUrl(I)Ljava/lang/String;

    move-result-object v3

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ServerUrl = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 1382
    const/16 v4, 0x1b

    .line 1383
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 1384
    const-string v0, "/Addr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1385
    invoke-static {v1, v2, v3, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1387
    const/16 v4, 0x1b

    .line 1388
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 1389
    const-string v0, "/AddrType"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1390
    const-string v0, "URI"

    invoke-static {v1, v2, v0, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1392
    const/16 v4, 0x1b

    .line 1393
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 1394
    const-string v0, "/Port"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1395
    invoke-static {v1, v2, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1397
    const/16 v4, 0x1b

    .line 1398
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    .line 1399
    invoke-static {v1, v2, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1401
    invoke-static {v12}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerPort(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ServerPort = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 1403
    const/16 v4, 0x1b

    .line 1404
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    .line 1405
    const-string v0, "/PortNbr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1406
    invoke-static {v1, v2, v3, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1408
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetAuthType()I

    move-result v6

    .line 1409
    const/16 v4, 0x1b

    .line 1410
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 1411
    const-string v0, "/AAuthPref"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1412
    invoke-static {v6}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthCredType2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1414
    const/16 v4, 0x1b

    .line 1415
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 1416
    const-string v0, "/AppAuth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1417
    invoke-static {v1, v2, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1419
    const/16 v4, 0x1b

    .line 1420
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 1421
    invoke-static {v1, v2, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1423
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetAuthLevel()Ljava/lang/String;

    move-result-object v3

    .line 1424
    const/16 v4, 0x1b

    .line 1425
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 1426
    const-string v0, "/AAuthLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1427
    invoke-static {v1, v2, v3, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1429
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetAuthType()I

    move-result v6

    .line 1430
    const/16 v4, 0x1b

    .line 1431
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 1432
    const-string v0, "/AAuthType"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1433
    invoke-static {v6}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthAAuthType2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1435
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetUsername()Ljava/lang/String;

    move-result-object v3

    .line 1436
    const/16 v4, 0x1b

    .line 1437
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 1438
    const-string v0, "/AAuthName"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1439
    invoke-static {v1, v2, v3, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1441
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetClientPassword()Ljava/lang/String;

    move-result-object v3

    .line 1442
    const/16 v4, 0x1b

    .line 1443
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 1444
    const-string v0, "/AAuthSecret"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1445
    invoke-static {v1, v2, v3, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1447
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetClientNonce()Ljava/lang/String;

    move-result-object v3

    .line 1448
    invoke-direct {p0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCheckNonce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1450
    const/16 v4, 0x1b

    .line 1451
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 1452
    const-string v0, "/AAuthData"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    .line 1453
    invoke-virtual/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccB64(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1455
    const/16 v4, 0x1b

    .line 1456
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 1457
    invoke-static {v1, v2, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1459
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerAuthLevel()Ljava/lang/String;

    move-result-object v3

    .line 1460
    const/16 v4, 0x1b

    .line 1461
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 1462
    const-string v0, "/AAuthLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1463
    invoke-static {v1, v2, v3, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1465
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerAuthType()I

    move-result v6

    .line 1466
    const/16 v4, 0x1b

    .line 1467
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 1468
    const-string v0, "/AAuthType"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1469
    invoke-static {v6}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthAAuthType2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1471
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerID()Ljava/lang/String;

    move-result-object v3

    .line 1472
    const/16 v4, 0x1b

    .line 1473
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 1474
    const-string v0, "/AAuthName"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1475
    invoke-static {v1, v2, v3, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1477
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerPassword()Ljava/lang/String;

    move-result-object v3

    .line 1478
    const/16 v4, 0x1b

    .line 1479
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 1480
    const-string v0, "/AAuthSecret"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1481
    invoke-static {v1, v2, v3, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1483
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerNonce()Ljava/lang/String;

    move-result-object v3

    .line 1484
    invoke-direct {p0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCheckNonce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1485
    const/16 v4, 0x1b

    .line 1486
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 1487
    const-string v0, "/AAuthData"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    .line 1488
    invoke-virtual/range {v0 .. v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccB64(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1490
    const/16 v4, 0x1b

    .line 1491
    sget-object v0, Lcom/wssyncmldm/agent/XDMAgent;->m_DmAccXNodeInfo:Lcom/wssyncmldm/eng/core/XDMAccXNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 1492
    const-string v0, "/Ext"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1493
    const-string v0, " "

    invoke-static {v1, v2, v0, v4, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1495
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->xdmDDFGetMOPath(I)Ljava/lang/String;

    move-result-object v8

    .line 1496
    .local v8, szInbox:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26b

    .line 1498
    const/16 v4, 0x1b

    .line 1499
    invoke-static {v1, v8, v4, v11}, Lcom/wssyncmldm/agent/XDMAgent;->xdm_SET_OM_PATH(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 1502
    :cond_26b
    const/4 v7, 0x0

    .line 1503
    const/4 v0, 0x0

    sput-object v0, Lcom/wssyncmldm/agent/XDMAgent;->pAccName:Ljava/lang/String;

    .line 1504
    const/4 v3, 0x0

    .line 1506
    return v7
.end method

.method public xdmAgentMakeTndsSubTree(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;ILjava/lang/String;)V
    .registers 25
    .parameter "om"
    .parameter "node"
    .parameter "nFlag"
    .parameter "szPath"

    .prologue
    .line 4778
    const/4 v11, 0x0

    .line 4779
    .local v11, nLen:I
    const/4 v5, 0x0

    .line 4780
    .local v5, ac:I
    const/16 v16, 0x0

    .line 4781
    .local v16, szTag:Ljava/lang/String;
    const/4 v12, 0x0

    .line 4782
    .local v12, szData:Ljava/lang/String;
    const/4 v13, 0x0

    .line 4783
    .local v13, szFormat:Ljava/lang/String;
    const/4 v14, 0x0

    .line 4784
    .local v14, szNodeProperty:Ljava/lang/String;
    const/16 v17, 0x0

    .line 4785
    .local v17, szType:Ljava/lang/String;
    const/4 v15, 0x0

    .line 4787
    .local v15, szNodeUri:Ljava/lang/String;
    const/4 v8, 0x0

    .line 4788
    .local v8, cur:Lcom/wssyncmldm/eng/core/XDMVnode;
    const/4 v6, 0x0

    .line 4789
    .local v6, acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    new-instance v9, Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-direct {v9}, Lcom/wssyncmldm/eng/core/XDMOmList;-><init>()V

    .line 4790
    .local v9, list:Lcom/wssyncmldm/eng/core/XDMOmList;
    const/4 v10, 0x0

    .line 4792
    .local v10, nFileId:I
    if-nez p2, :cond_15

    .line 4984
    :goto_14
    return-void

    .line 4796
    :cond_15
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 4797
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdTNDS()I

    move-result v10

    .line 4799
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0x4

    aget-object v16, v18, v19

    .line 4801
    move-object/from16 v14, v16

    .line 4803
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_97

    .line 4805
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0x8

    aget-object v16, v18, v19

    .line 4806
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "szTag : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4807
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4808
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "szPath : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4809
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4810
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0x9

    aget-object v16, v18, v19

    .line 4811
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "szTag"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4812
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4814
    :cond_97
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_e3

    .line 4816
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0x6

    aget-object v16, v18, v19

    .line 4817
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4818
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4819
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "node.name : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 4820
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0x7

    aget-object v16, v18, v19

    .line 4821
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4824
    :cond_e3
    move-object/from16 v0, p2

    iget v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/eng/core/XDMOmList;->xdmOmGetFormatString(I)Ljava/lang/String;

    move-result-object v13

    .line 4826
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_103

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    move-object/from16 v18, v0

    if-nez v18, :cond_103

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_244

    .line 4828
    :cond_103
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0xc

    aget-object v16, v18, v19

    .line 4829
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4831
    and-int/lit8 v18, p3, 0x2

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14b

    .line 4833
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_14b

    .line 4835
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0x10

    aget-object v16, v18, v19

    .line 4836
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4837
    const-string v18, "<"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4838
    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4839
    const-string v18, "/>"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4840
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0x11

    aget-object v16, v18, v19

    .line 4841
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4845
    :cond_14b
    and-int/lit8 v18, p3, 0x4

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_19b

    .line 4847
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19b

    .line 4849
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 4850
    iget-object v0, v9, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17           #szType:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 4852
    .restart local v17       #szType:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_19b

    .line 4854
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0x12

    aget-object v16, v18, v19

    .line 4855
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4856
    const-string v18, "<MIME>"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4857
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4858
    const-string v18, "</MIME>"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4859
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0x13

    aget-object v16, v18, v19

    .line 4860
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4864
    :cond_19b
    const/4 v9, 0x0

    .line 4866
    and-int/lit8 v18, p3, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_238

    .line 4868
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_238

    .line 4870
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 4871
    iget-object v6, v9, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .end local v6           #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    check-cast v6, Lcom/wssyncmldm/eng/core/XDMOmAcl;

    .line 4873
    .restart local v6       #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    if-eqz v6, :cond_238

    .line 4875
    iget v5, v6, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    .line 4876
    if-eqz v5, :cond_238

    .line 4878
    const/4 v4, 0x0

    .line 4879
    .local v4, IsOtherACL:Z
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0xe

    aget-object v16, v18, v19

    .line 4880
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4881
    and-int/lit8 v18, v5, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1dc

    .line 4883
    const-string v18, "Add=*"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4884
    const/4 v4, 0x1

    .line 4886
    :cond_1dc
    and-int/lit8 v18, v5, 0x2

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f0

    .line 4888
    if-eqz v4, :cond_2bd

    .line 4890
    const-string v18, "&amp;Delete=*"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4898
    :cond_1f0
    :goto_1f0
    and-int/lit8 v18, v5, 0x4

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_204

    .line 4900
    if-eqz v4, :cond_2c8

    .line 4902
    const-string v18, "&amp;Exec=*"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4910
    :cond_204
    :goto_204
    and-int/lit8 v18, v5, 0x8

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_218

    .line 4912
    if-eqz v4, :cond_2d3

    .line 4914
    const-string v18, "&amp;Get=*"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4922
    :cond_218
    :goto_218
    and-int/lit8 v18, v5, 0x10

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_22c

    .line 4924
    if-eqz v4, :cond_2de

    .line 4926
    const-string v18, "&amp;Replace=*"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4934
    :cond_22c
    :goto_22c
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0xf

    aget-object v16, v18, v19

    .line 4935
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4941
    .end local v4           #IsOtherACL:Z
    :cond_238
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0xd

    aget-object v16, v18, v19

    .line 4942
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4945
    :cond_244
    and-int/lit8 v18, p3, 0x8

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2f3

    .line 4947
    move-object/from16 v0, p2

    iget v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    if-lez v18, :cond_2e9

    .line 4949
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0xa

    aget-object v16, v18, v19

    .line 4950
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4951
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    .line 4953
    const-string v12, ""

    .line 4954
    invoke-virtual/range {p0 .. p2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetPathFromNode(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;)Ljava/lang/String;

    move-result-object v15

    .line 4955
    move-object/from16 v0, p2

    iget v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v7, v0, [C

    .line 4956
    .local v7, cTemp:[C
    const/16 v18, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v15, v1, v7, v2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    move-result v11

    .line 4957
    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    .line 4958
    if-lez v11, :cond_29c

    .line 4960
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    .line 4962
    :cond_29c
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0xb

    aget-object v16, v18, v19

    .line 4963
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    .line 4975
    .end local v7           #cTemp:[C
    :goto_2ab
    if-eqz v8, :cond_2fd

    .line 4977
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeTndsSubTree(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;ILjava/lang/String;)V

    .line 4978
    iget-object v8, v8, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    goto :goto_2ab

    .line 4894
    .restart local v4       #IsOtherACL:Z
    :cond_2bd
    const-string v18, "Delete=*"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4895
    const/4 v4, 0x1

    goto/16 :goto_1f0

    .line 4906
    :cond_2c8
    const-string v18, "Exec=*"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4907
    const/4 v4, 0x1

    goto/16 :goto_204

    .line 4918
    :cond_2d3
    const-string v18, "Get=*"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4919
    const/4 v4, 0x1

    goto/16 :goto_218

    .line 4930
    :cond_2de
    const-string v18, "Replace=*"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4931
    const/4 v4, 0x1

    goto/16 :goto_22c

    .line 4967
    .end local v4           #IsOtherACL:Z
    :cond_2e9
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    goto :goto_2ab

    .line 4972
    :cond_2f3
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    goto :goto_2ab

    .line 4981
    :cond_2fd
    sget-object v18, Lcom/wssyncmldm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v19, 0x5

    aget-object v16, v18, v19

    .line 4983
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/wssyncmldm/db/file/XDB;->xdbAppendFile(I[B)I

    goto/16 :goto_14
.end method

.method public xdmAgentMgmtPackage(Lcom/wssyncmldm/eng/core/XDMEncoder;)I
    .registers 8
    .parameter "e"

    .prologue
    const/4 v2, -0x1

    const/4 v5, -0x4

    const/4 v3, 0x0

    .line 1249
    sget-object v1, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 1251
    .local v1, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget-boolean v4, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    if-eqz v4, :cond_2d

    .line 1253
    const-string v4, "1222"

    invoke-virtual {p0, p1, v4}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackageAlert(Lcom/wssyncmldm/eng/core/XDMEncoder;Ljava/lang/String;)I

    move-result v0

    .line 1254
    .local v0, res:I
    if-eqz v0, :cond_2d

    .line 1256
    if-ne v0, v5, :cond_16

    .line 1258
    iput-boolean v3, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    .line 1296
    :goto_15
    return v2

    .line 1262
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_15

    .line 1267
    .end local v0           #res:I
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackageStatus(Lcom/wssyncmldm/eng/core/XDMEncoder;)I

    move-result v0

    .line 1268
    .restart local v0       #res:I
    if-eqz v0, :cond_4f

    .line 1270
    if-ne v0, v5, :cond_38

    .line 1272
    iput-boolean v3, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    goto :goto_15

    .line 1276
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_15

    .line 1280
    :cond_4f
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackageResults(Lcom/wssyncmldm/eng/core/XDMEncoder;)I

    move-result v0

    .line 1281
    if-eqz v0, :cond_71

    .line 1283
    if-ne v0, v5, :cond_5a

    .line 1285
    iput-boolean v3, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    goto :goto_15

    .line 1289
    :cond_5a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_15

    .line 1294
    :cond_71
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    move v2, v3

    .line 1296
    goto :goto_15
.end method

.method public xdmAgentParsingBootStrap([B)I
    .registers 7
    .parameter "pData"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2719
    const/4 v0, 0x0

    .line 2721
    .local v0, nRet:I
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->procState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    sget-object v3, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    if-ne v2, v3, :cond_43

    .line 2723
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iput v1, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->numAction:I

    .line 2724
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iput v4, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authState:I

    .line 2725
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iput v4, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    .line 2726
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iput-boolean v4, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->isFinal:Z

    .line 2728
    invoke-static {p1}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentParsingWbxml([B)I

    move-result v0

    .line 2729
    const/4 v0, 0x0

    .line 2731
    if-eqz v0, :cond_43

    .line 2733
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 2734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing package failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Abort session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v1, v0

    .line 2762
    :goto_42
    return v1

    .line 2739
    :cond_43
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentHandleCmd()I

    move-result v0

    .line 2742
    const/4 v2, -0x5

    if-ne v0, v2, :cond_50

    .line 2744
    const-string v2, "XDM_RET_PAUSED_BECAUSE_UIC_COMMAND"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_42

    .line 2747
    :cond_50
    if-eqz v0, :cond_73

    .line 2749
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 2750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling Commands failed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Abort session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2751
    const/4 v1, -0x1

    goto :goto_42

    .line 2754
    :cond_73
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    sget-object v3, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_FINISH:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    if-eq v2, v3, :cond_83

    .line 2756
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->msgID:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->msgID:I

    .line 2759
    :cond_83
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    sget-object v3, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_PROCESSING:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 2760
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iput v1, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authCount:I

    .line 2761
    const-string v1, "Parsing Finished"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move v1, v0

    .line 2762
    goto :goto_42
.end method

.method public xdmAgentReadBootStrap(I[B)Z
    .registers 9
    .parameter "nSize"
    .parameter "pData"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2633
    const/4 v1, 0x0

    .line 2634
    .local v1, nRet:I
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentInit()I

    .line 2635
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetSyncMode(I)Z

    .line 2637
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    sget-object v5, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_INIT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    iput-object v5, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 2638
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iput v3, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->cmdID:I

    .line 2639
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    sget-object v5, Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;->XDM_ATOMIC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    iput-object v5, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

    .line 2641
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeBootStrapNode()I

    move-result v1

    .line 2642
    if-eqz v1, :cond_29

    .line 2644
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 2645
    const-string v3, "Failed"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2677
    :goto_28
    return v2

    .line 2649
    :cond_29
    const/16 v4, 0x1c00

    if-le p1, v4, :cond_36

    .line 2651
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentClose()I

    .line 2652
    const-string v3, "Size Over"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_28

    .line 2658
    :cond_36
    :try_start_36
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3d} :catch_53

    .line 2667
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iput p1, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->bufsize:I

    .line 2668
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    sget-object v5, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    iput-object v5, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->procState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    .line 2670
    invoke-virtual {p0, p2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentParsingBootStrap([B)I

    move-result v1

    .line 2671
    if-eqz v1, :cond_61

    .line 2673
    const-string v3, "Bootstrap Parse Error"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_28

    .line 2660
    :catch_53
    move-exception v0

    .line 2662
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Stream Write Error"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2663
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_28

    .end local v0           #e:Ljava/io/IOException;
    :cond_61
    move v2, v3

    .line 2677
    goto :goto_28
.end method

.method public xdmAgentSendPackage()I
    .registers 18

    .prologue
    .line 429
    const-string v3, ""

    .line 430
    .local v3, szHmacData:Ljava/lang/String;
    const-string v4, ""

    .line 431
    .local v4, szContentRange:Ljava/lang/String;
    sget-object v16, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 432
    .local v16, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v13, 0x0

    .line 434
    .local v13, ret:I
    move-object/from16 v0, v16

    iget v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    if-eqz v1, :cond_14

    move-object/from16 v0, v16

    iget v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8c

    .line 438
    :cond_14
    :try_start_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szTargetURI:Ljava/lang/String;

    const-string v5, "POST"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_23} :catch_2d

    move-result v13

    .line 449
    const/4 v1, 0x7

    if-ne v13, v1, :cond_42

    .line 451
    const/4 v1, 0x1

    sput-boolean v1, Lcom/wssyncmldm/agent/XDMAgent;->m_bPendingStatus:Z

    .line 452
    const/4 v13, 0x4

    :goto_2b
    move v14, v13

    .line 544
    .end local v13           #ret:I
    .local v14, ret:I
    :goto_2c
    return v14

    .line 440
    .end local v14           #ret:I
    .restart local v13       #ret:I
    :catch_2d
    move-exception v12

    .line 442
    .local v12, e:Ljava/lang/NullPointerException;
    invoke-virtual {v12}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 444
    const/4 v13, -0x3

    .line 445
    const/16 v1, 0x1b

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v14, v13

    .line 446
    .end local v13           #ret:I
    .restart local v14       #ret:I
    goto :goto_2c

    .line 456
    .end local v12           #e:Ljava/lang/NullPointerException;
    .end local v14           #ret:I
    .restart local v13       #ret:I
    :cond_42
    sget-boolean v1, Lcom/wssyncmldm/agent/XDMAgent;->m_bPendingStatus:Z

    if-eqz v1, :cond_49

    .line 458
    const/4 v1, 0x0

    sput-boolean v1, Lcom/wssyncmldm/agent/XDMAgent;->m_bPendingStatus:Z

    .line 463
    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSendData([BII)I
    :try_end_61
    .catch Ljava/net/SocketTimeoutException; {:try_start_49 .. :try_end_61} :catch_6c

    move-result v13

    .line 471
    :goto_62
    if-nez v13, :cond_79

    .line 473
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2b

    .line 465
    :catch_6c
    move-exception v12

    .line 467
    .local v12, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v12}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 469
    const/4 v13, -0x3

    goto :goto_62

    .line 475
    .end local v12           #e:Ljava/net/SocketTimeoutException;
    :cond_79
    const/4 v1, -0x2

    if-ne v13, v1, :cond_84

    .line 477
    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2b

    .line 482
    :cond_84
    const/16 v1, 0x1b

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2b

    .line 489
    :cond_8c
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncGetBufferSize()I

    move-result v11

    .line 490
    .local v11, len:I
    move-object/from16 v0, v16

    iget v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szUserName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szClientPW:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    array-length v9, v1

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static/range {v5 .. v11}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthMakeDigest(ILjava/lang/String;Ljava/lang/String;[BI[BI)Ljava/lang/String;

    move-result-object v15

    .line 492
    .local v15, szMac:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorithm=MD5, username=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 496
    :try_start_d8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szTargetURI:Ljava/lang/String;

    const-string v5, "POST"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_e7
    .catch Ljava/lang/NullPointerException; {:try_start_d8 .. :try_end_e7} :catch_f1

    move-result v13

    .line 507
    const/4 v1, 0x7

    if-ne v13, v1, :cond_107

    .line 509
    const/4 v1, 0x1

    sput-boolean v1, Lcom/wssyncmldm/agent/XDMAgent;->m_bPendingStatus:Z

    .line 510
    const/4 v13, 0x4

    goto/16 :goto_2b

    .line 498
    :catch_f1
    move-exception v12

    .line 500
    .local v12, e:Ljava/lang/NullPointerException;
    invoke-virtual {v12}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 501
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 502
    const/4 v13, -0x3

    .line 503
    const/16 v1, 0x1b

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v14, v13

    .line 504
    .end local v13           #ret:I
    .restart local v14       #ret:I
    goto/16 :goto_2c

    .line 514
    .end local v12           #e:Ljava/lang/NullPointerException;
    .end local v14           #ret:I
    .restart local v13       #ret:I
    :cond_107
    sget-boolean v1, Lcom/wssyncmldm/agent/XDMAgent;->m_bPendingStatus:Z

    if-eqz v1, :cond_10e

    .line 516
    const/4 v1, 0x0

    sput-boolean v1, Lcom/wssyncmldm/agent/XDMAgent;->m_bPendingStatus:Z

    .line 521
    :cond_10e
    :try_start_10e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->e:Lcom/wssyncmldm/eng/core/XDMEncoder;

    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncGetBufferSize(Lcom/wssyncmldm/eng/core/XDMEncoder;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSendData([BII)I
    :try_end_126
    .catch Ljava/net/SocketTimeoutException; {:try_start_10e .. :try_end_126} :catch_132

    move-result v13

    .line 529
    :goto_127
    if-nez v13, :cond_13f

    .line 531
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2b

    .line 523
    :catch_132
    move-exception v12

    .line 525
    .local v12, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v12}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 526
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 527
    const/4 v13, -0x3

    goto :goto_127

    .line 533
    .end local v12           #e:Ljava/net/SocketTimeoutException;
    :cond_13f
    const/4 v1, -0x2

    if-ne v13, v1, :cond_14b

    .line 535
    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2b

    .line 540
    :cond_14b
    const/16 v1, 0x1b

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2b
.end method

.method public xdmAgentSetAclDynamicFUMONode(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)I
    .registers 7
    .parameter "ptOm"
    .parameter "szFumoNodePath"

    .prologue
    const/4 v3, 0x2

    .line 9335
    const/4 v0, 0x0

    .line 9336
    .local v0, aclValue:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target path["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 9338
    const-string v1, "/PkgName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 9340
    const/16 v0, 0x18

    .line 9341
    invoke-static {p1, p2, v0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 9384
    :cond_2b
    :goto_2b
    const/4 v1, 0x0

    return v1

    .line 9343
    :cond_2d
    const-string v1, "/PkgVersion"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 9345
    const/16 v0, 0x18

    .line 9346
    invoke-static {p1, p2, v0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    goto :goto_2b

    .line 9348
    :cond_3b
    const-string v1, "/PkgURL"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 9350
    const/16 v0, 0x19

    .line 9351
    invoke-static {p1, p2, v0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    goto :goto_2b

    .line 9353
    :cond_49
    const-string v1, "/DownloadAndUpdate"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 9355
    const/16 v0, 0xd

    .line 9356
    invoke-static {p1, p2, v0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    goto :goto_2b

    .line 9358
    :cond_57
    const-string v1, "/Update"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 9360
    const/16 v0, 0xc

    .line 9361
    invoke-static {p1, p2, v0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    goto :goto_2b

    .line 9363
    :cond_65
    const-string v1, "/PkgData"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 9365
    const/16 v0, 0x10

    .line 9366
    invoke-static {p1, p2, v0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    goto :goto_2b

    .line 9368
    :cond_73
    const-string v1, "/Download"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 9370
    const/16 v0, 0xd

    .line 9371
    invoke-static {p1, p2, v0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    goto :goto_2b

    .line 9373
    :cond_81
    const-string v1, "/State"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 9375
    const/16 v0, 0x8

    .line 9376
    invoke-static {p1, p2, v0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    goto :goto_2b

    .line 9378
    :cond_8f
    const-string v1, "/Ext"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 9380
    const/16 v0, 0x8

    .line 9381
    invoke-static {p1, p2, v0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    goto :goto_2b
.end method

.method public xdmAgentSetOMAccB64(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 12
    .parameter "omt"
    .parameter "szPath"
    .parameter "szData"
    .parameter "aclValue"
    .parameter "scope"

    .prologue
    .line 2129
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 2134
    .local v1, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    invoke-static {v1, p2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v0

    .line 2135
    .local v0, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v0, :cond_10

    .line 2137
    invoke-virtual {p0, p2, p3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMB64(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2138
    invoke-static {v1, p2, p4, p5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 2155
    :goto_f
    return-void

    .line 2142
    :cond_10
    iget v4, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    new-array v3, v4, [C

    .line 2143
    .local v3, temp:[C
    const/4 v4, 0x0

    iget v5, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    invoke-static {v1, p2, v4, v3, v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    .line 2145
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 2146
    .local v2, szTmp:Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    if-eq v4, v5, :cond_2b

    .line 2148
    invoke-virtual {p0, p2, p3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMB64(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2154
    :cond_29
    :goto_29
    const/4 v3, 0x0

    .line 2155
    goto :goto_f

    .line 2150
    :cond_2b
    invoke-virtual {v2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_29

    .line 2152
    invoke-virtual {p0, p2, p3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMB64(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_29
.end method

.method public xdmAgentSetOMB64(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 13
    .parameter "szPath"
    .parameter "data"

    .prologue
    const/4 v9, 0x1

    .line 2208
    sget-object v8, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 2211
    .local v8, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v2, 0x0

    .line 2213
    .local v2, nLen:I
    if-nez p2, :cond_c

    .line 2215
    const-string v0, "data is NULL"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2240
    :cond_b
    :goto_b
    return-void

    .line 2219
    :cond_c
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    .line 2221
    if-gtz v2, :cond_32

    .line 2223
    iget-object v0, v8, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    invoke-static {v0, p1, v9}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmDeleteImplicit(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Z)I

    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The [%s] node is 0 length"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2227
    :cond_32
    iget-object v0, v8, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    .line 2228
    iget-object v0, v8, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    invoke-static {v0, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v7

    .line 2229
    .local v7, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz v7, :cond_b

    .line 2231
    iget-object v0, v7, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    if-eqz v0, :cond_4c

    .line 2232
    iget-object v0, v7, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsDeleteMimeList(Lcom/wssyncmldm/eng/core/XDMOmList;)V

    .line 2234
    :cond_4c
    new-instance v6, Lcom/wssyncmldm/eng/core/XDMOmList;

    invoke-direct {v6}, Lcom/wssyncmldm/eng/core/XDMOmList;-><init>()V

    .line 2235
    .local v6, list:Lcom/wssyncmldm/eng/core/XDMOmList;
    const-string v0, "text/plain"

    iput-object v0, v6, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .line 2236
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 2237
    iput-object v6, v7, Lcom/wssyncmldm/eng/core/XDMVnode;->type:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 2238
    iput v9, v7, Lcom/wssyncmldm/eng/core/XDMVnode;->format:I

    goto :goto_b
.end method

.method public xdmAgentStartAlert()I
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 5745
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 5747
    .local v2, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v1, 0x0

    .line 5749
    .local v1, ret:I
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentInit()I

    move-result v4

    if-eqz v4, :cond_b

    .line 5778
    :cond_a
    :goto_a
    return v3

    .line 5754
    :cond_b
    iget v4, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->appId:I

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbGetNotiEvent(I)I

    move-result v0

    .line 5756
    .local v0, nNotiEvent:I
    if-ltz v0, :cond_31

    .line 5758
    iget v4, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->appId:I

    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNotiSessionID(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSessionID:Ljava/lang/String;

    .line 5765
    :goto_1b
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeNode()I

    move-result v4

    if-nez v4, :cond_a

    .line 5770
    sget-object v4, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_ABORT_ALERT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    iput-object v4, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 5772
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackage()I

    move-result v4

    if-nez v4, :cond_a

    .line 5777
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSendPackage()I

    move-result v1

    move v3, v1

    .line 5778
    goto :goto_a

    .line 5762
    :cond_31
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentLibMakeSessionID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSessionID:Ljava/lang/String;

    goto :goto_1b
.end method

.method public xdmAgentStartGeneralAlert()I
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v10, -0x1

    .line 5663
    const/4 v6, 0x0

    .line 5664
    .local v6, ret:I
    const/4 v2, 0x0

    .line 5666
    .local v2, nAgentType:I
    const-string v11, ""

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5667
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentInit()I

    move-result v11

    if-eqz v11, :cond_10

    .line 5740
    :cond_f
    :goto_f
    return v10

    .line 5672
    :cond_10
    sget-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget v11, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->appId:I

    invoke-static {v11}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbGetNotiEvent(I)I

    move-result v3

    .line 5673
    .local v3, nNotiEvent:I
    if-lez v3, :cond_b8

    .line 5675
    sget-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    sget-object v12, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget v12, v12, Lcom/wssyncmldm/eng/core/XDMWorkspace;->appId:I

    invoke-static {v12}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNotiSessionID(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSessionID:Ljava/lang/String;

    .line 5682
    :goto_26
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeNode()I

    move-result v11

    if-nez v11, :cond_f

    .line 5687
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDmAgentType()I

    move-result v2

    .line 5688
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nAgentType : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5689
    if-ne v2, v13, :cond_a0

    .line 5691
    const/4 v4, 0x0

    .line 5692
    .local v4, nStatus:I
    const/4 v7, 0x0

    .line 5693
    .local v7, szStatus:Ljava/lang/String;
    const/4 v8, 0x0

    .line 5694
    .local v8, szStatusNode:Ljava/lang/String;
    const/4 v9, 0x0

    .line 5695
    .local v9, szStatusNodeName:Ljava/lang/String;
    sget-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget-object v5, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 5698
    .local v5, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatusNode()Ljava/lang/String;

    move-result-object v9

    .line 5699
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a0

    .line 5701
    const-string v8, "./FUMO"

    .line 5702
    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5703
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5704
    const-string v11, "/State"

    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5705
    const/16 v0, 0x8

    .line 5707
    .local v0, aclValue:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v4

    .line 5708
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 5709
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "node["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] value["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5710
    const/4 v11, 0x2

    invoke-static {v5, v8, v7, v0, v11}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOMAccStr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II)V

    .line 5714
    .end local v0           #aclValue:I
    .end local v4           #nStatus:I
    .end local v5           #om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    .end local v7           #szStatus:Ljava/lang/String;
    .end local v8           #szStatusNode:Ljava/lang/String;
    .end local v9           #szStatusNodeName:Ljava/lang/String;
    :cond_a0
    sget-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    sget-object v12, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_GENERIC_ALERT_REPORT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    iput-object v12, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 5716
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackage()I

    move-result v11

    if-nez v11, :cond_f

    .line 5724
    :try_start_ac
    iget-object v10, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpOpen(I)I
    :try_end_b2
    .catch Ljava/net/SocketTimeoutException; {:try_start_ac .. :try_end_b2} :catch_c2

    move-result v6

    .line 5733
    :goto_b3
    if-eqz v6, :cond_cf

    .line 5735
    const/4 v10, -0x7

    goto/16 :goto_f

    .line 5679
    :cond_b8
    sget-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentLibMakeSessionID()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSessionID:Ljava/lang/String;

    goto/16 :goto_26

    .line 5726
    :catch_c2
    move-exception v1

    .line 5728
    .local v1, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 5729
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 5730
    const/4 v6, -0x7

    goto :goto_b3

    .line 5738
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :cond_cf
    invoke-static {v13}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetIsConnected(Z)V

    .line 5739
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSendPackage()I

    move-result v6

    move v10, v6

    .line 5740
    goto/16 :goto_f
.end method

.method public xdmAgentStartMgmtSession()I
    .registers 13

    .prologue
    const/4 v6, -0x7

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v5, -0x1

    const/4 v9, 0x0

    .line 5472
    sget-object v4, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 5473
    .local v4, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v3, 0x0

    .line 5475
    .local v3, res:I
    if-nez v4, :cond_21

    .line 5477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parsing package failed Abort session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 5656
    :goto_20
    return v5

    .line 5481
    :cond_21
    iget-object v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->procState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    sget-object v8, Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;->XDM_PROC_NONE:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

    if-ne v7, v8, :cond_4c

    .line 5483
    iput v9, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->numAction:I

    .line 5484
    iget-object v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentParsingWbxml([B)I

    move-result v3

    .line 5486
    if-eqz v3, :cond_4c

    .line 5488
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parsing package failed Abort session"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_20

    .line 5493
    :cond_4c
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentHandleCmd()I

    move-result v3

    .line 5495
    sget-object v7, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_TRUE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    .line 5497
    sparse-switch v3, :sswitch_data_1fa

    .line 5513
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handling Commands failed Abort session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_20

    .line 5500
    :sswitch_6e
    const-string v5, "Handling Paused  Processing UIC Command"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move v5, v3

    .line 5501
    goto :goto_20

    .line 5504
    :sswitch_75
    const-string v5, "XDM_RET_ALERT_SESSION_ABORT"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5505
    invoke-static {v9}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 5506
    invoke-static {v9}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    move v5, v3

    .line 5507
    goto :goto_20

    .line 5517
    :sswitch_82
    iget-object v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    sget-object v8, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_FINISH:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    if-eq v7, v8, :cond_8e

    .line 5519
    iget v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->msgID:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->msgID:I

    .line 5522
    :cond_8e
    iget v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authState:I

    if-ne v7, v10, :cond_96

    iget v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    if-eq v7, v10, :cond_11f

    .line 5524
    :cond_96
    iget v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authCount:I

    .line 5525
    iget v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authCount:I

    if-lt v7, v11, :cond_b3

    .line 5527
    iput v9, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authCount:I

    .line 5528
    const/4 v5, -0x8

    iput v5, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    .line 5529
    const-string v5, "Authentification Failed Abort"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 5530
    invoke-static {v9}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 5531
    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 5532
    const/4 v5, -0x6

    goto/16 :goto_20

    .line 5535
    :cond_b3
    iget v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authState:I

    if-nez v7, :cond_c8

    .line 5537
    sget-object v7, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_PROCESSING:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    iput-object v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 5549
    :cond_bb
    :goto_bb
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackage()I

    move-result v7

    if-eqz v7, :cond_f7

    .line 5551
    const-string v6, "failed"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 5542
    :cond_c8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Authentification Retry...ws->dmState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 5543
    iget-object v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    sget-object v8, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_CLIENT_INIT_MGMT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    if-eq v7, v8, :cond_bb

    iget-object v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    sget-object v8, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_GENERIC_ALERT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    if-eq v7, v8, :cond_bb

    iget-object v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    sget-object v8, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_GENERIC_ALERT_REPORT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    if-eq v7, v8, :cond_bb

    .line 5546
    sget-object v7, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_PROCESSING:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    iput-object v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    goto :goto_bb

    .line 5556
    :cond_f7
    sget-object v5, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v5, v5, v9

    iget v5, v5, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpConnection:I

    if-ne v5, v10, :cond_118

    .line 5561
    :try_start_ff
    iget-object v5, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpOpen(I)I
    :try_end_105
    .catch Ljava/net/SocketTimeoutException; {:try_start_ff .. :try_end_105} :catch_10b

    move-result v3

    .line 5570
    :goto_106
    if-eqz v3, :cond_118

    move v5, v6

    .line 5572
    goto/16 :goto_20

    .line 5563
    :catch_10b
    move-exception v0

    .line 5565
    .local v0, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 5566
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 5567
    const/4 v3, -0x2

    goto :goto_106

    .line 5576
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :cond_118
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSendPackage()I

    move-result v3

    move v5, v3

    .line 5577
    goto/16 :goto_20

    .line 5581
    :cond_11f
    sget-object v7, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_PROCESSING:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    iput-object v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 5582
    iput v9, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authCount:I

    .line 5583
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total action commands = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->numAction:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5585
    iget v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->numAction:I

    if-nez v7, :cond_1ae

    iget-boolean v7, v4, Lcom/wssyncmldm/eng/core/XDMWorkspace;->isFinal:Z

    if-eqz v7, :cond_1ae

    .line 5590
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbClearUicResultKeepFlag()V

    .line 5591
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOUpdateMechanism()I

    move-result v2

    .line 5592
    .local v2, nUpdateMechanism:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v1

    .line 5593
    .local v1, nAgentStatus:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nStatus :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5595
    const/4 v5, 0x2

    if-ne v2, v5, :cond_175

    const/16 v5, 0xa

    if-ne v1, v5, :cond_175

    .line 5597
    const-string v5, "Now Download Start"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5598
    const/4 v5, 0x2

    goto/16 :goto_20

    .line 5600
    :cond_175
    if-ne v2, v10, :cond_188

    const/16 v5, 0x28

    if-ne v1, v5, :cond_188

    .line 5602
    const-string v5, "OMA-DM Download Completed"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5603
    const/16 v5, 0x32

    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 5604
    const/4 v5, 0x7

    goto/16 :goto_20

    .line 5607
    :cond_188
    if-ne v2, v11, :cond_196

    const/16 v5, 0xa

    if-ne v1, v5, :cond_196

    .line 5609
    const-string v5, "XDM_RET_EXEC_ALTERNATIVE_DOWNLOAD Start"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5610
    const/4 v5, 0x5

    goto/16 :goto_20

    .line 5612
    :cond_196
    if-ne v2, v11, :cond_1a4

    const/16 v5, 0x32

    if-ne v1, v5, :cond_1a4

    .line 5614
    const-string v5, "Now Update Start"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 5615
    const/4 v5, 0x6

    goto/16 :goto_20

    .line 5620
    :cond_1a4
    invoke-static {v9}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiReSyncMode(I)Ljava/lang/Boolean;

    .line 5623
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbClearUicResultKeepFlag()V

    .line 5624
    const/16 v5, 0x8

    goto/16 :goto_20

    .line 5627
    .end local v1           #nAgentStatus:I
    .end local v2           #nUpdateMechanism:I
    :cond_1ae
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCreatePackage()I

    move-result v3

    .line 5628
    if-gez v3, :cond_1cc

    .line 5630
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "xdmAgentCreatePackage failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 5635
    :cond_1cc
    sget-object v5, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v5, v5, v9

    iget v5, v5, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpConnection:I

    if-ne v5, v10, :cond_1f2

    .line 5639
    :try_start_1d4
    iget-object v5, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpOpen(I)I
    :try_end_1da
    .catch Ljava/net/SocketTimeoutException; {:try_start_1d4 .. :try_end_1da} :catch_1e5

    move-result v3

    .line 5648
    :goto_1db
    if-eqz v3, :cond_1f2

    .line 5650
    const-string v5, "XDM_RET_CONNECT_FAIL"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v5, v6

    .line 5651
    goto/16 :goto_20

    .line 5641
    :catch_1e5
    move-exception v0

    .line 5643
    .restart local v0       #e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 5644
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 5645
    const/4 v3, -0x2

    goto :goto_1db

    .line 5655
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :cond_1f2
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSendPackage()I

    move-result v3

    move v5, v3

    .line 5656
    goto/16 :goto_20

    .line 5497
    nop

    :sswitch_data_1fa
    .sparse-switch
        -0x5 -> :sswitch_6e
        0x0 -> :sswitch_82
        0x3 -> :sswitch_75
    .end sparse-switch
.end method

.method public xdmAgentStartSession()I
    .registers 5

    .prologue
    .line 564
    const/4 v1, 0x0

    .line 565
    .local v1, ret:I
    const/4 v0, 0x0

    .line 568
    .local v0, nNotiEvent:I
    const-string v3, ""

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 570
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentInit()I

    move-result v3

    if-eqz v3, :cond_f

    .line 572
    const/4 v3, -0x1

    .line 590
    :goto_e
    return v3

    .line 575
    :cond_f
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 576
    .local v2, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->appId:I

    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbGetNotiEvent(I)I

    move-result v0

    .line 577
    if-lez v0, :cond_2e

    sget-boolean v3, Lcom/wssyncmldm/agent/XDMAgent;->m_bPendingStatus:Z

    if-nez v3, :cond_2e

    .line 579
    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->appId:I

    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNotiSessionID(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSessionID:Ljava/lang/String;

    .line 585
    :goto_25
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeNode()I

    move-result v3

    if-eqz v3, :cond_2c

    .line 587
    const/4 v1, -0x1

    :cond_2c
    move v3, v1

    .line 590
    goto :goto_e

    .line 583
    :cond_2e
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentLibMakeSessionID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSessionID:Ljava/lang/String;

    goto :goto_25
.end method

.method public xdmAgentTpCheckRetry()Z
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 9404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConntectRetryCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/wssyncmldm/agent/XDMAgent;->m_nConnectRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 9406
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingDataConnect()Z

    move-result v1

    if-nez v1, :cond_22

    .line 9407
    sput v3, Lcom/wssyncmldm/agent/XDMAgent;->m_nConnectRetryCount:I

    .line 9409
    :cond_22
    sget v1, Lcom/wssyncmldm/agent/XDMAgent;->m_nConnectRetryCount:I

    if-lt v1, v3, :cond_32

    .line 9411
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 9412
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 9413
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 9414
    sput v0, Lcom/wssyncmldm/agent/XDMAgent;->m_nConnectRetryCount:I

    .line 9418
    :goto_31
    return v0

    .line 9417
    :cond_32
    sget v0, Lcom/wssyncmldm/agent/XDMAgent;->m_nConnectRetryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/wssyncmldm/agent/XDMAgent;->m_nConnectRetryCount:I

    .line 9418
    const/4 v0, 0x1

    goto :goto_31
.end method

.method public xdmAgentTpClose(I)V
    .registers 3
    .parameter "appId"

    .prologue
    .line 9389
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v0, p1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpClose(I)V

    .line 9390
    return-void
.end method

.method public xdmAgentTpCloseNetwork(I)V
    .registers 3
    .parameter "appId"

    .prologue
    .line 9399
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v0, p1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpCloseNetWork(I)V

    .line 9400
    return-void
.end method

.method public xdmAgentTpInit(I)I
    .registers 3
    .parameter "appId"

    .prologue
    .line 9394
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v0, p1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpInit(I)I

    move-result v0

    return v0
.end method

.method public xdmAgentVefifyAtomicCmd(Lcom/wssyncmldm/agent/XDMAgent;)Z
    .registers 6
    .parameter "cmd"

    .prologue
    const/4 v1, 0x0

    .line 3731
    const/4 v0, 0x1

    .line 3733
    .local v0, res:Z
    const-string v2, "Atomic_Start"

    iget-object v3, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 3744
    .end local v0           #res:Z
    :goto_d
    return v0

    .line 3737
    .restart local v0       #res:Z
    :cond_e
    const-string v2, "GET"

    iget-object v3, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1a

    move v0, v1

    .line 3739
    goto :goto_d

    .line 3743
    :cond_1a
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public xdmAgentVerifyCmd(Lcom/wssyncmldm/agent/XDMAgent;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I
    .registers 11
    .parameter "cmd"
    .parameter "isAtomic"
    .parameter "atomic_status"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5920
    sget-object v2, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 5921
    .local v2, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v1, 0x0

    .line 5923
    .local v1, res:I
    const-string v3, "SyncHdr"

    iget-object v4, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_17

    .line 5925
    iget-object v3, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_Header:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdSyncHeader(Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;)I

    move-result v1

    :goto_15
    move v3, v1

    .line 6003
    :goto_16
    return v3

    .line 5927
    :cond_17
    const-string v3, "Status"

    iget-object v4, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_28

    .line 5929
    iget-object v3, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_Status:Lcom/wssyncmldm/eng/parser/XDMParserStatus;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdStatus(Lcom/wssyncmldm/eng/parser/XDMParserStatus;)I

    move-result v1

    goto :goto_15

    .line 5931
    :cond_28
    const-string v3, "Get"

    iget-object v4, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_39

    .line 5933
    iget-object v3, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_Get:Lcom/wssyncmldm/eng/parser/XDMParserGet;

    invoke-virtual {p0, v3, p2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdGet(Lcom/wssyncmldm/eng/parser/XDMParserGet;Z)I

    move-result v1

    goto :goto_15

    .line 5935
    :cond_39
    const-string v3, "Exec"

    iget-object v4, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4a

    .line 5937
    iget-object v3, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_Exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdExec(Lcom/wssyncmldm/eng/parser/XDMParserExec;)I

    move-result v1

    goto :goto_15

    .line 5939
    :cond_4a
    const-string v3, "Alert"

    iget-object v4, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5b

    .line 5941
    iget-object v3, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_Alert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    invoke-virtual {p0, v3, p2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdAlert(Lcom/wssyncmldm/eng/parser/XDMParserAlert;Z)I

    move-result v1

    goto :goto_15

    .line 5943
    :cond_5b
    const-string v3, "Add"

    iget-object v4, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6c

    .line 5945
    iget-object v3, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_AddCmd:Lcom/wssyncmldm/eng/parser/XDMParserAdd;

    invoke-virtual {p0, v3, p2, p3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdAdd(Lcom/wssyncmldm/eng/parser/XDMParserAdd;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I

    move-result v1

    goto :goto_15

    .line 5947
    :cond_6c
    const-string v3, "Replace"

    iget-object v4, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7d

    .line 5949
    iget-object v3, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_ReplaceCmd:Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    invoke-virtual {p0, v3, p2, p3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdReplace(Lcom/wssyncmldm/eng/parser/XDMParserReplace;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I

    move-result v1

    goto :goto_15

    .line 5951
    :cond_7d
    const-string v3, "Copy"

    iget-object v4, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8e

    .line 5953
    iget-object v3, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_CopyCmd:Lcom/wssyncmldm/eng/parser/XDMParserCopy;

    invoke-virtual {p0, v3, p2, p3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdCopy(Lcom/wssyncmldm/eng/parser/XDMParserCopy;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I

    move-result v1

    goto :goto_15

    .line 5955
    :cond_8e
    const-string v3, "Delete"

    iget-object v4, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_a0

    .line 5957
    iget-object v3, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_DeleteCmd:Lcom/wssyncmldm/eng/parser/XDMParserDelete;

    invoke-virtual {p0, v3, p2, p3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdDelete(Lcom/wssyncmldm/eng/parser/XDMParserDelete;ZLcom/wssyncmldm/eng/parser/XDMParserStatus;)I

    move-result v1

    goto/16 :goto_15

    .line 5959
    :cond_a0
    const-string v3, "Atomic_Start"

    iget-object v4, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_dd

    .line 5961
    iput-boolean v6, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    .line 5962
    iput-boolean v5, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicFlag:Z

    .line 5966
    :try_start_ae
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    iget-object v3, v3, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v3}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsSaveFs(Lcom/wssyncmldm/eng/core/XDMOmVfs;)I
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b5} :catch_d4

    .line 5972
    :goto_b5
    iget-object v3, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_Atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdAtomic(Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)I

    move-result v1

    .line 5973
    iget-boolean v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicFlag:Z

    if-eqz v3, :cond_d0

    .line 5975
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 5976
    new-instance v3, Lcom/wssyncmldm/eng/core/XDMOmTree;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/core/XDMOmTree;-><init>()V

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 5977
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    iget-object v3, v3, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v3}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsInit(Lcom/wssyncmldm/eng/core/XDMOmVfs;)I

    .line 5980
    :cond_d0
    iput-boolean v5, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    goto/16 :goto_15

    .line 5968
    :catch_d4
    move-exception v0

    .line 5970
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_b5

    .line 5982
    .end local v0           #e:Ljava/io/IOException;
    :cond_dd
    const-string v3, "Sequence_Start"

    iget-object v4, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f9

    .line 5984
    iput-boolean v6, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    .line 5985
    iget-object v3, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_Sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentCmdSequence(Lcom/wssyncmldm/eng/parser/XDMParserSequence;)I

    move-result v1

    .line 5987
    const/4 v3, -0x5

    if-ne v1, v3, :cond_f5

    move v3, v1

    .line 5989
    goto/16 :goto_16

    .line 5993
    :cond_f5
    iput-boolean v5, v2, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    goto/16 :goto_15

    .line 5999
    :cond_f9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Command"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/wssyncmldm/agent/XDMAgent;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 6000
    const/16 v3, -0x9

    goto/16 :goto_16
.end method

.method public xdmAgentVerifyPollingValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "szPath"
    .parameter "szData"

    .prologue
    .line 2012
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2043
    :cond_c
    :goto_c
    return-void

    .line 2015
    :cond_d
    const-string v0, "./Ext/OSPS/FirmwareUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2017
    invoke-static {p1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2018
    const-string v0, "./Ext/OSPS/FirmwareUpdate/Polling/OrgVersionFileUrl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2020
    invoke-static {p2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPollingOrgVersionUrl(Ljava/lang/String;)V

    goto :goto_c

    .line 2022
    :cond_24
    const-string v0, "./Ext/OSPS/FirmwareUpdate/Polling/VersionFileUrl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2024
    invoke-static {p2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPollingVersionUrl(Ljava/lang/String;)V

    goto :goto_c

    .line 2026
    :cond_30
    const-string v0, "./Ext/OSPS/FirmwareUpdate/Polling/Period"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2028
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPollingPeriod(I)V

    goto :goto_c

    .line 2030
    :cond_44
    const-string v0, "./Ext/OSPS/FirmwareUpdate/Polling/Time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2032
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPollingTime(I)V

    goto :goto_c

    .line 2034
    :cond_58
    const-string v0, "./Ext/OSPS/FirmwareUpdate/Polling/Range"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 2036
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPollingRange(I)V

    goto :goto_c

    .line 2038
    :cond_6c
    const-string v0, "./Ext/OSPS/FirmwareUpdate/Polling/PeriodUnit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2040
    invoke-static {p1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPollingPeriodUnit(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public xdmAgentVerifyServerAuth(Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;)I
    .registers 15
    .parameter "syncHeader"

    .prologue
    const/4 v5, 0x0

    const/4 v12, -0x1

    const/4 v6, 0x0

    const/16 v0, -0x9

    .line 296
    sget-object v11, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    .line 297
    .local v11, ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;
    const/4 v10, 0x0

    .line 298
    .local v10, szKey:Ljava/lang/String;
    iget-object v7, p1, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 299
    .local v7, cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;
    const/4 v9, 0x1

    .line 300
    .local v9, ret:I
    iget-object v8, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->recvHmacData:Lcom/wssyncmldm/eng/core/XDMHmacData;

    .line 302
    .local v8, pHMAC:Lcom/wssyncmldm/eng/core/XDMHmacData;
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 304
    iget-object v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 306
    const-string v1, "ServerID is null"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 307
    iget v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    const/4 v2, -0x7

    if-eq v1, v2, :cond_28

    iget v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    if-ne v1, v0, :cond_2b

    .line 308
    :cond_28
    const/4 v9, -0x1

    :goto_29
    move v0, v9

    .line 423
    :goto_2a
    return v0

    .line 310
    :cond_2b
    const/16 v9, -0x9

    goto :goto_29

    .line 315
    :cond_2e
    iget v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_150

    .line 317
    if-nez v8, :cond_3b

    .line 319
    const-string v1, "HAMC is null"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto :goto_2a

    .line 323
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorighm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "digest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacDigest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 327
    iget-object v1, v8, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacAlgorithm:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9b

    iget-object v1, v8, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacUserName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9b

    iget-object v1, v8, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacDigest:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 329
    :cond_9b
    const-string v1, "Any of MAC data is empty"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto :goto_2a

    .line 332
    :cond_a1
    const-string v1, "MD5"

    iget-object v2, v8, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_b2

    .line 334
    const-string v1, "State No Credential"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_2a

    .line 338
    :cond_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PASS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerPW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "credtype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextNonce:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpContentLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/wssyncmldm/eng/core/XDMHmacData;->httpContentLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 342
    iget v0, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    iget-object v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerID:Ljava/lang/String;

    iget-object v2, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerPW:Ljava/lang/String;

    iget-object v3, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    iget-object v4, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    array-length v4, v4

    iget-object v5, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget v6, v8, Lcom/wssyncmldm/eng/core/XDMHmacData;->httpContentLength:I

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthMakeDigest(ILjava/lang/String;Ljava/lang/String;[BI[BI)Ljava/lang/String;

    move-result-object v10

    .line 343
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 345
    const-string v0, "key is null"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    move v0, v12

    .line 346
    goto/16 :goto_2a

    .line 349
    :cond_13c
    iget-object v0, v8, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacDigest:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14c

    .line 351
    const-string v0, "key and pHMAC.hamcDigest not equal"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    move v0, v12

    .line 352
    goto/16 :goto_2a

    .line 354
    :cond_14c
    const/4 v9, 0x1

    :cond_14d
    :goto_14d
    move v0, v9

    .line 423
    goto/16 :goto_2a

    .line 358
    :cond_150
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    if-nez v0, :cond_157

    .line 360
    const/16 v9, -0x9

    goto :goto_14d

    .line 364
    :cond_157
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v0, v0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthCredString2Type(Ljava/lang/String;)I

    move-result v0

    iget v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    if-ne v0, v1, :cond_277

    .line 366
    const-string v0, "syncml:auth-md5"

    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21c

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRED_TYPE_MD5 ws.serverCredType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRED_TYPE_MD5 ws.serverID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRED_TYPE_MD5 ws.serverPW : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerPW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRED_TYPE_MD5 ws.serverCredType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 373
    iget v0, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    iget-object v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerID:Ljava/lang/String;

    iget-object v2, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerPW:Ljava/lang/String;

    iget-object v3, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    iget-object v4, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    array-length v4, v4

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthMakeDigest(ILjava/lang/String;Ljava/lang/String;[BI[BI)Ljava/lang/String;

    move-result-object v10

    .line 374
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ec

    .line 376
    const-string v0, "key is null"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 377
    const/4 v9, -0x1

    goto/16 :goto_14d

    .line 381
    :cond_1ec
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_219

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key.compareTo(cred.data) != 0 key= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cred.data= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 384
    const/4 v9, -0x1

    goto/16 :goto_14d

    .line 388
    :cond_219
    const/4 v9, 0x1

    goto/16 :goto_14d

    .line 392
    :cond_21c
    const-string v0, "syncml:auth-basic"

    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iget-object v1, v1, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14d

    .line 394
    iget v0, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    iget-object v1, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerID:Ljava/lang/String;

    iget-object v2, v11, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerPW:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v4, v6

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthMakeDigest(ILjava/lang/String;Ljava/lang/String;[BI[BI)Ljava/lang/String;

    move-result-object v10

    .line 396
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_247

    .line 398
    const-string v0, "key is null"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 399
    const/4 v9, -0x1

    goto/16 :goto_14d

    .line 403
    :cond_247
    iget-object v0, v7, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_274

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key.compareTo(cred.data) != 0 key= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cred.data= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 406
    const/4 v9, -0x1

    goto/16 :goto_14d

    .line 410
    :cond_274
    const/4 v9, 0x1

    goto/16 :goto_14d

    .line 417
    :cond_277
    const-string v0, "server auth type is mismatch"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 418
    const/4 v9, -0x1

    goto/16 :goto_14d
.end method

.method public xdmAgentVerifyUpdateMechanism(Lcom/wssyncmldm/eng/core/XDMWorkspace;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "ws"
    .parameter "szPath"
    .parameter "szPkgURL"

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x100

    const/4 v1, 0x0

    .line 8466
    const-string v3, "/Update/PkgData"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 8468
    iput-char v2, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nUpdateMechanism:C

    .line 8469
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 8472
    iget-char v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nUpdateMechanism:C

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    :cond_18
    :goto_18
    move v1, v2

    .line 8527
    :cond_19
    :goto_19
    return v1

    .line 8478
    :cond_1a
    const-string v3, "/DownloadAndUpdate/PkgURL"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 8480
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_34

    .line 8482
    :cond_2e
    const-string v2, "D/L Mechanism  Object URL MISMATCH"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_19

    .line 8486
    :cond_34
    invoke-static {p3}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOServerUrl(Ljava/lang/String;)Z

    move-result v0

    .line 8487
    .local v0, bret:Z
    if-nez v0, :cond_40

    .line 8489
    const-string v2, "wrong URL"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_19

    .line 8493
    :cond_40
    const/4 v1, 0x2

    iput-char v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nUpdateMechanism:C

    .line 8494
    iput-object p3, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szDownloadURI:Ljava/lang/String;

    .line 8495
    iget-char v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nUpdateMechanism:C

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    goto :goto_18

    .line 8499
    .end local v0           #bret:Z
    :cond_4b
    const-string v3, "/Download/PkgURL"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 8501
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_65

    .line 8503
    :cond_5f
    const-string v2, "D/L Mechanism  Object URL MISMATCH"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_19

    .line 8507
    :cond_65
    invoke-static {p3}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOServerUrl(Ljava/lang/String;)Z

    move-result v0

    .line 8508
    .restart local v0       #bret:Z
    if-nez v0, :cond_71

    .line 8510
    const-string v2, "wrong URL"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_19

    .line 8514
    :cond_71
    const/4 v1, 0x3

    iput-char v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nUpdateMechanism:C

    .line 8515
    iput-object p3, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szDownloadURI:Ljava/lang/String;

    .line 8516
    iget-char v1, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nUpdateMechanism:C

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    goto :goto_18

    .line 8518
    .end local v0           #bret:Z
    :cond_7c
    const-string v3, "/SvcState"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8520
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v4, :cond_19

    .line 8524
    iput-object p3, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSvcState:Ljava/lang/String;

    .line 8525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SVCSTATE : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSvcState:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_18
.end method

.method public xdmAgent_MAKE_REP_ITEM(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/String;I)V
    .registers 8
    .parameter "om"
    .parameter "list"
    .parameter "szPath"
    .parameter "node_size"

    .prologue
    .line 2568
    new-array v0, p4, [C

    .line 2570
    .local v0, buf:[C
    const/4 v2, 0x0

    invoke-static {p1, p3, v2, v0, p4}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I

    move-result v2

    if-gez v2, :cond_e

    .line 2572
    const-string v2, "xdmOmRead failed"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2574
    :cond_e
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 2575
    .local v1, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    iput-object p3, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    .line 2576
    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMHandleCmd;->xdmAgentDataStString2Pcdata([C)Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 2577
    invoke-static {p2, v1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    .line 2578
    return-void
.end method

.method public xdm_SET_OM_STR(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .parameter "om"
    .parameter "szPath"
    .parameter "szData"
    .parameter "aclValue"
    .parameter "scope"

    .prologue
    .line 2056
    invoke-static {p1, p2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v0

    if-nez v0, :cond_c

    .line 2058
    invoke-static {p2, p3}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetOM(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2059
    invoke-static {p1, p2, p4, p5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    .line 2061
    :cond_c
    return-void
.end method
