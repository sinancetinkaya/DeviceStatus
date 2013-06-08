.class public Lcom/wssyncmldm/noti/XNOTIHandler;
.super Ljava/lang/Object;
.source "XNOTIHandler.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XNOTIInterface;


# static fields
.field public static g_tNotiMsg:[Lcom/wssyncmldm/noti/XNOTI;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v1, v3, [Lcom/wssyncmldm/noti/XNOTI;

    sput-object v1, Lcom/wssyncmldm/noti/XNOTIHandler;->g_tNotiMsg:[Lcom/wssyncmldm/noti/XNOTI;

    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v3, :cond_17

    .line 31
    sget-object v1, Lcom/wssyncmldm/noti/XNOTIHandler;->g_tNotiMsg:[Lcom/wssyncmldm/noti/XNOTI;

    new-instance v2, Lcom/wssyncmldm/noti/XNOTI;

    invoke-direct {v2}, Lcom/wssyncmldm/noti/XNOTI;-><init>()V

    aput-object v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 33
    :cond_17
    return-void
.end method

.method public static final XDM_TO_HEX(I)B
    .registers 3
    .parameter "val"

    .prologue
    .line 19
    const/16 v1, 0x9

    if-le p0, v1, :cond_a

    add-int/lit8 v1, p0, -0xa

    add-int/lit8 v1, v1, 0x41

    :goto_8
    int-to-byte v0, v1

    .line 20
    .local v0, ret:B
    return v0

    .line 19
    .end local v0           #ret:B
    :cond_a
    add-int/lit8 v1, p0, 0x30

    goto :goto_8
.end method

.method public static xnotiPushHdleCompareNotiDigest([BILcom/wssyncmldm/noti/XNOTI;I)I
    .registers 12
    .parameter "pBody"
    .parameter "nBodyLen"
    .parameter "pNotiMsg"
    .parameter "nAppId"

    .prologue
    const/4 v5, -0x1

    .line 139
    const/4 v3, 0x0

    .line 141
    .local v3, szDigest:Ljava/lang/String;
    iget-object v6, p2, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    if-nez v6, :cond_c

    .line 143
    const-string v6, "triggerHeader is NULL"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 177
    :goto_b
    return v5

    .line 147
    :cond_c
    iget-object v6, p2, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iget-object v6, v6, Lcom/wssyncmldm/noti/XNOTITriggerheader;->m_szServerID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 149
    const-string v6, "pServerID is NULL"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_b

    .line 153
    :cond_1c
    add-int/lit8 v1, p1, -0x10

    .line 154
    .local v1, len:I
    new-array v2, v1, [B

    .line 155
    .local v2, packetbody:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    if-ge v0, v1, :cond_2a

    .line 157
    aget-byte v6, p0, v0

    aput-byte v6, v2, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 160
    :cond_2a
    iget-object v6, p2, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iget-object v6, v6, Lcom/wssyncmldm/noti/XNOTITriggerheader;->m_szServerID:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {p3, v6, v7, v2, v1}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbGetNotiDigest(ILjava/lang/String;I[BI)Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 164
    const-string v6, "pDigest is NULL "

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_b

    .line 168
    :cond_3f
    new-instance v4, Ljava/lang/String;

    iget-object v6, p2, Lcom/wssyncmldm/noti/XNOTI;->digestdata:[B

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    .line 169
    .local v4, szDigestdata:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 171
    const-string v6, "Compare Fail"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_b

    .line 176
    :cond_52
    const-string v5, "Compare Success"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 177
    const/4 v5, 0x0

    goto :goto_b
.end method

.method public static xnotiPushHdleInitNotiMsg(Lcom/wssyncmldm/noti/XNOTI;I)V
    .registers 2
    .parameter "pNotiMsg"
    .parameter "appId"

    .prologue
    .line 107
    iput p1, p0, Lcom/wssyncmldm/noti/XNOTI;->appId:I

    .line 108
    return-void
.end method

.method public static xnotiPushHdleMessageFree(Lcom/wssyncmldm/noti/XNOTIMessage;)V
    .registers 2
    .parameter "pObj"

    .prologue
    const/4 v0, 0x0

    .line 37
    if-nez p0, :cond_4

    .line 44
    :goto_3
    return-void

    .line 40
    :cond_4
    iput-object v0, p0, Lcom/wssyncmldm/noti/XNOTIMessage;->pData:[B

    .line 41
    iput-object v0, p0, Lcom/wssyncmldm/noti/XNOTIMessage;->pHeader:[B

    .line 42
    iput-object v0, p0, Lcom/wssyncmldm/noti/XNOTIMessage;->pBody:[B

    .line 43
    const/4 p0, 0x0

    .line 44
    goto :goto_3
.end method

.method public static xnotiPushHdleParsingSyncNoti([BII)I
    .registers 11
    .parameter "pPushBody"
    .parameter "bodySize"
    .parameter "nAppId"

    .prologue
    const/4 v5, -0x1

    .line 295
    const/4 v3, 0x0

    .line 296
    .local v3, pNotiMsg:Lcom/wssyncmldm/noti/XNOTI;
    const/4 v2, 0x0

    .line 297
    .local v2, notiHeaderLen:I
    const/4 v1, 0x0

    .line 298
    .local v1, nRet:I
    const-string v6, ""

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 300
    sget-object v6, Lcom/wssyncmldm/noti/XNOTIHandler;->g_tNotiMsg:[Lcom/wssyncmldm/noti/XNOTI;

    aget-object v3, v6, p2

    .line 301
    invoke-static {p0}, Lcom/wssyncmldm/noti/XNOTIHandler;->xnotiPushHdleParsingSyncNotiDigest([B)[B

    move-result-object v6

    iput-object v6, v3, Lcom/wssyncmldm/noti/XNOTI;->digestdata:[B

    .line 303
    array-length v6, p0

    add-int/lit8 v6, v6, -0x10

    new-array v4, v6, [B

    .line 304
    .local v4, tmp:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    array-length v6, p0

    add-int/lit8 v6, v6, -0x10

    if-ge v0, v6, :cond_27

    .line 306
    add-int/lit8 v6, v0, 0x10

    aget-byte v6, p0, v6

    aput-byte v6, v4, v0

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 309
    :cond_27
    invoke-static {v4, v3}, Lcom/wssyncmldm/noti/XNOTIHandler;->xnotiPushHdleParsingSyncNotiHeader([BLcom/wssyncmldm/noti/XNOTI;)I

    move-result v2

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " bodySize["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], notiHeaderLen["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] DigestLength["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 311
    if-nez v2, :cond_65

    .line 313
    const-string v6, "notiHeaderLen is 0"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 330
    :cond_64
    :goto_64
    return v5

    .line 316
    :cond_65
    invoke-static {p0, p1, v3, p2}, Lcom/wssyncmldm/noti/XNOTIHandler;->xnotiPushHdleCompareNotiDigest([BILcom/wssyncmldm/noti/XNOTI;I)I

    move-result v1

    .line 320
    if-eqz v1, :cond_71

    .line 322
    invoke-static {p0, p1, v3}, Lcom/wssyncmldm/noti/XNOTIHandler;->xnotiReSyncCompare([BILcom/wssyncmldm/noti/XNOTI;)I

    move-result v1

    .line 323
    if-nez v1, :cond_64

    .line 330
    :cond_71
    const/4 v5, 0x0

    goto :goto_64
.end method

.method private xnotiPushHdleParsingSyncNotiBody([BILcom/wssyncmldm/noti/XNOTI;)V
    .registers 14
    .parameter "pPushBody"
    .parameter "notiBodyLen"
    .parameter "pNotiMsg"

    .prologue
    const/4 v9, 0x0

    .line 254
    new-instance v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;

    invoke-direct {v2}, Lcom/wssyncmldm/noti/XNOTITriggerbody;-><init>()V

    .line 255
    .local v2, body:Lcom/wssyncmldm/noti/XNOTITriggerbody;
    const/4 v0, 0x5

    .line 256
    .local v0, Gap:I
    const/4 v1, 0x0

    .line 257
    .local v1, Pos:I
    const/4 v5, 0x0

    .line 259
    .local v5, venderLen:I
    const-string v6, ""

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 260
    if-eqz p1, :cond_aa

    .line 262
    iget-object v2, p3, Lcom/wssyncmldm/noti/XNOTI;->triggerBody:Lcom/wssyncmldm/noti/XNOTITriggerbody;

    .line 263
    aget-byte v6, p1, v9

    shr-int/lit8 v6, v6, 0x4

    iput v6, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->number_Of_Syncs:I

    .line 265
    iget v6, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->number_Of_Syncs:I

    new-array v6, v6, [Lcom/wssyncmldm/noti/XNOTISyncInfo;

    iput-object v6, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->syncInfo:[Lcom/wssyncmldm/noti/XNOTISyncInfo;

    .line 267
    const/4 v3, 0x0

    .local v3, nCount:I
    :goto_1f
    iget v6, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->number_Of_Syncs:I

    if-ge v3, v6, :cond_8f

    .line 270
    iget-object v6, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->syncInfo:[Lcom/wssyncmldm/noti/XNOTISyncInfo;

    new-instance v7, Lcom/wssyncmldm/noti/XNOTISyncInfo;

    invoke-direct {v7}, Lcom/wssyncmldm/noti/XNOTISyncInfo;-><init>()V

    aput-object v7, v6, v3

    .line 271
    iget-object v6, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->syncInfo:[Lcom/wssyncmldm/noti/XNOTISyncInfo;

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p1, v7

    shr-int/lit8 v7, v7, 0x4

    or-int/lit16 v7, v7, 0xc8

    iput v7, v6, Lcom/wssyncmldm/noti/XNOTISyncInfo;->syncType:I

    .line 272
    iget-object v6, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->syncInfo:[Lcom/wssyncmldm/noti/XNOTISyncInfo;

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xf0

    iput v7, v6, Lcom/wssyncmldm/noti/XNOTISyncInfo;->future:I

    .line 273
    iget-object v6, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->syncInfo:[Lcom/wssyncmldm/noti/XNOTISyncInfo;

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v8, v1, 0x3

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, v1, 0x4

    aget-byte v8, p1, v8

    or-int/2addr v7, v8

    iput v7, v6, Lcom/wssyncmldm/noti/XNOTISyncInfo;->contentType:I

    .line 274
    iget-object v6, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->syncInfo:[Lcom/wssyncmldm/noti/XNOTISyncInfo;

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x5

    aget-byte v7, p1, v7

    iput v7, v6, Lcom/wssyncmldm/noti/XNOTISyncInfo;->serverUriLen:I

    .line 276
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 277
    .local v4, szBody:Ljava/lang/String;
    iget-object v6, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->syncInfo:[Lcom/wssyncmldm/noti/XNOTISyncInfo;

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x6

    iget-object v8, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->syncInfo:[Lcom/wssyncmldm/noti/XNOTISyncInfo;

    aget-object v8, v8, v3

    iget v8, v8, Lcom/wssyncmldm/noti/XNOTISyncInfo;->serverUriLen:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x6

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/wssyncmldm/noti/XNOTISyncInfo;->m_szServerUri:Ljava/lang/String;

    .line 278
    add-int v6, v1, v0

    iget-object v7, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->syncInfo:[Lcom/wssyncmldm/noti/XNOTISyncInfo;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/wssyncmldm/noti/XNOTISyncInfo;->serverUriLen:I

    add-int v1, v6, v7

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 281
    .end local v4           #szBody:Ljava/lang/String;
    :cond_8f
    sub-int v5, p2, v1

    .line 282
    iput v9, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->vendor:I

    .line 284
    const/4 v3, 0x0

    :goto_94
    if-ge v3, v5, :cond_aa

    .line 286
    iget v6, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->vendor:I

    shl-int/lit8 v6, v6, 0x8

    iput v6, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->vendor:I

    .line 287
    iget v6, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->vendor:I

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p1, v7

    or-int/2addr v6, v7

    iput v6, v2, Lcom/wssyncmldm/noti/XNOTITriggerbody;->vendor:I

    .line 288
    add-int/lit8 v1, v1, 0x1

    .line 284
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    .line 291
    .end local v3           #nCount:I
    :cond_aa
    return-void
.end method

.method public static xnotiPushHdleParsingSyncNotiDigest([B)[B
    .registers 6
    .parameter "pPushBody"

    .prologue
    const/16 v4, 0x10

    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, szDigest:[B
    if-eqz p0, :cond_13

    .line 187
    new-array v1, v4, [B

    .line 188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v4, :cond_11

    .line 190
    aget-byte v3, p0, v0

    aput-byte v3, v1, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    move-object v2, v1

    .line 195
    .end local v0           #i:I
    .end local v1           #szDigest:[B
    .local v2, szDigest:[B
    :goto_12
    return-object v2

    .end local v2           #szDigest:[B
    .restart local v1       #szDigest:[B
    :cond_13
    move-object v2, v1

    .end local v1           #szDigest:[B
    .restart local v2       #szDigest:[B
    goto :goto_12
.end method

.method public static xnotiPushHdleParsingSyncNotiHeader([BLcom/wssyncmldm/noti/XNOTI;)I
    .registers 16
    .parameter "pPushBody2"
    .parameter "pNotiMsg"

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v7, 0x1

    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, len_noti_header:I
    array-length v8, p0

    new-array v4, v8, [B

    .line 202
    .local v4, pPushBody:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    array-length v8, p0

    if-ge v0, v8, :cond_14

    .line 204
    aget-byte v8, p0, v0

    aput-byte v8, v4, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 207
    :cond_14
    if-eqz v4, :cond_e4

    .line 209
    iget-object v8, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    aget-byte v9, v4, v6

    shl-int/lit8 v9, v9, 0x8

    aget-byte v10, v4, v7

    and-int/lit16 v10, v10, 0xc0

    or-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x6

    iput v9, v8, Lcom/wssyncmldm/noti/XNOTITriggerheader;->version:I

    .line 210
    aget-byte v8, v4, v7

    and-int/lit8 v8, v8, 0x30

    shr-int/lit8 v8, v8, 0x4

    packed-switch v8, :pswitch_data_e6

    .line 222
    iget-object v8, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iput v13, v8, Lcom/wssyncmldm/noti/XNOTITriggerheader;->uiMode:I

    .line 226
    :goto_32
    aget-byte v8, v4, v7

    and-int/lit8 v8, v8, 0x8

    shr-int/lit8 v1, v8, 0x3

    .line 227
    .local v1, init:I
    iget-object v8, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    if-lez v1, :cond_3d

    move v6, v7

    :cond_3d
    iput v6, v8, Lcom/wssyncmldm/noti/XNOTITriggerheader;->initiator:I

    .line 228
    iget-object v6, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    aget-byte v7, v4, v7

    and-int/lit8 v7, v7, 0x7

    aget-byte v8, v4, v11

    or-int/2addr v7, v8

    aget-byte v8, v4, v12

    or-int/2addr v7, v8

    aget-byte v8, v4, v13

    or-int/2addr v7, v8

    iput v7, v6, Lcom/wssyncmldm/noti/XNOTITriggerheader;->future:I

    .line 229
    iget-object v6, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    const/4 v7, 0x5

    invoke-static {v4, v7, v11}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibToHexString([BII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/wssyncmldm/noti/XNOTITriggerheader;->m_szSessionID:Ljava/lang/String;

    .line 230
    iget-object v6, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    const/4 v7, 0x7

    aget-byte v7, v4, v7

    iput v7, v6, Lcom/wssyncmldm/noti/XNOTITriggerheader;->lenServerID:I

    .line 232
    add-int/lit8 v3, v3, 0x8

    .line 235
    iget-object v6, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iget v6, v6, Lcom/wssyncmldm/noti/XNOTITriggerheader;->lenServerID:I

    new-array v5, v6, [B

    .line 236
    .local v5, tmp:[B
    const/4 v2, 0x0

    .local v2, j:I
    :goto_69
    iget-object v6, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iget v6, v6, Lcom/wssyncmldm/noti/XNOTITriggerheader;->lenServerID:I

    if-ge v2, v6, :cond_87

    .line 238
    add-int/lit8 v6, v2, 0x8

    aget-byte v6, p0, v6

    aput-byte v6, v5, v2

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 213
    .end local v1           #init:I
    .end local v2           #j:I
    .end local v5           #tmp:[B
    :pswitch_78
    iget-object v8, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iput v7, v8, Lcom/wssyncmldm/noti/XNOTITriggerheader;->uiMode:I

    goto :goto_32

    .line 216
    :pswitch_7d
    iget-object v8, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iput v11, v8, Lcom/wssyncmldm/noti/XNOTITriggerheader;->uiMode:I

    goto :goto_32

    .line 219
    :pswitch_82
    iget-object v8, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iput v12, v8, Lcom/wssyncmldm/noti/XNOTITriggerheader;->uiMode:I

    goto :goto_32

    .line 240
    .restart local v1       #init:I
    .restart local v2       #j:I
    .restart local v5       #tmp:[B
    :cond_87
    iget-object v6, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v7, v6, Lcom/wssyncmldm/noti/XNOTITriggerheader;->m_szServerID:Ljava/lang/String;

    .line 241
    iget-object v6, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iget v6, v6, Lcom/wssyncmldm/noti/XNOTITriggerheader;->lenServerID:I

    add-int/lit8 v3, v6, 0x8

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ServerID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iget-object v7, v7, Lcom/wssyncmldm/noti/XNOTITriggerheader;->m_szServerID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 243
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SessionID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iget-object v7, v7, Lcom/wssyncmldm/noti/XNOTITriggerheader;->m_szSessionID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UI Mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iget v7, v7, Lcom/wssyncmldm/noti/XNOTITriggerheader;->uiMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 247
    .end local v1           #init:I
    .end local v2           #j:I
    .end local v5           #tmp:[B
    :cond_e4
    return v3

    .line 210
    nop

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_78
        :pswitch_7d
        :pswitch_82
    .end packed-switch
.end method

.method private xnotiPushHdleSDMMakeToHex([B[BI)V
    .registers 8
    .parameter "pMacData"
    .parameter "Mac_code"
    .parameter "length"

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, index:I
    new-array v2, p3, [B

    .line 338
    .local v2, pBuf:[B
    move-object v2, p1

    .line 339
    const/4 v0, 0x0

    move v1, v0

    .end local v0           #index:I
    .local v1, index:I
    :goto_6
    if-ge v1, p3, :cond_26

    .line 341
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p2, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Lcom/wssyncmldm/noti/XNOTIHandler;->XDM_TO_HEX(I)B

    move-result v3

    aput-byte v3, v2, v1

    .line 342
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p2, v1

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Lcom/wssyncmldm/noti/XNOTIHandler;->XDM_TO_HEX(I)B

    move-result v3

    aput-byte v3, v2, v0

    .line 339
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    move v1, v0

    .end local v0           #index:I
    .restart local v1       #index:I
    goto :goto_6

    .line 344
    :cond_26
    return-void
.end method

.method public static xnotiPushHdleWSPHeader([BI)I
    .registers 6
    .parameter "buf"
    .parameter "len"

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, lenWSP:I
    const/4 v0, 0x0

    .line 92
    .local v0, LenHeader:I
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_13

    .line 94
    const/4 v2, 0x2

    aget-byte v1, p0, v2

    .line 95
    add-int/lit8 v0, v1, 0x3

    .line 97
    if-ge v0, p1, :cond_13

    move v2, v0

    .line 102
    :goto_12
    return v2

    :cond_13
    const/4 v2, -0x1

    goto :goto_12
.end method

.method public static xnotiPushHdleWSPHeader([BII)Z
    .registers 7
    .parameter "buf"
    .parameter "len"
    .parameter "LenHeader"

    .prologue
    const/4 v1, 0x1

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, lenWSP:I
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_11

    .line 76
    const/4 v2, 0x2

    aget-byte v0, p0, v2

    .line 77
    add-int/lit8 p2, v0, 0x3

    .line 79
    if-ge p2, p1, :cond_11

    .line 84
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static xnotiPushHdlrParsingWSPHeader([BI)Lcom/wssyncmldm/noti/XNOTIWapPush;
    .registers 26
    .parameter "szMsg"
    .parameter "nMsgLen"

    .prologue
    .line 436
    const/4 v14, 0x0

    .line 437
    .local v14, ptMsg:Lcom/wssyncmldm/noti/XNOTIWapPush;
    const/4 v11, 0x0

    .line 438
    .local v11, nLoc:I
    const/16 v20, 0x0

    .line 439
    .local v20, value:I
    if-eqz p0, :cond_d

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    if-nez v21, :cond_15

    .line 441
    :cond_d
    const-string v21, "pData is NULL"

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 442
    const/16 v21, 0x0

    .line 623
    :goto_14
    return-object v21

    .line 445
    :cond_15
    const/4 v11, 0x1

    .line 446
    aget-byte v21, p0, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_43

    .line 448
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Not Support PDU Type="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 449
    const/16 v21, 0x0

    goto :goto_14

    .line 452
    :cond_43
    new-instance v14, Lcom/wssyncmldm/noti/XNOTIWapPush;

    .end local v14           #ptMsg:Lcom/wssyncmldm/noti/XNOTIWapPush;
    invoke-direct {v14}, Lcom/wssyncmldm/noti/XNOTIWapPush;-><init>()V

    .line 453
    .restart local v14       #ptMsg:Lcom/wssyncmldm/noti/XNOTIWapPush;
    const/4 v11, 0x2

    .line 454
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    aget-byte v22, p0, v11

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nHeaderLen:I

    .line 455
    add-int/lit8 v11, v11, 0x1

    .line 456
    aget-byte v21, p0, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    const/16 v21, 0x1f

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_69

    .line 458
    add-int/lit8 v11, v11, 0x2

    .line 461
    :cond_69
    aget-byte v21, p0, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_13a

    aget-byte v21, p0, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    const/16 v21, 0x80

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_13a

    .line 464
    const/4 v7, 0x0

    .local v7, i:I
    const/4 v2, 0x0

    .local v2, Loc:I
    const/4 v8, 0x0

    .line 465
    .local v8, j:I
    move v2, v11

    .line 466
    :goto_8d
    aget-byte v21, p0, v11

    if-eqz v21, :cond_96

    .line 468
    add-int/lit8 v7, v7, 0x1

    .line 469
    add-int/lit8 v11, v11, 0x1

    goto :goto_8d

    .line 471
    :cond_96
    new-array v5, v7, [B

    .line 472
    .local v5, Mime:[B
    :goto_98
    aget-byte v19, p0, v2

    .local v19, txt:B
    if-eqz v19, :cond_a3

    .line 474
    aput-byte v19, v5, v8

    .line 475
    add-int/lit8 v8, v8, 0x1

    .line 476
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 478
    :cond_a3
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 479
    .local v18, szWbxml:Ljava/lang/String;
    const-string v21, "application/vnd.syncml.notification"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e6

    .line 481
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x36

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nContentType:I

    .line 500
    :goto_c2
    add-int/lit8 v11, v11, 0x1

    .line 535
    .end local v2           #Loc:I
    .end local v5           #Mime:[B
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v18           #szWbxml:Ljava/lang/String;
    .end local v19           #txt:B
    :goto_c4
    aget-byte v21, p0, v11

    if-nez v21, :cond_ca

    .line 537
    add-int/lit8 v11, v11, 0x1

    .line 540
    :cond_ca
    const-string v21, "SEC"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    new-array v6, v0, [B

    .line 541
    .local v6, a:[B
    const-string v21, "SEC"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v15

    .line 542
    .local v15, strLen:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_db
    if-ge v7, v15, :cond_202

    .line 544
    add-int v21, v11, v7

    aget-byte v21, p0, v21

    aput-byte v21, v6, v7

    .line 542
    add-int/lit8 v7, v7, 0x1

    goto :goto_db

    .line 483
    .end local v6           #a:[B
    .end local v15           #strLen:I
    .restart local v2       #Loc:I
    .restart local v5       #Mime:[B
    .restart local v8       #j:I
    .restart local v18       #szWbxml:Ljava/lang/String;
    .restart local v19       #txt:B
    :cond_e6
    const-string v21, "application/vnd.wap.connectivity-xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_ff

    .line 485
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x35

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nContentType:I

    goto :goto_c2

    .line 487
    :cond_ff
    const-string v21, "application/vnd.syncml.notification"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_118

    .line 489
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x44

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nContentType:I

    goto :goto_c2

    .line 491
    :cond_118
    const-string v21, "application/vnd.syncml.dm+wbxml"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_131

    .line 493
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x42

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nContentType:I

    goto :goto_c2

    .line 497
    :cond_131
    const-string v21, "Not Support Content Type"

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 498
    const/16 v21, 0x0

    goto/16 :goto_14

    .line 504
    .end local v2           #Loc:I
    .end local v5           #Mime:[B
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v18           #szWbxml:Ljava/lang/String;
    .end local v19           #txt:B
    :cond_13a
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Content Value:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-byte v22, p0, v11

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 505
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Mask Value:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x3

    aget-byte v22, p0, v22

    and-int/lit8 v22, v22, 0x7f

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 507
    aget-byte v21, p0, v11

    and-int/lit8 v21, v21, 0x7f

    const/16 v22, 0x36

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_199

    .line 509
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    aget-byte v22, p0, v11

    and-int/lit8 v22, v22, 0x7f

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nContentType:I

    .line 510
    const-string v21, "Content Type: XNOTI_MIMETYPE_WAP_CONNECTIVITY_WBXML"

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 532
    :goto_195
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c4

    .line 512
    :cond_199
    aget-byte v21, p0, v11

    and-int/lit8 v21, v21, 0x7f

    const/16 v22, 0x35

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1b9

    .line 514
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    aget-byte v22, p0, v11

    and-int/lit8 v22, v22, 0x7f

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nContentType:I

    .line 515
    const-string v21, "Content Type: XNOTI_MIMETYPE_WAP_CONNECTIVITY_XML"

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto :goto_195

    .line 517
    :cond_1b9
    aget-byte v21, p0, v11

    and-int/lit8 v21, v21, 0x7f

    const/16 v22, 0x44

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d9

    .line 519
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    aget-byte v22, p0, v11

    and-int/lit8 v22, v22, 0x7f

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nContentType:I

    .line 520
    const-string v21, "Content Type: XNOTI_MIMETYPE_SYNCML_DM_NOTI"

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto :goto_195

    .line 522
    :cond_1d9
    aget-byte v21, p0, v11

    and-int/lit8 v21, v21, 0x7f

    const/16 v22, 0x42

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f9

    .line 524
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    aget-byte v22, p0, v11

    and-int/lit8 v22, v22, 0x7f

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nContentType:I

    .line 525
    const-string v21, "Content Type: XNOTI_MIMETYPE_SYNCML_DM_WBXML"

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto :goto_195

    .line 529
    :cond_1f9
    const-string v21, "Not Support Content Type"

    invoke-static/range {v21 .. v21}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 530
    const/16 v21, 0x0

    goto/16 :goto_14

    .line 546
    .restart local v6       #a:[B
    .restart local v7       #i:I
    .restart local v15       #strLen:I
    :cond_202
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 548
    .local v17, szSec:Ljava/lang/String;
    aget-byte v21, p0, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    const/16 v21, 0x91

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_251

    .line 550
    add-int/lit8 v11, v11, 0x1

    .line 551
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    aget-byte v22, p0, v11

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nSEC:I

    .line 552
    add-int/lit8 v11, v11, 0x1

    .line 561
    :cond_22f
    :goto_22f
    aget-byte v21, p0, v11

    if-nez v21, :cond_235

    .line 563
    add-int/lit8 v11, v11, 0x1

    .line 565
    :cond_235
    const-string v21, "MAC"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    new-array v13, v0, [B

    .line 566
    .local v13, nMac:[B
    const-string v21, "MAC"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v15

    .line 567
    const/4 v7, 0x0

    :goto_246
    if-ge v7, v15, :cond_27e

    .line 569
    add-int v21, v11, v7

    aget-byte v21, p0, v21

    aput-byte v21, v13, v7

    .line 567
    add-int/lit8 v7, v7, 0x1

    goto :goto_246

    .line 554
    .end local v13           #nMac:[B
    :cond_251
    const-string v21, "SEC"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_22f

    .line 556
    const-string v21, "SEC"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v11

    add-int/lit8 v11, v21, 0x1

    .line 557
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    aget-byte v22, p0, v11

    and-int/lit8 v22, v22, 0xf

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nSEC:I

    .line 558
    add-int/lit8 v11, v11, 0x1

    goto :goto_22f

    .line 571
    .restart local v13       #nMac:[B
    :cond_27e
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([B)V

    .line 572
    .local v16, szMac:Ljava/lang/String;
    aget-byte v21, p0, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    const/16 v21, 0x92

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_323

    .line 575
    const/4 v7, 0x0

    const/4 v2, 0x0

    .restart local v2       #Loc:I
    const/4 v8, 0x0

    .line 576
    .restart local v8       #j:I
    add-int/lit8 v11, v11, 0x1

    .line 577
    move v2, v11

    .line 578
    :goto_29b
    add-int/lit8 v12, v11, 0x1

    .end local v11           #nLoc:I
    .local v12, nLoc:I
    aget-byte v21, p0, v11

    if-eqz v21, :cond_2a5

    .line 580
    add-int/lit8 v7, v7, 0x1

    move v11, v12

    .end local v12           #nLoc:I
    .restart local v11       #nLoc:I
    goto :goto_29b

    .line 582
    .end local v11           #nLoc:I
    .restart local v12       #nLoc:I
    :cond_2a5
    new-array v4, v7, [B

    .line 583
    .local v4, MacValue:[B
    :goto_2a7
    add-int/lit8 v3, v2, 0x1

    .end local v2           #Loc:I
    .local v3, Loc:I
    aget-byte v9, p0, v2

    .local v9, msg:B
    if-eqz v9, :cond_2b3

    .line 585
    aput-byte v9, v4, v8

    .line 586
    add-int/lit8 v8, v8, 0x1

    move v2, v3

    .end local v3           #Loc:I
    .restart local v2       #Loc:I
    goto :goto_2a7

    .line 589
    .end local v2           #Loc:I
    .restart local v3       #Loc:I
    :cond_2b3
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nMACLen:I

    .line 590
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->szMAC:[B

    .line 591
    add-int/lit8 v11, v12, 0x1

    .line 616
    .end local v3           #Loc:I
    .end local v4           #MacValue:[B
    .end local v8           #j:I
    .end local v9           #msg:B
    .end local v12           #nLoc:I
    .restart local v11       #nLoc:I
    :cond_2ca
    :goto_2ca
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    add-int/lit8 v22, p1, -0x2

    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nHeaderLen:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nBodyLen:I

    .line 617
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nHeaderLen:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x2

    add-int/lit8 v11, v21, 0x1

    .line 618
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nBodyLen:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->pBody:[B

    .line 619
    const/4 v10, 0x0

    .local v10, n:I
    :goto_307
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nBodyLen:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_36e

    .line 621
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->pBody:[B

    move-object/from16 v21, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11           #nLoc:I
    .restart local v12       #nLoc:I
    aget-byte v22, p0, v11

    aput-byte v22, v21, v10

    .line 619
    add-int/lit8 v10, v10, 0x1

    move v11, v12

    .end local v12           #nLoc:I
    .restart local v11       #nLoc:I
    goto :goto_307

    .line 593
    .end local v10           #n:I
    :cond_323
    const-string v21, "MAC"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2ca

    .line 596
    const/4 v7, 0x0

    const/4 v2, 0x0

    .restart local v2       #Loc:I
    const/4 v8, 0x0

    .line 597
    .restart local v8       #j:I
    const-string v21, "MAC"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v11

    add-int/lit8 v11, v21, 0x1

    .line 599
    move v2, v11

    .line 600
    :goto_33d
    add-int/lit8 v12, v11, 0x1

    .end local v11           #nLoc:I
    .restart local v12       #nLoc:I
    aget-byte v21, p0, v11

    if-eqz v21, :cond_347

    .line 602
    add-int/lit8 v7, v7, 0x1

    move v11, v12

    .end local v12           #nLoc:I
    .restart local v11       #nLoc:I
    goto :goto_33d

    .line 604
    .end local v11           #nLoc:I
    .restart local v12       #nLoc:I
    :cond_347
    new-array v4, v7, [B

    .line 605
    .restart local v4       #MacValue:[B
    :goto_349
    add-int/lit8 v3, v2, 0x1

    .end local v2           #Loc:I
    .restart local v3       #Loc:I
    aget-byte v9, p0, v2

    .restart local v9       #msg:B
    if-eqz v9, :cond_355

    .line 607
    aput-byte v9, v4, v8

    .line 608
    add-int/lit8 v8, v8, 0x1

    move v2, v3

    .end local v3           #Loc:I
    .restart local v2       #Loc:I
    goto :goto_349

    .line 611
    .end local v2           #Loc:I
    .restart local v3       #Loc:I
    :cond_355
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nMACLen:I

    .line 612
    iget-object v0, v14, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->szMAC:[B

    .line 613
    add-int/lit8 v11, v12, 0x1

    .end local v12           #nLoc:I
    .restart local v11       #nLoc:I
    goto/16 :goto_2ca

    .end local v3           #Loc:I
    .end local v4           #MacValue:[B
    .end local v8           #j:I
    .end local v9           #msg:B
    .restart local v10       #n:I
    :cond_36e
    move-object/from16 v21, v14

    .line 623
    goto/16 :goto_14
.end method

.method public static xnotiReSyncCompare([BILcom/wssyncmldm/noti/XNOTI;)I
    .registers 16
    .parameter "pBody"
    .parameter "nBodyLen"
    .parameter "msg"

    .prologue
    const/4 v12, -0x1

    .line 628
    const/4 v8, 0x0

    .line 629
    .local v8, nRet:I
    move-object v9, p2

    .line 630
    .local v9, pNotiMsg:Lcom/wssyncmldm/noti/XNOTI;
    const/4 v10, 0x0

    .line 631
    .local v10, pNvInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    const/4 v11, 0x0

    .line 632
    .local v11, szDigest:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v3, v0, [B

    fill-array-data v3, :array_8c

    .line 633
    .local v3, szReSyncNonce:[B
    const/4 v7, 0x0

    .line 635
    .local v7, bResyncModeRet:Z
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNonceResync()Z

    move-result v0

    if-nez v0, :cond_19

    .line 637
    const-string v0, "nonce resync SKIP!!!"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 638
    const/4 v0, 0x0

    .line 684
    :goto_18
    return v0

    .line 641
    :cond_19
    if-eqz p2, :cond_1f

    iget-object v0, p2, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    if-nez v0, :cond_21

    :cond_1f
    move v0, v12

    .line 643
    goto :goto_18

    .line 645
    :cond_21
    iget-object v0, p2, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iget-object v0, v0, Lcom/wssyncmldm/noti/XNOTITriggerheader;->m_szServerID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v12

    .line 647
    goto :goto_18

    .line 651
    :cond_2d
    iget-object v0, v9, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iget-object v0, v0, Lcom/wssyncmldm/noti/XNOTITriggerheader;->m_szServerID:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetActiveProfileIndexByServerID(Ljava/lang/String;)I

    .line 652
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetProfileInfo()Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v10

    .line 653
    if-nez v10, :cond_41

    .line 655
    const-string v0, "DM Info is NULL "

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v0, v12

    .line 656
    goto :goto_18

    .line 658
    :cond_41
    const/4 v0, 0x3

    iget-object v1, v10, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    iget-object v2, v10, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    array-length v4, v3

    add-int/lit8 v6, p1, -0x10

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthMakeDigest(ILjava/lang/String;Ljava/lang/String;[BI[BI)Ljava/lang/String;

    move-result-object v11

    .line 661
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 663
    const-string v0, "Digest is NULL "

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v0, v12

    .line 664
    goto :goto_18

    .line 667
    :cond_5b
    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 668
    new-instance v0, Ljava/lang/String;

    iget-object v1, v9, Lcom/wssyncmldm/noti/XNOTI;->digestdata:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_73

    .line 670
    const-string v0, "Fail"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 671
    const/4 v8, -0x1

    :cond_71
    :goto_71
    move v0, v8

    .line 684
    goto :goto_18

    .line 675
    :cond_73
    const-string v0, "xnotiReSyncCompare Success"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 676
    const/4 v8, 0x0

    .line 677
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiReSyncMode(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 678
    if-nez v7, :cond_71

    .line 680
    const-string v0, "Fail"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 681
    const/4 v8, -0x1

    goto :goto_71

    .line 632
    nop

    :array_8c
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public xnotiPushHdleFreeNotiMsg(Lcom/wssyncmldm/noti/XNOTI;)V
    .registers 5
    .parameter "pNotiMsg"

    .prologue
    const/4 v2, 0x0

    .line 112
    if-nez p1, :cond_9

    .line 114
    const-string v1, "pNotiMsg is NULL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 135
    :goto_8
    return-void

    .line 118
    :cond_9
    iget-object v1, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    if-eqz v1, :cond_13

    .line 120
    iget-object v1, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    iput-object v2, v1, Lcom/wssyncmldm/noti/XNOTITriggerheader;->m_szServerID:Ljava/lang/String;

    .line 121
    iput-object v2, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    .line 124
    :cond_13
    iget-object v1, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerBody:Lcom/wssyncmldm/noti/XNOTITriggerbody;

    if-eqz v1, :cond_2b

    .line 128
    const/4 v0, 0x0

    .local v0, nCount:I
    :goto_18
    iget-object v1, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerBody:Lcom/wssyncmldm/noti/XNOTITriggerbody;

    iget v1, v1, Lcom/wssyncmldm/noti/XNOTITriggerbody;->number_Of_Syncs:I

    if-ge v0, v1, :cond_29

    .line 130
    iget-object v1, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerBody:Lcom/wssyncmldm/noti/XNOTITriggerbody;

    iget-object v1, v1, Lcom/wssyncmldm/noti/XNOTITriggerbody;->syncInfo:[Lcom/wssyncmldm/noti/XNOTISyncInfo;

    aget-object v1, v1, v0

    iput-object v2, v1, Lcom/wssyncmldm/noti/XNOTISyncInfo;->m_szServerUri:Ljava/lang/String;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 132
    :cond_29
    iput-object v2, p1, Lcom/wssyncmldm/noti/XNOTI;->triggerBody:Lcom/wssyncmldm/noti/XNOTITriggerbody;

    .line 134
    .end local v0           #nCount:I
    :cond_2b
    const/4 p1, 0x0

    .line 135
    goto :goto_8
.end method

.method public xnotiPushHdleMessageCopy(Ljava/lang/Object;)Lcom/wssyncmldm/noti/XNOTIMessage;
    .registers 5
    .parameter "source"

    .prologue
    .line 48
    move-object v1, p1

    check-cast v1, Lcom/wssyncmldm/noti/XNOTIMessage;

    .line 49
    .local v1, pSrc:Lcom/wssyncmldm/noti/XNOTIMessage;
    new-instance v0, Lcom/wssyncmldm/noti/XNOTIMessage;

    invoke-direct {v0}, Lcom/wssyncmldm/noti/XNOTIMessage;-><init>()V

    .line 51
    .local v0, pDst:Lcom/wssyncmldm/noti/XNOTIMessage;
    iget-object v2, v1, Lcom/wssyncmldm/noti/XNOTIMessage;->pData:[B

    if-eqz v2, :cond_29

    .line 53
    iget-object v2, v1, Lcom/wssyncmldm/noti/XNOTIMessage;->pData:[B

    iput-object v2, v0, Lcom/wssyncmldm/noti/XNOTIMessage;->pData:[B

    .line 54
    iget v2, v1, Lcom/wssyncmldm/noti/XNOTIMessage;->dataSize:I

    iput v2, v0, Lcom/wssyncmldm/noti/XNOTIMessage;->dataSize:I

    .line 62
    :cond_14
    :goto_14
    iget v2, v1, Lcom/wssyncmldm/noti/XNOTIMessage;->bodySize:I

    iput v2, v0, Lcom/wssyncmldm/noti/XNOTIMessage;->bodySize:I

    .line 63
    iget v2, v1, Lcom/wssyncmldm/noti/XNOTIMessage;->mime_type:I

    iput v2, v0, Lcom/wssyncmldm/noti/XNOTIMessage;->mime_type:I

    .line 64
    iget v2, v1, Lcom/wssyncmldm/noti/XNOTIMessage;->push_type:I

    iput v2, v0, Lcom/wssyncmldm/noti/XNOTIMessage;->push_type:I

    .line 65
    iget v2, v1, Lcom/wssyncmldm/noti/XNOTIMessage;->push_status:I

    iput v2, v0, Lcom/wssyncmldm/noti/XNOTIMessage;->push_status:I

    .line 66
    iget v2, v1, Lcom/wssyncmldm/noti/XNOTIMessage;->appId:I

    iput v2, v0, Lcom/wssyncmldm/noti/XNOTIMessage;->appId:I

    .line 68
    return-object v0

    .line 56
    :cond_29
    iget-object v2, v1, Lcom/wssyncmldm/noti/XNOTIMessage;->pBody:[B

    if-eqz v2, :cond_14

    .line 58
    iget v2, v1, Lcom/wssyncmldm/noti/XNOTIMessage;->bodySize:I

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/wssyncmldm/noti/XNOTIMessage;->pData:[B

    .line 59
    iget-object v2, v1, Lcom/wssyncmldm/noti/XNOTIMessage;->pBody:[B

    iput-object v2, v0, Lcom/wssyncmldm/noti/XNOTIMessage;->pBody:[B

    goto :goto_14
.end method

.method public xnotiPushHdleMsgHandler(Lcom/wssyncmldm/noti/XNOTIMessage;)Lcom/wssyncmldm/noti/XNOTI;
    .registers 6
    .parameter "pPushMsg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 406
    new-instance v0, Lcom/wssyncmldm/noti/XNOTI;

    invoke-direct {v0}, Lcom/wssyncmldm/noti/XNOTI;-><init>()V

    .line 408
    .local v0, ptMsg:Lcom/wssyncmldm/noti/XNOTI;
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 409
    iget v1, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->push_type:I

    packed-switch v1, :pswitch_data_32

    .line 425
    :pswitch_11
    const-string v1, "Not Support Push Type"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 429
    :goto_16
    invoke-static {p1}, Lcom/wssyncmldm/noti/XNOTIHandler;->xnotiPushHdleMessageFree(Lcom/wssyncmldm/noti/XNOTIMessage;)V

    .line 431
    return-object v0

    .line 412
    :pswitch_1a
    iput v2, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->appId:I

    .line 413
    iput v3, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->mime_type:I

    .line 414
    const-string v1, "XNOTI_MIME_CONTENT_TYPE_DM "

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/noti/XNOTIHandler;->xnotiPushHdleNotiMsgHandler(Lcom/wssyncmldm/noti/XNOTIMessage;)Lcom/wssyncmldm/noti/XNOTI;

    move-result-object v0

    .line 416
    goto :goto_16

    .line 419
    :pswitch_28
    iput v2, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->appId:I

    .line 420
    iput v3, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->mime_type:I

    .line 421
    const-string v1, "XNOTI_MIME_CONTENT_TYPE_DM "

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_16

    .line 409
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_11
        :pswitch_28
    .end packed-switch
.end method

.method public xnotiPushHdleNotiMsgHandler(Lcom/wssyncmldm/noti/XNOTIMessage;)Lcom/wssyncmldm/noti/XNOTI;
    .registers 14
    .parameter "pPushMsg"

    .prologue
    const/4 v9, 0x0

    .line 348
    const/4 v2, 0x0

    .line 349
    .local v2, appId:I
    const/4 v6, 0x0

    .line 351
    .local v6, nRet:I
    if-nez p1, :cond_b

    .line 353
    const-string v10, "pPushMsg is NULL"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 400
    :goto_a
    return-object v9

    .line 357
    :cond_b
    iget v2, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->appId:I

    .line 358
    sget-object v10, Lcom/wssyncmldm/noti/XNOTIHandler;->g_tNotiMsg:[Lcom/wssyncmldm/noti/XNOTI;

    aget-object v10, v10, v2

    invoke-static {v10, v2}, Lcom/wssyncmldm/noti/XNOTIHandler;->xnotiPushHdleInitNotiMsg(Lcom/wssyncmldm/noti/XNOTI;I)V

    .line 359
    sget-object v10, Lcom/wssyncmldm/noti/XNOTIHandler;->g_tNotiMsg:[Lcom/wssyncmldm/noti/XNOTI;

    aget-object v10, v10, v2

    iget v11, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->mime_type:I

    iput v11, v10, Lcom/wssyncmldm/noti/XNOTI;->mimeType:I

    .line 361
    iget-object v10, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->pData:[B

    if-eqz v10, :cond_55

    .line 363
    iget-object v10, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->pData:[B

    const/4 v11, 0x0

    aget-byte v3, v10, v11

    .line 364
    .local v3, data:B
    if-eqz v3, :cond_55

    .line 366
    iget v10, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->dataSize:I

    new-array v8, v10, [B

    .line 367
    .local v8, ptrPushData:[B
    const/4 v1, 0x0

    .line 368
    .local v1, PushDataLength:I
    const/4 v0, 0x0

    .line 369
    .local v0, LenHeader:I
    const-string v10, "header and body"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 371
    iget-object v8, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->pData:[B

    .line 372
    iget v1, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->dataSize:I

    .line 374
    invoke-static {v8, v1}, Lcom/wssyncmldm/noti/XNOTIHandler;->xnotiPushHdleWSPHeader([BI)I

    move-result v0

    .line 375
    const/4 v10, -0x1

    if-eq v0, v10, :cond_55

    .line 377
    sub-int v5, v1, v0

    .line 378
    .local v5, len:I
    new-array v7, v5, [B

    .line 379
    .local v7, ptrPushBody:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_42
    if-ge v4, v5, :cond_4d

    .line 381
    add-int v10, v0, v4

    aget-byte v10, v8, v10

    aput-byte v10, v7, v4

    .line 379
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 384
    :cond_4d
    iput-object v9, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->pBody:[B

    .line 385
    iput v5, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->bodySize:I

    .line 386
    iput-object v7, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->pBody:[B

    .line 387
    iput-object v9, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->pData:[B

    .line 392
    .end local v0           #LenHeader:I
    .end local v1           #PushDataLength:I
    .end local v3           #data:B
    .end local v4           #i:I
    .end local v5           #len:I
    .end local v7           #ptrPushBody:[B
    .end local v8           #ptrPushData:[B
    :cond_55
    iget-object v10, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->pBody:[B

    iget v11, p1, Lcom/wssyncmldm/noti/XNOTIMessage;->bodySize:I

    invoke-static {v10, v11, v2}, Lcom/wssyncmldm/noti/XNOTIHandler;->xnotiPushHdleParsingSyncNoti([BII)I

    move-result v6

    .line 393
    if-nez v6, :cond_64

    .line 395
    sget-object v9, Lcom/wssyncmldm/noti/XNOTIHandler;->g_tNotiMsg:[Lcom/wssyncmldm/noti/XNOTI;

    aget-object v9, v9, v2

    goto :goto_a

    .line 399
    :cond_64
    sget-object v10, Lcom/wssyncmldm/noti/XNOTIHandler;->g_tNotiMsg:[Lcom/wssyncmldm/noti/XNOTI;

    aget-object v10, v10, v2

    invoke-virtual {p0, v10}, Lcom/wssyncmldm/noti/XNOTIHandler;->xnotiPushHdleFreeNotiMsg(Lcom/wssyncmldm/noti/XNOTI;)V

    goto :goto_a
.end method
