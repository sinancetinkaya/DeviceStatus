.class Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$2;
.super Ljava/lang/Object;
.source "XUIFotaPostponeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "arg0"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xc8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 198
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeState:I
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->access$000(Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x6

    if-eq p2, v1, :cond_95

    .line 202
    const-string v1, "OPEN"

    const-string v2, "USC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "OPEN"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 205
    :cond_43
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    .line 206
    .local v0, nStatus:I
    if-eqz v0, :cond_7e

    if-eq v0, v5, :cond_7e

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Postpone Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeCount:I
    invoke-static {v2}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->access$100(Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeCount:I
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->access$100(Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_8f

    .line 211
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    invoke-static {v1, v4}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->access$112(Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;I)I

    .line 212
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->m_nPostponeCount:I
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->access$100(Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPostponeCount(I)V

    .line 220
    .end local v0           #nStatus:I
    :cond_7e
    :goto_7e
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    invoke-virtual {v1, p2}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->xuiFotaPostpone(I)V

    .line 241
    :goto_83
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->setResult(I)V

    .line 242
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->finish()V

    .line 243
    return-void

    .line 216
    .restart local v0       #nStatus:I
    :cond_8f
    const-string v1, "postpone count is over 3times"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_7e

    .line 224
    .end local v0           #nStatus:I
    :cond_95
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    .line 225
    .restart local v0       #nStatus:I
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 226
    const/16 v1, 0x16

    invoke-static {v1}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 227
    if-nez v0, :cond_b2

    .line 230
    invoke-static {v3}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpResetSessionSaveState(I)V

    .line 231
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpHandleNotiQueue()V

    .line 238
    :cond_ab
    :goto_ab
    invoke-static {v4}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 239
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    goto :goto_83

    .line 233
    :cond_b2
    if-ne v0, v5, :cond_ab

    .line 235
    const/16 v1, 0x113

    invoke-static {v1, v6, v6}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 236
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    goto :goto_ab
.end method
