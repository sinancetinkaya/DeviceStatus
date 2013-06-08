.class public Lcom/wssyncmldm/eng/parser/XDMParserMapItem;
.super Ljava/lang/Object;
.source "XDMParserMapItem.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public m_szSource:Ljava/lang/String;

.field public m_szTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseMapitem(Lcom/wssyncmldm/eng/parser/XDMParser;Lcom/wssyncmldm/eng/parser/XDMParserMapItem;)I
    .registers 7
    .parameter "p"
    .parameter "mapitem"

    .prologue
    .line 21
    const/4 v1, -0x1

    .line 22
    .local v1, id:I
    const/4 v2, 0x0

    .line 24
    .local v2, res:I
    const/16 v3, 0x19

    invoke-virtual {p1, v3}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 25
    if-eqz v2, :cond_c

    move v3, v2

    .line 80
    :goto_b
    return v3

    .line 30
    :cond_c
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v2

    .line 31
    const/16 v3, 0x8

    if-ne v2, v3, :cond_16

    .line 33
    const/4 v3, 0x0

    goto :goto_b

    .line 35
    :cond_16
    if-eqz v2, :cond_1a

    move v3, v2

    .line 37
    goto :goto_b

    .line 44
    :cond_1a
    :try_start_1a
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_27

    move-result v1

    .line 51
    :goto_1e
    const/4 v3, 0x1

    if-ne v1, v3, :cond_30

    .line 53
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    move v3, v2

    .line 80
    goto :goto_b

    .line 46
    :catch_27
    move-exception v0

    .line 48
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1e

    .line 57
    .end local v0           #e:Ljava/io/IOException;
    :cond_30
    sparse-switch v1, :sswitch_data_4a

    .line 71
    const/4 v2, 0x2

    .line 74
    :goto_34
    if-eqz v2, :cond_1a

    move v3, v2

    .line 76
    goto :goto_b

    .line 60
    :sswitch_38
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseTarget()I

    move-result v2

    .line 61
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMapItem;->m_szTarget:Ljava/lang/String;

    goto :goto_34

    .line 65
    :sswitch_41
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseSource()I

    move-result v2

    .line 66
    iget-object v3, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    iput-object v3, p0, Lcom/wssyncmldm/eng/parser/XDMParserMapItem;->m_szSource:Ljava/lang/String;

    goto :goto_34

    .line 57
    :sswitch_data_4a
    .sparse-switch
        0x27 -> :sswitch_41
        0x2e -> :sswitch_38
    .end sparse-switch
.end method
