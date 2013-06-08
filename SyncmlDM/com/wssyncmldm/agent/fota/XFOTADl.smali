.class public Lcom/wssyncmldm/agent/fota/XFOTADl;
.super Ljava/lang/Object;
.source "XFOTADl.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;
.implements Lcom/wssyncmldm/interfaces/XTPInterface;


# static fields
.field public static g_PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

.field private static m_bDrawingPercentageStates:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wssyncmldm/agent/fota/XFOTADl;->m_bDrawingPercentageStates:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xfotaCreatePostponeTimerStateInfo()V
    .registers 1

    .prologue
    .line 156
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADl;->g_PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    if-nez v0, :cond_b

    .line 157
    new-instance v0, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;-><init>()V

    sput-object v0, Lcom/wssyncmldm/agent/fota/XFOTADl;->g_PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    .line 160
    :cond_b
    return-void
.end method

.method public static xfotaDownCheckBeforeUpdate()V
    .registers 2

    .prologue
    .line 149
    const-string v0, "process pre start"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    const/16 v1, 0xd3

    invoke-static {v0, v1}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 151
    const/16 v0, 0x267

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 152
    return-void
.end method

.method public static xfotaDownUserInteractAction()Z
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, nRet:I
    const/4 v0, 0x1

    .line 39
    .local v0, bRes:Z
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrCheckDeltaPkgSize()I

    move-result v1

    .line 40
    if-ne v1, v4, :cond_16

    .line 42
    const-string v2, "Firmware size BIG"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 43
    const/16 v2, 0xe8

    invoke-static {v3, v2}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 44
    const/4 v0, 0x0

    .line 66
    :cond_15
    :goto_15
    return v0

    .line 46
    :cond_16
    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    .line 48
    const-string v2, "FFS memory Insufficient"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 49
    const/16 v2, 0xe7

    invoke-static {v3, v2}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 50
    const/4 v0, 0x0

    goto :goto_15

    .line 52
    :cond_25
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3c

    .line 54
    const/16 v2, 0xea

    invoke-static {v3, v2}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 55
    sget v2, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->nDeltaDownState:I

    if-ne v2, v4, :cond_3a

    .line 57
    const/16 v2, 0x113

    invoke-static {v2, v3, v3}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 58
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 60
    :cond_3a
    const/4 v0, 0x0

    goto :goto_15

    .line 62
    :cond_3c
    const/4 v2, -0x2

    if-ne v1, v2, :cond_15

    .line 64
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static xfotaDownloadComplete()Z
    .registers 3

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, nAgentStatus:I
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nAgentStatus :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 134
    const/16 v1, 0xdc

    if-eq v0, v1, :cond_28

    const/16 v1, 0x32

    if-ne v0, v1, :cond_2d

    .line 136
    :cond_28
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownCheckBeforeUpdate()V

    .line 144
    const/4 v1, 0x1

    :goto_2c
    return v1

    .line 140
    :cond_2d
    const-string v1, "Download State False"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method public static xfotaDownloadGetDrawingPercentage()Z
    .registers 1

    .prologue
    .line 195
    sget-boolean v0, Lcom/wssyncmldm/agent/fota/XFOTADl;->m_bDrawingPercentageStates:Z

    return v0
.end method

