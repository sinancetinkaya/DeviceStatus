.class public Lcom/wssyncmldm/eng/parser/XDMParserSync;
.super Ljava/lang/Object;
.source "XDMParserSync.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public cmdid:I

.field public cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

.field public is_noresp:Z

.field public is_noresults:Z

.field public m_szSource:Ljava/lang/String;

.field public m_szTarget:Ljava/lang/String;

.field public meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

.field public numofchanges:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseSync(Lcom/wssyncmldm/eng/parser/XDMParser;)I
    .registers 15
    .parameter "p"

    .prologue
    .line 26
    const/4 v6, -0x1

    .line 27
    .local v6, id:I
    const/4 v10, 0x0

    .line 28
    .local v10, res:I
    const/4 v2, 0x1

    .line 30
    .local v2, call_start_sync:Z
    const-string v12, "xdmParParseSync"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 32
    const/16 v12, 0x2a

    invoke-virtual {p1, v12}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v10

    .line 33
    if-eqz v10, :cond_12

    move v12, v10

    .line 193
    :goto_11
    return v12

    .line 38
    :cond_12
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v10

    .line 39
    const/16 v12, 0x8

    if-ne v10, v12, :cond_1c

    .line 41
    const/4 v12, 0x0

    goto :goto_11

    .line 43
    :cond_1c
    if-eqz v10, :cond_25

    .line 45
    const-string v12, "not WBXML_ERR_OK"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v12, v10

    .line 46
    goto :goto_11

    .line 53
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_35

    move-result v6

    .line 60
    :goto_29
    const/4 v12, 0x1

    if-ne v6, v12, :cond_3e

    .line 62
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v6

    .line 188
    if-eqz v2, :cond_33

    .line 190
    const/4 v2, 0x0

    .line 193
    :cond_33
    const/4 v12, 0x0

    goto :goto_11

    .line 55
    :catch_35
    move-exception v5

    .line 57
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_29

    .line 66
    .end local v5           #e:Ljava/io/IOException;
    :cond_3e
    sparse-switch v6, :sswitch_data_118

    .line 179
    const/4 v10, 0x2

    .line 182
    :goto_42
    if-eqz v10, :cond_25

    move v12, v10

    .line 184
    goto :goto_11

    .line 69
    :sswitch_46
    invoke-virtual {p1, v6}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v10

    .line 70
    iget-object v12, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/wssyncmldm/eng/parser/XDMParserSync;->cmdid:I

    goto :goto_42

    .line 74
    :sswitch_53
    invoke-virtual {p1, v6}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v7

    .line 75
    .local v7, noresp:I
    const/4 v12, 0x1

    if-ne v7, v12, :cond_5e

    .line 76
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/wssyncmldm/eng/parser/XDMParserSync;->is_noresp:Z

    goto :goto_42

    .line 78
    :cond_5e
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/wssyncmldm/eng/parser/XDMParserSync;->is_noresp:Z

    goto :goto_42

    .line 82
    .end local v7           #noresp:I
    :sswitch_62
    invoke-virtual {p1, v6}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v8

    .line 83
    .local v8, noresults:I
    const/4 v12, 0x1

    if-ne v8, v12, :cond_6d

    .line 84
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/wssyncmldm/eng/parser/XDMParserSync;->is_noresults:Z

    goto :goto_42

    .line 86
    :cond_6d
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/wssyncmldm/eng/parser/XDMParserSync;->is_noresults:Z

    goto :goto_42

    .line 90
    .end local v8           #noresults:I
    :sswitch_71
    new-instance v12, Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-direct {v12}, Lcom/wssyncmldm/eng/parser/XDMParserCred;-><init>()V

    iput-object v12, p0, Lcom/wssyncmldm/eng/parser/XDMParserSync;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    .line 91
    iget-object v12, p0, Lcom/wssyncmldm/eng/parser/XDMParserSync;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    invoke-virtual {v12, p1}, Lcom/wssyncmldm/eng/parser/XDMParserCred;->xdmParParseCred(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v10

    .line 92
    iget-object v12, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    iput-object v12, p0, Lcom/wssyncmldm/eng/parser/XDMParserSync;->cred:Lcom/wssyncmldm/eng/parser/XDMParserCred;

    goto :goto_42

    .line 96
    :sswitch_83
    invoke-virtual {p1, v6}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v10

    .line 97
    iget-object v12, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szTarget:Ljava/lang/String;

    iput-object v12, p0, Lcom/wssyncmldm/eng/parser/XDMParserSync;->m_szTarget:Ljava/lang/String;

    goto :goto_42

    .line 101
    :sswitch_8c
    invoke-virtual {p1, v6}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v10

    .line 102
    iget-object v12, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szSource:Ljava/lang/String;

    iput-object v12, p0, Lcom/wssyncmldm/eng/parser/XDMParserSync;->m_szSource:Ljava/lang/String;

    goto :goto_42

    .line 106
    :sswitch_95
    new-instance v12, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v12}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v12, p0, Lcom/wssyncmldm/eng/parser/XDMParserSync;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 107
    iget-object v12, p0, Lcom/wssyncmldm/eng/parser/XDMParserSync;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {v12, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v10

    .line 108
    iget-object v12, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v12, p0, Lcom/wssyncmldm/eng/parser/XDMParserSync;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    goto :goto_42

    .line 112
    :sswitch_a7
    invoke-virtual {p1, v6}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v10

    .line 113
    iget-object v12, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/wssyncmldm/eng/parser/XDMParserSync;->numofchanges:I

    goto :goto_42

    .line 117
    :sswitch_b4
    if-eqz v2, :cond_b7

    .line 119
    const/4 v2, 0x0

    .line 121
    :cond_b7
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserCopy;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserCopy;-><init>()V

    .line 122
    .local v3, copy:Lcom/wssyncmldm/eng/parser/XDMParserCopy;
    invoke-virtual {v3, p1}, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->xdmParParseCopy(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v10

    .line 123
    goto :goto_42

    .line 126
    .end local v3           #copy:Lcom/wssyncmldm/eng/parser/XDMParserCopy;
    :sswitch_c1
    if-eqz v2, :cond_c4

    .line 128
    const/4 v2, 0x0

    .line 130
    :cond_c4
    new-instance v11, Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    invoke-direct {v11}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;-><init>()V

    .line 131
    .local v11, sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;
    invoke-virtual {v11, p1}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmParParseSequence(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v10

    .line 132
    goto/16 :goto_42

    .line 135
    .end local v11           #sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;
    :sswitch_cf
    if-eqz v2, :cond_d2

    .line 137
    const/4 v2, 0x0

    .line 139
    :cond_d2
    new-instance v1, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;-><init>()V

    .line 140
    .local v1, atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;
    invoke-virtual {v1, p1}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmParParseAtomic(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v10

    .line 141
    goto/16 :goto_42

    .line 144
    .end local v1           #atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;
    :sswitch_dd
    const-string v12, "xdmParParseSync : WBXML_TAG_ADD"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 145
    if-eqz v2, :cond_e5

    .line 147
    const/4 v2, 0x0

    .line 149
    :cond_e5
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserAdd;-><init>()V

    .line 150
    .local v0, add:Lcom/wssyncmldm/eng/parser/XDMParserAdd;
    invoke-virtual {v0, p1}, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->xdmParParseAdd(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v10

    .line 151
    goto/16 :goto_42

    .line 154
    .end local v0           #add:Lcom/wssyncmldm/eng/parser/XDMParserAdd;
    :sswitch_f0
    if-eqz v2, :cond_f3

    .line 156
    const/4 v2, 0x0

    .line 158
    :cond_f3
    new-instance v9, Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    invoke-direct {v9}, Lcom/wssyncmldm/eng/parser/XDMParserReplace;-><init>()V

    .line 159
    .local v9, replace:Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    invoke-virtual {v9, p1}, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->xdmParParseReplace(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v10

    .line 160
    goto/16 :goto_42

    .line 163
    .end local v9           #replace:Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    :sswitch_fe
    if-eqz v2, :cond_101

    .line 165
    const/4 v2, 0x0

    .line 167
    :cond_101
    new-instance v4, Lcom/wssyncmldm/eng/parser/XDMParserDelete;

    invoke-direct {v4}, Lcom/wssyncmldm/eng/parser/XDMParserDelete;-><init>()V

    .line 168
    .local v4, delete:Lcom/wssyncmldm/eng/parser/XDMParserDelete;
    invoke-virtual {v4, p1}, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->xdmParParseDelete(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v10

    .line 169
    goto/16 :goto_42

    .line 172
    .end local v4           #delete:Lcom/wssyncmldm/eng/parser/XDMParserDelete;
    :sswitch_10c
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v6

    .line 173
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v6

    .line 175
    iput v6, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto/16 :goto_42

    .line 66
    :sswitch_data_118
    .sparse-switch
        0x0 -> :sswitch_10c
        0x5 -> :sswitch_dd
        0x8 -> :sswitch_cf
        0xb -> :sswitch_46
        0xd -> :sswitch_b4
        0xe -> :sswitch_71
        0x10 -> :sswitch_fe
        0x1a -> :sswitch_95
        0x1d -> :sswitch_53
        0x1e -> :sswitch_62
        0x20 -> :sswitch_f0
        0x24 -> :sswitch_c1
        0x27 -> :sswitch_8c
        0x2e -> :sswitch_83
        0x33 -> :sswitch_a7
    .end sparse-switch
.end method
