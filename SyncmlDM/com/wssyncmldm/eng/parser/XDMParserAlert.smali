.class public Lcom/wssyncmldm/eng/parser/XDMParserAlert;
.super Lcom/wssyncmldm/agent/XDMHandleCmd;
.source "XDMParserAlert.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public cmdid:I

.field public cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

.field public is_noresp:I

.field public itemlist:Lcom/wssyncmldm/eng/core/XDMList;

.field public m_szCorrelator:Ljava/lang/String;

.field public m_szData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/wssyncmldm/agent/XDMHandleCmd;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->is_noresp:I

    .line 14
    iput-object v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szCorrelator:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 10
    return-void
.end method


# virtual methods
.method public xdmParParseAlert(Lcom/wssyncmldm/eng/parser/XDMParser;)I
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
    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 30
    if-eqz v2, :cond_c

    move v3, v2

    .line 108
    :cond_b
    :goto_b
    return v3

    .line 35
    :cond_c
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 36
    const/16 v4, 0x8

    if-eq v2, v4, :cond_b

    .line 40
    if-eqz v2, :cond_1d

    .line 42
    const-string v3, "not WBXML_ERR_OK"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v3, v2

    .line 43
    goto :goto_b

    .line 50
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_2e

    move-result v1

    .line 57
    :goto_21
    const/4 v4, 0x1

    if-ne v1, v4, :cond_37

    .line 59
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 106
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v4, p0}, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->xdmAgentHdlCmdAlert(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAlert;)V

    goto :goto_b

    .line 52
    :catch_2e
    move-exception v0

    .line 54
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_21

    .line 63
    .end local v0           #e:Ljava/io/IOException;
    :cond_37
    sparse-switch v1, :sswitch_data_82

    .line 97
    const/4 v2, 0x2

    .line 101
    :goto_3b
    if-eqz v2, :cond_1d

    move v3, v2

    .line 103
    goto :goto_b

    .line 66
    :sswitch_3f
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 67
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cmdid:I

    goto :goto_3b

    .line 71
    :sswitch_4c
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 72
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserCred;->xdmParParseCred(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 73
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    goto :goto_3b

    .line 77
    :sswitch_5e
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 78
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->m_szData:Ljava/lang/String;

    goto :goto_3b

    .line 82
    :sswitch_67
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_3b

    .line 86
    :sswitch_70
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->is_noresp:I

    goto :goto_3b

    .line 90
    :sswitch_77
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 91
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 93
    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto :goto_3b

    .line 63
    :sswitch_data_82
    .sparse-switch
        0x0 -> :sswitch_77
        0xb -> :sswitch_3f
        0xe -> :sswitch_4c
        0xf -> :sswitch_5e
        0x14 -> :sswitch_67
        0x1d -> :sswitch_70
    .end sparse-switch
.end method
