.class public Lcom/wssyncmldm/eng/parser/XDMParserDelete;
.super Lcom/wssyncmldm/agent/XDMHandleCmd;
.source "XDMParserDelete.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public cmdid:I

.field public cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

.field public is_archive:I

.field public is_noresp:I

.field public is_sftdel:I

.field public itemlist:Lcom/wssyncmldm/eng/core/XDMList;

.field public meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/wssyncmldm/agent/XDMHandleCmd;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 10
    return-void
.end method


# virtual methods
.method public xdmParParseDelete(Lcom/wssyncmldm/eng/parser/XDMParser;)I
    .registers 7
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 27
    const/4 v1, -0x1

    .line 28
    .local v1, id:I
    const/4 v2, 0x0

    .line 30
    .local v2, res:I
    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 31
    if-eqz v2, :cond_d

    move v3, v2

    .line 118
    :cond_c
    :goto_c
    return v3

    .line 36
    :cond_d
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 37
    const/16 v4, 0x8

    if-eq v2, v4, :cond_c

    .line 41
    if-eqz v2, :cond_1e

    .line 43
    const-string v3, "not WBXML_ERR_OK"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v3, v2

    .line 44
    goto :goto_c

    .line 51
    :cond_1e
    :try_start_1e
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2f

    move-result v1

    .line 58
    :goto_22
    const/4 v4, 0x1

    if-ne v1, v4, :cond_38

    .line 60
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 117
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v4, p0}, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->xdmAgentHdlCmdDelete(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserDelete;)V

    goto :goto_c

    .line 53
    :catch_2f
    move-exception v0

    .line 55
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_22

    .line 64
    .end local v0           #e:Ljava/io/IOException;
    :cond_38
    sparse-switch v1, :sswitch_data_9a

    .line 107
    const/4 v2, 0x2

    .line 111
    :goto_3c
    if-eqz v2, :cond_1e

    move v3, v2

    .line 113
    goto :goto_c

    .line 67
    :sswitch_40
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 68
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cmdid:I

    goto :goto_3c

    .line 72
    :sswitch_4d
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 73
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserCred;->xdmParParseCred(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 74
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    goto :goto_3c

    .line 78
    :sswitch_5f
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 79
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 80
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    goto :goto_3c

    .line 84
    :sswitch_71
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_3c

    .line 88
    :sswitch_7a
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->is_noresp:I

    goto :goto_3c

    .line 92
    :sswitch_81
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->is_archive:I

    goto :goto_3c

    .line 96
    :sswitch_88
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->is_sftdel:I

    goto :goto_3c

    .line 100
    :sswitch_8f
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 101
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 103
    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto :goto_3c

    .line 64
    :sswitch_data_9a
    .sparse-switch
        0x0 -> :sswitch_8f
        0x7 -> :sswitch_81
        0xb -> :sswitch_40
        0xe -> :sswitch_4d
        0x14 -> :sswitch_71
        0x1a -> :sswitch_5f
        0x1d -> :sswitch_7a
        0x26 -> :sswitch_88
    .end sparse-switch
.end method
