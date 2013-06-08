.class public Lcom/wssyncmldm/eng/parser/XDMParserResults;
.super Ljava/lang/Object;
.source "XDMParserResults.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# instance fields
.field public cmdid:I

.field public itemlist:Lcom/wssyncmldm/eng/core/XDMList;

.field public m_szCmdRef:Ljava/lang/String;

.field public m_szMsgRef:Ljava/lang/String;

.field public m_szSourceRef:Ljava/lang/String;

.field public m_szTargetRef:Ljava/lang/String;

.field public meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 13
    return-void
.end method


# virtual methods
.method public xdmBuildResultsCommand(Lcom/wssyncmldm/adapter/XDMDevinfAdapter;)Lcom/wssyncmldm/eng/parser/XDMParserResults;
    .registers 12
    .parameter "dev"

    .prologue
    .line 128
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserItem;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserItem;-><init>()V

    .line 129
    .local v4, item:Lcom/wssyncmldm/eng/parser/XDMParserItem;
    new-instance v2, Lcom/wssyncmldm/eng/core/XDMEncoder;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/core/XDMEncoder;-><init>()V

    .line 130
    .local v2, encoder:Lcom/wssyncmldm/eng/core/XDMEncoder;
    const/16 v8, 0x800

    new-array v0, v8, [B

    .line 131
    .local v0, buffer:[B
    const/4 v8, 0x2

    new-array v5, v8, [I

    .line 133
    .local v5, odataSize:[I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    .local v6, out:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-direct {v7}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;-><init>()V

    .line 137
    .local v7, pcdata:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;
    invoke-virtual {v2, v6, p1, v5}, Lcom/wssyncmldm/eng/core/XDMEncoder;->xdmEncDevinf2Opaque(Ljava/io/ByteArrayOutputStream;Lcom/wssyncmldm/adapter/XDMDevinfAdapter;[I)[B

    move-result-object v0

    .line 139
    const/4 v8, 0x1

    iput v8, v7, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    .line 140
    const/4 v8, 0x0

    aget v8, v5, v8

    iput v8, v7, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    .line 141
    array-length v8, v0

    new-array v8, v8, [C

    iput-object v8, v7, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    .line 143
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2d
    array-length v8, v0

    if-lt v3, v8, :cond_3f

    .line 146
    iput-object v7, v4, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 148
    new-instance v8, Lcom/wssyncmldm/eng/core/XDMList;

    invoke-direct {v8}, Lcom/wssyncmldm/eng/core/XDMList;-><init>()V

    iput-object v8, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    .line 152
    if-eqz v6, :cond_3e

    .line 154
    :try_start_3b
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_49

    .line 162
    :cond_3e
    :goto_3e
    return-object p0

    .line 144
    :cond_3f
    iget-object v8, v7, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    aget-byte v9, v0, v3

    int-to-char v9, v9

    aput-char v9, v8, v3

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 157
    :catch_49
    move-exception v1

    .line 159
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public xdmParParseResults(Lcom/wssyncmldm/eng/parser/XDMParser;)I
    .registers 7
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 30
    const/4 v1, -0x1

    .line 31
    .local v1, id:I
    const/4 v2, 0x0

    .line 33
    .local v2, res:I
    const/16 v4, 0x22

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 35
    if-eqz v2, :cond_d

    move v3, v2

    .line 123
    :cond_c
    :goto_c
    return v3

    .line 40
    :cond_d
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 41
    const/16 v4, 0x8

    if-eq v2, v4, :cond_c

    .line 45
    if-eqz v2, :cond_1e

    .line 47
    const-string v3, "not WBXML_ERR_OK"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v3, v2

    .line 48
    goto :goto_c

    .line 55
    :cond_1e
    :try_start_1e
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2a

    move-result v1

    .line 62
    :goto_22
    const/4 v4, 0x1

    if-ne v1, v4, :cond_33

    .line 64
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 65
    goto :goto_c

    .line 57
    :catch_2a
    move-exception v0

    .line 59
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_22

    .line 68
    .end local v0           #e:Ljava/io/IOException;
    :cond_33
    sparse-switch v1, :sswitch_data_92

    .line 113
    const/4 v2, 0x2

    .line 117
    :goto_37
    if-eqz v2, :cond_1e

    move v3, v2

    .line 119
    goto :goto_c

    .line 71
    :sswitch_3b
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 72
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->cmdid:I

    goto :goto_37

    .line 76
    :sswitch_48
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 77
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szMsgRef:Ljava/lang/String;

    goto :goto_37

    .line 81
    :sswitch_51
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 82
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szCmdRef:Ljava/lang/String;

    goto :goto_37

    .line 86
    :sswitch_5a
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 87
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 88
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    goto :goto_37

    .line 92
    :sswitch_6c
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 93
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szTargetRef:Ljava/lang/String;

    goto :goto_37

    .line 97
    :sswitch_75
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 98
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->m_szSourceRef:Ljava/lang/String;

    goto :goto_37

    .line 102
    :sswitch_7e
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseItemlist(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserResults;->itemlist:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_37

    .line 106
    :sswitch_87
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 107
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 109
    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto :goto_37

    .line 68
    :sswitch_data_92
    .sparse-switch
        0x0 -> :sswitch_87
        0xb -> :sswitch_3b
        0xc -> :sswitch_51
        0x14 -> :sswitch_7e
        0x1a -> :sswitch_5a
        0x1c -> :sswitch_48
        0x28 -> :sswitch_75
        0x2f -> :sswitch_6c
    .end sparse-switch
.end method
