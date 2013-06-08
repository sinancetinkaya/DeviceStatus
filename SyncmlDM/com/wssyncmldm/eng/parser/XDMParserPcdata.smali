.class public Lcom/wssyncmldm/eng/parser/XDMParserPcdata;
.super Ljava/lang/Object;
.source "XDMParserPcdata.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# instance fields
.field public anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

.field public data:[C

.field public size:I

.field public skipstatus:Z

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->skipstatus:Z

    .line 10
    return-void
.end method


# virtual methods
.method public xdmParGetPcdata()Lcom/wssyncmldm/eng/parser/XDMParserPcdata;
    .registers 3

    .prologue
    .line 165
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;-><init>()V

    .line 167
    .local v0, data:Lcom/wssyncmldm/eng/parser/XDMParserPcdata;
    iget v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    .line 168
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    iput-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    .line 169
    iget v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    iput v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    .line 170
    iget-object v1, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    iput-object v1, v0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    .line 172
    return-object v0
.end method

.method public xdmParGetPcdataAnchor()Lcom/wssyncmldm/eng/parser/XDMParserAnchor;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    return-object v0
.end method

.method public xdmParGetPcdataData()[C
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    return-object v0
.end method

.method public xdmParGetPcdataSize()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    return v0
.end method

.method public xdmParGetPcdataType()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    return v0
.end method

.method public xdmParParsePcdata(Lcom/wssyncmldm/eng/parser/XDMParser;I)I
    .registers 12
    .parameter "p"
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    .local v3, res:I
    const/4 v2, 0x0

    .line 30
    .local v2, n:I
    const-string v7, "xdmParParsePcdata"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, p2}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v3

    .line 33
    if-eqz v3, :cond_11

    move v6, v3

    .line 136
    :cond_10
    :goto_10
    return v6

    .line 38
    :cond_11
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v3

    .line 39
    const/16 v7, 0x8

    if-eq v3, v7, :cond_10

    .line 43
    if-eqz v3, :cond_22

    .line 45
    const-string v6, "not WBXML_ERR_OK"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v6, v3

    .line 46
    goto :goto_10

    .line 51
    :cond_22
    :try_start_22
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecReadBufferByte()I

    move-result v2

    .line 52
    const/4 v7, 0x3

    if-ne v2, v7, :cond_39

    .line 54
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecParseStr_i()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, szTmp:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->xdmString2pcdata(Ljava/lang/String;)V

    .line 124
    .end local v4           #szTmp:Ljava/lang/String;
    :goto_30
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v3

    .line 125
    if-eqz v3, :cond_10

    move v6, v3

    .line 127
    goto :goto_10

    .line 57
    :cond_39
    const/16 v7, 0x83

    if-ne v2, v7, :cond_4e

    .line 59
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecParseStr_t()Ljava/lang/String;

    move-result-object v4

    .line 60
    .restart local v4       #szTmp:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->xdmString2pcdata(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_44} :catch_45

    goto :goto_30

    .line 131
    .end local v4           #szTmp:Ljava/lang/String;
    :catch_45
    move-exception v0

    .line 133
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_10

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :cond_4e
    const/16 v7, 0xc3

    if-ne v2, v7, :cond_63

    .line 64
    :try_start_52
    invoke-virtual {p1, v2}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmWbxDecParseExtension(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    .restart local v4       #szTmp:Ljava/lang/String;
    const/4 v7, 0x1

    iput v7, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    .line 66
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    .line 67
    invoke-virtual {p0, v4}, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->xdmString2pcdata(Ljava/lang/String;)V

    goto :goto_30

    .line 69
    .end local v4           #szTmp:Ljava/lang/String;
    :cond_63
    if-nez v2, :cond_b0

    .line 71
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v5

    .line 72
    .local v5, tmpId:I
    if-eqz v3, :cond_6d

    move v6, v3

    .line 74
    goto :goto_10

    .line 76
    :cond_6d
    iput v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    .line 77
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v5

    .line 80
    :cond_73
    iget v7, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    if-ne v7, v8, :cond_8b

    const/4 v7, 0x5

    if-ne v5, v7, :cond_8b

    .line 82
    new-instance v7, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    invoke-direct {v7}, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;-><init>()V

    iput-object v7, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    .line 83
    iget-object v7, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->anchor:Lcom/wssyncmldm/eng/parser/XDMParserAnchor;

    invoke-virtual {v7, p1}, Lcom/wssyncmldm/eng/parser/XDMParserAnchor;->xdmParParseAnchor(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v3

    .line 85
    if-eqz v3, :cond_a9

    move v6, v3

    .line 87
    goto :goto_10

    .line 90
    :cond_8b
    iget v7, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    if-ne v7, v8, :cond_a1

    const/16 v7, 0xd

    if-ne v5, v7, :cond_a1

    .line 92
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserMem;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserMem;-><init>()V

    .line 93
    .local v1, mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;
    invoke-virtual {v1, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMem;->xdmParParseMem(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v3

    .line 95
    if-eqz v3, :cond_a9

    move v6, v3

    .line 97
    goto/16 :goto_10

    .line 100
    .end local v1           #mem:Lcom/wssyncmldm/eng/parser/XDMParserMem;
    :cond_a1
    if-nez v5, :cond_a9

    .line 102
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    .line 103
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    .line 106
    :cond_a9
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I

    move-result v5

    .line 107
    if-ne v5, v8, :cond_73

    goto :goto_30

    .line 111
    .end local v5           #tmpId:I
    :cond_b0
    iget v7, p1, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p1, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    .line 112
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseSkipElement()I

    move-result v3

    .line 114
    if-eqz v3, :cond_bf

    move v6, v3

    .line 116
    goto/16 :goto_10

    .line 119
    :cond_bf
    const/4 v7, 0x2

    iput v7, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    .line 120
    const/4 v7, 0x0

    iput v7, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    .line 121
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_c8} :catch_45

    goto/16 :goto_30
.end method

.method public xdmString2pcdata(Ljava/lang/String;)V
    .registers 6
    .parameter "szData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    check-cast v0, [C

    .line 147
    .local v0, buff:[C
    const/4 v2, 0x0

    iput v2, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->type:I

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->size:I

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 151
    array-length v2, v0

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    .line 153
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    array-length v2, v0

    if-lt v1, v2, :cond_1a

    .line 157
    return-void

    .line 155
    :cond_1a
    iget-object v2, p0, Lcom/wssyncmldm/eng/parser/XDMParserPcdata;->data:[C

    aget-char v3, v0, v1

    aput-char v3, v2, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method