.method public static xfotaDownloadMemoryCheck(I)I
    .registers 5
    .parameter "nDeltaDownState"

    .prologue
    const/4 v3, 0x0

    .line 71
    const-string v2, ""

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 72
    const/4 v1, -0x1

    .line 73
    .local v1, nRet:I
    sput p0, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->nDeltaDownState:I

    .line 77
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownUserInteractAction()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 79
    const/4 v2, 0x1

    if-ne p0, v2, :cond_29

    .line 83
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDeltaFileSaveIndex()I

    move-result v0

    .line 84
    .local v0, nDeltaFileIndex:I
    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpDeltaFolderCreate(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 86
    const-string v2, "xdbAdpDeltaFolderCreate fail!!"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaMemoryFullReport()V

    .line 90
    :cond_24
    const/16 v2, 0x70

    invoke-static {v2, v3, v3}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .end local v0           #nDeltaFileIndex:I
    :cond_29
    const/4 v1, 0x0

    .line 122
    :cond_2a
    return v1
.end method

.method public static xfotaDownloadSetDrawingPercentage(Z)V
    .registers 1
    .parameter "bState"

    .prologue
    .line 190
    sput-boolean p0, Lcom/wssyncmldm/agent/fota/XFOTADl;->m_bDrawingPercentageStates:Z

    .line 191
    return-void
.end method

.method public static xfotaEncryptionMemoryCheck(Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;I)V
    .registers 13
    .parameter "devEncrypt"
    .parameter "nDataSize"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 221
    const-wide/16 v0, 0x0

    .line 222
    .local v0, RemainSize:J
    const-wide/16 v2, 0x0

    .line 223
    .local v2, TotalSize:J
    const-string v5, ""

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 225
    if-nez p0, :cond_14

    .line 227
    const-string v5, "wssdmDeviceEncrypt is null"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 300
    :cond_13
    :goto_13
    return-void

    .line 231
    :cond_14
    invoke-static {v8}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetAvailableMemorySize(I)J

    move-result-wide v0

    .line 233
    int-to-long v5, p1

    cmp-long v5, v5, v0

    if-ltz v5, :cond_56

    .line 235
    sput-boolean v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bAvailableCache:Z

    .line 236
    const-string v5, "%s/%s"

    new-array v6, v10, [Ljava/lang/Object;

    sget-object v7, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->CACHE_DIR_PATH:Ljava/lang/String;

    aput-object v7, v6, v8

    sget-object v7, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, szFolderPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbClearCache(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 240
    sput-boolean v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bAvailableCache:Z

    .line 242
    :cond_3b
    sget v5, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->nDeltaDownState:I

    if-ne v5, v9, :cond_52

    .line 245
    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFolderExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 248
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbClearFileInFolder(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 250
    sput-boolean v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bAvailableCache:Z

    .line 255
    :cond_52
    invoke-static {v8}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetAvailableMemorySize(I)J

    move-result-wide v0

    .line 257
    .end local v4           #szFolderPath:Ljava/lang/String;
    :cond_56
    invoke-static {v8}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTotalMemorySize(I)J

    move-result-wide v2

    .line 258
    int-to-long v5, p1

    cmp-long v5, v5, v0

    if-gtz v5, :cond_84

    .line 260
    const-string v5, "Cache memory >>> XDB_FS_OK..."

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 261
    const-string v5, "Remain size : %d, Total size : %d and Delta Size : %d bytes"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 262
    sput-boolean v9, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bAvailableCache:Z

    .line 265
    :cond_84
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetDeviceDecryptionSupport()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 266
    sput-boolean v9, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bAvailableCache:Z

    .line 268
    :cond_8c
    sput-object p0, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->devEncrypt:Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "useCache : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseCache:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "useInternal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseInternal:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "useExternal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseExternal:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "useExternalSD : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseExternalSD:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 271
    iget-boolean v5, p0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bAllareaDecrypted:Z

    if-nez v5, :cond_d2

    sget-boolean v5, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bAvailableCache:Z

    if-eqz v5, :cond_e1

    .line 273
    :cond_d2
    const-string v5, "Available Cache or Device is NOT all Area Decryption"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 274
    sput-boolean v9, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseCache:Z

    .line 275
    sput-boolean v9, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseInternal:Z

    .line 276
    sput-boolean v9, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseExternal:Z

    .line 277
    sput-boolean v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseExternalSD:Z

    goto/16 :goto_13

    .line 281
    :cond_e1
    iget-boolean v5, p0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bAllareaEncrypted:Z

    if-nez v5, :cond_e9

    iget-boolean v5, p0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bInternalEncrypted:Z

    if-eqz v5, :cond_f8

    .line 283
    :cond_e9
    const-string v5, "Device is AllareaEncrypted or InternalEncrypted"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 284
    sput-boolean v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseCache:Z

    .line 285
    sput-boolean v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseInternal:Z

    .line 286
    sput-boolean v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseExternal:Z

    .line 287
    sput-boolean v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseExternalSD:Z

    goto/16 :goto_13

    .line 291
    :cond_f8
    iget-boolean v5, p0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bSDEncrypted:Z

    if-eqz v5, :cond_13

    .line 293
    const-string v5, "Device is SDEncrypted"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 294
    sput-boolean v9, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseCache:Z

    .line 295
    sput-boolean v9, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseInternal:Z

    .line 296
    sput-boolean v9, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseExternal:Z

    .line 297
    sput-boolean v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseExternalSD:Z

    goto/16 :goto_13
.end method

.method public static xfotaGetPostponeTimerStateInfo()Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;
    .registers 1

    .prologue
    .line 164
    sget-object v0, Lcom/wssyncmldm/agent/fota/XFOTADl;->g_PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    return-object v0
.end method

.method public static xfotaInFotaCycle()Z
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, bRtn:Z
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v1

    if-eqz v1, :cond_16

    .line 177
    :cond_d
    const/4 v0, 0x1

    .line 184
    :cond_e
    :goto_e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 185
    return v0

    .line 181
    :cond_16
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v1

    if-eqz v1, :cond_e

    .line 182
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public static xfotaInstallStartCheck()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 304
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 306
    sget-boolean v0, Lcom/wssyncmldm/XDMService;->XDM_SYSTEM_ROOTING:Z

    if-nez v0, :cond_2d

    .line 308
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckSystemRooting()I

    .line 309
    sget v0, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 311
    const-string v0, "Rooting Not Scan. FOTA not exec"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 312
    const/16 v0, 0x194

    invoke-static {v2, v0}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 343
    :goto_1d
    return-void

    .line 315
    :cond_1e
    sget v0, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    if-ne v0, v3, :cond_2d

    .line 317
    const-string v0, "System rooting. FOTA not exec"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 318
    const/16 v0, 0x193

    invoke-static {v2, v0}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_1d

    .line 323
    :cond_2d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    .line 324
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    const/16 v1, 0xdc

    if-ne v0, v1, :cond_46

    .line 326
    const/16 v0, 0x32

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 327
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 328
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 330
    :cond_46
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpBatteryLifeCheck()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 332
    const-string v0, "Low Battery"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 334
    invoke-static {v3}, Lcom/wssyncmldm/XDMService;->xdmSetCheckBattery(Z)V

    .line 335
    const/16 v0, 0xcf

    invoke-static {v2, v0}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 336
    const/16 v0, 0x266

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_1d

    .line 340
    :cond_5f
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 341
    const/16 v0, 0x110

    invoke-static {v0, v2, v2}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1d
.end method

.method public static xfotaMemoryFullReport()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, nRet:I
    const/4 v1, 0x0

    .line 202
    .local v1, szObjectURL:Ljava/lang/String;
    const/4 v2, 0x0

    .line 204
    .local v2, szRespURL:Ljava/lang/String;
    const-string v3, "501"

    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 205
    const/16 v3, 0x14

    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 207
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbGetStatusAddrFUMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v1, v2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpCheckURL(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 211
    const/4 v3, 0x7

    if-ne v0, v3, :cond_22

    .line 213
    const/16 v3, 0x7b

    invoke-static {v3, v4, v4}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 216
    :cond_22
    const/16 v3, 0xe7

    invoke-static {v4, v3}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 217
    return-void
.end method

.method public static xfotaSetPostponeTimerStateInfo(Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;)V
    .registers 1
    .parameter "pInfo"

    .prologue
    .line 169
    sput-object p0, Lcom/wssyncmldm/agent/fota/XFOTADl;->g_PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    .line 170
    return-void
.end method
