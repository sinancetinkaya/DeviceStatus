.class public Lcom/wssyncmldm/eng/core/XDMLinkedList;
.super Ljava/lang/Object;
.source "XDMLinkedList.java"


# instance fields
.field public count:I

.field public cur:Lcom/wssyncmldm/eng/core/XDMNode;

.field public top:Lcom/wssyncmldm/eng/core/XDMNode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmListAddObjAtFirst(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V
    .registers 5
    .parameter "list"
    .parameter "obj"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->top:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 105
    .local v1, top:Lcom/wssyncmldm/eng/core/XDMNode;
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMNode;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMNode;-><init>()V

    .line 107
    .local v0, node:Lcom/wssyncmldm/eng/core/XDMNode;
    invoke-static {v0, p1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListBindObjectToNode(Lcom/wssyncmldm/eng/core/XDMNode;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    iput-object v2, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 110
    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 111
    iput-object v0, v1, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 112
    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    iput-object v0, v2, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 114
    iget v2, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    .line 115
    return-void
.end method

.method public static xdmListAddObjAtLast(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;)V
    .registers 5
    .parameter "list"
    .parameter "obj"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->top:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 125
    .local v1, top:Lcom/wssyncmldm/eng/core/XDMNode;
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMNode;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMNode;-><init>()V

    .line 127
    .local v0, node:Lcom/wssyncmldm/eng/core/XDMNode;
    invoke-static {v0, p1}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListBindObjectToNode(Lcom/wssyncmldm/eng/core/XDMNode;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    if-eqz v0, :cond_1e

    .line 131
    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 132
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    iput-object v2, v0, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 133
    iget-object v2, v1, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    iput-object v0, v2, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 134
    iput-object v0, v1, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 136
    iget v2, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    .line 138
    :cond_1e
    return-void
.end method

.method public static xdmListBindObjectToNode(Lcom/wssyncmldm/eng/core/XDMNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "node"
    .parameter "obj"

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, ret:Ljava/lang/Object;
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 249
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMNode;->obj:Ljava/lang/Object;

    .line 250
    iput-object p1, p0, Lcom/wssyncmldm/eng/core/XDMNode;->obj:Ljava/lang/Object;

    .line 253
    .end local v0           #ret:Ljava/lang/Object;
    :cond_9
    return-object v0
.end method

.method public static xdmListClearLinkedList(Lcom/wssyncmldm/eng/core/XDMLinkedList;)V
    .registers 5
    .parameter "list"

    .prologue
    .line 66
    iget-object v2, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->top:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 67
    .local v2, top:Lcom/wssyncmldm/eng/core/XDMNode;
    iget-object v0, v2, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 71
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMNode;
    :goto_4
    if-ne v0, v2, :cond_10

    .line 78
    iput-object v2, v2, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 79
    iput-object v2, v2, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 80
    iput-object v2, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->top:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 82
    const/4 v3, 0x0

    iput v3, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    .line 83
    return-void

    .line 73
    :cond_10
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 74
    iget-object v3, v0, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    invoke-static {v3}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListFreeNodeFromMemory(Lcom/wssyncmldm/eng/core/XDMNode;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, obj:Ljava/lang/Object;
    goto :goto_4
.end method

.method public static xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;
    .registers 3

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, list:Lcom/wssyncmldm/eng/core/XDMLinkedList;
    const/4 v1, 0x0

    .line 20
    .local v1, node:Lcom/wssyncmldm/eng/core/XDMNode;
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .end local v0           #list:Lcom/wssyncmldm/eng/core/XDMLinkedList;
    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;-><init>()V

    .line 22
    .restart local v0       #list:Lcom/wssyncmldm/eng/core/XDMLinkedList;
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateNodeFromMemory()Lcom/wssyncmldm/eng/core/XDMNode;

    move-result-object v1

    .line 23
    if-nez v1, :cond_15

    .line 25
    const-string v2, "Create node memory alloc failed"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v0, 0x0

    .line 36
    .end local v0           #list:Lcom/wssyncmldm/eng/core/XDMLinkedList;
    :goto_14
    return-object v0

    .line 30
    .restart local v0       #list:Lcom/wssyncmldm/eng/core/XDMLinkedList;
    :cond_15
    iput-object v1, v1, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 31
    iput-object v1, v1, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 33
    iput-object v1, v0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->top:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 34
    const/4 v2, 0x0

    iput v2, v0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    goto :goto_14
.end method

.method public static xdmListCreateNodeFromMemory()Lcom/wssyncmldm/eng/core/XDMNode;
    .registers 1

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, node:Lcom/wssyncmldm/eng/core/XDMNode;
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMNode;

    .end local v0           #node:Lcom/wssyncmldm/eng/core/XDMNode;
    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMNode;-><init>()V

    .line 94
    .restart local v0       #node:Lcom/wssyncmldm/eng/core/XDMNode;
    return-object v0
.end method

.method public static xdmListFreeLinkedList(Lcom/wssyncmldm/eng/core/XDMLinkedList;)V
    .registers 4
    .parameter "list"

    .prologue
    .line 45
    iget-object v2, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->top:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 46
    .local v2, top:Lcom/wssyncmldm/eng/core/XDMNode;
    iget-object v0, v2, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 50
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMNode;
    :goto_4
    if-ne v0, v2, :cond_d

    .line 55
    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListFreeNodeFromMemory(Lcom/wssyncmldm/eng/core/XDMNode;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    .local v1, pObj:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 57
    const/4 p0, 0x0

    .line 58
    return-void

    .line 52
    .end local v1           #pObj:Ljava/lang/Object;
    :cond_d
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    goto :goto_4
.end method

.method public static xdmListFreeNodeFromMemory(Lcom/wssyncmldm/eng/core/XDMNode;)Ljava/lang/Object;
    .registers 2
    .parameter "node"

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, ret:Ljava/lang/Object;
    if-eqz p0, :cond_6

    .line 266
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMNode;->obj:Ljava/lang/Object;

    .line 267
    const/4 p0, 0x0

    .line 269
    .end local v0           #ret:Ljava/lang/Object;
    :cond_6
    return-object v0
.end method

.method public static xdmListGetNextObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;
    .registers 3
    .parameter "list"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->cur:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 300
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMNode;
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->top:Lcom/wssyncmldm/eng/core/XDMNode;

    if-ne v0, v1, :cond_8

    .line 302
    const/4 v1, 0x0

    .line 309
    :goto_7
    return-object v1

    .line 306
    :cond_8
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 308
    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->cur:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 309
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMNode;->obj:Ljava/lang/Object;

    goto :goto_7
.end method

.method public static xdmListGetObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)Ljava/lang/Object;
    .registers 6
    .parameter "list"
    .parameter "idx"

    .prologue
    .line 148
    iget-object v2, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->top:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 149
    .local v2, top:Lcom/wssyncmldm/eng/core/XDMNode;
    move-object v0, v2

    .line 151
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMNode;
    iget v3, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    if-ge p1, v3, :cond_9

    if-gez p1, :cond_15

    .line 153
    :cond_9
    const/4 v3, 0x0

    .line 161
    :goto_a
    return-object v3

    .line 158
    :cond_b
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    move v1, p1

    .line 156
    .end local p1
    .local v1, idx:I
    :goto_e
    add-int/lit8 p1, v1, -0x1

    .end local v1           #idx:I
    .restart local p1
    if-gez v1, :cond_b

    .line 161
    iget-object v3, v0, Lcom/wssyncmldm/eng/core/XDMNode;->obj:Ljava/lang/Object;

    goto :goto_a

    :cond_15
    move v1, p1

    .end local p1
    .restart local v1       #idx:I
    goto :goto_e
.end method

.method public static xdmListRemoveObjAt(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)Ljava/lang/Object;
    .registers 8
    .parameter "list"
    .parameter "idx"

    .prologue
    .line 204
    iget-object v3, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->top:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 205
    .local v3, top:Lcom/wssyncmldm/eng/core/XDMNode;
    move-object v0, v3

    .line 208
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMNode;
    iget v4, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    if-ge p1, v4, :cond_9

    if-gez p1, :cond_29

    .line 210
    :cond_9
    const/4 v2, 0x0

    .line 224
    :goto_a
    return-object v2

    .line 215
    :cond_b
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    move v1, p1

    .line 213
    .end local p1
    .local v1, idx:I
    :goto_e
    add-int/lit8 p1, v1, -0x1

    .end local v1           #idx:I
    .restart local p1
    if-gez v1, :cond_b

    .line 218
    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    iput-object v5, v4, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 219
    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    iget-object v5, v0, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    iput-object v5, v4, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 221
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListFreeNodeFromMemory(Lcom/wssyncmldm/eng/core/XDMNode;)Ljava/lang/Object;

    move-result-object v2

    .line 222
    .local v2, obj:Ljava/lang/Object;
    iget v4, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    goto :goto_a

    .end local v2           #obj:Ljava/lang/Object;
    :cond_29
    move v1, p1

    .end local p1
    .restart local v1       #idx:I
    goto :goto_e
.end method

.method public static xdmListRemoveObjAtFirst(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;
    .registers 2
    .parameter "list"

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListRemoveObjAt(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static xdmListRemovePreviousObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;)Ljava/lang/Object;
    .registers 4
    .parameter "list"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->cur:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 320
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMNode;
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    iget-object v2, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->top:Lcom/wssyncmldm/eng/core/XDMNode;

    if-eq v1, v2, :cond_21

    .line 322
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 324
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 325
    iget-object v1, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    iget-object v2, v0, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    iput-object v2, v1, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 327
    iget v1, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    .line 328
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListFreeNodeFromMemory(Lcom/wssyncmldm/eng/core/XDMNode;)Ljava/lang/Object;

    move-result-object v1

    .line 331
    :goto_20
    return-object v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public static xdmListSetCurrentObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;I)V
    .registers 5
    .parameter "list"
    .parameter "idx"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->top:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 280
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMNode;
    if-ltz p1, :cond_d

    iget v2, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    if-ge p1, v2, :cond_d

    move v1, p1

    .line 282
    .end local p1
    .local v1, idx:I
    :goto_9
    add-int/lit8 p1, v1, -0x1

    .end local v1           #idx:I
    .restart local p1
    if-gez v1, :cond_10

    .line 288
    :cond_d
    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMLinkedList;->cur:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 289
    return-void

    .line 284
    :cond_10
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    move v1, p1

    .end local p1
    .restart local v1       #idx:I
    goto :goto_9
.end method


# virtual methods
.method public xdmListRemoveObj(Lcom/wssyncmldm/eng/core/XDMLinkedList;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 9
    .parameter "list"
    .parameter "obj"
    .parameter "size"

    .prologue
    .line 173
    iget-object v2, p1, Lcom/wssyncmldm/eng/core/XDMLinkedList;->top:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 174
    .local v2, top:Lcom/wssyncmldm/eng/core/XDMNode;
    iget-object v0, v2, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 175
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMNode;
    const/4 v1, 0x0

    .line 177
    .local v1, ret:Ljava/lang/Object;
    :goto_5
    if-ne v0, v2, :cond_8

    .line 193
    .end local v1           #ret:Ljava/lang/Object;
    :goto_7
    return-object v1

    .line 179
    .restart local v1       #ret:Ljava/lang/Object;
    :cond_8
    iget-object v3, v0, Lcom/wssyncmldm/eng/core/XDMNode;->obj:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 181
    iget-object v3, v0, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    iput-object v4, v3, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 182
    iget-object v3, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    iget-object v4, v0, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    iput-object v4, v3, Lcom/wssyncmldm/eng/core/XDMNode;->previous:Lcom/wssyncmldm/eng/core/XDMNode;

    .line 183
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListFreeNodeFromMemory(Lcom/wssyncmldm/eng/core/XDMNode;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    iget v3, p1, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Lcom/wssyncmldm/eng/core/XDMLinkedList;->count:I

    goto :goto_7

    .line 189
    :cond_27
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMNode;->next:Lcom/wssyncmldm/eng/core/XDMNode;

    goto :goto_5
.end method
