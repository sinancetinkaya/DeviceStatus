.class public Lcom/wssyncmldm/XDMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "XDMBroadcastReceiver.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;
.implements Lcom/wssyncmldm/interfaces/XCommonInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XNOTIInterface;


# static fields
.field public static final XCOMMON_INTENT_CSC_FOTA_UPDATE:Ljava/lang/String; = "android.intent.action.CSC_FOTA_UPDATE_DONE"

.field public static final XCOMMON_INTENT_DEVICE_REGISTRATION:Ljava/lang/String; = "sec.fota.terms.intent.REGISTRATION"

.field public static final XCOMMON_INTENT_GET_NOTI_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

.field public static final XCOMMON_INTENT_GET_SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DM_RECEIVED"

.field public static final XCOMMON_INTENT_POLLING_MODE_FROM_FC:Ljava/lang/String; = "sec.fota.polling.intent.RECEIVE"

.field public static final XCOMMON_INTENT_PULL_MODE_FROM_FC:Ljava/lang/String; = "sec.fota.pull.intent.RECEIVE"

.field public static final XCOMMON_INTENT_PUSH_MODE_FROM_FC:Ljava/lang/String; = "sec.fota.push.intent.RECEIVE"

.field public static final XCOMMON_INTENT_SET_DM:Ljava/lang/String; = "android.intent.action.OMACP_DM_SET"

.field public static final XCOMMON_INTENT_SMS_PUSH:Ljava/lang/String; = "android.intent.action.PUSH_CONFIRM"

.field public static final XCOMMON_INTENT_SYSSCOPESTATUS:Ljava/lang/String; = "com.sec.intent.action.SYSSCOPESTATUS"

.field public static final XCOMMON_INTENT_XDM_ADMIN_SETTING:Ljava/lang/String; = "android.intent.action.ADMIN_SETTING"

.field private static m_InitResumeContext:Landroid/content/Context;

