.class public Lcom/wssyncmldm/eng/core/XDMMsg;
.super Ljava/lang/Object;
.source "XDMMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;,
        Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;
    }
.end annotation


# static fields
.field private static SyncMLMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

.field private static UIMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

.field private static final syncMsgQueueObj:Ljava/lang/Object;

.field private static final syncUIMsgQueueObj:Ljava/lang/Object;


# instance fields
.field public msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/wssyncmldm/eng/core/XDMMsg;->SyncMLMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 14
    sput-object v0, Lcom/wssyncmldm/eng/core/XDMMsg;->UIMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wssyncmldm/eng/core/XDMMsg;->syncMsgQueueObj:Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wssyncmldm/eng/core/XDMMsg;->syncUIMsgQueueObj:Ljava/lang/Object;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMMsg;->msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    .line 22
    return-void
.end method

.method public static xdmCreateAbortMessage(IZ)Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    .registers 3
    .parameter "abortCode"
    .parameter "userReq"

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;

    .end local v0           #pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;-><init>()V

    .line 336
    .restart local v0       #pAbortParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    iput p0, v0, Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;->abortCode:I

    .line 337
    iput-boolean p1, v0, Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;->userReq:Z

    .line 338
    return-object v0
.end method

.method public static xdmCreateMessage(ILcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;)Lcom/wssyncmldm/eng/core/XDMMsg;
    .registers 4
    .parameter "type"
    .parameter "param"

    .prologue
    .line 57
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMMsg;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMMsg;-><init>()V

    .line 59
    .local v0, msg:Lcom/wssyncmldm/eng/core/XDMMsg;
    if-nez v0, :cond_9

    .line 60
    const/4 v0, 0x0

    .line 67
    .end local v0           #msg:Lcom/wssyncmldm/eng/core/XDMMsg;
    :goto_8
    return-object v0

    .line 62
    .restart local v0       #msg:Lcom/wssyncmldm/eng/core/XDMMsg;
    :cond_9
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMMsg;->msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    iput p0, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->type:I

    .line 63
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMMsg;->msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    iput-object p1, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    goto :goto_8
.end method

.method public static xdmFreeMessage(Lcom/wssyncmldm/eng/core/XDMMsg;)V
    .registers 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, paramFree:Ljava/lang/Object;
    if-nez p0, :cond_5

    .line 103
    :goto_4
    return-void

    .line 83
    :cond_5
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMMsg;->msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    if-eqz v1, :cond_27

    .line 85
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMMsg;->msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    if-eqz v1, :cond_23

    .line 87
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMMsg;->msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->paramFree:Ljava/lang/Object;

    if-eqz v1, :cond_1d

    .line 89
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMMsg;->msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->param:Ljava/lang/Object;

    .line 96
    :cond_1d
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMMsg;->msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->param:Ljava/lang/Object;

    .line 99
    :cond_23
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMMsg;->msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    .line 102
    :cond_27
    const/4 p0, 0x0

    .line 103
    goto :goto_4
.end method

