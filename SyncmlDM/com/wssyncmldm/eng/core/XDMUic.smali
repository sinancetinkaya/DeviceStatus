.class public Lcom/wssyncmldm/eng/core/XDMUic;
.super Ljava/lang/Object;
.source "XDMUic.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XUICInterface;
.implements Lcom/wssyncmldm/interfaces/XDBInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmUicCopyResult(Lcom/wssyncmldm/eng/core/XDMUicResult;Lcom/wssyncmldm/eng/core/XDMUicResult;)Lcom/wssyncmldm/eng/core/XDMUicResult;
    .registers 7
    .parameter "target"
    .parameter "source"

    .prologue
    .line 193
    move-object v2, p0

    .line 194
    .local v2, pTarget:Lcom/wssyncmldm/eng/core/XDMUicResult;
    move-object v1, p1

    .line 195
    .local v1, pSource:Lcom/wssyncmldm/eng/core/XDMUicResult;
    const-string v3, ""

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 196
    if-nez v1, :cond_a

    .line 220
    :cond_9
    return-object p0

    .line 200
    :cond_a
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicResult;->appId:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->appId:I

    .line 201
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicResult;->UICType:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->UICType:I

    .line 202
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    .line 203
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicResult;->SingleSelected:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->SingleSelected:I

    .line 205
    iget-object v3, v1, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    if-eqz v3, :cond_40

    .line 207
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v1, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    .line 208
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v1, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    .line 210
    iget-object v3, v1, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v3, v3, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 212
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v1, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    iput-object v4, v3, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    .line 215
    :cond_40
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicResult;->MenuNumbers:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->MenuNumbers:I

    .line 217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_45
    iget-object v3, v1, Lcom/wssyncmldm/eng/core/XDMUicResult;->MultiSelected:[I

    array-length v3, v3

    if-ge v0, v3, :cond_9

    .line 218
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->MultiSelected:[I

    iget-object v4, v1, Lcom/wssyncmldm/eng/core/XDMUicResult;->MultiSelected:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_45
.end method

.method public static xdmUicCopyUicOption(Ljava/lang/Object;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMUicOption;
    .registers 8
    .parameter "target"
    .parameter "source"

    .prologue
    const/4 v5, 0x0

    .line 98
    move-object v2, p0

    check-cast v2, Lcom/wssyncmldm/eng/core/XDMUicOption;

    .local v2, pTarget:Lcom/wssyncmldm/eng/core/XDMUicOption;
    move-object v1, p1

    .line 99
    check-cast v1, Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 100
    .local v1, pSource:Lcom/wssyncmldm/eng/core/XDMUicOption;
    const/4 v0, 0x0

    .line 101
    .local v0, i:I
    const-string v3, ""

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 102
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->appId:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->appId:I

    .line 103
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->inputType:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->inputType:I

    .line 104
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->echoType:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->echoType:I

    .line 105
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->maxDT:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->maxDT:I

    .line 106
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->maxLen:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->maxLen:I

    .line 107
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->minDT:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->minDT:I

    .line 108
    iget-wide v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->progrCurSize:J

    iput-wide v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->progrCurSize:J

    .line 109
    iget-wide v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->progrMaxSize:J

    iput-wide v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->progrMaxSize:J

    .line 110
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->progrType:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->progrType:I

    .line 111
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->UICType:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->UICType:I

    .line 112
    new-instance v3, Lcom/wssyncmldm/eng/core/XDMText;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/core/XDMText;-><init>()V

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    .line 113
    iget-object v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    if-eqz v3, :cond_ba

    .line 115
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    .line 116
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    .line 117
    iget-object v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v3, v3, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 119
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    iput-object v4, v3, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    .line 128
    :cond_62
    :goto_62
    new-instance v3, Lcom/wssyncmldm/eng/core/XDMText;

    invoke-direct {v3}, Lcom/wssyncmldm/eng/core/XDMText;-><init>()V

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    .line 129
    iget-object v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    if-eqz v3, :cond_c3

    .line 131
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    .line 132
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    .line 133
    iget-object v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v3, v3, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8f

    .line 135
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    iput-object v4, v3, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    .line 144
    :cond_8f
    :goto_8f
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->UICType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_99

    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->UICType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a2

    .line 146
    :cond_99
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuNumbers:I

    if-nez v3, :cond_a2

    .line 148
    const-string v3, "xdmUicCopyUicOption uicMenuNumbers = 0 !!!"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 151
    :cond_a2
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuNumbers:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuNumbers:I

    .line 152
    const/4 v0, 0x0

    :goto_a7
    iget v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuNumbers:I

    if-lt v0, v3, :cond_cc

    .line 163
    iget-object v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->m_szUicMenuTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b7

    .line 165
    iget-object v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->m_szUicMenuTitle:Ljava/lang/String;

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->m_szUicMenuTitle:Ljava/lang/String;

    .line 167
    :cond_b7
    check-cast p0, Lcom/wssyncmldm/eng/core/XDMUicOption;

    .end local p0
    return-object p0

    .line 124
    .restart local p0
    :cond_ba
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iput v5, v3, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    .line 125
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iput v5, v3, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    goto :goto_62

    .line 140
    :cond_c3
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iput v5, v3, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    .line 141
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iput v5, v3, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    goto :goto_8f

    .line 154
    :cond_cc
    iget-object v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ec

    .line 156
    const/16 v3, 0x20

    if-ge v0, v3, :cond_ec

    iget-object v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_ec

    .line 158
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    iget-object v4, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    .line 152
    :cond_ec
    add-int/lit8 v0, v0, 0x1

    goto :goto_a7
.end method

.method public static xdmUicCreateResult()Lcom/wssyncmldm/eng/core/XDMUicResult;
    .registers 3

    .prologue
    .line 177
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMUicResult;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMUicResult;-><init>()V

    .line 179
    .local v0, res:Lcom/wssyncmldm/eng/core/XDMUicResult;
    new-instance v1, Lcom/wssyncmldm/eng/core/XDMText;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/core/XDMText;-><init>()V

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    .line 180
    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListCreateText(ILjava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMText;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    .line 182
    return-object v0
.end method

.method public static xdmUicCreateUicOption()Lcom/wssyncmldm/eng/core/XDMUicOption;
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x80

    .line 22
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMUicOption;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMUicOption;-><init>()V

    .line 23
    .local v0, opt:Lcom/wssyncmldm/eng/core/XDMUicOption;
    new-instance v1, Lcom/wssyncmldm/eng/core/XDMText;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/core/XDMText;-><init>()V

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    .line 24
    new-instance v1, Lcom/wssyncmldm/eng/core/XDMText;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/core/XDMText;-><init>()V

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    .line 25
    invoke-static {v2, v3}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListCreateText(ILjava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMText;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    .line 26
    invoke-static {v2, v3}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListCreateText(ILjava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMText;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    .line 28
    return-object v0
.end method

.method public static xdmUicFreeResult(Lcom/wssyncmldm/eng/core/XDMUicResult;)Ljava/lang/Object;
    .registers 4
    .parameter "uicResult"

    .prologue
    const/4 v2, 0x0

    .line 230
    move-object v0, p0

    .line 231
    .local v0, obj:Lcom/wssyncmldm/eng/core/XDMUicResult;
    const-string v1, "xdmUicFreeResult"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 232
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    .line 233
    iput-object v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    .line 235
    const/4 v0, 0x0

    .line 236
    return-object v2
.end method

.method public static xdmUicFreeUicOption(Lcom/wssyncmldm/eng/core/XDMUicOption;)Lcom/wssyncmldm/eng/core/XDMUicOption;
    .registers 5
    .parameter "uicOption"

    .prologue
    const/4 v3, 0x0

    .line 38
    move-object v1, p0

    .line 39
    .local v1, obj:Lcom/wssyncmldm/eng/core/XDMUicOption;
    const/4 v0, 0x0

    .line 41
    .local v0, i:I
    if-eqz v1, :cond_11

    .line 43
    iput-object v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    .line 44
    iput-object v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    .line 46
    const/4 v0, 0x0

    :goto_a
    iget v2, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuNumbers:I

    if-lt v0, v2, :cond_12

    .line 50
    iput-object v3, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->m_szUicMenuTitle:Ljava/lang/String;

    .line 51
    const/4 v1, 0x0

    .line 54
    :cond_11
    return-object p0

    .line 48
    :cond_12
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    aput-object v3, v2, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static xdmUicGetResultKeep()Lcom/wssyncmldm/eng/core/XDMUicResult;
    .registers 4

    .prologue
    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, ptUicResultKeep:Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;
    const/4 v0, 0x0

    .line 458
    .local v0, ptUicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCreateResult()Lcom/wssyncmldm/eng/core/XDMUicResult;

    move-result-object v0

    .line 459
    if-nez v0, :cond_a

    .line 460
    const/4 v0, 0x0

    .line 477
    .end local v0           #ptUicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    :cond_9
    :goto_9
    return-object v0

    .line 462
    .restart local v0       #ptUicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    :cond_a
    new-instance v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;

    .end local v1           #ptUicResultKeep:Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;
    invoke-direct {v1}, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;-><init>()V

    .line 463
    .restart local v1       #ptUicResultKeep:Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;
    const/16 v2, 0xf

    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbRead(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ptUicResultKeep:Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;
    check-cast v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;

    .line 465
    .restart local v1       #ptUicResultKeep:Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;
    iget v2, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->appId:I

    iput v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->appId:I

    .line 466
    iget v2, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->UICType:I

    iput v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->UICType:I

    .line 467
    iget v2, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->result:I

    iput v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    .line 468
    iget v2, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->number:I

    iput v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->MenuNumbers:I

    .line 470
    iget-object v2, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->m_szText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 472
    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget v3, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->nLen:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    .line 473
    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget v3, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->nSize:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    .line 474
    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v3, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->m_szText:Ljava/lang/String;

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    goto :goto_9
.end method

.method public static xdmUicGetUicType(Ljava/lang/String;)I
    .registers 4
    .parameter "szType"

    .prologue
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, type:I
    const-string v1, "1100"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1d

    .line 68
    const/4 v0, 0x1

    .line 87
    :cond_1c
    :goto_1c
    return v0

    .line 70
    :cond_1d
    const-string v1, "1101"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_27

    .line 72
    const/4 v0, 0x2

    goto :goto_1c

    .line 74
    :cond_27
    const-string v1, "1102"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_31

    .line 76
    const/4 v0, 0x3

    goto :goto_1c

    .line 78
    :cond_31
    const-string v1, "1103"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3b

    .line 80
    const/4 v0, 0x4

    goto :goto_1c

    .line 82
    :cond_3b
    const-string v1, "1104"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1c

    .line 84
    const/4 v0, 0x5

    goto :goto_1c
.end method

.method public static xdmUicOptionProcess(Ljava/lang/String;Lcom/wssyncmldm/eng/core/XDMUicOption;)Ljava/lang/String;
    .registers 16
    .parameter "pUicOptions"
    .parameter "uicOption"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v7, 0x0

    const/16 v11, 0x26

    const/4 v10, 0x0

    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, i:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 249
    .local v4, pOption:[C
    const/4 v0, 0x0

    .line 250
    .local v0, chTmp:I
    const/4 v3, 0x0

    .line 252
    .local v3, ipOption:I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "pUicOptions :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 253
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "uicOption :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 255
    aget-char v8, v4, v3

    if-nez v8, :cond_40

    .line 256
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    .line 450
    :goto_3d
    return-object v7

    .line 259
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    .line 258
    :cond_40
    aget-char v8, v4, v3

    const/16 v9, 0x20

    if-eq v8, v9, :cond_3e

    aget-char v8, v4, v3

    const/16 v9, 0x9

    if-eq v8, v9, :cond_3e

    .line 261
    :goto_4c
    add-int v8, v3, v2

    array-length v9, v4

    if-ge v8, v9, :cond_59

    add-int v8, v3, v2

    aget-char v8, v4, v8

    const/16 v9, 0x3d

    if-ne v8, v9, :cond_d5

    .line 264
    :cond_59
    array-length v8, v4

    sub-int/2addr v8, v3

    new-array v5, v8, [C

    .line 265
    .local v5, sOption:[C
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    array-length v9, v4

    sub-int/2addr v9, v3

    invoke-virtual {v8, v3, v9, v5, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 267
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    const-string v9, "MINDT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7e

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    const-string v9, "MDT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 269
    :cond_7e
    add-int v8, v3, v2

    add-int/lit8 v3, v8, 0x1

    .line 270
    const/4 v2, 0x0

    .line 271
    :goto_83
    add-int v8, v3, v2

    array-length v9, v4

    if-ge v8, v9, :cond_94

    add-int v8, v3, v2

    aget-char v8, v4, v8

    if-eq v8, v11, :cond_94

    add-int v8, v3, v2

    aget-char v8, v4, v8

    if-nez v8, :cond_d9

    .line 274
    :cond_94
    add-int v8, v3, v2

    array-length v9, v4

    if-ge v8, v9, :cond_dc

    .line 276
    add-int v8, v3, v2

    aget-char v0, v4, v8

    .line 277
    add-int v8, v3, v2

    aput-char v10, v4, v8

    .line 282
    :goto_a1
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    add-int v9, v3, v2

    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, szTemp:Ljava/lang/String;
    :try_start_ab
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->minDT:I
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b5} :catch_de

    .line 440
    .end local v6           #szTemp:Ljava/lang/String;
    :goto_b5
    if-ne v0, v11, :cond_2ab

    .line 442
    add-int v8, v3, v2

    add-int/lit8 v3, v8, 0x1

    move-object v5, v7

    .line 444
    check-cast v5, [C

    .line 445
    array-length v7, v4

    sub-int/2addr v7, v3

    new-array v5, v7, [C

    .line 446
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v3, v8, v5, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 448
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v7, p1}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicOptionProcess(Ljava/lang/String;Lcom/wssyncmldm/eng/core/XDMUicOption;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3d

    .line 262
    .end local v5           #sOption:[C
    :cond_d5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4c

    .line 272
    .restart local v5       #sOption:[C
    :cond_d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_83

    .line 280
    :cond_dc
    const/4 v0, 0x0

    goto :goto_a1

    .line 287
    .restart local v6       #szTemp:Ljava/lang/String;
    :catch_de
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 290
    iput v10, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->minDT:I

    goto :goto_b5

    .line 293
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #szTemp:Ljava/lang/String;
    :cond_e9
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    const-string v9, "MAXDT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_151

    .line 295
    add-int v8, v3, v2

    add-int/lit8 v3, v8, 0x1

    .line 296
    const/4 v2, 0x0

    .line 297
    :goto_fa
    add-int v8, v3, v2

    array-length v9, v4

    if-ge v8, v9, :cond_10b

    add-int v8, v3, v2

    aget-char v8, v4, v8

    if-eq v8, v11, :cond_10b

    add-int v8, v3, v2

    aget-char v8, v4, v8

    if-nez v8, :cond_14c

    .line 300
    :cond_10b
    add-int v8, v3, v2

    array-length v9, v4

    if-ge v8, v9, :cond_14f

    .line 302
    add-int v8, v3, v2

    aget-char v0, v4, v8

    .line 303
    add-int v8, v3, v2

    aput-char v10, v4, v8

    .line 308
    :goto_118
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    add-int v9, v3, v2

    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 309
    .restart local v6       #szTemp:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "temp :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 312
    :try_start_134
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->maxDT:I
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_13e} :catch_140

    goto/16 :goto_b5

    .line 314
    :catch_140
    move-exception v1

    .line 316
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 317
    iput v10, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->maxDT:I

    goto/16 :goto_b5

    .line 298
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #szTemp:Ljava/lang/String;
    :cond_14c
    add-int/lit8 v2, v2, 0x1

    goto :goto_fa

    .line 306
    :cond_14f
    const/4 v0, 0x0

    goto :goto_118

    .line 320
    :cond_151
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_199

    .line 322
    add-int v8, v3, v2

    add-int/lit8 v3, v8, 0x1

    .line 323
    const/4 v2, 0x0

    .line 324
    :goto_162
    add-int v8, v3, v2

    array-length v9, v4

    if-ge v8, v9, :cond_173

    add-int v8, v3, v2

    aget-char v8, v4, v8

    if-eq v8, v11, :cond_173

    add-int v8, v3, v2

    aget-char v8, v4, v8

    if-nez v8, :cond_194

    .line 327
    :cond_173
    add-int v8, v3, v2

    array-length v9, v4

    if-ge v8, v9, :cond_197

    .line 329
    add-int v8, v3, v2

    aget-char v0, v4, v8

    .line 330
    add-int v8, v3, v2

    aput-char v10, v4, v8

    .line 335
    :goto_180
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    add-int v9, v3, v2

    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 336
    .restart local v6       #szTemp:Ljava/lang/String;
    iget-object v8, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    invoke-static {v8, v6}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListCopyStrText(Lcom/wssyncmldm/eng/core/XDMText;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMText;

    move-result-object v8

    iput-object v8, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    goto/16 :goto_b5

    .line 325
    .end local v6           #szTemp:Ljava/lang/String;
    :cond_194
    add-int/lit8 v2, v2, 0x1

    goto :goto_162

    .line 333
    :cond_197
    const/4 v0, 0x0

    goto :goto_180

    .line 338
    :cond_199
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    const-string v9, "MAXLEN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1ef

    .line 340
    add-int v8, v3, v2

    add-int/lit8 v3, v8, 0x1

    .line 341
    const/4 v2, 0x0

    .line 342
    :goto_1aa
    add-int v8, v3, v2

    array-length v9, v4

    if-ge v8, v9, :cond_1bb

    add-int v8, v3, v2

    aget-char v8, v4, v8

    if-eq v8, v11, :cond_1bb

    add-int v8, v3, v2

    aget-char v8, v4, v8

    if-nez v8, :cond_1ea

    .line 345
    :cond_1bb
    add-int v8, v3, v2

    array-length v9, v4

    if-ge v8, v9, :cond_1ed

    .line 347
    add-int v8, v3, v2

    aget-char v0, v4, v8

    .line 348
    add-int v8, v3, v2

    aput-char v10, v4, v8

    .line 353
    :goto_1c8
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    add-int v9, v3, v2

    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 356
    .restart local v6       #szTemp:Ljava/lang/String;
    :try_start_1d2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->maxLen:I
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1dc} :catch_1de

    goto/16 :goto_b5

    .line 358
    :catch_1de
    move-exception v1

    .line 360
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 361
    iput v10, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->maxLen:I

    goto/16 :goto_b5

    .line 343
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #szTemp:Ljava/lang/String;
    :cond_1ea
    add-int/lit8 v2, v2, 0x1

    goto :goto_1aa

    .line 351
    :cond_1ed
    const/4 v0, 0x0

    goto :goto_1c8

    .line 364
    :cond_1ef
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    const-string v9, "IT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_254

    .line 366
    add-int v8, v3, v2

    add-int/lit8 v3, v8, 0x1

    .line 367
    const/4 v2, 0x0

    .line 368
    :goto_200
    add-int v8, v3, v2

    array-length v9, v4

    if-ge v8, v9, :cond_211

    add-int v8, v3, v2

    aget-char v8, v4, v8

    if-eq v8, v11, :cond_211

    add-int v8, v3, v2

    aget-char v8, v4, v8

    if-nez v8, :cond_237

    .line 371
    :cond_211
    add-int v8, v3, v2

    array-length v9, v4

    if-ge v8, v9, :cond_23a

    .line 373
    add-int v8, v3, v2

    aget-char v0, v4, v8

    .line 374
    add-int v8, v3, v2

    aput-char v10, v4, v8

    :goto_21e
    move-object v5, v7

    .line 379
    check-cast v5, [C

    .line 380
    new-array v5, v2, [C

    .line 381
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    add-int v9, v3, v2

    invoke-virtual {v8, v3, v9, v5, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 382
    aget-char v8, v4, v3

    sparse-switch v8, :sswitch_data_2b2

    goto/16 :goto_b5

    .line 385
    :sswitch_233
    iput v12, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->inputType:I

    goto/16 :goto_b5

    .line 369
    :cond_237
    add-int/lit8 v2, v2, 0x1

    goto :goto_200

    .line 377
    :cond_23a
    const/4 v0, 0x0

    goto :goto_21e

    .line 388
    :sswitch_23c
    iput v13, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->inputType:I

    goto/16 :goto_b5

    .line 391
    :sswitch_240
    const/4 v8, 0x3

    iput v8, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->inputType:I

    goto/16 :goto_b5

    .line 394
    :sswitch_245
    const/4 v8, 0x4

    iput v8, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->inputType:I

    goto/16 :goto_b5

    .line 397
    :sswitch_24a
    const/4 v8, 0x5

    iput v8, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->inputType:I

    goto/16 :goto_b5

    .line 400
    :sswitch_24f
    const/4 v8, 0x6

    iput v8, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->inputType:I

    goto/16 :goto_b5

    .line 406
    :cond_254
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ET"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2a5

    .line 408
    add-int v8, v3, v2

    add-int/lit8 v3, v8, 0x1

    .line 409
    const/4 v2, 0x0

    .line 410
    :goto_265
    add-int v8, v3, v2

    array-length v9, v4

    if-ge v8, v9, :cond_276

    add-int v8, v3, v2

    aget-char v8, v4, v8

    if-eq v8, v11, :cond_276

    add-int v8, v3, v2

    aget-char v8, v4, v8

    if-nez v8, :cond_29c

    .line 413
    :cond_276
    add-int v8, v3, v2

    array-length v9, v4

    if-ge v8, v9, :cond_29f

    .line 415
    add-int v8, v3, v2

    aget-char v0, v4, v8

    .line 416
    add-int v8, v3, v2

    aput-char v10, v4, v8

    :goto_283
    move-object v5, v7

    .line 420
    check-cast v5, [C

    .line 421
    new-array v5, v2, [C

    .line 422
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    add-int v9, v3, v2

    invoke-virtual {v8, v3, v9, v5, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 423
    aget-char v8, v4, v3

    sparse-switch v8, :sswitch_data_2cc

    goto/16 :goto_b5

    .line 429
    :sswitch_298
    iput v13, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->echoType:I

    goto/16 :goto_b5

    .line 411
    :cond_29c
    add-int/lit8 v2, v2, 0x1

    goto :goto_265

    .line 419
    :cond_29f
    const/4 v0, 0x0

    goto :goto_283

    .line 426
    :sswitch_2a1
    iput v12, p1, Lcom/wssyncmldm/eng/core/XDMUicOption;->echoType:I

    goto/16 :goto_b5

    .line 437
    :cond_2a5
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3d

    .line 450
    :cond_2ab
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3d

    .line 382
    nop

    :sswitch_data_2b2
    .sparse-switch
        0x41 -> :sswitch_233
        0x44 -> :sswitch_240
        0x49 -> :sswitch_24f
        0x4e -> :sswitch_23c
        0x50 -> :sswitch_24a
        0x54 -> :sswitch_245
    .end sparse-switch

    .line 423
    :sswitch_data_2cc
    .sparse-switch
        0x50 -> :sswitch_298
        0x54 -> :sswitch_2a1
    .end sparse-switch
.end method

.method public static xdmUicSetResultKeep(Lcom/wssyncmldm/eng/core/XDMUicResult;I)Lcom/wssyncmldm/eng/core/XDMUicResult;
    .registers 6
    .parameter "pData"
    .parameter "pUicResultKeepFlag"

    .prologue
    .line 488
    move-object v0, p0

    .line 489
    .local v0, ptUicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    const/4 v1, 0x0

    .line 491
    .local v1, ptUicResultKeep:Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xdmUicSetResultKeep pUicResultKeepFlag ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 492
    if-nez v0, :cond_22

    .line 494
    const-string v2, "ptUicResult is NULL!"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 519
    :goto_21
    return-object v0

    .line 498
    :cond_22
    new-instance v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;

    .end local v1           #ptUicResultKeep:Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;
    invoke-direct {v1}, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;-><init>()V

    .line 500
    .restart local v1       #ptUicResultKeep:Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;
    iput p1, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->eStatus:I

    .line 501
    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->appId:I

    iput v2, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->appId:I

    .line 502
    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->UICType:I

    iput v2, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->UICType:I

    .line 503
    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    iput v2, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->result:I

    .line 504
    iget v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->MenuNumbers:I

    iput v2, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->number:I

    .line 506
    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    if-eqz v2, :cond_59

    .line 508
    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget v2, v2, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    iput v2, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->nLen:I

    .line 509
    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget v2, v2, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    iput v2, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->nSize:I

    .line 510
    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 512
    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v2, v2, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    iput-object v2, v1, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->m_szText:Ljava/lang/String;

    .line 516
    :cond_59
    const/16 v2, 0xf

    invoke-static {v2, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbWrite(ILjava/lang/Object;)V

    .line 517
    const/4 v1, 0x0

    .line 519
    goto :goto_21
.end method
