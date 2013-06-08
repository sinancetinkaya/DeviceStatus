.class public Lcom/wssyncmldm/adapter/XDMInitAdapter;
.super Ljava/lang/Object;
.source "XDMInitAdapter.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;
.implements Lcom/wssyncmldm/interfaces/XCommonInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XNOTIInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmCheckUpdateAndDisplayResult()V
    .registers 5

    .prologue
    const/16 v4, 0xd7

    const/4 v3, 0x1

    .line 389
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    .line 390
    .local v0, nStatus:I
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetUpdateReport()I

    move-result v1

    .line 391
    .local v1, nUpdateDlg:I
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_1b

    .line 393
    const/16 v2, 0x41

    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 394
    invoke-static {v3}, Lcom/wssyncmldm/XDMService;->xdmSetUpdateReport(I)V

    .line 395
    invoke-static {v4}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 401
    :cond_1a
    :goto_1a
    return-void

    .line 397
    :cond_1b
    if-ne v1, v3, :cond_1a

    .line 399
    invoke-static {v4}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_1a
.end method

.method public static xdmGetDataStateString(I)Ljava/lang/String;
    .registers 2
    .parameter "nstate"

    .prologue
    .line 456
    packed-switch p0, :pswitch_data_12

    .line 467
    const-string v0, "Network unknown"

    :goto_5
    return-object v0

    .line 459
    :pswitch_6
    const-string v0, "Network Status is DATA CONNECTED!"

    goto :goto_5

    .line 461
    :pswitch_9
    const-string v0, "Network Status is DATA CONNECTING!"

    goto :goto_5

    .line 463
    :pswitch_c
    const-string v0, "Network Status is DATA DISCONNECTED!"

    goto :goto_5

    .line 465
    :pswitch_f
    const-string v0, "Network Status is DATA SUSPENDED!"

    goto :goto_5

    .line 456
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
        :pswitch_f
    .end packed-switch
.end method

.method public static xdmGetSwUpdateState()I
    .registers 3

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 347
    .local v0, nResult:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbAdpEraseDeltaArea()I

    move-result v0

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xdbAdpEraseDeltaArea getFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbAdpGetFlag()I

    move-result v0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xdbAdpGetFlag getFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 357
    return v0
.end method

.method public static xdmInitAdpCheckDownloadResume()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 299
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetWifiOnlyFlag()Z

    move-result v0

    .line 300
    .local v0, bWifiOnly:Z
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v1

    .line 302
    .local v1, bWificonnected:Z
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingDataConnect()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 304
    const-string v2, "Roaming, WIFI Disconnected"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 306
    const/16 v2, 0x191

    invoke-static {v4, v2}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 307
    sput v3, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    .line 338
    :goto_1c
    return-void

    .line 324
    :cond_1d
    sget-boolean v2, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v2, :cond_25

    sget-boolean v2, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v2, :cond_2f

    :cond_25
    if-nez v1, :cond_2f

    .line 326
    const-string v2, "WIFI_ONLY_MODEL, WIFI Disconnected"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 327
    sput v3, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto :goto_1c

    .line 329
    :cond_2f
    if-eqz v0, :cond_3b

    if-nez v1, :cond_3b

    .line 331
    const-string v2, "bWifiOnly, WIFI Disconnected - Can not go to DL Session"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 332
    sput v3, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto :goto_1c

    .line 336
    :cond_3b
    const/16 v2, 0xd2

    invoke-static {v4, v2}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_1c
.end method

