.class public Lcom/wssyncmldm/eng/parser/XDMParserItem;
.super Ljava/lang/Object;
.source "XDMParserItem.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

.field public m_szSource:Ljava/lang/String;

.field public m_szTarget:Ljava/lang/String;

.field public meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

.field public moredata:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseItem(Lcom/wssyncmldm/eng/parser/XDMParser;Lcom/wssyncmldm/eng/parser/XDMParserItem;)I
    .registers 8
    .parameter "p"
    .parameter "item"

    .prologue
    .line 24
    const/4 v1, -0x1

    .line 25
    .local v1, id:I
    const/4 v2, 0x0

    .line 27
    .local v2, res:I
    const/16 v3, 0x14

    invoke-virtual {p1, v3}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 28
    if-eqz v2, :cond_11

    .line 30
    const-string v3, "not WBXML_ERR_OK"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v3, v2

    .line 111
    :goto_10
    return v3

    .line 34
    :cond_11
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 35
    const/16 v3, 0x8

    if-ne v2, v3, :cond_1b

    .line 37
    const/4 v3, 0x0

    goto :goto_10

    .line 39
    :cond_1b
    if-eqz v2, :cond_24

    .line 41
    const-string v3, "not WBXML_ERR_OK"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v3, v2

    .line 42
    goto :goto_10

    .line 49
    :cond_24
    :try_start_24
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_6a

    move-result v1

    .line 56
    :goto_28
    const/4 v3, 0x1

    if-ne v1, v3, :cond_73

    .line 58
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xdmParParseItem target = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xdmParParseItem source = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xdmParParseItem res  = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    move v3, v2

    .line 111
    goto :goto_10

    .line 51
    :catch_6a
    move-exception v0

    .line 53
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_28

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :cond_73
    sparse-switch v1, :sswitch_data_c0

    .line 98
    const/4 v2, 0x2

    .line 101
    :goto_77
    if-eqz v2, :cond_24

    move v3, v2

    .line 103
    goto :goto_10

    .line 65
    :sswitch_7b
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseTarget()I

    move-result v2

    .line 66
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szTarget:Ljava/lang/String;

    goto :goto_77

    .line 70
    :sswitch_84
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseSource()I

    move-result v2

    .line 71
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->m_szSource:Ljava/lang/String;

    goto :goto_77

    .line 75
    :sswitch_8d
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 76
    iget-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {v3, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 77
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    goto :goto_77

    .line 81
    :sswitch_9f
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;-><init>()V

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    .line 82
    iget-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-virtual {v3, p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->xdmParParsePcdata(Lcom/wssyncmldm/eng/parser/XDMParser;I)I

    move-result v2

    .line 83
    goto :goto_77

    .line 86
    :sswitch_ad
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v3

    iput v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserItem;->moredata:I

    goto :goto_77

    .line 90
    :sswitch_b4
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 91
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 93
    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto :goto_77

    .line 62
    nop

    :sswitch_data_c0
    .sparse-switch
        0x0 -> :sswitch_b4
        0xf -> :sswitch_9f
        0x1a -> :sswitch_8d
        0x27 -> :sswitch_84
        0x2e -> :sswitch_7b
        0x34 -> :sswitch_ad
    .end sparse-switch
.end method
