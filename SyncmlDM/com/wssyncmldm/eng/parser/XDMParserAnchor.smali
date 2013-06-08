.class public Lcom/wssyncmldm/eng/parser/XDMParserAnchor;
.super Ljava/lang/Object;
.source "XDMParserAnchor.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public m_szLast:Ljava/lang/String;

.field public m_szNext:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParGetMetinfAnchor()Lcom/wssyncmldm/eng/parser/XDMParserAnchor;
    .registers 3

    .prologue
    .line 94
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;-><init>()V

    .line 96
    .local v0, anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    iput-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    iput-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    .line 99
    return-object v0
.end method

.method public xdmParParseAnchor(Lcom/wssyncmldm/eng/parser/XDMParser;)I
    .registers 6
    .parameter "p"

    .prologue
    .line 20
    const/4 v1, -0x1

    .line 21
    .local v1, id:I
    const/4 v2, 0x0

    .line 22
    .local v2, res:I
    const-string v3, "xdmParParseAnchor"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 24
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 25
    if-eqz v2, :cond_10

    move v3, v2

    .line 85
    :goto_f
    return v3

    .line 30
    :cond_10
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 31
    const/16 v3, 0x8

    if-ne v2, v3, :cond_1a

    .line 33
    const/4 v3, 0x0

    goto :goto_f

    .line 35
    :cond_1a
    if-eqz v2, :cond_23

    .line 37
    const-string v3, "not WBXML_ERR_OK"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v3, v2

    .line 38
    goto :goto_f

    .line 41
    :cond_23
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseSkipLiteralElement()I

    move-result v2

    .line 42
    if-eqz v2, :cond_2b

    move v3, v2

    .line 44
    goto :goto_f

    .line 51
    :cond_2b
    :try_start_2b
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_38

    move-result v1

    .line 58
    :goto_2f
    const/4 v3, 0x1

    if-ne v1, v3, :cond_41

    .line 60
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    move v3, v2

    .line 85
    goto :goto_f

    .line 53
    :catch_38
    move-exception v0

    .line 55
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_2f

    .line 64
    .end local v0           #e:Ljava/io/IOException;
    :cond_41
    sparse-switch v1, :sswitch_data_5c

    .line 77
    const/4 v2, 0x2

    .line 80
    :goto_45
    if-eqz v2, :cond_2b

    move v3, v2

    .line 82
    goto :goto_f

    .line 67
    :sswitch_49
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 68
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szLast:Ljava/lang/String;

    goto :goto_45

    .line 72
    :sswitch_52
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 73
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->m_szNext:Ljava/lang/String;

    goto :goto_45

    .line 64
    nop

    :sswitch_data_5c
    .sparse-switch
        0xa -> :sswitch_49
        0xf -> :sswitch_52
    .end sparse-switch
.end method
