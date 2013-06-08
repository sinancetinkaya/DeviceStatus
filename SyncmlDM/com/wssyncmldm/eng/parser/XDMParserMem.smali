.class public Lcom/wssyncmldm/eng/parser/XDMParserMem;
.super Ljava/lang/Object;
.source "XDMParserMem.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public free:I

.field public freeid:I

.field public m_szShared:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseMem(Lcom/wssyncmldm/eng/parser/XDMParser;)I
    .registers 7
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 16
    const/4 v1, -0x1

    .line 17
    .local v1, id:I
    const/4 v2, 0x0

    .line 19
    .local v2, res:I
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 20
    if-eqz v2, :cond_d

    move v3, v2

    .line 85
    :cond_c
    :goto_c
    return v3

    .line 25
    :cond_d
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 26
    const/16 v4, 0x8

    if-eq v2, v4, :cond_c

    .line 30
    if-eqz v2, :cond_19

    move v3, v2

    .line 32
    goto :goto_c

    .line 35
    :cond_19
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseSkipLiteralElement()I

    move-result v2

    .line 36
    if-eqz v2, :cond_21

    move v3, v2

    .line 38
    goto :goto_c

    .line 45
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_2d

    move-result v1

    .line 52
    :goto_25
    const/4 v4, 0x1

    if-ne v1, v4, :cond_36

    .line 54
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 55
    goto :goto_c

    .line 47
    :catch_2d
    move-exception v0

    .line 49
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_25

    .line 58
    .end local v0           #e:Ljava/io/IOException;
    :cond_36
    sparse-switch v1, :sswitch_data_62

    .line 76
    const/4 v2, 0x2

    .line 79
    :goto_3a
    if-eqz v2, :cond_21

    move v3, v2

    .line 81
    goto :goto_c

    .line 61
    :sswitch_3e
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 62
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserMem;->m_szShared:Ljava/lang/String;

    goto :goto_3a

    .line 66
    :sswitch_47
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 67
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserMem;->free:I

    goto :goto_3a

    .line 71
    :sswitch_54
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 72
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserMem;->freeid:I

    goto :goto_3a

    .line 58
    nop

    :sswitch_data_62
    .sparse-switch
        0x8 -> :sswitch_54
        0x9 -> :sswitch_47
        0x11 -> :sswitch_3e
    .end sparse-switch
.end method