.method public static xdmInitAdpCheckNetworkReady()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 140
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    .line 141
    .local v0, nAgentStatus:I
    const/16 v3, 0x32

    if-eq v0, v3, :cond_e

    const/16 v3, 0xdc

    if-ne v0, v3, :cond_22

    .line 143
    :cond_e
    const/4 v1, 0x0

    .line 144
    .local v1, nFileId:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdFirmwareData()I

    move-result v1

    .line 145
    const/4 v3, 0x0

    invoke-static {v3, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpFileExists(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2f

    .line 147
    const-string v3, "File Not Exist"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 148
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 157
    .end local v1           #nFileId:I
    :cond_22
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v3

    if-eqz v3, :cond_36

    .line 159
    const-string v2, "XDM_NETWORK_STATE_SYNCML_USE"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 160
    const/4 v2, 0x2

    .line 168
    :cond_2e
    :goto_2e
    return v2

    .line 152
    .restart local v1       #nFileId:I
    :cond_2f
    const-string v2, "Already Download"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 153
    const/4 v2, 0x3

    goto :goto_2e

    .line 163
    .end local v1           #nFileId:I
    :cond_36
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmInitAdpGetNetStatus()I

    move-result v3

    if-ne v3, v4, :cond_2e

    .line 165
    const/4 v2, 0x1

    goto :goto_2e
.end method

.method public static xdmInitAdpEXTInit()Z
    .registers 10

    .prologue
    const/16 v9, 0x28

    const/16 v8, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 173
    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskSetDmInitStatus(Z)V

    .line 175
    sget-boolean v3, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v3, :cond_15

    sget-boolean v3, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_BEARER_SETTING_STATUS:Z

    if-nez v3, :cond_15

    .line 177
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMFeature;->xdmFeatureGetBearerSettingFromCSCFotaDataBase()V

    .line 180
    :cond_15
    const/4 v2, 0x0

    .line 181
    .local v2, nStatus:I
    const/4 v1, 0x0

    .line 182
    .local v1, nFileId:I
    const/4 v0, 0x0

    .line 184
    .local v0, nDownloadPostpone:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v2

    .line 185
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadPostponeStatus()I

    move-result v0

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nStatus ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 189
    if-eqz v2, :cond_53

    const/16 v3, 0x41

    if-eq v2, v3, :cond_53

    .line 191
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckUnableUSIM()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 193
    const-string v3, "Unable to use SKT USIM, return"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 194
    const/16 v3, 0x192

    invoke-static {v5, v3}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 294
    :cond_52
    :goto_52
    return v6

    .line 199
    :cond_53
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPostPoneCurrentVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_95

    .line 201
    const/16 v3, 0xa

    if-eq v2, v3, :cond_77

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_77

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_77

    if-eq v2, v9, :cond_77

    const/16 v3, 0x32

    if-eq v2, v3, :cond_77

    const/16 v3, 0xdc

    if-ne v2, v3, :cond_95

    .line 204
    :cond_77
    const/16 v3, 0x113

    invoke-static {v3, v5, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 205
    invoke-static {v7}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 206
    invoke-static {v7}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    .line 208
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdFirmwareData()I

    move-result v1

    .line 209
    invoke-static {v5, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpFileExists(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_52

    .line 211
    const-string v3, "ABNORMAL_CASE : Fota File Exist"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 212
    invoke-static {v5, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpFileDelete(Ljava/lang/String;I)I

    goto :goto_52

    .line 218
    :cond_95
    const/16 v3, 0x41

    if-eq v2, v3, :cond_a9

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_a9

    const/16 v3, 0x64

    if-eq v2, v3, :cond_a9

    const/16 v3, 0x50

    if-eq v2, v3, :cond_a9

    const/16 v3, 0x46

    if-ne v2, v3, :cond_c2

    .line 222
    :cond_a9
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmUpdateResultReport()V

    .line 223
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUpdateReport(Z)V

    .line 225
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdFirmwareData()I

    move-result v1

    .line 226
    invoke-static {v5, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpFileExists(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_52

    .line 228
    const-string v3, "ABNORMAL_CASE : Fota File Exist"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 229
    invoke-static {v5, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpFileDelete(Ljava/lang/String;I)I

    goto :goto_52

    .line 232
    :cond_c2
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_d0

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_d0

    if-eq v2, v9, :cond_d0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_f1

    .line 234
    :cond_d0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FUMO Status is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. FUMO Resume Event Send"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmInitAdpCheckDownloadResume()V

    goto/16 :goto_52

    .line 237
    :cond_f1
    if-eqz v0, :cond_129

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nDownloadPostpone is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPostPoneCurrentVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_124

    .line 241
    const/16 v3, 0xdd

    invoke-static {v3}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_52

    .line 243
    :cond_124
    invoke-static {v7}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    goto/16 :goto_52

    .line 245
    :cond_129
    const/16 v3, 0xf1

    if-ne v2, v3, :cond_13c

    .line 247
    const-string v3, "DOWNLOAD_FAILED_REPORTING"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 248
    const/16 v3, 0xdf

    invoke-static {v5, v3}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 250
    invoke-static {v8, v5, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 252
    :cond_13c
    const/16 v3, 0xf0

    if-ne v2, v3, :cond_14f

    .line 254
    const-string v3, "USER_CANCEL_REPORTING"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 255
    const/16 v3, 0xe0

    invoke-static {v5, v3}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 257
    invoke-static {v8, v5, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 259
    :cond_14f
    const/16 v3, 0x14

    if-ne v2, v3, :cond_15d

    .line 261
    const-string v3, "DOWNLOAD_FAILED"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 263
    invoke-static {v8, v5, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 265
    :cond_15d
    const/16 v3, 0xe6

    if-ne v2, v3, :cond_16d

    .line 267
    const-string v3, "DOWNLOAD_IN_CANCEL"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 269
    const/16 v3, 0x70

    invoke-static {v3, v5, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 271
    :cond_16d
    const/16 v3, 0x32

    if-eq v2, v3, :cond_175

    const/16 v3, 0xdc

    if-ne v2, v3, :cond_1b8

    .line 273
    :cond_175
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdFirmwareData()I

    move-result v1

    .line 274
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileSize(I)I

    move-result v3

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetObjectSizeFUMO()I

    move-result v4

    if-ne v3, v4, :cond_18f

    .line 276
    const-string v3, "XDL_STATE_READY_TO_UPDATE"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 277
    const/16 v3, 0xd3

    invoke-static {v5, v3}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_52

    .line 281
    :cond_18f
    const-string v3, "File System Write Delay!!"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 283
    invoke-static {v9}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FUMO Status is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. FUMO Resume Event Send"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmInitAdpCheckDownloadResume()V

    goto/16 :goto_52

    .line 290
    :cond_1b8
    invoke-static {}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentGetNotiResumeCase()I

    move-result v3

    if-nez v3, :cond_52

    .line 291
    const/16 v3, 0x93

    invoke-static {v5, v3}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_52
.end method

.method public static xdmInitAdpGetNetRoamingState()Z
    .registers 1

    .prologue
    .line 77
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetRoamingState()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 79
    const-string v0, "Current is ROAMING State. EVERYTHING is DO NOT"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static xdmInitAdpGetNetStatus()I
    .registers 4

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 32
    .local v0, nret:I
    sget-boolean v2, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_OTA_PREFER_MODEL:Z

    if-nez v2, :cond_c

    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 65
    :cond_b
    :goto_b
    return v0

    .line 37
    :cond_c
    sget-boolean v2, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v2, :cond_37

    sget-boolean v2, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-nez v2, :cond_37

    .line 53
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetDataState()I

    move-result v1

    .line 54
    .local v1, state:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmGetDataStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 55
    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    .line 57
    const/4 v0, -0x1

    goto :goto_b

    .line 63
    .end local v1           #state:I
    :cond_37
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public static xdmInitAdpGetSIMLockState()Z
    .registers 5

    .prologue
    const/4 v4, 0x5

    .line 88
    const/4 v1, 0x0

    .line 115
    .local v1, bret:Z
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetSIMState()I

    move-result v0

    .line 117
    .local v0, SIMState:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xdmGetSimState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetSimState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 120
    if-ne v0, v4, :cond_39

    .line 122
    const/4 v1, 0x1

    .line 125
    :cond_39
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetSimState()I

    move-result v2

    if-eq v2, v4, :cond_45

    .line 127
    const-string v2, "SIM Status is not WORKING"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 128
    const/4 v1, 0x0

    .line 132
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 133
    return v1
.end method

.method public static xdmInitAdpWaitBearerSetting()V
    .registers 4

    .prologue
    .line 405
    sget-boolean v2, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v2, :cond_32

    sget-boolean v2, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_BEARER_SETTING_STATUS:Z

    if-nez v2, :cond_32

    .line 408
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    const/16 v2, 0xd

    if-ge v1, v2, :cond_16

    .line 412
    const-wide/16 v2, 0x3e8

    :try_start_f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_33

    .line 419
    :goto_12
    sget-boolean v2, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_BEARER_SETTING_STATUS:Z

    if-eqz v2, :cond_3c

    .line 422
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waits "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 424
    :cond_32
    return-void

    .line 414
    :catch_33
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_12

    .line 408
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public static xdmInitAdpWaitSystemRootingCheck()V
    .registers 5

    .prologue
    const/4 v4, -0x1

    .line 428
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckSystemRooting()I

    move-result v2

    if-eq v2, v4, :cond_d

    .line 430
    const-string v2, "Check completed."

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 452
    .local v1, i:I
    :cond_c
    :goto_c
    return-void

    .line 434
    .end local v1           #i:I
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_e
    const/16 v2, 0x78

    if-ge v1, v2, :cond_37

    .line 438
    const-wide/16 v2, 0x3e8

    :try_start_14
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waits "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_33} :catch_3f

    .line 446
    :goto_33
    sget v2, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    if-eq v2, v4, :cond_48

    .line 450
    :cond_37
    sget v2, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    if-ne v2, v4, :cond_c

    .line 451
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckSystemRooting()I

    goto :goto_c

    .line 441
    :catch_3f
    move-exception v0

    .line 443
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_33

    .line 434
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public static xdmUpdateResultReport()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 363
    const/4 v0, 0x0

    .line 365
    .local v0, nResult:I
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiEvent(I)V

    .line 366
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmGetSwUpdateState()I

    move-result v0

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nSuccess ["

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

    .line 369
    if-nez v0, :cond_41

    .line 371
    const-string v1, "SUCCESSFUL_UPDATE"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 372
    const-string v1, "200"

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 373
    const/16 v1, 0x64

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 382
    :goto_37
    const/16 v1, 0xb

    invoke-static {v1, v3, v3}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 384
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDmAgentType(I)V

    .line 385
    return-void

    .line 377
    :cond_41
    const-string v1, "UPDATE_FAILED"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 378
    const-string v1, "410"

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 379
    const/16 v1, 0x50

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    goto :goto_37
.end method
