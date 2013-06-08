.class public Lcom/wssyncmldm/eng/parser/XDMParserGet;
.super Lcom/wssyncmldm/agent/XDMHandleCmd;
.source "XDMParserGet.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public cmdid:I

.field public cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

.field public is_noresp:I

.field public itemlist:Lcom/wssyncmldm/eng/core/XDMList;

.field public lang:I

.field public meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/wssyncmldm/agent/XDMHandleCmd;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 10
    return-void
.end method


# virtual methods
.method public xdmParParseGet(Lcom/wssyncmldm/eng/parser/XDMParser;)I
    .registers 7
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 26
    const/4 v1, -0x1

    .line 27
    .local v1, id:I
    const/4 v2, 0x0

    .line 29
    .local v2, res:I
    const/16 v4, 0x13

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 30
    if-eqz v2, :cond_d

    move v3, v2

    .line 119
    :cond_c
    :goto_c
    return v3

    .line 35
    :cond_d
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 36
    const/16 v4, 0x8

    if-eq v2, v4, :cond_c

    .line 40
    if-eqz v2, :cond_1e

    .line 42
    const-string v3, "not WBXML_ERR_OK"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v3, v2

    .line 43
    goto :goto_c

    .line 50
    :cond_1e
    :try_start_1e
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2f

    move-result v1

    .line 57
    :goto_22
    const/4 v4, 0x1

    if-ne v1, v4, :cond_38

    .line 59
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 118
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v4, p0}, Lcom/wssyncmldm/eng/parser/XDMParserGet;->xdmAgentHdlCmdGet(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserGet;)V

    goto :goto_c

    .line 52
    :catch_2f
    move-exception v0

    .line 54
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_22

    .line 63
    .end local v0           #e:Ljava/io/IOException;
    :cond_38
    sparse-switch v1, :sswitch_data_9e

    .line 109
    const/4 v2, 0x2

    .line 112
    :goto_3c
    if-eqz v2, :cond_1e

    move v3, v2

    .line 114
    goto :goto_c

    .line 66
    :sswitch_40
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 67
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cmdid:I

    goto :goto_3c

    .line 71
    :sswitch_4d
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->is_noresp:I

    goto :goto_3c

    .line 75
    :sswitch_54
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 76
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->lang:I

    goto :goto_3c

    .line 80
    :sswitch_61
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 81
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserCred;->xdmParParseCred(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 82
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    goto :goto_3c

    .line 86
    :sswitch_73
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 87
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 88
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    goto :goto_3c

    .line 92
    :sswitch_85
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserGet;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_3c

    .line 96
    :sswitch_8e
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 97
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 99
    if-eqz v2, :cond_9b

    move v3, v2

    .line 101
    goto/16 :goto_c

    .line 104
    :cond_9b
    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto :goto_3c

    .line 63
    :sswitch_data_9e
    .sparse-switch
        0x0 -> :sswitch_8e
        0xb -> :sswitch_40
        0xe -> :sswitch_61
        0x14 -> :sswitch_85
        0x15 -> :sswitch_54
        0x1a -> :sswitch_73
        0x1d -> :sswitch_4d
    .end sparse-switch
.end method
