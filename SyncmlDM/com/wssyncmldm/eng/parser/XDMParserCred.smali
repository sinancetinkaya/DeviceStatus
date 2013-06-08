.class public Lcom/wssyncmldm/eng/parser/XDMParserCred;
.super Ljava/lang/Object;
.source "XDMParserCred.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public m_szData:Ljava/lang/String;

.field public meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseCred(Lcom/wssyncmldm/eng/parser/XDMParser;)I
    .registers 7
    .parameter "p"

    .prologue
    .line 20
    const/4 v1, -0x1

    .line 21
    .local v1, id:I
    const/4 v2, 0x0

    .line 23
    .local v2, res:I
    const/16 v4, 0xe

    invoke-virtual {p1, v4}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v2

    .line 24
    if-eqz v2, :cond_c

    move v3, v2

    .line 78
    .end local v2           #res:I
    .local v3, res:I
    :goto_b
    return v3

    .line 33
    .end local v3           #res:I
    .restart local v2       #res:I
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_1b

    move-result v1

    .line 40
    :goto_10
    const/4 v4, 0x1

    if-ne v1, v4, :cond_24

    .line 42
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 77
    iput-object p0, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    move v3, v2

    .line 78
    .end local v2           #res:I
    .restart local v3       #res:I
    goto :goto_b

    .line 35
    .end local v3           #res:I
    .restart local v2       #res:I
    :catch_1b
    move-exception v0

    .line 37
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_10

    .line 46
    .end local v0           #e:Ljava/io/IOException;
    :cond_24
    sparse-switch v1, :sswitch_data_52

    .line 68
    const/4 v2, 0x2

    .line 71
    :goto_28
    if-eqz v2, :cond_c

    move v3, v2

    .line 73
    .end local v2           #res:I
    .restart local v3       #res:I
    goto :goto_b

    .line 49
    .end local v3           #res:I
    .restart local v2       #res:I
    :sswitch_2c
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 50
    iget-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v2

    .line 51
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserCred;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    goto :goto_28

    .line 55
    :sswitch_3e
    invoke-virtual {p1, v1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v2

    .line 56
    iget-object v4, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/eng/parser/XDMParserCred;->m_szData:Ljava/lang/String;

    goto :goto_28

    .line 60
    :sswitch_47
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 61
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v1

    .line 63
    iput v1, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto :goto_28

    .line 46
    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_47
        0xf -> :sswitch_3e
        0x1a -> :sswitch_2c
    .end sparse-switch
.end method
