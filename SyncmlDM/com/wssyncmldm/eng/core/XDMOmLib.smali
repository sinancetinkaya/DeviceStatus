.class public Lcom/wssyncmldm/eng/core/XDMOmLib;
.super Lcom/wssyncmldm/eng/core/XDMOmVfs;
.source "XDMOmLib.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;-><init>()V

    return-void
.end method

.method public static xdmOmCheckAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;I)Z
    .registers 6
    .parameter "ptOmt"
    .parameter "ptNode"
    .parameter "nAcl"

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->m_szServerId:Ljava/lang/String;

    .line 232
    .local v0, szServerId:Ljava/lang/String;
    if-eqz p0, :cond_7

    if-nez p1, :cond_8

    .line 240
    :cond_7
    :goto_7
    return v1

    .line 235
    :cond_8
    invoke-static {p1, p2, v0}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckNodeAcl(Lcom/wssyncmldm/eng/core/XDMVnode;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 240
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static xdmOmCheckAclCurrentNode(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I)Z
    .registers 14
    .parameter "ptOmt"
    .parameter "szPath"
    .parameter "action"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 338
    const/4 v5, 0x0

    .line 339
    .local v5, szPtr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 341
    .local v4, szNodeName:Ljava/lang/String;
    iget-object v9, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    iget-object v0, v9, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 342
    .local v0, basenode:Lcom/wssyncmldm/eng/core/XDMVnode;
    iget-object v6, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->m_szServerId:Ljava/lang/String;

    .line 343
    .local v6, szServerId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 345
    .local v2, rootcheck:Z
    const/4 v3, 0x0

    .line 347
    .local v3, searchSlash:I
    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 348
    if-ltz v3, :cond_1e

    .line 350
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 351
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 354
    :cond_1e
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "strnodename :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ptr :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 356
    :cond_3a
    :goto_3a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 417
    :cond_40
    :goto_40
    return v7

    .line 358
    :cond_41
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 360
    if-nez v2, :cond_80

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2f

    if-eq v9, v10, :cond_59

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_80

    .line 362
    :cond_59
    const/4 v2, 0x1

    .line 363
    iget-object v9, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    iget-object v1, v9, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 378
    :cond_5e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_66

    if-eq p2, v7, :cond_40

    .line 383
    :cond_66
    const-string v9, "."

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_af

    .line 385
    iget-object v9, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    iget-object v1, v9, Lcom/wssyncmldm/eng/core/XDMOmVfs;->root:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 396
    .local v1, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_72
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b9

    .line 398
    invoke-static {v1, p2, v6}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckNodeAcl(Lcom/wssyncmldm/eng/core/XDMVnode;ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b9

    move v7, v8

    .line 400
    goto :goto_40

    .line 367
    .end local v1           #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    :cond_80
    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 368
    if-ltz v3, :cond_3a

    .line 370
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 371
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 372
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "strnodename :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ptr :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_3a

    .line 389
    :cond_af
    iget-object v9, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v9, v4, v0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;->xdmOmVfsGetNode(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;Lcom/wssyncmldm/eng/core/XDMVnode;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    .line 390
    .restart local v1       #node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v1, :cond_72

    move v7, v8

    .line 392
    goto :goto_40

    .line 404
    :cond_b9
    move-object v0, v1

    .line 405
    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 406
    if-ltz v3, :cond_40

    .line 408
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 409
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 410
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "strnodename :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ptr :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_3a
.end method

.method public static xdmOmCheckNodeAcl(Lcom/wssyncmldm/eng/core/XDMVnode;ILjava/lang/String;)Z
    .registers 8
    .parameter "ptNode"
    .parameter "nAcl"
    .parameter "szServerId"

    .prologue
    const/4 v2, 0x0

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, ptList:Lcom/wssyncmldm/eng/core/XDMOmList;
    const/4 v0, 0x0

    .line 255
    .local v0, ptAcl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 257
    if-nez v1, :cond_32

    .line 284
    :goto_7
    return v2

    .line 264
    :cond_8
    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    .end local v0           #ptAcl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    check-cast v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;

    .line 266
    .restart local v0       #ptAcl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    iget-object v3, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_30

    .line 268
    :cond_1e
    iget v3, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    if-nez v3, :cond_29

    .line 270
    iget-object v2, p0, Lcom/wssyncmldm/eng/core/XDMVnode;->ptParentNode:Lcom/wssyncmldm/eng/core/XDMVnode;

    invoke-static {v2, p1, p2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckNodeAcl(Lcom/wssyncmldm/eng/core/XDMVnode;ILjava/lang/String;)Z

    move-result v2

    goto :goto_7

    .line 274
    :cond_29
    iget v3, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    and-int/2addr v3, p1

    if-ne v3, p1, :cond_30

    .line 276
    const/4 v2, 0x1

    goto :goto_7

    .line 281
    :cond_30
    iget-object v1, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->next:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 262
    :cond_32
    if-nez v1, :cond_8

    goto :goto_7
.end method

.method public static xdmOmCheckNodePathDepth(Ljava/lang/String;)Z
    .registers 6
    .parameter "szNodePath"

    .prologue
    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, nCount:I
    const/4 v0, 0x0

    .line 510
    .local v0, index:I
    move-object v2, p0

    .line 512
    .local v2, szPath:Ljava/lang/String;
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_10

    .line 521
    const/16 v3, 0xf

    if-le v1, v3, :cond_1d

    .line 523
    const/4 v3, 0x0

    .line 526
    :goto_f
    return v3

    .line 514
    :cond_10
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1a

    .line 516
    add-int/lit8 v1, v1, 0x1

    .line 512
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 526
    :cond_1d
    const/4 v3, 0x1

    goto :goto_f
.end method

.method public static xdmOmDefaultACL(Ljava/lang/Object;Ljava/lang/String;II)V
    .registers 9
    .parameter "pOM"
    .parameter "szPath"
    .parameter "aclValue"
    .parameter "scope"

    .prologue
    .line 538
    move-object v3, p0

    check-cast v3, Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 543
    .local v3, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    invoke-static {v3, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v2

    .line 544
    .local v2, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-eqz v2, :cond_14

    .line 546
    iget-object v1, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->acl:Lcom/wssyncmldm/eng/core/XDMOmList;

    .line 547
    .local v1, item:Lcom/wssyncmldm/eng/core/XDMOmList;
    iget-object v0, v1, Lcom/wssyncmldm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;

    .line 548
    .local v0, acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    iput p2, v0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    .line 549
    iput p3, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->scope:I

    .line 555
    .end local v0           #acl:Lcom/wssyncmldm/eng/core/XDMOmAcl;
    .end local v1           #item:Lcom/wssyncmldm/eng/core/XDMOmList;
    :goto_13
    return-void

    .line 553
    :cond_14
    const-string v4, "Not Exist"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public static xdmOmDelete(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Z)I
    .registers 7
    .parameter "ptOmt"
    .parameter "szPath"
    .parameter "deletechild"

    .prologue
    const/4 v2, -0x3

    .line 201
    iget-object v3, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v3, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsPath2Node(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v0

    .line 202
    .local v0, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v0, :cond_a

    .line 218
    :cond_9
    :goto_9
    return v2

    .line 207
    :cond_a
    const/4 v3, 0x2

    invoke-static {p0, v0, v3}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckAcl(Lcom/wssyncmldm/eng/core/XDMOmTree;Lcom/wssyncmldm/eng/core/XDMVnode;I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 209
    const/4 v2, -0x5

    goto :goto_9

    .line 212
    :cond_13
    iget-object v3, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v3, v0, p2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsRemoveNode(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;Z)I

    move-result v1

    .line 213
    .local v1, ret:I
    if-nez v1, :cond_9

    .line 218
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public static xdmOmDeleteImplicit(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;Z)I
    .registers 7
    .parameter "ptOmt"
    .parameter "szPath"
    .parameter "deletechild"

    .prologue
    const/4 v2, -0x3

    .line 569
    iget-object v3, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v3, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsPath2Node(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v0

    .line 570
    .local v0, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v0, :cond_a

    .line 581
    :cond_9
    :goto_9
    return v2

    .line 575
    :cond_a
    iget-object v3, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v3, v0, p2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsRemoveNode(Lcom/wssyncmldm/eng/core/XDMOmVfs;Lcom/wssyncmldm/eng/core/XDMVnode;Z)I

    move-result v1

    .line 576
    .local v1, ret:I
    if-nez v1, :cond_9

    .line 581
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public static xdmOmEnd(Lcom/wssyncmldm/eng/core/XDMOmTree;)I
    .registers 3
    .parameter "ptOmt"

    .prologue
    .line 34
    if-nez p0, :cond_4

    .line 36
    const/4 v1, -0x3

    .line 47
    :goto_3
    return v1

    .line 41
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsSaveFs(Lcom/wssyncmldm/eng/core/XDMOmVfs;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_b

    .line 47
    :goto_9
    const/4 v1, 0x0

    goto :goto_3

    .line 43
    :catch_b
    move-exception v0

    .line 45
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static xdmOmGetChild(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 8
    .parameter "om"
    .parameter "szPath"
    .parameter "bufs"
    .parameter "maxnum"

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 301
    .local v1, i:I
    iget-object v3, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v3, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsPath2Node(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v2

    .line 302
    .local v2, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v2, :cond_b

    .line 304
    const/4 p3, -0x6

    .line 326
    .end local p3
    :cond_a
    :goto_a
    return p3

    .line 307
    .restart local p3
    :cond_b
    iget-object v0, v2, Lcom/wssyncmldm/eng/core/XDMVnode;->childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 309
    .local v0, cur:Lcom/wssyncmldm/eng/core/XDMVnode;
    :goto_d
    if-nez v0, :cond_11

    move p3, v1

    .line 326
    goto :goto_a

    .line 311
    :cond_11
    if-ge v1, p3, :cond_a

    .line 316
    iget-object v3, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 318
    const/4 p3, -0x3

    goto :goto_a

    .line 320
    :cond_1d
    iget-object v3, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->m_szName:Ljava/lang/String;

    aput-object v3, p2, v1

    .line 322
    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMVnode;->next:Lcom/wssyncmldm/eng/core/XDMVnode;

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public static xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;
    .registers 3
    .parameter "ptOmt"
    .parameter "szPath"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v0, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsPath2Node(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v0

    return-object v0
.end method

.method public static xdmOmInit(Lcom/wssyncmldm/eng/core/XDMOmTree;)I
    .registers 3
    .parameter "ptOmt"

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 20
    .local v0, ret:I
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsInit(Lcom/wssyncmldm/eng/core/XDMOmVfs;)I

    move-result v0

    .line 21
    if-nez v0, :cond_b

    .line 22
    const/4 v1, 0x0

    .line 24
    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x3

    goto :goto_a
.end method

.method public static xdmOmMakeParentPath(Ljava/lang/String;[C)V
    .registers 8
    .parameter "szIn"
    .parameter "out"

    .prologue
    const/4 v5, 0x0

    .line 428
    const/4 v2, -0x1

    .line 430
    .local v2, pos:I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 453
    :goto_8
    return-void

    .line 432
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 433
    .local v1, len:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_f
    if-gez v0, :cond_16

    .line 442
    :goto_11
    if-gez v2, :cond_23

    .line 444
    aput-char v5, p1, v5

    goto :goto_8

    .line 435
    :cond_16
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_20

    .line 437
    move v2, v0

    .line 438
    goto :goto_11

    .line 433
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 448
    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-lt v0, v2, :cond_29

    .line 452
    aput-char v5, p1, v0

    goto :goto_8

    .line 450
    :cond_29
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, p1, v0

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_24
.end method

.method public static xdmOmProcessCmdImplicitAdd(Ljava/lang/Object;Ljava/lang/String;II)Z
    .registers 13
    .parameter "pOM"
    .parameter "szNodeName"
    .parameter "aclValue"
    .parameter "bStart"

    .prologue
    const/4 v2, 0x0

    .line 465
    const/4 v7, 0x0

    check-cast v7, [C

    .line 466
    .local v7, parentNode:[C
    const/4 v8, 0x0

    .line 467
    .local v8, szParentNodeName:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, node:Lcom/wssyncmldm/eng/core/XDMVnode;
    move-object v0, p0

    .line 468
    check-cast v0, Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 470
    .local v0, om:Lcom/wssyncmldm/eng/core/XDMOmTree;
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 472
    const-string v1, "ROOT NODE not found"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 498
    :cond_16
    :goto_16
    return v2

    .line 476
    :cond_17
    if-lez p3, :cond_1f

    .line 478
    invoke-static {p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmCheckNodePathDepth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 484
    :cond_1f
    const/16 v1, 0x100

    new-array v7, v1, [C

    .line 486
    invoke-static {p1, v7}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmMakeParentPath(Ljava/lang/String;[C)V

    .line 487
    invoke-static {v7}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v8

    .line 488
    invoke-static {v0, v8}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v6

    .line 490
    if-nez v6, :cond_33

    .line 492
    invoke-static {v0, v8, p2, v2}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmProcessCmdImplicitAdd(Ljava/lang/Object;Ljava/lang/String;II)Z

    .line 495
    :cond_33
    const-string v4, ""

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    .line 496
    const/4 v1, 0x2

    invoke-static {v0, p1, p2, v1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmDefaultACL(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 498
    const/4 v2, 0x1

    goto :goto_16
.end method

.method public static xdmOmRead(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;I[CI)I
    .registers 7
    .parameter "ptOmt"
    .parameter "szPath"
    .parameter "nOffset"
    .parameter "databuf"
    .parameter "bufsize"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, ret:I
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v1, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmvfsCheckPath(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 118
    const/4 v1, -0x1

    .line 126
    :goto_a
    return v1

    .line 120
    :cond_b
    iget-object v1, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmvfsReadObj(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;I[CI)I

    move-result v0

    .line 121
    if-gez v0, :cond_15

    .line 123
    const/4 v1, -0x3

    goto :goto_a

    :cond_15
    move v1, v0

    .line 126
    goto :goto_a
.end method

.method public static xdmOmSetServerId(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;)I
    .registers 5
    .parameter "ptOmt"
    .parameter "szServerId"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    if-le v1, v2, :cond_17

    .line 60
    :cond_15
    const/4 v0, -0x3

    .line 64
    :goto_16
    return v0

    .line 63
    :cond_17
    iput-object p1, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->m_szServerId:Ljava/lang/String;

    goto :goto_16
.end method

.method public static xdmOmWrite(Lcom/wssyncmldm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I
    .registers 13
    .parameter "ptOmt"
    .parameter "szPath"
    .parameter "nTotalSize"
    .parameter "nOffset"
    .parameter "pData"
    .parameter "nSize"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-static {v0, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsCreatePath(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;)I

    move-result v6

    .line 92
    .local v6, ret:I
    if-eqz p4, :cond_18

    if-lez p5, :cond_18

    .line 94
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsWriteObj(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;IILjava/lang/Object;I)I

    move-result v6

    .line 95
    if-gez v6, :cond_18

    .line 97
    const/4 p5, -0x3

    .line 101
    .end local p5
    :cond_18
    return p5
.end method

.method public static xdmOmvfsCheckPath(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;)Z
    .registers 4
    .parameter "pVfs"
    .parameter "szPath"

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsPath2Node(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v0

    .line 140
    .local v0, ptNode:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v0, :cond_8

    .line 142
    const/4 v1, 0x0

    .line 145
    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static xdmOmvfsReadObj(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;I[CI)I
    .registers 10
    .parameter "pVfs"
    .parameter "szPath"
    .parameter "nOffset"
    .parameter "pBuff"
    .parameter "nBuffSize"

    .prologue
    const/4 v3, -0x4

    .line 163
    invoke-static {p0, p1}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsPath2Node(Lcom/wssyncmldm/eng/core/XDMOmVfs;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMVnode;

    move-result-object v1

    .line 164
    .local v1, ptNode:Lcom/wssyncmldm/eng/core/XDMVnode;
    if-nez v1, :cond_8

    .line 186
    :cond_7
    :goto_7
    return v3

    .line 168
    :cond_8
    iget v4, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    if-lez v4, :cond_7

    iget v4, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    if-ltz v4, :cond_7

    .line 170
    add-int v0, p4, p2

    .line 171
    .local v0, blocksize:I
    iget v4, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    if-le v0, v4, :cond_1b

    .line 173
    iget v4, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->size:I

    sub-int v4, v0, v4

    sub-int/2addr p4, v4

    .line 175
    :cond_1b
    iget v4, v1, Lcom/wssyncmldm/eng/core/XDMVnode;->vaddr:I

    add-int/2addr v4, p2

    invoke-static {p0, v4, p3, p4}, Lcom/wssyncmldm/eng/core/XDMOmLib;->xdmOmVfsLoadFsData(Lcom/wssyncmldm/eng/core/XDMOmVfs;I[CI)I

    move-result v2

    .line 176
    .local v2, ret:I
    if-nez v2, :cond_7

    move v3, p4

    .line 186
    goto :goto_7
.end method
