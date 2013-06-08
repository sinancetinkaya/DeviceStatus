.class public Lcom/wssyncmldm/eng/parser/XDMParserStatus;
.super Lcom/wssyncmldm/agent/XDMHandleCmd;
.source "XDMParserStatus.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

.field public cmdid:I

.field public cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

.field public itemlist:Lcom/wssyncmldm/eng/core/XDMList;

.field public m_szCmd:Ljava/lang/String;

.field public m_szCmdRef:Ljava/lang/String;

.field public m_szData:Ljava/lang/String;

.field public m_szMsgRef:Ljava/lang/String;

.field public sourceref:Lcom/wssyncmldm/eng/core/XDMList;

.field public targetref:Lcom/wssyncmldm/eng/core/XDMList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/wssyncmldm/agent/XDMHandleCmd;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 19
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 21
    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 10
    return-void
.end method


# virtual methods
.method public xdmParParseStatus(Lcom/wssyncmldm/eng/parser/XDMParser;)I
    .registers 8
    .parameter "p"

    .prologue
    const/16 v5, 0x29

    const/4 v3, 0x0

    .line 30
    const/4 v1, -0x1

    .line 31
    .local v1, id:I
    const/4 v2, 0x0

    .line 33
    .local v2, res:I
    invoke-virtual {p1, v5}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 34
    if-eqz v2, :cond_d

    move v3, v2

    .line 153
    :cond_c
    :goto_c
    return v3

    .line 39
    :cond_d
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 40
    const/16 v4, 0x8

    if-eq v2, v4, :cond_c

    .line 44
    if-eqz v2, :cond_23

    .line 46
    const-string v3, "not WBXML_ERR_OK"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v3, v2

    .line 47
    goto :goto_c

    .line 68
    :cond_1e
    if-ne v1, v5, :cond_a6

    .line 70
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    .line 54
    :cond_23
    :try_start_23
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_9d

    move-result v1

    .line 61
    :goto_27
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1e

    .line 63
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    .line 64
    const-string v4, "xdmParParseStatus WBXML_END"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WBXML_TAG_CMDID cmdid ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cmdid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WBXML_TAG_MSGREF msgref ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WBXML_TAG_CMDREF cmdref ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WBXML_TAG_Cmd cmd ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WBXML_TAG_DATA data ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 152
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v4, p0}, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->xdmAgentHdlCmdStatus(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserStatus;)V

    goto/16 :goto_c

    .line 56
    :catch_9d
    move-exception v0

    .line 58
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_27

    .line 74
    .end local v0           #e:Ljava/io/IOException;
    :cond_a6
    sparse-switch v1, :sswitch_data_13c

    .line 135
    const-string v4, "WBXML_ERR_UNKNOWN_ELEMENT !!!!!!!"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x2

    .line 140
    :goto_af
    if-eqz v2, :cond_23

    move v3, v2

    .line 142
    goto/16 :goto_c

    .line 77
    :sswitch_b4
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 78
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cmdid:I

    goto :goto_af

    .line 82
    :sswitch_c1
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 83
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szMsgRef:Ljava/lang/String;

    goto :goto_af

    .line 87
    :sswitch_ca
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 88
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmdRef:Ljava/lang/String;

    goto :goto_af

    .line 92
    :sswitch_d3
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 93
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szCmd:Ljava/lang/String;

    goto :goto_af

    .line 97
    :sswitch_dc
    new-instance v4, Lcom/wssyncmldm/eng/core/XDMList;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/core/XDMList;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->targetref:Lcom/wssyncmldm/eng/core/XDMList;

    .line 98
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->targetref:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p1, v1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElelist(ILcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->targetref:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_af

    .line 102
    :sswitch_ec
    new-instance v4, Lcom/wssyncmldm/eng/core/XDMList;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/core/XDMList;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->sourceref:Lcom/wssyncmldm/eng/core/XDMList;

    .line 103
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->sourceref:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p1, v1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElelist(ILcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->sourceref:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_af

    .line 107
    :sswitch_fc
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 108
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserCred;->xdmParParseCred(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 109
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    goto :goto_af

    .line 113
    :sswitch_10e
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 114
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseChal()I

    move-result v2

    .line 115
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->chal:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    goto :goto_af

    .line 119
    :sswitch_11e
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 120
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->m_szData:Ljava/lang/String;

    goto :goto_af

    .line 124
    :sswitch_127
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserStatus;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_af

    .line 128
    :sswitch_130
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 129
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 131
    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto/16 :goto_af

    .line 74
    :sswitch_data_13c
    .sparse-switch
        0x0 -> :sswitch_130
        0x9 -> :sswitch_10e
        0xa -> :sswitch_d3
        0xb -> :sswitch_b4
        0xc -> :sswitch_ca
        0xe -> :sswitch_fc
        0xf -> :sswitch_11e
        0x14 -> :sswitch_127
        0x1c -> :sswitch_c1
        0x28 -> :sswitch_ec
        0x2f -> :sswitch_dc
    .end sparse-switch
.end method