.field private static m_InitResumeIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private xdmBroadCastNotInitHandle(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "nResumeIntent"

    .prologue
    const/4 v3, 0x0

    .line 504
    const-string v1, "DM Not Init"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetStrNetworkDisable()I

    move-result v0

    .line 508
    .local v0, nUnableStrId:I
    packed-switch p2, :pswitch_data_68

    .line 545
    invoke-static {p2}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentSetNotiResumeCase(I)V

    .line 548
    :cond_10
    :goto_10
    return-void

    .line 511
    :pswitch_11
    sget-boolean v1, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v1, :cond_19

    sget-boolean v1, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v1, :cond_22

    .line 513
    :cond_19
    const/16 v1, 0xec

    invoke-static {v3, v1}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 514
    invoke-static {p2}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentSetNotiResumeCase(I)V

    goto :goto_10

    .line 518
    :cond_22
    invoke-static {p2}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentSetNotiResumeCase(I)V

    goto :goto_10

    .line 522
    :pswitch_26
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmInitAdpGetNetStatus()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3a

    .line 524
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_10

    .line 527
    :cond_3a
    const/16 v1, 0x194

    invoke-static {v3, v1}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 528
    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsSyncTaskInit:Z

    if-eqz v1, :cond_62

    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v1, :cond_62

    sget-boolean v1, Lcom/wssyncmldm/XDMService;->g_bIsInitializing:Z

    if-nez v1, :cond_62

    .line 530
    const/4 v1, 0x1

    sput-boolean v1, Lcom/wssyncmldm/XDMService;->g_bIsInitializing:Z

    .line 531
    const-string v1, "----------- FOTACLIENT_PULL XEVENT_DM_INIT "

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 532
    const/16 v1, 0xc

    invoke-static {v1, v3, v3}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 538
    :goto_58
    invoke-static {}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentGetNotiResumeCase()I

    move-result v1

    if-nez v1, :cond_10

    .line 540
    invoke-static {p2}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentSetNotiResumeCase(I)V

    goto :goto_10

    .line 536
    :cond_62
    const-string v1, "----------- Is initializing."

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_58

    .line 508
    :pswitch_data_68
    .packed-switch 0x4
        :pswitch_11
        :pswitch_26
    .end packed-switch
.end method

.method private xdmBroadcastCPBootstrap(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 279
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v0, :cond_d

    .line 281
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmBroadCastNotInitHandle(Landroid/content/Context;I)V

    .line 282
    sput-object p2, Lcom/wssyncmldm/XDMBroadcastReceiver;->m_InitResumeIntent:Landroid/content/Intent;

    .line 283
    sput-object p1, Lcom/wssyncmldm/XDMBroadcastReceiver;->m_InitResumeContext:Landroid/content/Context;

    .line 288
    :goto_c
    return-void

    .line 287
    :cond_d
    invoke-static {p2}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmProcessCPData(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method public static xdmBroadcastFotaClientStartDM(I)V
    .registers 1
    .parameter "nInitType"

    .prologue
    .line 474
    invoke-static {p0}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpUserInitiate(I)V

    .line 476
    return-void
.end method

.method private xdmBroadcastIPPushReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 242
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentGetNotiResumeCase()I

    move-result v1

    if-nez v1, :cond_18

    .line 246
    const-string v1, "pdus"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 248
    .local v0, inbox:[B
    if-nez v0, :cond_19

    .line 250
    const-string v1, "PushData is null."

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 275
    .end local v0           #inbox:[B
    :cond_18
    :goto_18
    return-void

    .line 254
    .restart local v0       #inbox:[B
    :cond_19
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Decode([B)[B

    move-result-object v0

    .line 255
    if-eqz v0, :cond_18

    .line 257
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiAddPushDataQueue(I[B)V

    .line 259
    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v1, :cond_2c

    .line 261
    const/4 v1, 0x6

    invoke-direct {p0, p1, v1}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmBroadCastNotInitHandle(Landroid/content/Context;I)V

    goto :goto_18

    .line 265
    :cond_2c
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiGetNotiProcessing()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 267
    const-string v1, "Noti Processing..."

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_18

    .line 271
    :cond_38
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    goto :goto_18
.end method

.method private xdmBroadcastNotificationReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 222
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentGetNotiResumeCase()I

    move-result v1

    if-nez v1, :cond_1c

    .line 226
    const-string v1, "pdus"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 227
    .local v0, inbox:[B
    invoke-static {v2, v0}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiAddPushDataQueue(I[B)V

    .line 229
    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v1, :cond_1d

    .line 231
    invoke-direct {p0, p1, v2}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmBroadCastNotInitHandle(Landroid/content/Context;I)V

    .line 238
    .end local v0           #inbox:[B
    :cond_1c
    :goto_1c
    return-void

    .line 235
    .restart local v0       #inbox:[B
    :cond_1d
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataHandling()V

    goto :goto_1c
.end method

.method private xdmBroadcastPushMessageReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 441
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v0, :cond_d

    .line 443
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmBroadCastNotInitHandle(Landroid/content/Context;I)V

    .line 444
    sput-object p2, Lcom/wssyncmldm/XDMBroadcastReceiver;->m_InitResumeIntent:Landroid/content/Intent;

    .line 445
    sput-object p1, Lcom/wssyncmldm/XDMBroadcastReceiver;->m_InitResumeContext:Landroid/content/Context;

    .line 450
    :goto_c
    return-void

    .line 449
    :cond_d
    invoke-static {p1, p2}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmProcessPushMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_c
.end method

.method public static xdmGetAuthtype(Ljava/lang/String;)I
    .registers 4
    .parameter "szType"

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, ntype:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 483
    const-string v1, "BASIC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "DIGEST,BASIC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 485
    :cond_2d
    const/4 v0, 0x0

    .line 499
    :goto_2e
    return v0

    .line 487
    :cond_2f
    const-string v1, "DIGEST"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "DIGEST,MD5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 489
    :cond_3f
    const/4 v0, 0x1

    goto :goto_2e

    .line 491
    :cond_41
    const-string v1, "HMAC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    const-string v1, "DIGEST,HMAC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 493
    :cond_51
    const/4 v0, 0x2

    goto :goto_2e

    .line 497
    :cond_53
    const/4 v0, -0x1

    goto :goto_2e
.end method

.method public static xdmProcessCPData(Landroid/content/Intent;)V
    .registers 16
    .parameter "intent"

    .prologue
    .line 293
    const/4 v10, 0x0

    .line 294
    .local v10, szServerAuthType:Ljava/lang/String;
    const/4 v8, 0x0

    .line 295
    .local v8, szClientAuthType:Ljava/lang/String;
    const-string v12, "Receive Intent name: android.intent.action.OMACP_DM_SET"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 297
    if-nez p0, :cond_b

    .line 299
    sget-object p0, Lcom/wssyncmldm/XDMBroadcastReceiver;->m_InitResumeIntent:Landroid/content/Intent;

    .line 302
    :cond_b
    new-instance v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-direct {v6}, Lcom/wssyncmldm/db/file/XDBProfileInfo;-><init>()V

    .line 303
    .local v6, ptSyncMLDMProfile:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    const-string v12, "My W7 PDU"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 307
    .local v1, extras:Landroid/os/Bundle;
    const-string v12, "ProfileName"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    .line 308
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_41

    .line 309
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ProfileName :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 311
    :cond_41
    const-string v12, "ServerUrl"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 313
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9e

    .line 315
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ServerUrl :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 316
    const-string v7, ""

    .line 317
    .local v7, szAddress:Ljava/lang/String;
    const-string v11, ""

    .line 318
    .local v11, szURL:Ljava/lang/String;
    const/4 v3, 0x0

    .line 319
    .local v3, nPort:I
    const-string v9, ""

    .line 320
    .local v9, szProtocol:Ljava/lang/String;
    new-instance v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;

    invoke-direct {v5}, Lcom/wssyncmldm/db/file/XDBUrlInfo;-><init>()V

    .line 321
    .local v5, parser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v12}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v5

    .line 322
    iget-object v11, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    .line 323
    iget-object v7, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    .line 324
    iget v3, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    .line 325
    iget-object v9, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    .line 327
    iput-object v11, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 328
    iput-object v7, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    .line 329
    iput v3, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    .line 330
    iput-object v9, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    .line 332
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    iput-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol_Org:Ljava/lang/String;

    .line 333
    iget v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    iput v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort_Org:I

    .line 334
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    iput-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    .line 335
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    iput-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP_Org:Ljava/lang/String;

    .line 337
    const/4 v11, 0x0

    .line 338
    const/4 v7, 0x0

    .line 339
    const/4 v9, 0x0

    .line 343
    .end local v3           #nPort:I
    .end local v5           #parser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    .end local v7           #szAddress:Ljava/lang/String;
    .end local v9           #szProtocol:Ljava/lang/String;
    .end local v11           #szURL:Ljava/lang/String;
    :cond_9e
    const-string v12, "ServerId"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    .line 344
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c6

    .line 345
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ServerID :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 347
    :cond_c6
    const-string v12, "ServerPwd"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    .line 348
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_ee

    .line 349
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ServerPwd :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 351
    :cond_ee
    const-string v12, "ServerNonce"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonce:Ljava/lang/String;

    .line 352
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonce:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_116

    .line 353
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ServerNonce :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonce:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 355
    :cond_116
    const-string v12, "UserId"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    .line 356
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_13e

    .line 357
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UserName :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 359
    :cond_13e
    const-string v12, "UserPwd"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    .line 360
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_166

    .line 361
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Password :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 363
    :cond_166
    const-string v12, "ClientNonce"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonce:Ljava/lang/String;

    .line 364
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonce:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_18e

    .line 365
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ClientNonce :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonce:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 367
    :cond_18e
    const-string v12, "ServerAuthType"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 368
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1d1

    .line 370
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "nServerAuthType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 371
    invoke-static {v10}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmGetAuthtype(Ljava/lang/String;)I

    move-result v2

    .line 373
    .local v2, nAuth:I
    const/4 v12, -0x1

    if-eq v2, v12, :cond_26a

    .line 375
    iput v2, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    .line 376
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ServerAuthType :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 384
    .end local v2           #nAuth:I
    :cond_1d1
    :goto_1d1
    const-string v12, "ClientAuthType"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 385
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_214

    .line 387
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ClientAuthType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 388
    invoke-static {v8}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmGetAuthtype(Ljava/lang/String;)I

    move-result v2

    .line 390
    .restart local v2       #nAuth:I
    const/4 v12, -0x1

    if-eq v2, v12, :cond_271

    .line 392
    iput v2, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    .line 393
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ClientAuthType :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 401
    .end local v2           #nAuth:I
    :cond_214
    :goto_214
    const/4 v4, 0x0

    .line 402
    .local v4, nProfileIndex:I
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_28d

    .line 404
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-static {v12}, Lcom/wssyncmldm/db/file/XDB;->xdbSetActiveProfileIndexByServerID(Ljava/lang/String;)I

    move-result v4

    .line 406
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Server Id :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", index :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 408
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_252

    .line 410
    iget-object v12, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileName(ILjava/lang/String;)V

    .line 413
    :cond_252
    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileInfo(Lcom/wssyncmldm/db/file/XDBProfileInfo;)Z

    .line 414
    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileIndex(I)V

    .line 417
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v12

    if-gtz v12, :cond_264

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v12

    if-eqz v12, :cond_277

    .line 419
    :cond_264
    const-string v12, "DM is running. don\'t install cp bootstrap!"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 436
    :goto_269
    return-void

    .line 380
    .end local v4           #nProfileIndex:I
    .restart local v2       #nAuth:I
    :cond_26a
    const-string v12, "ServerAuthType didn\'t receve from Server"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_1d1

    .line 397
    :cond_271
    const-string v12, "ClientAuthType didn\'t receve from Server"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_214

    .line 424
    .end local v2           #nAuth:I
    .restart local v4       #nProfileIndex:I
    :cond_277
    const-wide/16 v12, 0x1388

    :try_start_279
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27c
    .catch Ljava/lang/InterruptedException; {:try_start_279 .. :try_end_27c} :catch_284

    .line 430
    :goto_27c
    const/16 v12, 0xb

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_269

    .line 426
    :catch_284
    move-exception v0

    .line 428
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_27c

    .line 434
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_28d
    const-string v12, "Not Exist ServerID"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_269
.end method

.method public static xdmProcessPushMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 455
    if-nez p0, :cond_8

    if-nez p1, :cond_8

    .line 457
    sget-object p0, Lcom/wssyncmldm/XDMBroadcastReceiver;->m_InitResumeContext:Landroid/content/Context;

    .line 458
    sget-object p1, Lcom/wssyncmldm/XDMBroadcastReceiver;->m_InitResumeIntent:Landroid/content/Intent;

    .line 461
    :cond_8
    if-eqz p0, :cond_59

    if-eqz p1, :cond_59

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DM URI11:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dm_message"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 464
    const-string v2, "dm_message"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 465
    .local v0, dmURI:Landroid/net/Uri;
    new-instance v1, Lcom/wssyncmldm/noti/XNOTIAdapter;

    invoke-direct {v1}, Lcom/wssyncmldm/noti/XNOTIAdapter;-><init>()V

    .line 466
    .local v1, pushAdp:Lcom/wssyncmldm/noti/XNOTIAdapter;
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dm Push Message Uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v1, p0, v0}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpReceiveMsg(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 470
    .end local v0           #dmURI:Landroid/net/Uri;
    .end local v1           #pushAdp:Lcom/wssyncmldm/noti/XNOTIAdapter;
    :cond_59
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sec.fota.push.intent.RECEIVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sec.fota.pull.intent.RECEIVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sec.fota.polling.intent.RECEIVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sec.fota.terms.intent.REGISTRATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PUSH_CONFIRM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 76
    :cond_3f
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFotaStartStatus()I

    move-result v3

    if-nez v3, :cond_68

    .line 78
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFotaStartStatus()V

    .line 79
    const-string v3, "XDM_FOTA_START set!"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/wssyncmldm/XDMService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 86
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.OMACP_DM_SET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 88
    const-string v3, "android.intent.action.OMACP_DM_SET"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmBroadcastCPBootstrap(Landroid/content/Context;Landroid/content/Intent;)V

    .line 218
    :cond_7c
    :goto_7c
    return-void

    .line 91
    :cond_7d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.provider.Telephony.WAP_PUSH_DM_RECEIVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 93
    const-string v3, "android.provider.Telephony.WAP_PUSH_DM_RECEIVED"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmBroadcastPushMessageReceived(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_7c

    .line 96
    :cond_92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 98
    const-string v3, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmBroadcastNotificationReceived(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_7c

    .line 101
    :cond_a7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sec.fota.push.intent.RECEIVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 103
    const-string v3, "sec.fota.push.intent.RECEIVE"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmBroadcastIPPushReceived(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_7c

    .line 106
    :cond_bc
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sec.fota.terms.intent.REGISTRATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sec.fota.terms.intent.REGISTRATION : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mode"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 109
    const-string v3, "mode"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_7c

    .line 111
    sget-boolean v3, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v3, :cond_f5

    .line 113
    const/4 v3, 0x7

    invoke-direct {p0, p1, v3}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmBroadCastNotInitHandle(Landroid/content/Context;I)V

    goto :goto_7c

    .line 116
    :cond_f5
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpUserInitiate(I)V

    goto :goto_7c

    .line 120
    :cond_fa
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sec.fota.pull.intent.RECEIVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 122
    const-string v3, "sec.fota.pull.intent.RECEIVE"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 124
    sget-boolean v3, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v3, :cond_127

    .line 126
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingUnableNetworkMsg()Z

    move-result v3

    if-eqz v3, :cond_121

    .line 128
    const-string v3, "Roaming, UnableNetwork, return"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 129
    const/16 v3, 0x191

    invoke-static {v6, v3}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_7c

    .line 132
    :cond_121
    const/4 v3, 0x5

    invoke-direct {p0, p1, v3}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmBroadCastNotInitHandle(Landroid/content/Context;I)V

    goto/16 :goto_7c

    .line 136
    :cond_127
    invoke-static {v5}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpUserInitiate(I)V

    goto/16 :goto_7c

    .line 139
    :cond_12c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sec.fota.polling.intent.RECEIVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14d

    .line 141
    const-string v3, "sec.fota.polling.intent.RECEIVE"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 142
    sget-boolean v3, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v3, :cond_147

    .line 144
    const/4 v3, 0x4

    invoke-direct {p0, p1, v3}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmBroadCastNotInitHandle(Landroid/content/Context;I)V

    goto/16 :goto_7c

    .line 147
    :cond_147
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmBroadcastFotaClientStartDM(I)V

    goto/16 :goto_7c

    .line 149
    :cond_14d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.CSC_FOTA_UPDATE_DONE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_169

    .line 151
    const-string v3, "android.intent.action.CSC_FOTA_UPDATE_DONE"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 152
    sget-boolean v3, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v3, :cond_7c

    .line 154
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMFeature;->xdmFeatureGetBearerSettingFromCSCFotaDataBase()V

    .line 155
    sput-boolean v5, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_BEARER_SETTING_STATUS:Z

    goto/16 :goto_7c

    .line 158
    :cond_169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PUSH_CONFIRM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b6

    .line 160
    const-string v3, "android.intent.action.PUSH_CONFIRM"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 161
    const-string v3, "OPEN"

    const-string v4, "KOR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 163
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetSalesCode()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, szSalesCode:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sales_code= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 166
    const-string v3, "LG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 168
    sget-boolean v3, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v3, :cond_1b1

    .line 170
    const/16 v3, 0x8

    invoke-direct {p0, p1, v3}, Lcom/wssyncmldm/XDMBroadcastReceiver;->xdmBroadCastNotInitHandle(Landroid/content/Context;I)V

    goto/16 :goto_7c

    .line 173
    :cond_1b1
    invoke-static {v5}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpUserInitiateBackground(I)V

    goto/16 :goto_7c

    .line 177
    .end local v2           #szSalesCode:Ljava/lang/String;
    :cond_1b6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22c

    .line 179
    const-string v3, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 181
    sget-boolean v3, Lcom/wssyncmldm/XDMService;->XDM_SYSTEM_ROOTING:Z

    if-nez v3, :cond_7c

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 184
    const-string v3, "status"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SysScope scanning finished"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_225

    .line 186
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckSystemRooting()I

    .line 187
    invoke-static {}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentGetRootingNotScanStatus()Z

    move-result v3

    if-eqz v3, :cond_209

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v3

    if-nez v3, :cond_209

    .line 189
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpHandleNotiQueue()V

    goto/16 :goto_7c

    .line 191
    :cond_209
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetTopActivityName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XUIFotaBlockActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-static {}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskGetDmInitStatus()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 193
    const/16 v3, 0x195

    invoke-static {v6, v3}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 194
    invoke-static {v5}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpUserInitiate(I)V

    goto/16 :goto_7c

    .line 199
    :cond_225
    const-string v3, "SysScope scanning not finished"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_7c

    .line 203
    :cond_22c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ADMIN_SETTING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_252

    .line 205
    const-string v3, "android.intent.action.ADMIN_SETTING"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 206
    new-instance v1, Landroid/content/Intent;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/wssyncmldm/ui/XUIMainActivity;

    invoke-direct {v1, v3, v6, p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v1, i:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7c

    .line 210
    .end local v1           #i:Landroid/content/Intent;
    :cond_252
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_262

    .line 212
    sput-boolean v7, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalSDStorageAvailable:Z

    goto/16 :goto_7c

    .line 216
    :cond_262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_7c
.end method
