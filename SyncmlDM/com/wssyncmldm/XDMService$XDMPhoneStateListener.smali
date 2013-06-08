.class public Lcom/wssyncmldm/XDMService$XDMPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "XDMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/XDMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XDMPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/XDMService;


# direct methods
.method public constructor <init>(Lcom/wssyncmldm/XDMService;)V
    .registers 2
    .parameter

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/wssyncmldm/XDMService$XDMPhoneStateListener;->this$0:Lcom/wssyncmldm/XDMService;

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

    .line 1159
    sget-object v1, Lcom/wssyncmldm/XDMService;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v2, Lcom/wssyncmldm/XDMService;->serviceState:Landroid/telephony/ServiceState;

    invoke-static {v1, v2}, Lcom/wssyncmldm/adapter/XDMTelephonyData;->xdmGetInstance(Landroid/telephony/TelephonyManager;Landroid/telephony/ServiceState;)Lcom/wssyncmldm/adapter/XDMTelephonyData;

    move-result-object v0

    .line 1161
    .local v0, telephony:Lcom/wssyncmldm/adapter/XDMTelephonyData;
    if-eqz v0, :cond_58

    .line 1163
    iget v1, v0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->networkType:I

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->xdmSetServiceType(I)I

    .line 1164
    iget v1, v0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->nSimState:I

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->xdmSetSimState(I)V

    .line 1166
    iget v1, v0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->networkType:I

    if-eqz v1, :cond_2d

    .line 1168
    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsSyncTaskInit:Z

    if-eqz v1, :cond_2d

    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v1, :cond_2d

    sget-boolean v1, Lcom/wssyncmldm/XDMService;->g_bIsInitializing:Z

    if-nez v1, :cond_2d

    .line 1170
    sput-boolean v4, Lcom/wssyncmldm/XDMService;->g_bIsInitializing:Z

    .line 1171
    invoke-static {v5, v3, v3}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1176
    :cond_2d
    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$800()Z

    move-result v1

    if-nez v1, :cond_74

    iget-boolean v1, v0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->isNetworkRoaming:Z

    if-eqz v1, :cond_74

    .line 1178
    invoke-static {v4}, Lcom/wssyncmldm/XDMService;->access$802(Z)Z

    .line 1179
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

    .line 1188
    :cond_58
    :goto_58
    sget-object v1, Lcom/wssyncmldm/XDMService;->serviceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_73

    sget-object v1, Lcom/wssyncmldm/XDMService;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_73

    .line 1190
    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsSyncTaskInit:Z

    if-eqz v1, :cond_73

    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsPhoneBookInitialized:Z

    if-eqz v1, :cond_73

    sget-boolean v1, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v1, :cond_73

    .line 1192
    invoke-static {v5, v3, v3}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1195
    :cond_73
    return-void

    .line 1181
    :cond_74
    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$800()Z

    move-result v1

    if-eqz v1, :cond_58

    iget-boolean v1, v0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->isNetworkRoaming:Z

    if-nez v1, :cond_58

    .line 1183
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->access$802(Z)Z

    .line 1184
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
    .line 1072
    const-string v0, ">>>>>>>>>>> onCallStateChanged"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1073
    sget-object v0, Lcom/wssyncmldm/XDMService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_a

    .line 1102
    :cond_9
    :goto_9
    return-void

    .line 1076
    :cond_a
    invoke-static {p1}, Lcom/wssyncmldm/XDMService;->xdmSetCallState(I)V

    .line 1077
    if-nez p1, :cond_32

    .line 1079
    sget v0, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    if-eqz v0, :cond_21

    .line 1081
    const-string v0, "Run Resume Operation, Resume call CallStateChanged"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1082
    #calls: Lcom/wssyncmldm/XDMService;->xdmResumeOperation()Z
    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$700()Z

    .line 1092
    :cond_1b
    :goto_1b
    const-string v0, ">>>>>>>>>>> CALL_STATE_IDLE"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_9

    .line 1086
    :cond_21
    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiGetInstallWaiting()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1088
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiSetInstallWaiting(Z)V

    .line 1089
    const/4 v0, 0x0

    const/16 v1, 0xe3

    invoke-static {v0, v1}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_1b

    .line 1094
    :cond_32
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3b

    .line 1096
    const-string v0, ">>>>>>>>>>> CALL_STATE_RINGING"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_9

    .line 1098
    :cond_3b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 1100
    const-string v0, ">>>>>>>>>>> CALL_STATE_OFFHOOK"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public onDataActivity(I)V
    .registers 2
    .parameter "direction"

    .prologue
    .line 1155
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1123
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetDataState()I

    move-result v0

    if-eq v0, p1, :cond_c

    .line 1125
    invoke-static {p1}, Lcom/wssyncmldm/XDMService;->xdmSetDataState(I)V

    .line 1126
    invoke-virtual {p0}, Lcom/wssyncmldm/XDMService$XDMPhoneStateListener;->notifyListeners()V

    .line 1128
    :cond_c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    .line 1143
    sget v0, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    if-eqz v0, :cond_1b

    .line 1145
    const-string v0, "Run Resume Operation, Resume call DataConnectionState)"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1146
    #calls: Lcom/wssyncmldm/XDMService;->xdmResumeOperation()Z
    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$700()Z

    .line 1150
    :cond_1b
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1113
    sget-object v0, Lcom/wssyncmldm/XDMService;->serviceState:Landroid/telephony/ServiceState;

    if-eq v0, p1, :cond_9

    .line 1115
    sput-object p1, Lcom/wssyncmldm/XDMService;->serviceState:Landroid/telephony/ServiceState;

    .line 1116
    invoke-virtual {p0}, Lcom/wssyncmldm/XDMService$XDMPhoneStateListener;->notifyListeners()V

    .line 1118
    :cond_9
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .registers 2
    .parameter "asu"

    .prologue
    .line 1108
    return-void
.end method
