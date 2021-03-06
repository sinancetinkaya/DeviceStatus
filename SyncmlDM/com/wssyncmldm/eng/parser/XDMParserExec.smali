.class public Lcom/wssyncmldm/eng/parser/XDMParserExec;
.super Lcom/wssyncmldm/agent/XDMHandleCmd;
.source "XDMParserExec.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public cmdid:I

.field public is_noresp:I

.field public itemlist:Lcom/wssyncmldm/eng/core/XDMList;

.field public m_szCorrelator:Ljava/lang/String;

.field public meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/wssyncmldm/agent/XDMHandleCmd;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserExec;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 10
    return-void
.end method


# virtual methods
.method public xdmParParseExec(Lcom/wssyncmldm/eng/parser/XDMParser;)I
    .registers 7
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 25
    const/4 v1, -0x1

    .line 26
    .local v1, id:I
    const/4 v2, 0x0

    .line 28
    .local v2, res:I
    const/16 v4, 0x11

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 29
    if-eqz v2, :cond_d

    move v3, v2

    .line 106
    :cond_c
    :goto_c
    return v3

    .line 34
    :cond_d
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 35
    const/16 v4, 0x8

    if-eq v2, v4, :cond_c

    .line 39
    if-eqz v2, :cond_1e

    .line 41
    const-string v3, "not WBXML_ERR_OK"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v3, v2

    .line 42
    goto :goto_c

    .line 49
    :cond_1e
    :try_start_1e
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2e

    move-result v1

    .line 56
    :goto_22
    const/4 v4, 0x1

    if-ne v1, v4, :cond_37

    .line 58
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    .line 105
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v4, p0}, Lcom/wssyncmldm/eng/parser/XDMParserExec;->xdmAgentHdlCmdExec(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserExec;)V

    goto :goto_c

    .line 51
    :catch_2e
    move-exception v0

    .line 53
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_22

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :cond_37
    sparse-switch v1, :sswitch_data_82

    .line 96
    const/4 v2, 0x2

    .line 99
    :goto_3b
    if-eqz v2, :cond_1e

    move v3, v2

    .line 101
    goto :goto_c

    .line 65
    :sswitch_3f
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 66
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserExec;->cmdid:I

    goto :goto_3b

    .line 70
    :sswitch_4c
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserExec;->is_noresp:I

    goto :goto_3b

    .line 74
    :sswitch_53
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserExec;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 75
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserExec;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 76
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserExec;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    goto :goto_3b

    .line 80
    :sswitch_65
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserExec;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserExec;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_3b

    .line 84
    :sswitch_6e
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 85
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserExec;->m_szCorrelator:Ljava/lang/String;

    goto :goto_3b

    .line 89
    :sswitch_77
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 90
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 92
    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto :goto_3b

    .line 62
    :sswitch_data_82
    .sparse-switch
        0x0 -> :sswitch_77
        0xb -> :sswitch_3f
        0x14 -> :sswitch_65
        0x1a -> :sswitch_53
        0x1d -> :sswitch_4c
        0x3c -> :sswitch_6e
    .end sparse-switch
.end method
