.class public Lcom/wssyncmldm/eng/parser/XDMParserAdd;
.super Lcom/wssyncmldm/agent/XDMHandleCmd;
.source "XDMParserAdd.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public cmdid:I

.field public cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

.field public is_noresp:I

.field public itemlist:Lcom/wssyncmldm/eng/core/XDMList;

.field public meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/wssyncmldm/agent/XDMHandleCmd;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 10
    return-void
.end method


# virtual methods
.method public xdmParParseAdd(Lcom/wssyncmldm/eng/parser/XDMParser;)I
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
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 29
    if-eqz v2, :cond_c

    move v3, v2

    .line 108
    :cond_b
    :goto_b
    return v3

    .line 34
    :cond_c
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 35
    const/16 v4, 0x8

    if-eq v2, v4, :cond_b

    .line 39
    if-eqz v2, :cond_1d

    .line 41
    const-string v3, "not WBXML_ERR_OK"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v3, v2

    .line 42
    goto :goto_b

    .line 49
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_2d

    move-result v1

    .line 56
    :goto_21
    const/4 v4, 0x1

    if-ne v1, v4, :cond_36

    .line 58
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    .line 106
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v4, p0}, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->xdmAgentHdlCmdAdd(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAdd;)V

    goto :goto_b

    .line 51
    :catch_2d
    move-exception v0

    .line 53
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_21

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :cond_36
    sparse-switch v1, :sswitch_data_8a

    .line 97
    const/4 v2, 0x2

    .line 100
    :goto_3a
    if-eqz v2, :cond_1d

    move v3, v2

    .line 102
    goto :goto_b

    .line 65
    :sswitch_3e
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 66
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cmdid:I

    goto :goto_3a

    .line 70
    :sswitch_4b
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 71
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserCred;->xdmParParseCred(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 72
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    goto :goto_3a

    .line 76
    :sswitch_5d
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 77
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 78
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    goto :goto_3a

    .line 82
    :sswitch_6f
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_3a

    .line 86
    :sswitch_78
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->is_noresp:I

    goto :goto_3a

    .line 90
    :sswitch_7f
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 91
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 93
    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto :goto_3a

    .line 62
    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_7f
        0xb -> :sswitch_3e
        0xe -> :sswitch_4b
        0x14 -> :sswitch_6f
        0x1a -> :sswitch_5d
        0x1d -> :sswitch_78
    .end sparse-switch
.end method
