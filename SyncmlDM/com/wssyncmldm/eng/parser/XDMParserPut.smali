.class public Lcom/wssyncmldm/eng/parser/XDMParserPut;
.super Ljava/lang/Object;
.source "XDMParserPut.java"

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
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserPut;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 9
    return-void
.end method


# virtual methods
.method public xdmParParsePut(Lcom/wssyncmldm/eng/parser/XDMParser;)I
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
    const/16 v4, 0x1f

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 30
    if-eqz v2, :cond_d

    move v3, v2

    .line 116
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
    if-eqz v2, :cond_19

    move v3, v2

    .line 42
    goto :goto_c

    .line 49
    :cond_19
    :try_start_19
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_25

    move-result v1

    .line 56
    :goto_1d
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2e

    .line 58
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 59
    goto :goto_c

    .line 51
    :catch_25
    move-exception v0

    .line 53
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1d

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :cond_2e
    sparse-switch v1, :sswitch_data_94

    .line 108
    const/4 v2, 0x2

    .line 111
    :goto_32
    if-eqz v2, :cond_19

    move v3, v2

    .line 113
    goto :goto_c

    .line 65
    :sswitch_36
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 66
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserPut;->cmdid:I

    goto :goto_32

    .line 70
    :sswitch_43
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserPut;->is_noresp:I

    goto :goto_32

    .line 74
    :sswitch_4a
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 75
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserPut;->lang:I

    goto :goto_32

    .line 79
    :sswitch_57
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserPut;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 80
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserPut;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserCred;->xdmParParseCred(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 81
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserPut;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    goto :goto_32

    .line 85
    :sswitch_69
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserPut;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 86
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserPut;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 87
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserPut;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    goto :goto_32

    .line 91
    :sswitch_7b
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserPut;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserPut;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_32

    .line 95
    :sswitch_84
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 96
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 98
    if-eqz v2, :cond_91

    move v3, v2

    .line 100
    goto/16 :goto_c

    .line 103
    :cond_91
    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto :goto_32

    .line 62
    :sswitch_data_94
    .sparse-switch
        0x0 -> :sswitch_84
        0xb -> :sswitch_36
        0xe -> :sswitch_57
        0x14 -> :sswitch_7b
        0x15 -> :sswitch_4a
        0x1a -> :sswitch_69
        0x1d -> :sswitch_43
    .end sparse-switch
.end method
