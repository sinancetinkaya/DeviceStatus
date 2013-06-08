.class public Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;
.super Lcom/wssyncmldm/agent/XDMHandleCmd;
.source "XDMParserSyncheader.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

.field public is_noresp:I

.field public m_szLocname:Ljava/lang/String;

.field public m_szRespUri:Ljava/lang/String;

.field public m_szSessionId:Ljava/lang/String;

.field public m_szSource:Ljava/lang/String;

.field public m_szTarget:Ljava/lang/String;

.field public m_szVerdtd:Ljava/lang/String;

.field public m_szVerproto:Ljava/lang/String;

.field public meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

.field public msgid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/wssyncmldm/agent/XDMHandleCmd;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseSyncheader(Lcom/wssyncmldm/eng/parser/XDMParser;)I
    .registers 8
    .parameter "parser"

    .prologue
    const/4 v3, 0x0

    .line 30
    const/4 v1, -0x1

    .line 31
    .local v1, id:I
    const/4 v2, 0x0

    .line 33
    .local v2, res:I
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 34
    if-eqz v2, :cond_12

    .line 36
    const-string v3, "not WBXML_ERR_OK"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v3, v2

    .line 150
    :cond_11
    :goto_11
    return v3

    .line 40
    :cond_12
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 41
    const/16 v4, 0x8

    if-eq v2, v4, :cond_11

    .line 45
    if-eqz v2, :cond_23

    .line 47
    const-string v3, "not WBXML_ERR_OK"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v3, v2

    .line 48
    goto :goto_11

    .line 55
    :cond_23
    :try_start_23
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_d5

    move-result v1

    .line 62
    :goto_27
    const/4 v4, 0x1

    if-ne v1, v4, :cond_ee

    .line 64
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xdmParParseSyncheader verproto : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerproto:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xdmParParseSyncheader sessionid : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xdmParParseSyncheader target : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xdmParParseSyncheader msgid : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->msgid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xdmParParseSyncheader source : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xdmParParseSyncheader locname : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szLocname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xdmParParseSyncheader respuri : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szRespUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xdmParParseSyncheader is_noresp : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->is_noresp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 148
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v4, p0}, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->xdmAgentHdlCmdSyncHdr(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;)V

    goto/16 :goto_11

    .line 57
    :catch_d5
    move-exception v0

    .line 59
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "xdmParParseCurrentElement error = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 68
    .end local v0           #e:Ljava/io/IOException;
    :cond_ee
    sparse-switch v1, :sswitch_data_176

    .line 129
    const/4 v2, 0x2

    .line 132
    :goto_f2
    if-eqz v2, :cond_23

    .line 134
    const-string v3, "not  WBXML_ERR_OK"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v3, v2

    .line 135
    goto/16 :goto_11

    .line 71
    :sswitch_fc
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 72
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerdtd:Ljava/lang/String;

    goto :goto_f2

    .line 76
    :sswitch_105
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 77
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szVerproto:Ljava/lang/String;

    goto :goto_f2

    .line 81
    :sswitch_10e
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 82
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSessionId:Ljava/lang/String;

    goto :goto_f2

    .line 86
    :sswitch_117
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 87
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->msgid:I

    goto :goto_f2

    .line 91
    :sswitch_124
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 92
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szRespUri:Ljava/lang/String;

    goto :goto_f2

    .line 96
    :sswitch_12d
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseSource()I

    move-result v2

    .line 97
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szSource:Ljava/lang/String;

    goto :goto_f2

    .line 101
    :sswitch_136
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseTarget()I

    move-result v2

    .line 102
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->m_szTarget:Ljava/lang/String;

    goto :goto_f2

    .line 106
    :sswitch_13f
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->is_noresp:I

    goto :goto_f2

    .line 110
    :sswitch_146
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 111
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 112
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    goto :goto_f2

    .line 116
    :sswitch_158
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 117
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserCred;->xdmParParseCred(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 118
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    goto :goto_f2

    .line 122
    :sswitch_16a
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 123
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 125
    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto/16 :goto_f2

    .line 68
    :sswitch_data_176
    .sparse-switch
        0x0 -> :sswitch_16a
        0xe -> :sswitch_158
        0x1a -> :sswitch_146
        0x1b -> :sswitch_117
        0x1d -> :sswitch_13f
        0x21 -> :sswitch_124
        0x25 -> :sswitch_10e
        0x27 -> :sswitch_12d
        0x2e -> :sswitch_136
        0x31 -> :sswitch_fc
        0x32 -> :sswitch_105
    .end sparse-switch
.end method
