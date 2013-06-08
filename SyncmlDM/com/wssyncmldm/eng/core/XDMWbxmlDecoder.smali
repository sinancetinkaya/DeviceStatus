.class public Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;
.super Ljava/lang/Object;
.source "XDMWbxmlDecoder.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public m_szStringT:Ljava/lang/String;

.field protected wbxbuff:[B

.field public wbxindex:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxbuff:[B

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    .line 13
    iput-object v1, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->m_szStringT:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public xdmWbxDecInit([BI)V
    .registers 3
    .parameter "input"
    .parameter "index"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxbuff:[B

    .line 18
    iput p2, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    .line 19
    return-void
.end method

.method public xdmWbxDecParseExtension(I)Ljava/lang/String;
    .registers 10
    .parameter "type"

    .prologue
    .line 99
    const/4 v5, 0x0

    .line 100
    .local v5, szRet:Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0xc3

    if-ne p1, v7, :cond_1b

    .line 106
    :try_start_a
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferMbUINT32()I

    move-result v4

    .line 107
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-lt v2, v4, :cond_1c

    .line 112
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .end local v5           #szRet:Ljava/lang/String;
    .local v6, szRet:Ljava/lang/String;
    move-object v5, v6

    .line 120
    .end local v2           #i:I
    .end local v4           #len:I
    .end local v6           #szRet:Ljava/lang/String;
    .restart local v5       #szRet:Ljava/lang/String;
    :cond_1b
    :goto_1b
    return-object v5

    .line 109
    .restart local v2       #i:I
    .restart local v4       #len:I
    :cond_1c
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferByte()I

    move-result v3

    .line 110
    .local v3, j:I
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_23} :catch_26

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 115
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #len:I
    :catch_26
    move-exception v1

    .line 117
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public xdmWbxDecParseStartdoc(Lcom/wssyncmldm/eng/parser/XDMParser;)V
    .registers 5
    .parameter "parser"

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferByte()I

    move-result v1

    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->version:I

    .line 26
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferMbUINT32()I

    move-result v1

    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->puid:I

    .line 28
    iget v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->puid:I

    if-nez v1, :cond_13

    .line 30
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferMbUINT32()I

    .line 33
    :cond_13
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferMbUINT32()I

    move-result v1

    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->charset:I

    .line 35
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->xdmWbxDecParseStringtable()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szStringtable:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szStringtable:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->m_szStringT:Ljava/lang/String;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_29

    .line 43
    :goto_28
    return-void

    .line 39
    :catch_29
    move-exception v0

    .line 41
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_28
.end method

.method public xdmWbxDecParseStr_i()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 77
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    :goto_5
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferByte()I

    move-result v1

    .line 79
    .local v1, i:I
    if-nez v1, :cond_18

    .line 92
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 93
    .local v2, szRet:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 94
    return-object v2

    .line 84
    .end local v2           #szRet:Ljava/lang/String;
    :cond_18
    const/4 v3, -0x1

    if-ne v1, v3, :cond_23

    .line 86
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected EOF wbxdec_parse_str_i"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_23
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5
.end method

.method public xdmWbxDecParseStr_t()Ljava/lang/String;
    .registers 8

    .prologue
    .line 47
    const/4 v4, 0x0

    .line 49
    .local v4, len:I
    const/4 v2, 0x0

    .line 50
    .local v2, i:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 53
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    :try_start_7
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferMbUINT32()I

    move-result v4

    .line 54
    move v2, v4

    .line 55
    :goto_c
    iget-object v6, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->m_szStringT:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_2a

    move-result v6

    if-nez v6, :cond_1e

    .line 67
    :goto_14
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 68
    .local v5, szRet:Ljava/lang/String;
    return-object v5

    .line 57
    .end local v5           #szRet:Ljava/lang/String;
    :cond_1e
    :try_start_1e
    iget-object v6, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->m_szStringT:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 58
    .local v3, j:I
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_2a

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 62
    .end local v3           #j:I
    :catch_2a
    move-exception v1

    .line 64
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public xdmWbxDecParseStringtable()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v5, 0x0

    .line 126
    .local v5, szRet:Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 131
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    :try_start_6
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferMbUINT32()I

    move-result v4

    .line 133
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-lt v2, v4, :cond_18

    .line 139
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .end local v5           #szRet:Ljava/lang/String;
    .local v6, szRet:Ljava/lang/String;
    move-object v5, v6

    .line 147
    .end local v2           #i:I
    .end local v4           #len:I
    .end local v6           #szRet:Ljava/lang/String;
    .restart local v5       #szRet:Ljava/lang/String;
    :goto_17
    return-object v5

    .line 135
    .restart local v2       #i:I
    .restart local v4       #len:I
    :cond_18
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferByte()I

    move-result v3

    .line 136
    .local v3, j:I
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1f} :catch_22

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 142
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #len:I
    :catch_22
    move-exception v1

    .line 144
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public xdmWbxDecReadBufferByte()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxbuff:[B

    iget v2, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->wbxindex:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 178
    .local v0, data:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 179
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF wbxdec_buffer_read_byte"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_17
    return v0
.end method

.method public xdmWbxDecReadBufferMbUINT32()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, result:I
    const/4 v4, 0x0

    .line 156
    .local v4, uint:I
    const/4 v0, 0x0

    .local v0, byte_pos:I
    :goto_3
    const/4 v5, 0x5

    if-lt v0, v5, :cond_8

    move v3, v2

    .line 172
    .end local v2           #result:I
    .local v3, result:I
    :goto_7
    return v3

    .line 158
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_8
    invoke-virtual {p0}, Lcom/wssyncmldm/eng/core/XDMWbxmlDecoder;->xdmWbxDecReadBufferByte()I

    move-result v1

    .local v1, cur_byte:I
    if-gez v1, :cond_10

    move v3, v2

    .line 160
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_7

    .line 163
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_10
    shl-int/lit8 v5, v4, 0x7

    and-int/lit8 v6, v1, 0x7f

    or-int v4, v5, v6

    .line 165
    and-int/lit16 v5, v1, 0x80

    if-nez v5, :cond_1d

    .line 167
    move v2, v4

    move v3, v2

    .line 168
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_7

    .line 156
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
