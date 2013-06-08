.class public Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;
.super Ljava/lang/Object;
.source "XDMWbxmlEncoder.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# static fields
.field private static out:Ljava/io/ByteArrayOutputStream;


# instance fields
.field buf:Ljava/io/ByteArrayOutputStream;

.field stringTableBuf:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->buf:Ljava/io/ByteArrayOutputStream;

    .line 13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    .line 8
    return-void
.end method

.method public static xdmWbxEncGetBufferSize()I
    .registers 2

    .prologue
    .line 117
    sget-object v1, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 118
    .local v0, r:I
    return v0
.end method


# virtual methods
.method public xdmWbxEncAddContent(Ljava/lang/String;)Z
    .registers 4
    .parameter "szData"

    .prologue
    const/4 v0, 0x0

    .line 78
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendByte(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 87
    :cond_8
    :goto_8
    return v0

    .line 83
    :cond_9
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendToBuffer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 86
    sget-object v1, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 87
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public xdmWbxEncAddOpaque([CI)Z
    .registers 6
    .parameter "buf"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 92
    const/16 v2, 0xc3

    invoke-virtual {p0, v2}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendByte(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 107
    :cond_9
    :goto_9
    return v1

    .line 97
    :cond_a
    invoke-virtual {p0, p2}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendMbUINT32(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-lt v0, p2, :cond_15

    .line 107
    const/4 v1, 0x1

    goto :goto_9

    .line 104
    :cond_15
    sget-object v1, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public xdmWbxEncAddSwitchpage(I)Z
    .registers 4
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendByte(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 73
    :cond_7
    :goto_7
    return v0

    .line 68
    :cond_8
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendByte(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 73
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public xdmWbxEncAppendByte(I)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 136
    sget-object v0, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public xdmWbxEncAppendMbUINT32(I)Z
    .registers 8
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 142
    const/4 v3, 0x5

    new-array v0, v3, [B

    .line 143
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 147
    .local v1, idx:I
    :goto_5
    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .local v2, idx:I
    and-int/lit8 v3, p1, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 148
    shr-int/lit8 p1, p1, 0x7

    .line 149
    if-nez p1, :cond_28

    move v1, v2

    .line 151
    .end local v2           #idx:I
    .restart local v1       #idx:I
    :goto_11
    if-gt v1, v5, :cond_1c

    .line 156
    sget-object v3, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 157
    return v5

    .line 153
    :cond_1c
    sget-object v3, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v1, v1, -0x1

    aget-byte v4, v0, v1

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_11

    .end local v1           #idx:I
    .restart local v2       #idx:I
    :cond_28
    move v1, v2

    .end local v2           #idx:I
    .restart local v1       #idx:I
    goto :goto_5
.end method

.method public xdmWbxEncAppendToBuffer(Ljava/lang/String;)Z
    .registers 5
    .parameter "szData"

    .prologue
    .line 125
    :try_start_0
    sget-object v1, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_b

    .line 131
    :goto_9
    const/4 v1, 0x1

    return v1

    .line 127
    :catch_b
    move-exception v0

    .line 129
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public xdmWbxEncEndDocument()Z
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public xdmWbxEncEndElement()Z
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendByte(I)Z

    move-result v0

    return v0
.end method

.method xdmWbxEncGetBuffer()Ljava/io/ByteArrayOutputStream;
    .registers 2

    .prologue
    .line 112
    sget-object v0, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public xdmWbxEncInit(Ljava/io/ByteArrayOutputStream;)V
    .registers 2
    .parameter "pout"

    .prologue
    .line 18
    sput-object p1, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->out:Ljava/io/ByteArrayOutputStream;

    .line 19
    return-void
.end method

.method public xdmWbxEncStartDocument(IILjava/lang/String;I)Z
    .registers 7
    .parameter "pid"
    .parameter "charset"
    .parameter "szTable"
    .parameter "stsize"

    .prologue
    const/4 v0, 0x0

    .line 23
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendByte(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 39
    :cond_8
    :goto_8
    return v0

    .line 25
    :cond_9
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendMbUINT32(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    if-nez p1, :cond_17

    .line 29
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendMbUINT32(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 32
    :cond_17
    invoke-virtual {p0, p2}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendMbUINT32(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 34
    invoke-virtual {p0, p4}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendMbUINT32(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 36
    invoke-virtual {p0, p3}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendToBuffer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 39
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public xdmWbxEncStartElement(IZ)Z
    .registers 5
    .parameter "index"
    .parameter "content"

    .prologue
    .line 49
    move v0, p1

    .line 51
    .local v0, token:I
    if-eqz p2, :cond_5

    .line 52
    or-int/lit8 v0, v0, 0x40

    .line 54
    :cond_5
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/eng/core/XDMWbxmlEncoder;->xdmWbxEncAppendByte(I)Z

    move-result v1

    return v1
.end method