.method public static xdmGetMessage()Lcom/wssyncmldm/eng/core/XDMMsg;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, obj:Lcom/wssyncmldm/eng/core/XDMMsg;
    sget-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->SyncMLMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v2, :cond_2a

    .line 115
    sget-object v4, Lcom/wssyncmldm/eng/core/XDMMsg;->syncMsgQueueObj:Ljava/lang/Object;

    monitor-enter v4

    .line 117
    :try_start_9
    sget-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->SyncMLMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 118
    sget-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->SyncMLMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMMsg;

    move-object v1, v0

    .line 119
    :goto_19
    if-nez v1, :cond_2e

    .line 129
    :goto_1b
    sget-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->SyncMLMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    iget v2, v2, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    if-nez v2, :cond_29

    .line 131
    sget-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->SyncMLMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListFreeLinkedList(Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 132
    const/4 v2, 0x0

    sput-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->SyncMLMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 115
    :cond_29
    monitor-exit v4

    .line 137
    :cond_2a
    if-nez v1, :cond_2d

    move-object v1, v3

    .line 140
    .end local v1           #obj:Lcom/wssyncmldm/eng/core/XDMMsg;
    :cond_2d
    return-object v1

    .line 121
    .restart local v1       #obj:Lcom/wssyncmldm/eng/core/XDMMsg;
    :cond_2e
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMMsg;->msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    iget v2, v2, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->type:I

    if-ltz v2, :cond_3d

    .line 123
    sget-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->SyncMLMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListRemovePreviousObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    goto :goto_1b

    .line 115
    :catchall_3a
    move-exception v2

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_3a

    throw v2

    .line 126
    :cond_3d
    :try_start_3d
    sget-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->SyncMLMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMMsg;

    move-object v1, v0
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_3a

    goto :goto_19
.end method

.method public static xdmGetUIMessage()Lcom/wssyncmldm/eng/core/XDMMsg;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 149
    const/4 v1, 0x0

    .line 151
    .local v1, obj:Lcom/wssyncmldm/eng/core/XDMMsg;
    sget-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->UIMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v2, :cond_2a

    .line 153
    sget-object v4, Lcom/wssyncmldm/eng/core/XDMMsg;->syncUIMsgQueueObj:Ljava/lang/Object;

    monitor-enter v4

    .line 155
    :try_start_9
    sget-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->UIMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V

    .line 156
    sget-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->UIMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMMsg;

    move-object v1, v0

    .line 157
    :goto_19
    if-nez v1, :cond_2e

    .line 167
    :goto_1b
    sget-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->UIMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    iget v2, v2, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    if-nez v2, :cond_29

    .line 169
    sget-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->UIMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListFreeLinkedList(Lcom/wssyncmldm/eng/core/XDMLinkedList;)V

    .line 170
    const/4 v2, 0x0

    sput-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->UIMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 153
    :cond_29
    monitor-exit v4

    .line 175
    :cond_2a
    if-nez v1, :cond_2d

    move-object v1, v3

    .line 178
    .end local v1           #obj:Lcom/wssyncmldm/eng/core/XDMMsg;
    :cond_2d
    return-object v1

    .line 159
    .restart local v1       #obj:Lcom/wssyncmldm/eng/core/XDMMsg;
    :cond_2e
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMMsg;->msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    iget v2, v2, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->type:I

    if-ltz v2, :cond_3d

    .line 161
    sget-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->UIMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListRemovePreviousObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    goto :goto_1b

    .line 153
    :catchall_3a
    move-exception v2

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_3a

    throw v2

    .line 164
    :cond_3d
    :try_start_3d
    sget-object v2, Lcom/wssyncmldm/eng/core/XDMMsg;->UIMsgQueue:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMMsg;

    move-object v1, v0
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_3a

    goto :goto_19
.end method

.method public static xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 13
    .parameter "type"
    .parameter "param"
    .parameter "paramFree"

    .prologue
    .line 189
    const/4 v5, 0x0

    .line 190
    .local v5, msgParam:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;
    const/4 v3, 0x0

    .line 192
    .local v3, msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    if-eqz p1, :cond_12

    .line 194
    new-instance v5, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    .end local v5           #msgParam:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;
    invoke-direct {v5}, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;-><init>()V

    .line 195
    .restart local v5       #msgParam:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;
    iput-object p1, v5, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->param:Ljava/lang/Object;

    .line 197
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->paramFree:Ljava/lang/Object;

    .line 198
    if-eqz p2, :cond_12

    .line 200
    iput-object p2, v5, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->paramFree:Ljava/lang/Object;

    .line 204
    :cond_12
    sget-object v7, Lcom/wssyncmldm/eng/core/XDMMsg;->syncMsgQueueObj:Ljava/lang/Object;

    monitor-enter v7

    .line 206
    :try_start_15
    new-instance v4, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;-><init>()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_62

    .line 208
    .end local v3           #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    .local v4, msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    :try_start_1a
    sget-object v6, Lcom/wssyncmldm/agent/XDMTask;->g_hDmTask:Landroid/os/Handler;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_51

    if-nez v6, :cond_22

    .line 211
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    const/4 v6, 0x5

    if-lt v1, v6, :cond_37

    .line 232
    .end local v1           #i:I
    :cond_22
    if-eqz v4, :cond_55

    .line 234
    :try_start_24
    iput p0, v4, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->type:I

    .line 235
    iput-object v5, v4, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    .line 237
    sget-object v6, Lcom/wssyncmldm/agent/XDMTask;->g_hDmTask:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 238
    .local v2, msg:Landroid/os/Message;
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 239
    sget-object v6, Lcom/wssyncmldm/agent/XDMTask;->g_hDmTask:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_51
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_35} :catch_5b

    .line 204
    .end local v2           #msg:Landroid/os/Message;
    :goto_35
    :try_start_35
    monitor-exit v7
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_51

    .line 251
    return-void

    .line 215
    .restart local v1       #i:I
    :cond_37
    :try_start_37
    const-string v6, "waiting for DM_TaskHandler create"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 216
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_51
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_41} :catch_48

    .line 223
    :goto_41
    :try_start_41
    sget-object v6, Lcom/wssyncmldm/agent/XDMTask;->g_hDmTask:Landroid/os/Handler;

    if-nez v6, :cond_22

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 218
    :catch_48
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_51

    goto :goto_41

    .line 204
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #i:I
    :catchall_51
    move-exception v6

    move-object v3, v4

    .end local v4           #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    .restart local v3       #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    :goto_53
    :try_start_53
    monitor-exit v7
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_62

    throw v6

    .line 243
    .end local v3           #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    .restart local v4       #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    :cond_55
    :try_start_55
    const-string v6, "Can\'t send message"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_51
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5a} :catch_5b

    goto :goto_35

    .line 246
    :catch_5b
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/Exception;
    :try_start_5c
    const-string v6, "Can\'t send message"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_51

    goto :goto_35

    .line 204
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    .restart local v3       #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    :catchall_62
    move-exception v6

    goto :goto_53
