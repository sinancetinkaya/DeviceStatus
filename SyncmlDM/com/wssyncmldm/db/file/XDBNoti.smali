.class public Lcom/wssyncmldm/db/file/XDBNoti;
.super Ljava/lang/Object;
.source "XDBNoti.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XNOTIInterface;
.implements Lcom/wssyncmldm/interfaces/XDBInterface;
.implements Lcom/wssyncmldm/db/sql/XNOTIDbSql;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdbNotiDeleteSessionId(Ljava/lang/String;)V
    .registers 4
    .parameter "szSessionId"

    .prologue
    .line 64
    :try_start_0
    invoke-static {p0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 65
    const/16 v1, 0x226

    const-string v2, "sessinoId"

    invoke-static {v1, v2, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbDelete(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 71
    :goto_a
    return-void

    .line 67
    :catch_b
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static xdbNotiExistInfo()Z
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 34
    .local v0, bExists:Z
    const/16 v2, 0x226

    :try_start_3
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbGetExists(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_f

    move-result v0

    .line 41
    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 42
    return v0

    .line 36
    :catch_f
    move-exception v1

    .line 38
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static xdbNotiGetInfo()Lcom/wssyncmldm/db/file/XDBNotiInfo;
    .registers 7

    .prologue
    .line 88
    new-instance v2, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    invoke-direct {v2}, Lcom/wssyncmldm/db/file/XDBNotiInfo;-><init>()V

    .line 91
    .local v2, notiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;
    const/16 v3, 0x226

    :try_start_7
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    move-object v2, v0

    .line 92
    if-eqz v2, :cond_39

    .line 93
    const-string v3, "%d, %d, %s, %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Lcom/wssyncmldm/db/file/XDBNotiInfo;->appId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v2, Lcom/wssyncmldm/db/file/XDBNotiInfo;->uiMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v2, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szSessionId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v2, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szServerId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_39} :catch_3a

    .line 99
    :cond_39
    :goto_39
    return-object v2

    .line 95
    :catch_3a
    move-exception v1

    .line 97
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_39
.end method

.method public static xdbNotiGetInfo(I)Lcom/wssyncmldm/db/file/XDBNotiInfo;
    .registers 8
    .parameter "rowId"

    .prologue
    .line 104
    new-instance v2, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    invoke-direct {v2}, Lcom/wssyncmldm/db/file/XDBNotiInfo;-><init>()V

    .line 107
    .local v2, notiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;
    const/16 v3, 0x226

    :try_start_7
    invoke-static {v3, p0}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(II)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    move-object v2, v0

    .line 108
    if-eqz v2, :cond_42

    .line 109
    const-string v3, "%d %d, %d, %s, %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Lcom/wssyncmldm/db/file/XDBNotiInfo;->rowId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v2, Lcom/wssyncmldm/db/file/XDBNotiInfo;->appId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v2, Lcom/wssyncmldm/db/file/XDBNotiInfo;->uiMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v2, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szSessionId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, v2, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szServerId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_42} :catch_43

    .line 116
    :cond_42
    :goto_42
    return-object v2

    .line 111
    :catch_43
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x0

    goto :goto_42
.end method

.method public static xdbNotiInitNVM(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "NVMNotiInfo"

    .prologue
    .line 13
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    .line 15
    .local v0, notiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;
    if-nez v0, :cond_b

    .line 17
    new-instance v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    .end local v0           #notiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;
    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBNotiInfo;-><init>()V

    .line 26
    .restart local v0       #notiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;
    :goto_a
    return-object v0

    .line 21
    :cond_b
    const/4 v1, 0x0

    iput v1, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->appId:I

    .line 22
    const/4 v1, 0x1

    iput v1, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->uiMode:I

    .line 23
    const-string v1, ""

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szSessionId:Ljava/lang/String;

    .line 24
    const-string v1, ""

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szServerId:Ljava/lang/String;

    goto :goto_a
.end method

.method public static xdbNotiInsertInfo(Ljava/lang/Object;)V
    .registers 5
    .parameter "Obj"

    .prologue
    .line 47
    move-object v1, p0

    check-cast v1, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    .line 48
    .local v1, notiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lcom/wssyncmldm/db/file/XDBNotiInfo;->appId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/wssyncmldm/db/file/XDBNotiInfo;->uiMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szServerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 52
    const/16 v2, 0x226

    :try_start_3b
    invoke-static {v2, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbInsert(ILjava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 58
    :goto_3e
    return-void

    .line 54
    :catch_3f
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public static xdbNotiSetInfo(Ljava/lang/Object;)V
    .registers 4
    .parameter "Obj"

    .prologue
    .line 75
    move-object v1, p0

    check-cast v1, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    .line 78
    .local v1, notiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;
    const/16 v2, 0x226

    :try_start_5
    invoke-static {v2, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 84
    :goto_8
    return-void

    .line 80
    :catch_9
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_8
.end method
