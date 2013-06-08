.class public Lcom/wssyncmldm/eng/parser/XDMParserMeta;
.super Ljava/lang/Object;
.source "XDMParserMeta.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

.field public m_szEmi:Ljava/lang/String;

.field public m_szFormat:Ljava/lang/String;

.field public m_szMark:Ljava/lang/String;

.field public m_szNextNonce:Ljava/lang/String;

.field public m_szType:Ljava/lang/String;

.field public m_szVersion:Ljava/lang/String;

.field public maxmsgsize:I

.field public maxobjsize:I

.field public mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseMeta(Lcom/wssyncmldm/eng/parser/XDMParser;)I
    .registers 8
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 29
    const/4 v1, -0x1

    .line 30
    .local v1, id:I
    const/4 v2, 0x0

    .line 32
    .local v2, res:I
    const/16 v4, 0x1a

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 33
    if-eqz v2, :cond_e

    move v3, v2

    .line 160
    :cond_d
    :goto_d
    return v3

    .line 38
    :cond_e
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 39
    const/16 v4, 0x8

    if-eq v2, v4, :cond_d

    .line 43
    if-eqz v2, :cond_1a

    move v3, v2

    .line 45
    goto :goto_d

    .line 50
    :cond_1a
    :try_start_1a
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_26

    move-result v1

    .line 57
    :goto_1e
    if-ne v1, v5, :cond_2f

    .line 59
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    move v3, v2

    .line 60
    goto :goto_d

    .line 52
    :catch_26
    move-exception v0

    .line 54
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1e

    .line 64
    .end local v0           #e:Ljava/io/IOException;
    :cond_2f
    invoke-virtual {p1, v3}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 65
    if-eqz v2, :cond_37

    move v3, v2

    .line 67
    goto :goto_d

    .line 70
    :cond_37
    invoke-virtual {p1, v5}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 71
    if-eqz v2, :cond_3f

    move v3, v2

    .line 73
    goto :goto_d

    .line 76
    :cond_3f
    iput v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    .line 82
    :cond_41
    :try_start_41
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_4f

    move-result v1

    .line 89
    :goto_45
    if-ne v1, v5, :cond_58

    .line 91
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 159
    iput-object p0, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    move v3, v2

    .line 160
    goto :goto_d

    .line 84
    :catch_4f
    move-exception v0

    .line 86
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_45

    .line 96
    .end local v0           #e:Ljava/io/IOException;
    :cond_58
    packed-switch v1, :pswitch_data_e8

    .line 150
    :pswitch_5b
    const/4 v2, 0x2

    .line 153
    :goto_5c
    if-eqz v2, :cond_41

    move v3, v2

    .line 155
    goto :goto_d

    .line 99
    :pswitch_60
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 100
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 102
    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto :goto_5c

    .line 106
    :pswitch_6b
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 107
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szType:Ljava/lang/String;

    goto :goto_5c

    .line 110
    :pswitch_74
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 111
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szFormat:Ljava/lang/String;

    goto :goto_5c

    .line 114
    :pswitch_7d
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 115
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szMark:Ljava/lang/String;

    goto :goto_5c

    .line 118
    :pswitch_86
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 119
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->size:I

    goto :goto_5c

    .line 122
    :pswitch_97
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 123
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szNextNonce:Ljava/lang/String;

    goto :goto_5c

    .line 126
    :pswitch_a0
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 127
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szVersion:Ljava/lang/String;

    goto :goto_5c

    .line 130
    :pswitch_a9
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 131
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxmsgsize:I

    goto :goto_5c

    .line 134
    :pswitch_b6
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 135
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->maxobjsize:I

    goto :goto_5c

    .line 138
    :pswitch_c3
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 139
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->m_szEmi:Ljava/lang/String;

    goto :goto_5c

    .line 142
    :pswitch_cc
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserMem;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserMem;-><init>()V

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;

    .line 143
    iget-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;

    invoke-virtual {v3, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMem;->xdmParParseMem(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    goto :goto_5c

    .line 146
    :pswitch_d9
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;-><init>()V

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    .line 147
    iget-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    invoke-virtual {v3, p1}, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->xdmParParseAnchor(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    goto/16 :goto_5c

    .line 96
    nop

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_d9
        :pswitch_c3
        :pswitch_74
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_7d
        :pswitch_a9
        :pswitch_cc
        :pswitch_5b
        :pswitch_5b
        :pswitch_97
        :pswitch_5b
        :pswitch_86
        :pswitch_6b
        :pswitch_a0
        :pswitch_b6
    .end packed-switch
.end method