.end method

.method public static xdmSendUIMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 13
    .parameter "type"
    .parameter "param"
    .parameter "paramFree"

    .prologue
    .line 261
    const/4 v5, 0x0

    .line 262
    .local v5, msgParam:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;
    const/4 v3, 0x0

    .line 264
    .local v3, msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    if-eqz p1, :cond_12

    .line 266
    new-instance v5, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    .end local v5           #msgParam:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;
    invoke-direct {v5}, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;-><init>()V

    .line 267
    .restart local v5       #msgParam:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;
    iput-object p1, v5, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->param:Ljava/lang/Object;

    .line 269
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->paramFree:Ljava/lang/Object;

    .line 270
    if-eqz p2, :cond_12

    .line 272
    iput-object p2, v5, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;->paramFree:Ljava/lang/Object;

    .line 276
    :cond_12
    sget-object v7, Lcom/wssyncmldm/eng/core/XDMMsg;->syncUIMsgQueueObj:Ljava/lang/Object;

    monitor-enter v7

    .line 278
    :try_start_15
    new-instance v4, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;-><init>()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_62

    .line 280
    .end local v3           #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    .local v4, msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    :try_start_1a
    sget-object v6, Lcom/wssyncmldm/agent/XDMUITask;->g_hDmUiTask:Landroid/os/Handler;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_51

    if-nez v6, :cond_22

    .line 283
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    const/4 v6, 0x5

    if-lt v1, v6, :cond_37

    .line 304
    .end local v1           #i:I
    :cond_22
    if-eqz v4, :cond_55

    .line 306
    :try_start_24
    iput p0, v4, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->type:I

    .line 307
    iput-object v5, v4, Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

    .line 309
    sget-object v6, Lcom/wssyncmldm/agent/XDMUITask;->g_hDmUiTask:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 310
    .local v2, msg:Landroid/os/Message;
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 311
    sget-object v6, Lcom/wssyncmldm/agent/XDMUITask;->g_hDmUiTask:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_51
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_35} :catch_5b

    .line 276
    .end local v2           #msg:Landroid/os/Message;
    :goto_35
    :try_start_35
    monitor-exit v7
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_51

    .line 323
    return-void

    .line 287
    .restart local v1       #i:I
    :cond_37
    :try_start_37
    const-string v6, "waiting for hUITask create"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 288
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_51
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_41} :catch_48

    .line 295
    :goto_41
    :try_start_41
    sget-object v6, Lcom/wssyncmldm/agent/XDMUITask;->g_hDmUiTask:Landroid/os/Handler;

    if-nez v6, :cond_22

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 290
    :catch_48
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_51

    goto :goto_41

    .line 276
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #i:I
    :catchall_51
    move-exception v6

    move-object v3, v4

    .end local v4           #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    .restart local v3       #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    :goto_53
    :try_start_53
    monitor-exit v7
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_62

    throw v6

    .line 315
    .end local v3           #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    .restart local v4       #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    :cond_55
    :try_start_55
    const-string v6, "Can\'t send UI message"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_51
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5a} :catch_5b

    goto :goto_35

    .line 318
    :catch_5b
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/Exception;
    :try_start_5c
    const-string v6, "Can\'t send UI message"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_51

    goto :goto_35

    .line 276
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    .restart local v3       #msgItem:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
    :catchall_62
    move-exception v6

    goto :goto_53
.end method

.method public static xdmStatus(ILjava/lang/Object;)I
    .registers 3
    .parameter "type"
    .parameter "obj"

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method
