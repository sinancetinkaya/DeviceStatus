.class public Lcom/wssyncmldm/eng/parser/XDMParserSequence;
.super Lcom/wssyncmldm/agent/XDMHandleCmd;
.source "XDMParserSequence.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMWbxml;


# instance fields
.field public add:Lcom/wssyncmldm/eng/parser/XDMParserAdd;

.field public alert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

.field public atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

.field public cmdid:I

.field public copy:Lcom/wssyncmldm/eng/parser/XDMParserCopy;

.field public delete:Lcom/wssyncmldm/eng/parser/XDMParserDelete;

.field public exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;

.field public get:Lcom/wssyncmldm/eng/parser/XDMParserGet;

.field public is_noresp:I

.field public itemlist:Lcom/wssyncmldm/eng/core/XDMLinkedList;

.field public map:Lcom/wssyncmldm/eng/parser/XDMParserMap;

.field public meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

.field public replace:Lcom/wssyncmldm/eng/parser/XDMParserReplace;

.field public sync:Lcom/wssyncmldm/eng/parser/XDMParserSync;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/wssyncmldm/agent/XDMHandleCmd;-><init>()V

    return-void
.end method


# virtual methods
.method public xdmParParseSequence(Lcom/wssyncmldm/eng/parser/XDMParser;)I
    .registers 8
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    .line 34
    const/4 v2, -0x1

    .line 35
    .local v2, id:I
    const/4 v3, 0x0

    .line 36
    .local v3, res:I
    const/4 v0, 0x1

    .line 38
    .local v0, call_start_seq:Z
    const/16 v5, 0x24

    invoke-virtual {p1, v5}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCheckElement(I)I

    move-result v3

    .line 39
    if-eqz v3, :cond_e

    move v4, v3

    .line 204
    :cond_d
    :goto_d
    return v4

    .line 44
    :cond_e
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseZeroBitTagCheck()I

    move-result v3

    .line 45
    const/16 v5, 0x8

    if-eq v3, v5, :cond_d

    .line 49
    if-eqz v3, :cond_1f

    .line 51
    const-string v4, "not WBXML_ERR_OK"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v4, v3

    .line 52
    goto :goto_d

    .line 59
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseCurrentElement()I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_38

    move-result v2

    .line 66
    :goto_23
    const/4 v5, 0x1

    if-ne v2, v5, :cond_41

    .line 68
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v2

    .line 196
    if-eqz v0, :cond_32

    .line 198
    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V

    .line 199
    const/4 v0, 0x0

    .line 202
    :cond_32
    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceEnd(Ljava/lang/Object;)V

    goto :goto_d

    .line 61
    :catch_38
    move-exception v1

    .line 63
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_23

    .line 71
    .end local v1           #e:Ljava/io/IOException;
    :cond_41
    sparse-switch v2, :sswitch_data_154

    .line 188
    const/4 v3, 0x2

    .line 190
    :goto_45
    if-eqz v3, :cond_1f

    move v4, v3

    .line 192
    goto :goto_d

    .line 74
    :sswitch_49
    invoke-virtual {p1, v2}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseElement(I)I

    move-result v3

    .line 75
    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->m_szParserElement:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->cmdid:I

    goto :goto_45

    .line 79
    :sswitch_56
    invoke-virtual {p1, v2}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseBlankElement(I)I

    move-result v5

    iput v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->is_noresp:I

    goto :goto_45

    .line 83
    :sswitch_5d
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;-><init>()V

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    .line 84
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    invoke-virtual {v5, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMeta;->xdmParParseMeta(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    move-result v3

    .line 85
    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->Meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->meta:Lcom/wssyncmldm/eng/parser/XDMParserMeta;

    goto :goto_45

    .line 89
    :sswitch_6f
    if-eqz v0, :cond_77

    .line 91
    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V

    .line 92
    const/4 v0, 0x0

    .line 94
    :cond_77
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserAlert;-><init>()V

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->alert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    .line 95
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->alert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

    invoke-virtual {v5, p1}, Lcom/wssyncmldm/eng/parser/XDMParserAlert;->xdmParParseAlert(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    goto :goto_45

    .line 98
    :sswitch_84
    if-eqz v0, :cond_8c

    .line 100
    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V

    .line 101
    const/4 v0, 0x0

    .line 103
    :cond_8c
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserAdd;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserAdd;-><init>()V

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->add:Lcom/wssyncmldm/eng/parser/XDMParserAdd;

    .line 104
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->add:Lcom/wssyncmldm/eng/parser/XDMParserAdd;

    invoke-virtual {v5, p1}, Lcom/wssyncmldm/eng/parser/XDMParserAdd;->xdmParParseAdd(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    goto :goto_45

    .line 107
    :sswitch_99
    if-eqz v0, :cond_a1

    .line 109
    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V

    .line 110
    const/4 v0, 0x0

    .line 112
    :cond_a1
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserReplace;-><init>()V

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->replace:Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    .line 113
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->replace:Lcom/wssyncmldm/eng/parser/XDMParserReplace;

    invoke-virtual {v5, p1}, Lcom/wssyncmldm/eng/parser/XDMParserReplace;->xdmParParseReplace(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    goto :goto_45

    .line 116
    :sswitch_ae
    if-eqz v0, :cond_b6

    .line 118
    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V

    .line 119
    const/4 v0, 0x0

    .line 121
    :cond_b6
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserDelete;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserDelete;-><init>()V

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->delete:Lcom/wssyncmldm/eng/parser/XDMParserDelete;

    .line 122
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->delete:Lcom/wssyncmldm/eng/parser/XDMParserDelete;

    invoke-virtual {v5, p1}, Lcom/wssyncmldm/eng/parser/XDMParserDelete;->xdmParParseDelete(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    goto :goto_45

    .line 125
    :sswitch_c3
    if-eqz v0, :cond_cb

    .line 127
    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V

    .line 128
    const/4 v0, 0x0

    .line 130
    :cond_cb
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserCopy;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserCopy;-><init>()V

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->copy:Lcom/wssyncmldm/eng/parser/XDMParserCopy;

    .line 131
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->copy:Lcom/wssyncmldm/eng/parser/XDMParserCopy;

    invoke-virtual {v5, p1}, Lcom/wssyncmldm/eng/parser/XDMParserCopy;->xdmParParseCopy(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    goto/16 :goto_45

    .line 134
    :sswitch_d9
    if-eqz v0, :cond_e1

    .line 136
    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V

    .line 137
    const/4 v0, 0x0

    .line 139
    :cond_e1
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;-><init>()V

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    .line 140
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

    invoke-virtual {v5, p1}, Lcom/wssyncmldm/eng/parser/XDMParserAtomic;->xdmParParseAtomic(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    goto/16 :goto_45

    .line 143
    :sswitch_ef
    if-eqz v0, :cond_f7

    .line 145
    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V

    .line 146
    const/4 v0, 0x0

    .line 148
    :cond_f7
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserMap;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserMap;-><init>()V

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->map:Lcom/wssyncmldm/eng/parser/XDMParserMap;

    .line 149
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->map:Lcom/wssyncmldm/eng/parser/XDMParserMap;

    invoke-virtual {v5, p1}, Lcom/wssyncmldm/eng/parser/XDMParserMap;->xdmParParseMap(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    goto/16 :goto_45

    .line 153
    :sswitch_105
    if-eqz v0, :cond_10d

    .line 155
    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V

    .line 156
    const/4 v0, 0x0

    .line 158
    :cond_10d
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserGet;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserGet;-><init>()V

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->get:Lcom/wssyncmldm/eng/parser/XDMParserGet;

    .line 159
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->get:Lcom/wssyncmldm/eng/parser/XDMParserGet;

    invoke-virtual {v5, p1}, Lcom/wssyncmldm/eng/parser/XDMParserGet;->xdmParParseGet(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    goto/16 :goto_45

    .line 163
    :sswitch_11b
    if-eqz v0, :cond_123

    .line 165
    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V

    .line 166
    const/4 v0, 0x0

    .line 168
    :cond_123
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserSync;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserSync;-><init>()V

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->sync:Lcom/wssyncmldm/eng/parser/XDMParserSync;

    .line 169
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->sync:Lcom/wssyncmldm/eng/parser/XDMParserSync;

    invoke-virtual {v5, p1}, Lcom/wssyncmldm/eng/parser/XDMParserSync;->xdmParParseSync(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    goto/16 :goto_45

    .line 172
    :sswitch_131
    if-eqz v0, :cond_139

    .line 174
    iget-object v5, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->userdata:Ljava/lang/Object;

    invoke-virtual {p0, v5, p0}, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->xdmAgentHdlCmdSequenceStart(Ljava/lang/Object;Lcom/wssyncmldm/eng/parser/XDMParserSequence;)V

    .line 175
    const/4 v0, 0x0

    .line 177
    :cond_139
    new-instance v5, Lcom/wssyncmldm/eng/parser/XDMParserExec;

    invoke-direct {v5}, Lcom/wssyncmldm/eng/parser/XDMParserExec;-><init>()V

    iput-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;

    .line 178
    iget-object v5, p0, Lcom/wssyncmldm/eng/parser/XDMParserSequence;->exec:Lcom/wssyncmldm/eng/parser/XDMParserExec;

    invoke-virtual {v5, p1}, Lcom/wssyncmldm/eng/parser/XDMParserExec;->xdmParParseExec(Lcom/wssyncmldm/eng/parser/XDMParser;)I

    goto/16 :goto_45

    .line 182
    :sswitch_147
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v2

    .line 183
    invoke-virtual {p1}, Lcom/wssyncmldm/eng/parser/XDMParser;->xdmParParseReadElement()I

    move-result v2

    .line 185
    iput v2, p1, Lcom/wssyncmldm/eng/parser/XDMParser;->codePage:I

    goto/16 :goto_45

    .line 71
    nop

    :sswitch_data_154
    .sparse-switch
        0x0 -> :sswitch_147
        0x5 -> :sswitch_84
        0x6 -> :sswitch_6f
        0x8 -> :sswitch_d9
        0xb -> :sswitch_49
        0xd -> :sswitch_c3
        0x10 -> :sswitch_ae
        0x11 -> :sswitch_131
        0x13 -> :sswitch_105
        0x18 -> :sswitch_ef
        0x1a -> :sswitch_5d
        0x1d -> :sswitch_56
        0x20 -> :sswitch_99
        0x2a -> :sswitch_11b
    .end sparse-switch
.end method
