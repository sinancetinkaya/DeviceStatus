.class public Lcom/wssyncmldm/ui/XUIAdapter;
.super Ljava/lang/Object;
.source "XUIAdapter.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XNOTIInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;


# static fields
.field private static bUpdateReport:Z

.field private static m_nDmUiMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput v0, Lcom/wssyncmldm/ui/XUIAdapter;->m_nDmUiMode:I

    .line 33
    sput-boolean v0, Lcom/wssyncmldm/ui/XUIAdapter;->bUpdateReport:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xuiAdpGetStrNetworkDisable()I
    .registers 2

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 466
    .local v0, nUnableStrId:I
    sget-boolean v1, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v1, :cond_d

    .line 467
    :cond_9
    const v0, 0x7f070087

    .line 471
    :goto_c
    return v0

    .line 469
    :cond_d
    const v0, 0x7f070040

    goto :goto_c
.end method

.method public static xuiAdpGetUiMode()I
    .registers 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nDmUiMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/wssyncmldm/ui/XUIAdapter;->m_nDmUiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 38
    sget v0, Lcom/wssyncmldm/ui/XUIAdapter;->m_nDmUiMode:I

    return v0
.end method

.method public static xuiAdpGetUpdateReport()Z
    .registers 2

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get bUpdateReport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssyncmldm/ui/XUIAdapter;->bUpdateReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 459
    sget-boolean v0, Lcom/wssyncmldm/ui/XUIAdapter;->bUpdateReport:Z

    return v0
.end method

.method public static xuiAdpRequestNoti(I)V
    .registers 5
    .parameter "nMsgType"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 50
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 52
    packed-switch p0, :pswitch_data_8c

    .line 148
    :cond_b
    :goto_b
    return-void

    .line 56
    :pswitch_c
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbCheckProfileListExist()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 58
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiEvent(I)V

    .line 59
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_b

    .line 66
    :pswitch_1f
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbCheckProfileListExist()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 68
    const-string v0, "XUI_DM_NOTI_INFORMATIVE"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 69
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiEvent(I)V

    .line 73
    const-string v0, "OPEN"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 75
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 76
    invoke-static {v2}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_b

    .line 80
    :cond_41
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 82
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 83
    invoke-static {v2}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_b

    .line 85
    :cond_51
    invoke-static {v3}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_b

    .line 108
    :pswitch_55
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbCheckProfileListExist()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 110
    const-string v0, "XUI_DM_NOTI_INTERACTIVE"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiEvent(I)V

    .line 115
    const-string v0, "OPEN"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 117
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 118
    invoke-static {v2}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_b

    .line 122
    :cond_78
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 124
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 125
    invoke-static {v2}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_b

    .line 127
    :cond_88
    invoke-static {v3}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_b

    .line 52
    :pswitch_data_8c
    .packed-switch 0x8d
        :pswitch_c
        :pswitch_c
        :pswitch_1f
        :pswitch_55
    .end packed-switch
.end method

