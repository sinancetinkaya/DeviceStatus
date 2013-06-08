.class public Lcom/wssyncmldm/agent/fota/XFOTADlAgent;
.super Ljava/lang/Object;
.source "XFOTADlAgent.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;
.implements Lcom/wssyncmldm/interfaces/XTPInterface;


# static fields
.field private static final XDL_MAX_DOWNLOAD_SIZE:I = 0x1700

.field private static final XDM_HTTP_HEADER_MAX_SIZE:I = 0x300

.field public static g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

.field private static m_bFFSWriteStatus:Z

.field private static m_byReceiveBuffer:[B

.field private static m_nDLConnectRetryCount:I

.field private static m_nDLConnectRetryFailCount:I

.field private static m_szReportStatus:[Ljava/lang/String;


# instance fields
.field public m_DlAgentHandler:Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_nDLConnectRetryCount:I

    .line 31
    sput v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_nDLConnectRetryFailCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_DlAgentHandler:Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;

    .line 42
    sput-boolean v2, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_bFFSWriteStatus:Z

    .line 43
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_szReportStatus:[Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    if-nez v0, :cond_1a

    .line 47
    new-instance v0, Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-direct {v0}, Lcom/wssyncmldm/tp/XTPAdapter;-><init>()V

    sput-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    .line 50
    :cond_1a
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_szReportStatus:[Ljava/lang/String;

    const-string v1, "900 Success"

    aput-object v1, v0, v2

    .line 51
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_szReportStatus:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "901 Insufficient memory"

    aput-object v2, v0, v1

    .line 52
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_szReportStatus:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "902 User Cancelled"

    aput-object v2, v0, v1

    .line 53
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_szReportStatus:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "903 Loss of Service"

    aput-object v2, v0, v1

    .line 54
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_szReportStatus:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "905 Attribute mismatch"

    aput-object v2, v0, v1

    .line 55
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_szReportStatus:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "906 Invalid descriptor"

    aput-object v2, v0, v1

    .line 56
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_szReportStatus:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "951 Invalid DDVersion"

    aput-object v2, v0, v1

    .line 57
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_szReportStatus:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "952 Device Aborted"

    aput-object v2, v0, v1

    .line 58
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_szReportStatus:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "953 Non-Acceptable Content"

    aput-object v2, v0, v1

    .line 59
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_szReportStatus:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "954 Loader Error"

    aput-object v2, v0, v1

    .line 60
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_szReportStatus:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    .line 61
    return-void
.end method

.method public static xfotaDlAgentDownloadFailed()I
    .registers 15

    .prologue
    const/16 v14, 0x7c

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 388
    const/4 v8, 0x0

    .line 389
    .local v8, nRc:I
    const-string v1, ""

    .line 390
    .local v1, szResURL:Ljava/lang/String;
    const-string v9, ""

    .line 391
    .local v9, szDownloadStatus:Ljava/lang/String;
    const-string v10, ""

    .line 392
    .local v10, szszResultCode:Ljava/lang/String;
    const-string v2, ""

    .line 393
    .local v2, szHmacData:Ljava/lang/String;
    const-string v3, ""

    .line 395
    .local v3, szContentRange:Ljava/lang/String;
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 397
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    :try_start_19
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v4, "POST"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_22
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_22} :catch_4f

    .line 412
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOResultCode()Ljava/lang/String;

    move-result-object v10

    .line 414
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 416
    const-string v0, "501"

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5f

    .line 419
    invoke-static {v12}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlAgentGetReportStatus(I)Ljava/lang/String;

    move-result-object v9

    .line 450
    :goto_38
    :try_start_38
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSendData([BII)I
    :try_end_46
    .catch Ljava/net/SocketTimeoutException; {:try_start_38 .. :try_end_46} :catch_91

    move-result v8

    .line 460
    :goto_47
    if-nez v8, :cond_a3

    .line 462
    const/16 v0, 0x78

    invoke-static {v0, v11, v11}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 473
    :goto_4e
    return v8

    .line 403
    :catch_4f
    move-exception v7

    .line 405
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 407
    const/4 v8, -0x3

    .line 408
    invoke-static {v14, v11, v11}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4e

    .line 421
    .end local v7           #e:Ljava/lang/NullPointerException;
    :cond_5f
    const-string v0, "500"

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6c

    .line 424
    invoke-static {v13}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlAgentGetReportStatus(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_38

    .line 426
    :cond_6c
    const-string v0, "412"

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_79

    .line 429
    invoke-static {v13}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlAgentGetReportStatus(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_38

    .line 431
    :cond_79
    const-string v0, "411"

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_87

    .line 434
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlAgentGetReportStatus(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_38

    .line 439
    :cond_87
    invoke-static {v12}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlAgentGetReportStatus(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_38

    .line 444
    :cond_8c
    invoke-static {v12}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlAgentGetReportStatus(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_38

    .line 452
    :catch_91
    move-exception v7

    .line 454
    .local v7, e:Ljava/net/SocketTimeoutException;
    const-string v0, "xtpAdpSendData Time out"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v7}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 456
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 457
    const/4 v8, -0x3

    goto :goto_47

    .line 464
    .end local v7           #e:Ljava/net/SocketTimeoutException;
    :cond_a3
    const/4 v0, -0x2

    if-ne v8, v0, :cond_ac

    .line 466
    const/16 v0, 0x71

    invoke-static {v0, v11, v11}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4e

    .line 471
    :cond_ac
    invoke-static {v14, v11, v11}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4e
.end method

.method public static xfotaDlAgentGetBuffer()[B
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_byReceiveBuffer:[B

    return-object v0
.end method

.method public static xfotaDlAgentGetHttpConStatus()I
    .registers 5

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, nFileId:I
    const-string v3, ""

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdFirmwareData()I

    move-result v0

    .line 135
    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileSize(I)I

    move-result v1

    .line 136
    .local v1, nOffset:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetObjectSizeFUMO()I

    move-result v2

    .line 138
    .local v2, nTotalObjectSize:I
    if-ne v1, v2, :cond_36

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  TotalSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 141
    const/4 v3, 0x0

    .line 149
    :goto_35
    return v3

    .line 143
    :cond_36
    if-le v1, v2, :cond_5d

    .line 145
    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbDeleteFile(I)I

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offset ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  TotalSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 147
    const/4 v3, -0x2

    goto :goto_35

    .line 149
    :cond_5d
    const/4 v3, 0x1

    goto :goto_35
.end method

.method public static xfotaDlAgentGetHttpContentRange(Z)Ljava/lang/String;
    .registers 8
    .parameter "nDownloadMode"

    .prologue
    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, nOffset:I
    const/4 v0, 0x0

    .line 156
    .local v0, nDownloadSize:I
    const/4 v3, 0x0

    .line 157
    .local v3, nTotalObjectSize:I
    const/4 v1, 0x0

    .line 158
    .local v1, nFileId:I
    const-string v4, ""

    .line 160
    .local v4, szConLength:Ljava/lang/String;
    sget-boolean v5, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_bFFSWriteStatus:Z

    if-eqz v5, :cond_d

    .line 162
    const/4 v5, 0x0

    sput-boolean v5, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_bFFSWriteStatus:Z

    .line 165
    :cond_d
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdFirmwareData()I

    move-result v1

    .line 166
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileSize(I)I

    move-result v2

    .line 167
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetObjectSizeFUMO()I

    move-result v3

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nOffset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nTotalObjectSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 171
    if-nez p0, :cond_77

    .line 173
    const/16 v5, 0x1700

    sub-int v6, v3, v2

    if-ge v5, v6, :cond_74

    .line 174
    add-int/lit16 v5, v2, 0x1700

    add-int/lit8 v0, v5, -0x1

    .line 178
    :goto_45
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , downloadsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", TotalSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 187
    :goto_73
    return-object v4

    .line 176
    :cond_74
    add-int/lit8 v0, v3, -0x1

    goto :goto_45

    .line 183
    :cond_77
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", TotalSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_73
.end method

.method public static xfotaDlAgentGetReportStatus(I)Ljava/lang/String;
    .registers 3
    .parameter "nStatus"

    .prologue
    .line 86
    if-ltz p0, :cond_26

    const/16 v0, 0xa

    if-ge p0, v0, :cond_26

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pReportStatusValue = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_szReportStatus:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 90
    :cond_26
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_szReportStatus:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static xfotaDlAgentGetWriteStatus()Z
    .registers 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_bFFSWriteStatus:Z

    return v0
.end method

.method public static xfotaDlAgentInitBuffer()V
    .registers 1

    .prologue
    .line 76
    const/16 v0, 0x5301

    new-array v0, v0, [B

    sput-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_byReceiveBuffer:[B

    .line 77
    return-void
.end method

.method public static xfotaDlAgentIsStatus()Z
    .registers 3

    .prologue
    .line 96
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    .line 98
    .local v0, nAgentStatus:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nAgentStatus = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 100
    sparse-switch v0, :sswitch_data_28

    .line 123
    :sswitch_23
    const/4 v1, 0x0

    :goto_24
    return v1

    .line 110
    :sswitch_25
    const/4 v1, 0x1

    goto :goto_24

    .line 100
    nop

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_25
        0xa -> :sswitch_23
        0x14 -> :sswitch_23
        0x1e -> :sswitch_23
        0x28 -> :sswitch_23
        0x41 -> :sswitch_25
        0x46 -> :sswitch_25
        0x50 -> :sswitch_25
        0x5a -> :sswitch_25
        0x64 -> :sswitch_25
        0xc8 -> :sswitch_23
        0xe6 -> :sswitch_23
        0xf0 -> :sswitch_25
        0xf1 -> :sswitch_25
    .end sparse-switch
.end method

.method public static xfotaDlAgentParserDescriptor([B)I
    .registers 7
    .parameter "pData"

    .prologue
    .line 193
    const/4 v4, 0x0

    .line 194
    .local v4, objectInfo:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 195
    .local v3, objectDD:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;
    const/4 v2, -0x2

    .line 198
    .local v2, nRet:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetObjectFUMO()Lcom/wssyncmldm/db/file/XDBFumoInfo;

    move-result-object v4

    .line 199
    .local v4, objectInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMDDXMLParser;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMDDXMLParser;-><init>()V

    .line 202
    .local v0, DDParser:Lcom/wssyncmldm/eng/parser/XDMDDXMLParser;
    :try_start_c
    invoke-virtual {v0, p0}, Lcom/wssyncmldm/eng/parser/XDMDDXMLParser;->xdmDDXMLParserDownloadDescriptor([B)Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_1d

    move-result-object v3

    .line 209
    :goto_10
    if-eqz v3, :cond_1c

    .line 211
    invoke-static {v4, v3}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlAgentSetFUMOObjectFromDD(Ljava/lang/Object;Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;)Ljava/lang/Object;

    move-result-object v4

    .line 212
    .local v4, objectInfo:Ljava/lang/Object;
    if-eqz v4, :cond_1c

    .line 214
    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbSetObjectFUMO(Ljava/lang/Object;)V

    .line 215
    const/4 v2, 0x0

    .line 219
    .end local v4           #objectInfo:Ljava/lang/Object;
    :cond_1c
    return v2

    .line 204
    .local v4, objectInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    :catch_1d
    move-exception v1

    .line 206
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static xfotaDlAgentSetFUMOObjectFromDD(Ljava/lang/Object;Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;)Ljava/lang/Object;
    .registers 17
    .parameter "objectInfo"
    .parameter "objectDD"

    .prologue
    .line 224
    move-object v1, p0

    check-cast v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;

    .line 225
    .local v1, fumoInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    move-object/from16 v0, p1

    .line 226
    .local v0, ddInfo:Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;
    const/4 v4, 0x0

    .line 233
    .local v4, parser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    const/4 v11, 0x0

    .line 234
    .local v11, sztemp:[C
    const/4 v2, 0x0

    .line 235
    .local v2, nLen:I
    const/16 v3, 0x50

    .line 237
    .local v3, nPort:I
    iget-object v12, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szType:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    .line 238
    iget-object v9, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szType:Ljava/lang/String;

    .line 239
    .local v9, szType:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Mime Media Type = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 241
    iput-object v9, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szContentType:Ljava/lang/String;

    .line 242
    iput-object v9, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szAcceptType:Ljava/lang/String;

    .line 243
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "szAcceptType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szAcceptType:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 245
    iget-object v12, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szObjectURI:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    .line 247
    iget-object v10, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szObjectURI:Ljava/lang/String;

    .line 248
    .local v10, szURL:Ljava/lang/String;
    invoke-static {v10}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbCheckOMADDURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 249
    .local v8, szTempURL:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Install Len = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 251
    invoke-static {v8}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v4

    .line 253
    iget-object v7, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    .line 254
    .local v7, szTempServerAddr:Ljava/lang/String;
    iget v3, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    .line 255
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, szTempPort:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbDoDMBootStrapURI([C[C[C)[C

    move-result-object v11

    .line 258
    if-nez v11, :cond_b1

    .line 260
    const-string v12, "Install URI Parsing Error"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 261
    const/4 v1, 0x0

    .line 330
    .end local v1           #fumoInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    :cond_b0
    :goto_b0
    return-object v1

    .line 264
    .restart local v1       #fumoInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    :cond_b1
    const/4 v4, 0x0

    .line 265
    invoke-static {v11}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v4

    .line 266
    if-nez v4, :cond_c2

    .line 268
    const-string v12, "xtpURLParser Parsing Error"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_b0

    .line 272
    :cond_c2
    iget-object v12, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    iput-object v12, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szObjectDownloadUrl:Ljava/lang/String;

    .line 273
    iget-object v12, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    iput-object v12, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szObjectDownloadIP:Ljava/lang/String;

    .line 274
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Install URI = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szObjectDownloadUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 276
    if-eqz v3, :cond_e9

    const v12, 0xffff

    if-le v3, v12, :cond_eb

    .line 278
    :cond_e9
    iget v3, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerPort:I

    .line 281
    :cond_eb
    iput v3, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nObjectDownloadPort:I

    .line 283
    const/4 v8, 0x0

    .line 284
    const/4 v3, 0x0

    .line 285
    const/4 v4, 0x0

    .line 287
    iget-object v12, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szInstallNotifyURI:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    .line 288
    iget-object v10, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szInstallNotifyURI:Ljava/lang/String;

    .line 289
    invoke-static {v10}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbCheckOMADDURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 290
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Notify URI Len = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 291
    invoke-static {v8}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v4

    .line 293
    iget-object v7, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    .line 294
    iget v12, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 296
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbDoDMBootStrapURI([C[C[C)[C

    move-result-object v11

    .line 297
    if-nez v11, :cond_148

    .line 299
    const-string v12, "Notify URI Parsing Error"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 300
    const/4 v1, 0x0

    goto/16 :goto_b0

    .line 303
    :cond_148
    const/4 v4, 0x0

    .line 304
    invoke-static {v7}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v4

    .line 305
    if-nez v4, :cond_156

    .line 307
    const-string v12, "xtpURLParser Parsing Error"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_b0

    .line 311
    :cond_156
    iget-object v12, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    iput-object v12, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNotifyUrl:Ljava/lang/String;

    .line 312
    iget-object v12, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    iput-object v12, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNotifyIP:Ljava/lang/String;

    .line 313
    iget-object v12, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    iput-object v12, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNotifyProtocol:Ljava/lang/String;

    .line 314
    iget v3, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    .line 315
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Notify URI = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNotifyUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 316
    if-eqz v3, :cond_183

    const v12, 0xffff

    if-le v3, v12, :cond_185

    .line 318
    :cond_183
    iget v3, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerPort:I

    .line 320
    :cond_185
    iput v3, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nStatusNotifyPort:I

    .line 321
    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szSize:Ljava/lang/String;

    .line 322
    .local v5, szInstallSize:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Object Size Len = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 323
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nObjectSize:I

    .line 324
    const/4 v12, 0x0

    iput v12, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nFFSWriteSize:I

    .line 326
    iget-object v12, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szDescription:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b0

    .line 328
    iget-object v12, v0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szDescription:Ljava/lang/String;

    iput-object v12, v1, Lcom/wssyncmldm/db/file/XDBFumoInfo;->szDescription:Ljava/lang/String;

    goto/16 :goto_b0
.end method

.method public static xfotaDlAgentSetWriteStatus(Z)Z
    .registers 2
    .parameter "nStatus"

    .prologue
    .line 70
    sput-boolean p0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_bFFSWriteStatus:Z

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public static xfotaDlAgentUserCancel()I
    .registers 12

    .prologue
    const/16 v11, 0x7c

    const/4 v10, 0x0

    .line 335
    const/4 v8, 0x0

    .line 336
    .local v8, nRc:I
    const-string v1, ""

    .line 337
    .local v1, szResURL:Ljava/lang/String;
    const-string v9, ""

    .line 338
    .local v9, szDownloadStatus:Ljava/lang/String;
    const-string v2, ""

    .line 339
    .local v2, szHmacData:Ljava/lang/String;
    const-string v3, ""

    .line 341
    .local v3, szContentRange:Ljava/lang/String;
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 343
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    :try_start_15
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const-string v4, "POST"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1e} :catch_3a

    .line 357
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlAgentGetReportStatus(I)Ljava/lang/String;

    move-result-object v9

    .line 360
    :try_start_23
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSendData([BII)I
    :try_end_31
    .catch Ljava/net/SocketTimeoutException; {:try_start_23 .. :try_end_31} :catch_4a

    move-result v8

    .line 370
    :goto_32
    if-nez v8, :cond_5c

    .line 372
    const/16 v0, 0x78

    invoke-static {v0, v10, v10}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 383
    :goto_39
    return v8

    .line 349
    :catch_3a
    move-exception v7

    .line 351
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 353
    const/4 v8, -0x3

    .line 354
    invoke-static {v11, v10, v10}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_39

    .line 362
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_4a
    move-exception v7

    .line 364
    .local v7, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v7}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 365
    const-string v0, "xtpAdpSendData Time out"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 367
    const/4 v8, -0x3

    goto :goto_32

    .line 374
    .end local v7           #e:Ljava/net/SocketTimeoutException;
    :cond_5c
    const/4 v0, -0x2

    if-ne v8, v0, :cond_65

    .line 376
    const/16 v0, 0x71

    invoke-static {v0, v10, v10}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_39

    .line 380
    :cond_65
    invoke-static {v11, v10, v10}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_39
.end method

.method public static xfotaDlTpGetRetryCount()I
    .registers 1

    .prologue
    .line 518
    sget v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_nDLConnectRetryCount:I

    return v0
.end method

.method public static xfotaDlTpGetRetryFailCount()I
    .registers 2

    .prologue
    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xfotaDlTpGetRetryFailCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_nDLConnectRetryFailCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 524
    sget v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_nDLConnectRetryFailCount:I

    return v0
.end method

.method public static xfotaDlTpSetRetryCount(I)V
    .registers 1
    .parameter "nCnt"

    .prologue
    .line 513
    sput p0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_nDLConnectRetryCount:I

    .line 514
    return-void
.end method

.method public static xfotaDlTpSetRetryFailCount(I)V
    .registers 3
    .parameter "nCnt"

    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xfotaDlTpGetRetryFailCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 530
    sput p0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_nDLConnectRetryFailCount:I

    .line 531
    return-void
.end method


# virtual methods
.method public xfotaDlTpCheckRetry()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConntectRetryCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_nDLConnectRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 499
    sget v1, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_nDLConnectRetryCount:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_2b

    .line 501
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 502
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 503
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 504
    sput v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_nDLConnectRetryCount:I

    .line 508
    :goto_2a
    return v0

    .line 507
    :cond_2b
    sget v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_nDLConnectRetryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->m_nDLConnectRetryCount:I

    .line 508
    const/4 v0, 0x1

    goto :goto_2a
.end method

.method public xfotaDlTpClose(I)V
    .registers 3
    .parameter "appId"

    .prologue
    .line 478
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v0, p1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpClose(I)V

    .line 479
    return-void
.end method

.method public xfotaDlTpCloseNetWork(I)V
    .registers 3
    .parameter "appId"

    .prologue
    .line 488
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v0, p1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpCloseNetWork(I)V

    .line 489
    return-void
.end method

.method public xfotaDlTpGetHttpEcode()I
    .registers 3

    .prologue
    .line 493
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetHttpEcode(I)I

    move-result v0

    return v0
.end method

.method public xfotaDlTpInit(I)I
    .registers 3
    .parameter "appId"

    .prologue
    .line 483
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->g_HttpDLAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v0, p1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpInit(I)I

    move-result v0

    return v0
.end method
