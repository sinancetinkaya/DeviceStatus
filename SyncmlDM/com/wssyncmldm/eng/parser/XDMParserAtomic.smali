.class public Lcom/wssyncmldm/eng/parser/XDMParserAtomic;
.super Lcom/wssyncmldm/agent/XDMHandleCmd;
.source "XDMParserAtomic.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public cmdid:I

.field public is_noresp:I

.field public itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

.field public meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/wssyncmldm/agent/XDMHandleCmd;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseAtomic(Lcom/wssyncmldm/eng/parser/XDMParser;)I
    .registers 16
    .parameter "p"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 24
    const/4 v6, -0x1

    .line 25
    .local v6, id:I
    const/4 v9, 0x0

    .line 26
    .local v9, res:I
    const/4 v1, 0x1

    .line 28
    .local v1, call_start_atomic:Z
    invoke-virtual {p1, v13}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v9

    .line 29
    if-eqz v9, :cond_e

    move v12, v9

    .line 195
    :cond_d
    :goto_d
    return v12

    .line 34
    :cond_e
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v9

    .line 35
    if-eq v9, v13, :cond_d

    .line 39
    if-eqz v9, :cond_1d

    .line 41
    const-string v12, "not WBXML_ERR_OK"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v12, v9

    .line 42
    goto :goto_d

    .line 49
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_35

    move-result v6

    .line 56
    :goto_21
    const/4 v13, 0x1

    if-ne v6, v13, :cond_3e

    .line 58
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    .line 188
    if-eqz v1, :cond_2f

    .line 190
    iget-object v13, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v13, p0}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)V

    .line 191
    const/4 v1, 0x0

    .line 194
    :cond_2f
    iget-object v13, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v13}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicEnd(Ljava/lang/Object;)V

    goto :goto_d

    .line 51
    :catch_35
    move-exception v4

    .line 53
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_21

    .line 62
    .end local v4           #e:Ljava/io/IOException;
    :cond_3e
    sparse-switch v6, :sswitch_data_11a

    .line 178
    const/4 v9, 0x2

    .line 182
    :goto_42
    if-eqz v9, :cond_1d

    move v12, v9

    .line 184
    goto :goto_d

    .line 66
    :sswitch_46
    invoke-virtual {p1, v6}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v9

    .line 67
    iget-object v13, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, p0, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->cmdid:I

    goto :goto_42

    .line 71
    :sswitch_53
    invoke-virtual {p1, v6}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v13

    iput v13, p0, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->is_noresp:I

    goto :goto_42

    .line 75
    :sswitch_5a
    new-instance v13, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v13}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v13, p0, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 76
    iget-object v13, p0, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {v13, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v9

    .line 77
    iget-object v13, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v13, p0, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    goto :goto_42

    .line 81
    :sswitch_6c
    if-eqz v1, :cond_74

    .line 83
    iget-object v13, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v13, p0}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)V

    .line 84
    const/4 v1, 0x0

    .line 87
    :cond_74
    new-instance v0, Lcom/wssyncmldm/eng/parser/XDMParserAdd;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/parser/XDMParserAdd;-><init>()V

    .line 88
    .local v0, add:Lcom/wssyncmldm/eng/parser/XDMParserAdd;
    invoke-virtual {v0, p1}, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->xdmParParseAdd(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v9

    .line 89
    goto :goto_42

    .line 91
    .end local v0           #add:Lcom/wssyncmldm/eng/parser/XDMParserAdd;
    :sswitch_7e
    if-eqz v1, :cond_86

    .line 93
    iget-object v13, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v13, p0}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)V

    .line 94
    const/4 v1, 0x0

    .line 97
    :cond_86
    new-instance v3, Lcom/wssyncmldm/eng/parser/XDMParserDelete;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/parser/XDMParserDelete;-><init>()V

    .line 98
    .local v3, delete:Lcom/wssyncmldm/eng/parser/XDMParserDelete;
    invoke-virtual {v3, p1}, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->xdmParParseDelete(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v9

    .line 99
    goto :goto_42

    .line 101
    .end local v3           #delete:Lcom/wssyncmldm/eng/parser/XDMParserDelete;
    :sswitch_90
    if-eqz v1, :cond_98

    .line 103
    iget-object v13, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v13, p0}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)V

    .line 104
    const/4 v1, 0x0

    .line 106
    :cond_98
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserExec;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserExec;-><init>()V

    .line 107
    .local v5, exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;
    invoke-virtual {v5, p1}, Lcom/wssyncmldm/eng/parser/XDMParserExec;->xdmParParseExec(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v9

    .line 108
    goto :goto_42

    .line 110
    .end local v5           #exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;
    :sswitch_a2
    if-eqz v1, :cond_aa

    .line 112
    iget-object v13, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v13, p0}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)V

    .line 113
    const/4 v1, 0x0

    .line 115
    :cond_aa
    new-instance v2, Lcom/wssyncmldm/eng/parser/XDMParserCopy;

    invoke-direct {v2}, Lcom/wssyncmldm/eng/parser/XDMParserCopy;-><init>()V

    .line 116
    .local v2, copy:Lcom/wssyncmldm/eng/parser/XDMParserCopy;
    invoke-virtual {v2, p1}, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->xdmParParseCopy(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v9

    .line 117
    goto :goto_42

    .line 119
    .end local v2           #copy:Lcom/wssyncmldm/eng/parser/XDMParserCopy;
    :sswitch_b4
    if-eqz v1, :cond_bc

    .line 121
    iget-object v13, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v13, p0}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)V

    .line 122
    const/4 v1, 0x0

    .line 125
    :cond_bc
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmParParseAtomic(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v9

    .line 126
    goto :goto_42

    .line 128
    :sswitch_c1
    if-eqz v1, :cond_c9

    .line 130
    iget-object v13, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v13, p0}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)V

    .line 131
    const/4 v1, 0x0

    .line 134
    :cond_c9
    new-instance v7, Lcom/wssyncmldm/eng/parser/XDMParserMap;

    invoke-direct {v7}, Lcom/wssyncmldm/eng/parser/XDMParserMap;-><init>()V

    .line 135
    .local v7, map:Lcom/wssyncmldm/eng/parser/XDMParserMap;
    invoke-virtual {v7, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMap;->xdmParParseMap(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v9

    .line 136
    goto/16 :goto_42

    .line 139
    .end local v7           #map:Lcom/wssyncmldm/eng/parser/XDMParserMap;
    :sswitch_d4
    if-eqz v1, :cond_dc

    .line 141
    iget-object v13, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v13, p0}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)V

    .line 142
    const/4 v1, 0x0

    .line 145
    :cond_dc
    new-instance v8, Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    invoke-direct {v8}, Lcom/wssyncmldm/eng/parser/XDMParserReplace;-><init>()V

    .line 146
    .local v8, replace:Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    invoke-virtual {v8, p1}, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->xdmParParseReplace(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v9

    .line 147
    goto/16 :goto_42

    .line 150
    .end local v8           #replace:Lcom/wssyncmldm/eng/parser/XDMParserReplace;
    :sswitch_e7
    if-eqz v1, :cond_ef

    .line 152
    iget-object v13, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v13, p0}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)V

    .line 153
    const/4 v1, 0x0

    .line 155
    :cond_ef
    new-instance v10, Lcom/wssyncmldm/eng/parser/XDMParserSequence;

    invoke-direct {v10}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;-><init>()V

    .line 156
    .local v10, sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;
    invoke-virtual {v10, p1}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmParParseSequence(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v9

    .line 157
    goto/16 :goto_42

    .line 160
    .end local v10           #sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;
    :sswitch_fa
    if-eqz v1, :cond_102

    .line 162
    iget-object v13, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v13, p0}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmAgentHdlCmdAtomicStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserAtomic;)V

    .line 163
    const/4 v1, 0x0

    .line 166
    :cond_102
    new-instance v11, Lcom/wssyncmldm/eng/parser/XDMParserSync;

    invoke-direct {v11}, Lcom/wssyncmldm/eng/parser/XDMParserSync;-><init>()V

    .line 167
    .local v11, sync:Lcom/wssyncmldm/eng/parser/XDMParserSync;
    invoke-virtual {v11, p1}, Lcom/wssyncmldm/eng/parser/XDMParserSync;->xdmParParseSync(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v9

    .line 168
    goto/16 :goto_42

    .line 171
    .end local v11           #sync:Lcom/wssyncmldm/eng/parser/XDMParserSync;
    :sswitch_10d
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v6

    .line 172
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v6

    .line 174
    iput v6, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto/16 :goto_42

    .line 62
    nop

    :sswitch_data_11a
    .sparse-switch
        0x0 -> :sswitch_10d
        0x5 -> :sswitch_6c
        0x8 -> :sswitch_b4
        0xb -> :sswitch_46
        0xd -> :sswitch_a2
        0x10 -> :sswitch_7e
        0x11 -> :sswitch_90
        0x18 -> :sswitch_c1
        0x1a -> :sswitch_5a
        0x1d -> :sswitch_53
        0x20 -> :sswitch_d4
        0x24 -> :sswitch_e7
        0x2a -> :sswitch_fa
    .end sparse-switch
.end method
