.class public Lcom/wssyncmldm/eng/core/XDMList;
.super Ljava/lang/Object;
.source "XDMList.java"


# instance fields
.field public item:Ljava/lang/Object;

.field public next:Lcom/wssyncmldm/eng/core/XDMList;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmListAppend(Lcom/wssyncmldm/eng/core/XDMList;Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;
    .registers 5
    .parameter "header"
    .parameter "tail"
    .parameter "item"

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 19
    .local v0, tmp:Lcom/wssyncmldm/eng/core/XDMList;
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMList;

    .end local v0           #tmp:Lcom/wssyncmldm/eng/core/XDMList;
    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMList;-><init>()V

    .line 21
    .restart local v0       #tmp:Lcom/wssyncmldm/eng/core/XDMList;
    iput-object p2, v0, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .line 22
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 24
    if-nez p0, :cond_10

    .line 26
    move-object p0, v0

    .line 27
    move-object p1, p0

    .line 42
    :goto_f
    return-object p0

    .line 31
    :cond_10
    if-nez p1, :cond_17

    .line 33
    move-object p1, p0

    .line 34
    :goto_13
    iget-object v1, p1, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    if-nez v1, :cond_1b

    .line 38
    :cond_17
    iput-object v0, p1, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 39
    move-object p1, v0

    goto :goto_f

    .line 35
    :cond_1b
    iget-object p1, p1, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_13
.end method

.method public static xdmListAppendStrText(Lcom/wssyncmldm/eng/core/XDMText;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMText;
    .registers 5
    .parameter "target"
    .parameter "szAppendText"

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, len:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 224
    iget v1, p0, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListVerifyTextSize(Lcom/wssyncmldm/eng/core/XDMText;I)Lcom/wssyncmldm/eng/core/XDMText;

    move-result-object p0

    .line 225
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    .line 227
    iget v1, p0, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    .line 228
    return-object p0
.end method

.method public static xdmListAppendText(Lcom/wssyncmldm/eng/core/XDMText;Lcom/wssyncmldm/eng/core/XDMText;)Lcom/wssyncmldm/eng/core/XDMText;
    .registers 4
    .parameter "target"
    .parameter "tail"

    .prologue
    .line 271
    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    iget v1, p1, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListVerifyTextSize(Lcom/wssyncmldm/eng/core/XDMText;I)Lcom/wssyncmldm/eng/core/XDMText;

    move-result-object p0

    .line 273
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    .line 274
    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    iget v1, p1, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    .line 276
    return-object p0
.end method

.method public static xdmListCopyStrText(Lcom/wssyncmldm/eng/core/XDMText;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMText;
    .registers 4
    .parameter "target"
    .parameter "szCopyText"

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, len:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 236
    iget v1, p0, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListVerifyTextSize(Lcom/wssyncmldm/eng/core/XDMText;I)Lcom/wssyncmldm/eng/core/XDMText;

    move-result-object p0

    .line 237
    iput-object p1, p0, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    .line 239
    iput v0, p0, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    .line 240
    return-object p0
.end method

.method public static xdmListCreateText(ILjava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMText;
    .registers 4
    .parameter "size"
    .parameter "initText"

    .prologue
    .line 193
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMText;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMText;-><init>()V

    .line 195
    .local v0, text:Lcom/wssyncmldm/eng/core/XDMText;
    if-nez v0, :cond_8

    .line 210
    :goto_7
    return-object v0

    .line 198
    :cond_8
    if-eqz p1, :cond_1d

    .line 200
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    .line 201
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    .line 202
    iget v1, v0, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    iput v1, v0, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    goto :goto_7

    .line 206
    :cond_1d
    const-string v1, ""

    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    .line 207
    iput p0, v0, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    .line 208
    const/4 v1, 0x0

    iput v1, v0, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    goto :goto_7
.end method

.method public static xdmListGetItem(Lcom/wssyncmldm/eng/core/XDMList;)Ljava/lang/Object;
    .registers 2
    .parameter "header"

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, item:Ljava/lang/Object;
    if-nez p0, :cond_5

    .line 134
    const/4 v0, 0x0

    .line 140
    .end local v0           #item:Ljava/lang/Object;
    :goto_4
    return-object v0

    .line 137
    .restart local v0       #item:Ljava/lang/Object;
    :cond_5
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .line 140
    goto :goto_4
.end method

.method public static xdmListGetItemPtr(Lcom/wssyncmldm/eng/core/XDMList;)Lcom/wssyncmldm/eng/core/XDMList;
    .registers 1
    .parameter "header"

    .prologue
    .line 150
    if-nez p0, :cond_4

    .line 152
    const/4 p0, 0x0

    .line 157
    :goto_3
    return-object p0

    .line 155
    :cond_4
    iget-object p0, p0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 157
    goto :goto_3
.end method

.method public static xdmListVerifyTextSize(Lcom/wssyncmldm/eng/core/XDMText;I)Lcom/wssyncmldm/eng/core/XDMText;
    .registers 4
    .parameter "text"
    .parameter "size"

    .prologue
    .line 251
    iget v1, p0, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    if-ge v1, p1, :cond_e

    .line 253
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    .line 254
    .local v0, szOld:Ljava/lang/String;
    const-string v1, ""

    iput-object v1, p0, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    .line 255
    iput p1, p0, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    .line 256
    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    .line 259
    .end local v0           #szOld:Ljava/lang/String;
    :cond_e
    return-object p0
.end method


# virtual methods
.method public xdmListAppend2(Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;
    .registers 6
    .parameter "list"
    .parameter "data"

    .prologue
    .line 55
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMList;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMList;-><init>()V

    .line 57
    .local v0, entry:Lcom/wssyncmldm/eng/core/XDMList;
    iput-object p2, v0, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .line 58
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 60
    if-nez p1, :cond_d

    .line 68
    .end local v0           #entry:Lcom/wssyncmldm/eng/core/XDMList;
    :goto_c
    return-object v0

    .line 63
    .restart local v0       #entry:Lcom/wssyncmldm/eng/core/XDMList;
    :cond_d
    move-object v1, p1

    .line 64
    .local v1, prev:Lcom/wssyncmldm/eng/core/XDMList;
    :goto_e
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    if-nez v2, :cond_16

    .line 67
    iput-object v0, v1, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    move-object v0, p1

    .line 68
    goto :goto_c

    .line 65
    :cond_16
    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_e
.end method

.method public xdmListDelete(Lcom/wssyncmldm/eng/core/XDMList;)V
    .registers 4
    .parameter "header"

    .prologue
    .line 77
    move-object v0, p1

    .line 79
    .local v0, curr:Lcom/wssyncmldm/eng/core/XDMList;
    const/4 v1, 0x0

    .line 81
    .local v1, tmp:Lcom/wssyncmldm/eng/core/XDMList;
    :goto_2
    if-nez v0, :cond_6

    .line 89
    const/4 p1, 0x0

    .line 90
    return-void

    .line 83
    :cond_6
    move-object v1, v0

    .line 84
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 86
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public xdmListDeleteData(Lcom/wssyncmldm/eng/core/XDMList;Ljava/lang/Object;)Lcom/wssyncmldm/eng/core/XDMList;
    .registers 6
    .parameter "list"
    .parameter "data"

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, prev:Lcom/wssyncmldm/eng/core/XDMList;
    move-object v0, p1

    .line 105
    .local v0, entry:Lcom/wssyncmldm/eng/core/XDMList;
    :goto_2
    if-nez v0, :cond_5

    .line 120
    :goto_4
    return-object p1

    .line 107
    :cond_5
    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    if-ne v2, p2, :cond_14

    .line 109
    if-eqz v1, :cond_11

    .line 110
    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 113
    :goto_f
    const/4 v0, 0x0

    .line 115
    goto :goto_4

    .line 112
    :cond_11
    iget-object p1, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_f

    .line 117
    :cond_14
    move-object v1, v0

    .line 118
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    goto :goto_2
.end method

.method public xdmListPopItem(Lcom/wssyncmldm/eng/core/XDMList;)Ljava/lang/Object;
    .registers 4
    .parameter "header"

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 172
    .local v0, item:Ljava/lang/Object;
    if-nez p1, :cond_5

    .line 174
    const/4 v0, 0x0

    .line 182
    .end local v0           #item:Ljava/lang/Object;
    :goto_4
    return-object v0

    .line 177
    .restart local v0       #item:Ljava/lang/Object;
    :cond_5
    iget-object v0, p1, Lcom/wssyncmldm/eng/core/XDMList;->item:Ljava/lang/Object;

    .line 178
    move-object v1, p1

    .line 179
    .local v1, tmp:Lcom/wssyncmldm/eng/core/XDMList;
    iget-object p1, p1, Lcom/wssyncmldm/eng/core/XDMList;->next:Lcom/wssyncmldm/eng/core/XDMList;

    .line 181
    const/4 v1, 0x0

    .line 182
    goto :goto_4
.end method
