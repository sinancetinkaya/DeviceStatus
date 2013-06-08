.class public Lcom/wssyncmldm/XDMService$XDMPhoneStateListener2;
.super Landroid/telephony/PhoneStateListener;
.source "XDMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/XDMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XDMPhoneStateListener2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/XDMService;


# direct methods
.method public constructor <init>(Lcom/wssyncmldm/XDMService;)V
    .registers 2
    .parameter

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/wssyncmldm/XDMService$XDMPhoneStateListener2;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyListeners()V
    .registers 7

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1291
    sget-object v1, Lcom/wssyncmldm/XDMService;->telephonyManager2:Landroid/telephony/TelephonyManager;

    sget-object v2, Lcom/wssyncmldm/XDMService;->serviceState2:Landroid/telephony/ServiceState;

    invoke-static {v1, v2}, Lcom/wssyncmldm/adapter/XDMTelephonyData;->xdmGetInstance(Landroid/telephony/TelephonyManager;Landroid/telephony/ServiceState;)Lcom/wssyncmldm/adapter/XDMTelephonyData;

    move-result-object v0

    .line 1293
    .local v0, telephony:Lcom/wssyncmldm/adapter/XDMTelephonyData;
    if-eqz v0, :cond_58

    .line 1295
    iget v1, v0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->networkType:I

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->xdmSetServiceType2(I)I

    .line 1296
    iget v1, v0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->nSimState:I

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->xdmSetSimState2(I)V

    .line 1298
    iget v1, v0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->networkType:I

    if-eqz v1, :cond_2d

    .line 1300
    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsSyncTaskInit:Z

    if-eqz v1, :cond_2d

    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v1, :cond_2d

    sget-boolean v1, Lcom/wssyncmldm/XDMService;->g_bIsInitializing:Z

    if-nez v1, :cond_2d

    .line 1302
    sput-boolean v4, Lcom/wssyncmldm/XDMService;->g_bIsInitializing:Z

    .line 1303
    invoke-static {v5, v3, v3}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1308
    :cond_2d
    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$800()Z

    move-result v1

    if-nez v1, :cond_74

    iget-boolean v1, v0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->isNetworkRoaming:Z

    if-eqz v1, :cond_74

    .line 1310
    invoke-static {v4}, Lcom/wssyncmldm/XDMService;->access$802(Z)Z

    .line 1312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "going to Roaming Area - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$800()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 1322
    :cond_58
    :goto_58
    sget-object v1, Lcom/wssyncmldm/XDMService;->serviceState2:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_73

    sget-object v1, Lcom/wssyncmldm/XDMService;->serviceState2:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_73

    .line 1324
    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsSyncTaskInit:Z

    if-eqz v1, :cond_73

    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsPhoneBookInitialized:Z

    if-eqz v1, :cond_73

    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v1, :cond_73

    .line 1326
    invoke-static {v5, v3, v3}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1329
    :cond_73
    return-void

    .line 1314
    :cond_74
    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$800()Z

    move-result v1

    if-eqz v1, :cond_58

    iget-boolean v1, v0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->isNetworkRoaming:Z

    if-nez v1, :cond_58

    .line 1316
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->access$802(Z)Z

    .line 1318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit from Roaming Area - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$800()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto :goto_58
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5
    .parameter "state"
    .parameter "szIncomingNumber"

    .prologue
    .line 1204
    const-string v0, ">>>>>>>>>>> onCallStateChanged"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1205
    sget-object v0, Lcom/wssyncmldm/XDMService;->telephonyManager2:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_a

    .line 1234
    :cond_9
    :goto_9
    return-void

    .line 1208
    :cond_a
    invoke-static {p1}, Lcom/wssyncmldm/XDMService;->xdmSetCallState(I)V

    .line 1209
    if-nez p1, :cond_32

    .line 1211
    sget v0, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    if-eqz v0, :cond_21

    .line 1213
    const-string v0, "Run Resume Operation, Resume call CallStateChanged)"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1214
    #calls: Lcom/wssyncmldm/XDMService;->xdmResumeOperation()Z
    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$700()Z

    .line 1224
    :cond_1b
    :goto_1b
    const-string v0, ">>>>>>>>>>> CALL_STATE_IDLE"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_9

    .line 1218
    :cond_21
    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiGetInstallWaiting()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1220
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiSetInstallWaiting(Z)V

    .line 1221
    const/4 v0, 0x0

    const/16 v1, 0xe3

    invoke-static {v0, v1}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_1b

    .line 1226
    :cond_32
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3b

    .line 1228
    const-string v0, ">>>>>>>>>>> CALL_STATE_RINGING"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_9

    .line 1230
    :cond_3b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 1232
    const-string v0, ">>>>>>>>>>> CALL_STATE_OFFHOOK"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public onDataActivity(I)V
    .registers 2
    .parameter "direction"

    .prologue
    .line 1287
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1255
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetDataState2()I

    move-result v0

    if-eq v0, p1, :cond_c

    .line 1257
    invoke-static {p1}, Lcom/wssyncmldm/XDMService;->xdmSetDataState2(I)V

    .line 1258
    invoke-virtual {p0}, Lcom/wssyncmldm/XDMService$XDMPhoneStateListener2;->notifyListeners()V

    .line 1260
    :cond_c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    .line 1275
    sget v0, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    if-eqz v0, :cond_1b

    .line 1277
    const-string v0, "Run Resume Operation, Resume call DataConnectionState)"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1278
    #calls: Lcom/wssyncmldm/XDMService;->xdmResumeOperation()Z
    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$700()Z

    .line 1282
    :cond_1b
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1245
    sget-object v0, Lcom/wssyncmldm/XDMService;->serviceState2:Landroid/telephony/ServiceState;

    if-eq v0, p1, :cond_9

    .line 1247
    sput-object p1, Lcom/wssyncmldm/XDMService;->serviceState2:Landroid/telephony/ServiceState;

    .line 1248
    invoke-virtual {p0}, Lcom/wssyncmldm/XDMService$XDMPhoneStateListener2;->notifyListeners()V

    .line 1250
    :cond_9
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .registers 2
    .parameter "asu"

    .prologue
    .line 1240
    return-void
.end method
