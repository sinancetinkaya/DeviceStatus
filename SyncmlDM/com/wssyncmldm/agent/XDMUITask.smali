.class public Lcom/wssyncmldm/agent/XDMUITask;
.super Ljava/lang/Object;
.source "XDMUITask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XNOTIInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;


# static fields
.field public static g_hDmUiTask:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 52
    new-instance v0, Lcom/wssyncmldm/agent/XDMUITask$1;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/agent/XDMUITask$1;-><init>(Lcom/wssyncmldm/agent/XDMUITask;)V

    sput-object v0, Lcom/wssyncmldm/agent/XDMUITask;->g_hDmUiTask:Landroid/os/Handler;

    .line 61
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 62
    return-void
.end method

.method public xdmUIEvent(Landroid/os/Message;)Z
    .registers 16
    .parameter "msg"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v9, :cond_b

    .line 701
    :goto_a
    return v7

    .line 71
    :cond_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    check-cast v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    .line 73
    .restart local v1       #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    iget v9, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->type:I

    sparse-switch v9, :sswitch_data_5ca

    .line 700
    :cond_14
    :goto_14
    :sswitch_14
    const/4 p1, 0x0

    move v7, v8

    .line 701
    goto :goto_a

    .line 76
    :sswitch_17
    const/16 v7, 0x69

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_14

    .line 80
    :sswitch_1d
    const-string v9, "XUI_DM_FINISH"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOInitiatedType()I

    move-result v9

    if-eq v9, v7, :cond_2e

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOInitiatedType()I

    move-result v9

    if-ne v9, v13, :cond_52

    .line 84
    :cond_2e
    const-string v9, "261"

    sget-object v10, Lcom/wssyncmldm/agent/XDMAgent;->g_DmWs:Lcom/wssyncmldm/eng/core/XDMWorkspace;

    iget-object v10, v10, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSvcState:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4c

    .line 86
    const/16 v9, 0x96

    invoke-static {v9}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 98
    :cond_3f
    :goto_3f
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 99
    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 100
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 101
    invoke-static {v8}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_14

    .line 90
    :cond_4c
    const/16 v9, 0xac

    invoke-static {v9}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_3f

    .line 93
    :cond_52
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetServerInitiatedStatus()Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 95
    const/16 v9, 0xad

    invoke-static {v9}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_3f

    .line 105
    :sswitch_5e
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 106
    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 107
    invoke-static {v8}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 108
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 110
    invoke-static {v8}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpResetSessionSaveState(I)V

    .line 112
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpHandleNotiQueue()V

    goto :goto_14

    .line 118
    :sswitch_71
    iget v9, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->type:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v9

    if-ne v9, v7, :cond_85

    .line 122
    const/16 v9, 0x6f

    invoke-static {v9}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 125
    :cond_85
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 126
    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 127
    invoke-static {v8}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 128
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 130
    invoke-static {v8}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpClearSessionStatus(I)V

    .line 132
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpHandleNotiQueue()V

    goto/16 :goto_14

    .line 139
    :sswitch_99
    iget v9, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->type:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v4

    .line 142
    .local v4, nUImode:I
    if-ne v4, v13, :cond_bb

    .line 144
    const-string v9, "If UImode is XDM_UI_MODE_MANDATORY_FOTA, no pop-up ..."

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 151
    :cond_ad
    :goto_ad
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 152
    invoke-static {v8}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 153
    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 154
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    goto/16 :goto_14

    .line 146
    :cond_bb
    if-ne v4, v7, :cond_ad

    .line 148
    const/16 v9, 0x6f

    invoke-static {v9}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_ad

    .line 159
    .end local v4           #nUImode:I
    :sswitch_c3
    const-string v9, "XUI_DM_DOWNLOAD_FAIL_RETRY_CONFIRM"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 161
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 162
    const/16 v7, 0x10

    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 163
    const/16 v7, 0x18

    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 165
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v7

    if-eq v7, v12, :cond_14

    .line 167
    const/16 v7, 0x89

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 172
    :sswitch_e2
    const-string v9, "XUI_DM_DOWNLOAD_FAILED_WIFI_DISCONNECTED"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v9

    if-eq v9, v12, :cond_f2

    .line 176
    const/16 v9, 0x8a

    invoke-static {v9}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 179
    :cond_f2
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 180
    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 182
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    goto/16 :goto_14

    .line 187
    :sswitch_fd
    const-string v7, "XUI_DM_CONNECT"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 191
    :sswitch_104
    const-string v7, "XUI_DM_UIC_REQUEST"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 193
    iget-object v7, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    iget-object v6, v7, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->param:Ljava/lang/Object;

    check-cast v6, Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 194
    .local v6, uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;
    const/4 v5, 0x0

    .line 195
    .local v5, pUicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCreateUicOption()Lcom/wssyncmldm/eng/core/XDMUicOption;

    move-result-object v5

    .line 196
    invoke-static {v5, v6}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCopyUicOption(Ljava/lang/Object;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMUicOption;

    move-result-object v5

    .line 198
    sput-object v5, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    .line 199
    const/16 v7, 0x68

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 203
    .end local v5           #pUicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;
    .end local v6           #uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;
    :sswitch_121
    const-string v9, "XUI_DL_DOWNLOAD_START_CONFIRM"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckIdleScreen()Z

    move-result v9

    if-nez v9, :cond_14d

    .line 207
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 208
    const/16 v9, 0xf

    invoke-static {v9}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 209
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f070080

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v7}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 210
    const/16 v7, 0x67

    invoke-static {v7}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgRemove(I)V

    goto/16 :goto_14

    .line 214
    :cond_14d
    const/16 v7, 0xce

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 221
    :sswitch_154
    const-string v9, "XUI_ROAMING_WIFI_DISCONNECTED"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 223
    const/16 v9, 0x191

    invoke-static {v9}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 224
    invoke-static {v8}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpResetSessionSaveState(I)V

    .line 225
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 226
    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 227
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    goto/16 :goto_14

    .line 233
    :sswitch_16c
    const-string v9, "XUI_MISSING_SKT_USIM"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 235
    const/16 v9, 0x192

    invoke-static {v9}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 236
    invoke-static {v8}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpResetSessionSaveState(I)V

    .line 237
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 238
    invoke-static {v8}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 239
    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 240
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    goto/16 :goto_14

    .line 246
    :sswitch_187
    const-string v7, "XUI_CANNOT_USE_DEVICE"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 247
    const/16 v7, 0x193

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 253
    :sswitch_193
    const-string v7, "XUI_CHECK_DEVICE"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 254
    const/16 v7, 0x194

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 260
    :sswitch_19f
    const-string v7, "XUI_CHECK_DEVICE_DIALOG_FINISH"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 261
    const/16 v7, 0x195

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 269
    :sswitch_1ab
    iget v9, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->type:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v4

    .line 272
    .restart local v4       #nUImode:I
    if-ne v4, v13, :cond_1ca

    .line 274
    const-string v9, "If UImode is XDM_UI_MODE_MANDATORY_FOTA, no pop-up ..."

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 281
    :cond_1bf
    :goto_1bf
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 282
    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 283
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    goto/16 :goto_14

    .line 276
    :cond_1ca
    if-ne v4, v7, :cond_1bf

    .line 278
    const/16 v9, 0x6f

    invoke-static {v9}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_1bf

    .line 288
    .end local v4           #nUImode:I
    :sswitch_1d2
    const-string v9, "XUI_DL_DELTA_OVER_SIZE_WIFI_DOWNLOAD"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckIdleScreen()Z

    move-result v9

    if-nez v9, :cond_1fe

    .line 292
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 293
    const/16 v9, 0x17

    invoke-static {v9}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 294
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f070080

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v7}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 295
    const/16 v7, 0x67

    invoke-static {v7}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgRemove(I)V

    goto/16 :goto_14

    .line 299
    :cond_1fe
    const/16 v7, 0xe9

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 304
    :sswitch_205
    const-string v7, "XUI_DM_WIFI_DISCONNECTED"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 305
    const/16 v7, 0x95

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 309
    :sswitch_211
    const-string v9, "XUI_DM_DM_START_CONFIRM"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckIdleScreen()Z

    move-result v9

    if-nez v9, :cond_235

    .line 313
    const/16 v9, 0xd

    invoke-static {v9}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 314
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f070080

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v7}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_14

    .line 318
    :cond_235
    const/16 v7, 0x94

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 323
    :sswitch_23c
    const-string v7, "XUI_DL_DM_WIFI_DISCONNECTED_CONFIRM"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckIdleScreen()Z

    move-result v7

    if-nez v7, :cond_24e

    .line 326
    const/16 v7, 0xec

    invoke-static {v7, v11}, Lcom/wssyncmldm/XDMService;->xdmSetPendingUIEvent(ILjava/lang/Object;)V

    goto/16 :goto_14

    .line 330
    :cond_24e
    const/16 v7, 0xec

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 335
    :sswitch_255
    const-string v9, "XUI_DL_DOWNLOAD_YES_NO"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 337
    const-string v9, "OPEN"

    const-string v10, "TGY"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26b

    .line 339
    const/16 v7, 0xce

    invoke-static {v11, v7}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_14

    .line 343
    :cond_26b
    const-string v9, "OPEN"

    const-string v10, "TMO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27a

    .line 345
    invoke-static {v7}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadMemoryCheck(I)I

    goto/16 :goto_14

    .line 349
    :cond_27a
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmWifiDownloadSizeCheck()Z

    move-result v9

    if-eqz v9, :cond_287

    .line 351
    const/16 v7, 0xe9

    invoke-static {v11, v7}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_14

    .line 356
    :cond_287
    const-string v9, "OPEN"

    const-string v10, "KOR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b1

    const-string v9, "LG"

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b1

    .line 358
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOInitiatedType()I

    move-result v9

    if-eq v9, v7, :cond_2ac

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOInitiatedType()I

    move-result v9

    if-eq v9, v13, :cond_2ac

    .line 360
    invoke-static {v12}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 362
    :cond_2ac
    invoke-static {v7}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadMemoryCheck(I)I

    goto/16 :goto_14

    .line 366
    :cond_2b1
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNotiEvent()I

    move-result v3

    .line 367
    .local v3, nEvent:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nEvent : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_SyncML_EnableNotiDeltaBinarySizeBeforeDownload"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2e3

    const/4 v9, 0x4

    if-eq v3, v9, :cond_2dc

    if-nez v3, :cond_2e3

    .line 374
    :cond_2dc
    const/16 v7, 0xce

    invoke-static {v11, v7}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_14

    .line 377
    :cond_2e3
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUpdateReport()Z

    move-result v9

    if-eqz v9, :cond_2f6

    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v9

    if-nez v9, :cond_2f6

    .line 379
    const/16 v7, 0xce

    invoke-static {v11, v7}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_14

    .line 385
    :cond_2f6
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v9

    if-nez v9, :cond_310

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNotiEvent()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_309

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOInitiatedType()I

    move-result v9

    if-ne v9, v12, :cond_310

    .line 387
    :cond_309
    const/16 v7, 0xce

    invoke-static {v11, v7}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_14

    .line 391
    :cond_310
    invoke-static {v7}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadMemoryCheck(I)I

    goto/16 :goto_14

    .line 395
    .end local v3           #nEvent:I
    :sswitch_315
    const-string v9, "XUI_DL_DOWNLOAD_IN_PROGRESS"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 396
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgResetUpdateDownloadProgressBar(Z)V

    .line 398
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v9

    if-ne v9, v7, :cond_14

    .line 401
    const/16 v7, 0xcb

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 402
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetObjectSizeFUMO()I

    move-result v7

    int-to-long v9, v7

    invoke-static {v9, v10}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiSetDeltaTotalSize(J)V

    goto/16 :goto_14

    .line 406
    :sswitch_332
    invoke-static {v7}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadSetDrawingPercentage(Z)V

    .line 407
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v9

    if-ne v9, v7, :cond_14

    .line 411
    invoke-static {}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiUpdateDownloadInfo()V

    .line 412
    invoke-static {}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiGetDownloadPercent()I

    move-result v2

    .line 413
    .local v2, nDownloadPercent:I
    const/16 v9, 0x64

    if-le v2, v9, :cond_35d

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v9

    const/16 v10, 0x1e

    if-ne v9, v10, :cond_35d

    .line 415
    const/16 v9, 0x114

    invoke-static {v9}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrStartOMADLAgent(I)I

    .line 416
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 417
    const/16 v7, 0xd0

    invoke-static {v11, v7}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_14

    .line 419
    :cond_35d
    const/16 v7, 0x64

    if-gt v2, v7, :cond_14

    .line 421
    const/16 v7, 0xd1

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 426
    .end local v2           #nDownloadPercent:I
    :sswitch_368
    const-string v9, "XUI_DL_DOWNLOAD_IN_COMPLETE"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 428
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPostponeAutoinstall()Z

    move-result v9

    if-eqz v9, :cond_381

    .line 430
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadComplete()Z

    .line 447
    :goto_376
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 448
    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 449
    invoke-static {v8}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto/16 :goto_14

    .line 434
    :cond_381
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckIdleScreen()Z

    move-result v9

    if-nez v9, :cond_3a6

    .line 436
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 437
    const/4 v9, 0x7

    invoke-static {v9}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 438
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f070080

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v7}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 439
    const/16 v7, 0xcb

    invoke-static {v7}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgRemove(I)V

    goto :goto_376

    .line 443
    :cond_3a6
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadComplete()Z

    goto :goto_376

    .line 454
    :sswitch_3aa
    const-string v7, "XUI_DL_DOWNLOAD_COMPLETE_SUSPEND"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownCheckBeforeUpdate()V

    goto/16 :goto_14

    .line 459
    :sswitch_3b4
    const-string v7, "XUI_DL_UPDATE_SUCCESS/XUI_DL_UPDATE_FAIL"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 460
    const/16 v7, 0xd7

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 461
    const/16 v7, 0xb

    invoke-static {v7, v11, v11}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 465
    :sswitch_3c5
    const-string v9, "XUI_DL_RESUME_DOWNLOAD"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 467
    const-string v9, "OPEN"

    const-string v10, "TMO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3ec

    .line 469
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmWifiDownloadSizeCheck()Z

    move-result v7

    if-eqz v7, :cond_3e1

    .line 471
    const/16 v7, 0xe9

    invoke-static {v11, v7}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_14

    .line 475
    :cond_3e1
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 476
    invoke-static {v13}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto/16 :goto_14

    .line 480
    :cond_3ec
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmWifiDownloadSizeCheck()Z

    move-result v9

    if-eqz v9, :cond_3f9

    .line 482
    const/16 v7, 0xe9

    invoke-static {v11, v7}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_14

    .line 487
    :cond_3f9
    const-string v9, "OPEN"

    const-string v10, "KOR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41a

    const-string v9, "LG"

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41a

    .line 489
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 490
    invoke-static {v12}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto/16 :goto_14

    .line 494
    :cond_41a
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNotiEvent()I

    move-result v9

    if-eq v9, v12, :cond_43b

    .line 498
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v9

    if-eqz v9, :cond_431

    .line 500
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 501
    invoke-static {v13}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto/16 :goto_14

    .line 505
    :cond_431
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 506
    const/16 v7, 0x89

    invoke-static {v11, v7}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_14

    .line 517
    :cond_43b
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 518
    invoke-static {v12}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto/16 :goto_14

    .line 525
    :sswitch_446
    const-string v7, "XUI_DL_DOWNLOAD_FAILED_REPORTING"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 529
    :sswitch_44d
    const-string v9, "XUI_DL_DOWNLOAD_FAILED"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v9

    if-ne v9, v7, :cond_45d

    .line 533
    const/16 v7, 0xd0

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 535
    :cond_45d
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    goto/16 :goto_14

    .line 539
    :sswitch_462
    const-string v7, "XUI_DL_UPDATE_PLEASE_WAIT"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 540
    const/16 v7, 0xd6

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 544
    :sswitch_46e
    const-string v7, "XUI_DL_MEMORY_FULL"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 547
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v7

    const/16 v9, 0xc8

    if-ne v7, v9, :cond_49d

    .line 549
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNotiEvent()I

    move-result v7

    if-eq v7, v12, :cond_48c

    .line 553
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v7

    if-ne v7, v13, :cond_497

    .line 555
    const/16 v7, 0x13

    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 573
    :cond_48c
    :goto_48c
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 574
    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 575
    invoke-static {v8}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto/16 :goto_14

    .line 559
    :cond_497
    const/16 v7, 0xe7

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_48c

    .line 570
    :cond_49d
    const/16 v7, 0xe7

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_48c

    .line 579
    :sswitch_4a3
    const-string v7, "XUI_DL_DEVICE_ENCRYPTION"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 580
    const/16 v7, 0xea

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 584
    :sswitch_4af
    const-string v9, "XUI_DL_UPDATE_CONFIRM"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckIdleScreen()Z

    move-result v9

    if-nez v9, :cond_4da

    .line 588
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 589
    const/4 v9, 0x7

    invoke-static {v9}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 590
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f070080

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v7}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 591
    const/16 v7, 0xcb

    invoke-static {v7}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgRemove(I)V

    goto/16 :goto_14

    .line 595
    :cond_4da
    const/16 v7, 0xd8

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 600
    :sswitch_4e1
    const-string v7, "XUI_DL_POSTPONE"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 601
    const/16 v7, 0xde

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 605
    :sswitch_4ed
    const-string v7, "XUI_DL_AUTO_INSTALL_RESERVATION"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 606
    const/16 v7, 0xe2

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 609
    :sswitch_4f9
    const-string v9, "XUI_DL_AUTO_INSTALL_START"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 611
    invoke-static {v7}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPostponeAutoinstall(Z)V

    .line 613
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetCallState()I

    move-result v9

    if-nez v9, :cond_50e

    .line 615
    const/16 v7, 0xe3

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 619
    :cond_50e
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiSetInstallWaiting(Z)V

    .line 620
    const-string v7, "CALL_STATE_OFFHOOK or CALL_STATE_RINGING"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 624
    :sswitch_518
    const-string v7, "XUI_DL_UPDATE_START"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 625
    const/16 v7, 0xd3

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 629
    :sswitch_524
    const-string v7, "XUI_DL_UPDATE_PRE_START"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 630
    const/16 v7, 0xd4

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 634
    :sswitch_530
    const-string v7, "XUI_DL_DOWNLOAD_COMPLETE_LOW_BATTARY"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 635
    const/16 v7, 0xcf

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 637
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 638
    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 639
    invoke-static {v8}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto/16 :goto_14

    .line 643
    :sswitch_545
    const-string v7, "XUI_DL_PHONE_REBOOT"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 644
    const/16 v7, 0xd5

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto/16 :goto_14

    .line 648
    :sswitch_551
    sget-object v7, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    if-eqz v7, :cond_55e

    .line 649
    sget-object v7, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    const/16 v9, 0xb6

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_14

    .line 651
    :cond_55e
    const-string v7, "wssDmUiBootstrapActivity.WssAppBootStrapHandler is null !!"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 655
    :sswitch_565
    sget-object v7, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    if-eqz v7, :cond_572

    .line 656
    sget-object v7, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    const/16 v9, 0xb7

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_14

    .line 658
    :cond_572
    const-string v7, "wssDmUiBootstrapActivity.WssAppBootStrapHandler is null !!"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 665
    :sswitch_579
    sget-object v7, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    if-eqz v7, :cond_586

    .line 666
    sget-object v7, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    const/16 v9, 0xb8

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_14

    .line 668
    :cond_586
    const-string v7, "wssDmUiBootstrapActivity.WssAppBootStrapHandler is null !!"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 675
    :sswitch_58d
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpCookieClear()V

    .line 676
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 677
    invoke-static {v8}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 678
    iget v7, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->type:I

    invoke-static {v7}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpRequestNoti(I)V

    goto/16 :goto_14

    .line 682
    :sswitch_59d
    const/4 v0, 0x0

    .line 683
    .local v0, bStatus:Z
    invoke-static {}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskGetDmInitStatus()Z

    move-result v0

    .line 684
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XUI_DM_IDLE_STATE :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 686
    if-eqz v0, :cond_5c3

    .line 688
    invoke-static {v8}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpResumeNotiAction(I)V

    goto/16 :goto_14

    .line 692
    :cond_5c3
    const-string v7, "DM Not Initialized"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 73
    :sswitch_data_5ca
    .sparse-switch
        0x65 -> :sswitch_fd
        0x66 -> :sswitch_fd
        0x68 -> :sswitch_104
        0x69 -> :sswitch_17
        0x6f -> :sswitch_99
        0x83 -> :sswitch_71
        0x84 -> :sswitch_5e
        0x85 -> :sswitch_99
        0x86 -> :sswitch_99
        0x87 -> :sswitch_71
        0x88 -> :sswitch_71
        0x89 -> :sswitch_c3
        0x8a -> :sswitch_e2
        0x8d -> :sswitch_58d
        0x8e -> :sswitch_58d
        0x8f -> :sswitch_58d
        0x90 -> :sswitch_58d
        0x93 -> :sswitch_59d
        0x94 -> :sswitch_211
        0x95 -> :sswitch_205
        0xac -> :sswitch_1d
        0xb5 -> :sswitch_14
        0xb6 -> :sswitch_551
        0xb7 -> :sswitch_565
        0xb8 -> :sswitch_579
        0xca -> :sswitch_255
        0xcb -> :sswitch_315
        0xcc -> :sswitch_368
        0xcd -> :sswitch_3aa
        0xce -> :sswitch_121
        0xcf -> :sswitch_530
        0xd0 -> :sswitch_44d
        0xd1 -> :sswitch_332
        0xd2 -> :sswitch_3c5
        0xd3 -> :sswitch_518
        0xd4 -> :sswitch_524
        0xd5 -> :sswitch_545
        0xd6 -> :sswitch_462
        0xd7 -> :sswitch_3b4
        0xd8 -> :sswitch_4af
        0xdd -> :sswitch_4e1
        0xdf -> :sswitch_446
        0xe0 -> :sswitch_446
        0xe2 -> :sswitch_4ed
        0xe3 -> :sswitch_4f9
        0xe7 -> :sswitch_46e
        0xe9 -> :sswitch_1d2
        0xea -> :sswitch_4a3
        0xec -> :sswitch_23c
        0xf1 -> :sswitch_1ab
        0xf2 -> :sswitch_1ab
        0xf3 -> :sswitch_1ab
        0x191 -> :sswitch_154
        0x192 -> :sswitch_16c
        0x193 -> :sswitch_187
        0x194 -> :sswitch_193
        0x195 -> :sswitch_19f
    .end sparse-switch
.end method