.method public static xuiAdpSetUiMode(I)V
    .registers 3
    .parameter "nUiMode"

    .prologue
    .line 43
    sput p0, Lcom/wssyncmldm/ui/XUIAdapter;->m_nDmUiMode:I

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nDmUiMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/wssyncmldm/ui/XUIAdapter;->m_nDmUiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static xuiAdpSetUpdateReport(Z)V
    .registers 3
    .parameter "bReport"

    .prologue
    .line 452
    sput-boolean p0, Lcom/wssyncmldm/ui/XUIAdapter;->bUpdateReport:Z

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set bUpdateReport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssyncmldm/ui/XUIAdapter;->bUpdateReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public static xuiAdpStartSession()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 152
    const-string v3, ""

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, nStatus:I
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckUnableUSIM()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 157
    const-string v2, "Unable to use SKT USIM"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 158
    const/16 v2, 0x192

    invoke-static {v4, v2}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 190
    :goto_19
    return v1

    .line 161
    :cond_1a
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingDataConnect()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 163
    const-string v3, "Roaming, WIFI Disconnected, return"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 164
    const/16 v3, 0x191

    invoke-static {v4, v3}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 165
    sput v2, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    goto :goto_19

    .line 169
    :cond_2d
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmInitAdpCheckNetworkReady()I

    move-result v0

    .line 170
    if-eqz v0, :cond_3d

    .line 172
    packed-switch v0, :pswitch_data_52

    goto :goto_19

    .line 175
    :pswitch_37
    const/16 v2, 0xd3

    invoke-static {v4, v2}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_19

    .line 184
    :cond_3d
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUpdateReport(Z)V

    .line 185
    invoke-static {v1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetUserCancel(Z)V

    .line 186
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpResetWBXMLLog()V

    .line 188
    const/16 v1, 0x65

    invoke-static {v4, v1}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 189
    const/16 v1, 0xb

    invoke-static {v1, v4, v4}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v1, v2

    .line 190
    goto :goto_19

    .line 172
    :pswitch_data_52
    .packed-switch 0x3
        :pswitch_37
    .end packed-switch
.end method

.method public static xuiAdpUserInitiate(I)V
    .registers 6
    .parameter "initType"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 195
    sget-boolean v0, Lcom/wssyncmldm/XDMService;->XDM_SYSTEM_ROOTING:Z

    if-nez v0, :cond_31

    .line 197
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckSystemRooting()I

    .line 198
    sget v0, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 200
    const-string v0, "Rooting Not Scan. FOTA not exec"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 201
    if-eq p0, v2, :cond_18

    if-ne p0, v4, :cond_1d

    .line 202
    :cond_18
    const/16 v0, 0x194

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 230
    :cond_1d
    :goto_1d
    return-void

    .line 205
    :cond_1e
    sget v0, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    if-ne v0, v2, :cond_31

    .line 207
    const-string v0, "System rooting. FOTA not exec"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 208
    if-eq p0, v2, :cond_2b

    if-ne p0, v4, :cond_1d

    .line 209
    :cond_2b
    const/16 v0, 0x193

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_1d

    .line 214
    :cond_31
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    if-nez v0, :cond_59

    .line 216
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckUnableUSIM()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 218
    const-string v0, "Unable to use SKT USIM, return"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 219
    const/16 v0, 0x192

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_1d

    .line 222
    :cond_48
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingDataConnect()Z

    move-result v0

    if-nez v0, :cond_59

    .line 224
    const-string v0, "Roaming, WIFI Disconnected, return"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 225
    const/16 v0, 0x191

    invoke-static {v3, v0}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_1d

    .line 229
    :cond_59
    invoke-static {p0, v2}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpUserInitiate(II)V

    goto :goto_1d
.end method

.method public static xuiAdpUserInitiate(II)V
    .registers 15
    .parameter "initType"
    .parameter "index"

    .prologue
    const/4 v12, 0x3

    const/16 v11, 0xec

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 272
    const-string v6, ""

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v2

    .line 275
    .local v2, context:Landroid/content/Context;
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetStrNetworkDisable()I

    move-result v4

    .line 276
    .local v4, nUnableStrId:I
    sget-boolean v6, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v6, :cond_45

    .line 278
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingUnableNetworkMsg()Z

    move-result v6

    if-eqz v6, :cond_2c

    if-eq p0, v9, :cond_21

    if-ne p0, v12, :cond_2c

    .line 280
    :cond_21
    const-string v6, "Roaming, UnableNetwork, return"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 281
    const/16 v6, 0x191

    invoke-static {v8, v6}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 448
    :cond_2b
    :goto_2b
    return-void

    .line 284
    :cond_2c
    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v6, :cond_34

    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v6, :cond_38

    .line 286
    :cond_34
    invoke-static {v8, v11}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_2b

    .line 290
    :cond_38
    const-string v6, "DM Not Init"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v10}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2b

    .line 295
    :cond_45
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetWifiOnlyFlag()Z

    move-result v1

    .line 296
    .local v1, bWifiOnly:Z
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v0

    .line 297
    .local v0, bWifiConnected:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bWifiOnly flag : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 300
    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v6, :cond_6b

    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v6, :cond_76

    :cond_6b
    if-nez v0, :cond_76

    .line 302
    const-string v6, "Wi-Fi only model, WiFi DisConnected"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 303
    invoke-static {v8, v11}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_2b

    .line 307
    :cond_76
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v3

    .line 308
    .local v3, nStatus:I
    const/16 v6, 0x1e

    if-eq v3, v6, :cond_82

    const/16 v6, 0x28

    if-ne v3, v6, :cond_f8

    .line 310
    :cond_82
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmWifiDownloadSizeCheck()Z

    move-result v6

    if-eqz v6, :cond_94

    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v6

    if-nez v6, :cond_94

    .line 312
    const/16 v6, 0xe9

    invoke-static {v8, v6}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_2b

    .line 315
    :cond_94
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadGetDrawingPercentage()Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 317
    invoke-static {v9}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 318
    const/16 v6, 0xcb

    invoke-static {v8, v6}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_2b

    .line 322
    :cond_a3
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v6

    if-eqz v6, :cond_c9

    .line 324
    const-string v6, "%s\n%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const v8, 0x7f07003c

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const v8, 0x7f07002f

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, szMsg:Ljava/lang/String;
    invoke-static {v2, v5, v10}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2b

    .line 330
    .end local v5           #szMsg:Ljava/lang/String;
    :cond_c9
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 331
    invoke-static {v9}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 333
    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v6, :cond_d7

    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v6, :cond_e3

    :cond_d7
    if-nez v0, :cond_e3

    .line 335
    const-string v6, "WifiOnly WIFI Disconnected"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 336
    invoke-static {v8, v11}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_2b

    .line 338
    :cond_e3
    if-eqz v1, :cond_f1

    if-nez v0, :cond_f1

    .line 340
    const-string v6, "WIFI Disconnected - Can not go to DL Session"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 341
    invoke-static {v8, v11}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_2b

    .line 345
    :cond_f1
    const/16 v6, 0x89

    invoke-static {v8, v6}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_2b

    .line 350
    :cond_f8
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v6

    if-nez v6, :cond_116

    const/16 v6, 0x3c

    if-eq v3, v6, :cond_116

    const/16 v6, 0x41

    if-eq v3, v6, :cond_116

    const/16 v6, 0x46

    if-eq v3, v6, :cond_116

    const/16 v6, 0x50

    if-eq v3, v6, :cond_116

    const/16 v6, 0x5a

    if-eq v3, v6, :cond_116

    const/16 v6, 0x64

    if-ne v3, v6, :cond_136

    .line 353
    :cond_116
    const-string v6, "%s\n%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const v8, 0x7f07003c

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const v8, 0x7f07002f

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 354
    .restart local v5       #szMsg:Ljava/lang/String;
    invoke-static {v2, v5, v10}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2b

    .line 358
    .end local v5           #szMsg:Ljava/lang/String;
    :cond_136
    const/16 v6, 0xdc

    if-eq v3, v6, :cond_13e

    const/16 v6, 0x32

    if-ne v3, v6, :cond_145

    .line 360
    :cond_13e
    const/16 v6, 0xd3

    invoke-static {v8, v6}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_2b

    .line 364
    :cond_145
    const/16 v6, 0xc8

    if-eq v3, v6, :cond_14d

    const/16 v6, 0xa

    if-ne v3, v6, :cond_17c

    .line 366
    :cond_14d
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 367
    invoke-static {v9}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 369
    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v6, :cond_15b

    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v6, :cond_167

    :cond_15b
    if-nez v0, :cond_167

    .line 371
    const-string v6, "WifiOnly WIFI Disconnected"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 372
    invoke-static {v8, v11}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_2b

    .line 374
    :cond_167
    if-eqz v1, :cond_175

    if-nez v0, :cond_175

    .line 376
    const-string v6, "WIFI Disconnected - Can not go to DL Session"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 377
    invoke-static {v8, v11}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_2b

    .line 381
    :cond_175
    const/16 v6, 0x89

    invoke-static {v8, v6}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_2b

    .line 387
    :cond_17c
    invoke-static {p1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileIndex(I)V

    .line 389
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmInitAdpCheckNetworkReady()I

    move-result v6

    if-nez v6, :cond_1e4

    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v6

    if-nez v6, :cond_1e4

    .line 392
    invoke-static {v9}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 393
    invoke-static {v10}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    .line 395
    const/16 v6, 0x16

    invoke-static {v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 396
    const/4 v6, 0x6

    invoke-static {v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 398
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpCookieClear()V

    .line 399
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 404
    const/4 v6, 0x2

    if-ne p0, v6, :cond_1c3

    .line 406
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 408
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v6

    if-nez v6, :cond_1b9

    const-string v6, "OPEN"

    const-string v7, "TMO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1be

    .line 409
    :cond_1b9
    invoke-static {v12}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto/16 :goto_2b

    .line 411
    :cond_1be
    invoke-static {v9}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto/16 :goto_2b

    .line 415
    :cond_1c3
    if-ne p0, v12, :cond_1dd

    .line 417
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v6

    if-eqz v6, :cond_1d6

    .line 419
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 420
    invoke-static {v12}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto/16 :goto_2b

    .line 423
    :cond_1d6
    const/16 v6, 0x94

    invoke-static {v8, v6}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_2b

    .line 429
    :cond_1dd
    const/16 v6, 0x94

    invoke-static {v8, v6}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_2b

    .line 433
    :cond_1e4
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingUnableNetworkMsg()Z

    move-result v6

    if-eqz v6, :cond_1fa

    if-eq p0, v9, :cond_1ee

    if-ne p0, v12, :cond_1fa

    .line 435
    :cond_1ee
    const-string v6, "Roaming, UnableNetwork, return"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 436
    const/16 v6, 0x191

    invoke-static {v8, v6}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_2b

    .line 439
    :cond_1fa
    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v6, :cond_202

    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v6, :cond_207

    .line 441
    :cond_202
    invoke-static {v8, v11}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_2b

    .line 445
    :cond_207
    const-string v6, "network is not ready"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v10}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2b
.end method

.method public static xuiAdpUserInitiateBackground(I)V
    .registers 4
    .parameter "initType"

    .prologue
    const/4 v2, 0x1

    .line 234
    sget-boolean v1, Lcom/wssyncmldm/XDMService;->XDM_SYSTEM_ROOTING:Z

    if-nez v1, :cond_12

    .line 236
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckSystemRooting()I

    .line 237
    sget v1, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    if-eqz v1, :cond_12

    .line 239
    const-string v1, "System rooting. FOTA not exec"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 268
    :cond_11
    :goto_11
    return-void

    .line 243
    :cond_12
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFotaClientRegistration()I

    move-result v1

    if-eq v1, v2, :cond_2c

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.fota.action.SOFTWARE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, i:Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_11

    .line 250
    .end local v0           #i:Landroid/content/Intent;
    :cond_2c
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v1

    if-nez v1, :cond_38

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v1

    if-eqz v1, :cond_3e

    .line 252
    :cond_38
    const-string v1, "DM or DL sessioning, return"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_11

    .line 255
    :cond_3e
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingDataConnect()Z

    move-result v1

    if-nez v1, :cond_50

    .line 257
    const-string v1, "Roaming, WIFI Disconnected, return"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 258
    const/4 v1, 0x0

    const/16 v2, 0x191

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_11

    .line 262
    :cond_50
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileIndex(I)V

    .line 263
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 264
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 266
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_11
.end method
