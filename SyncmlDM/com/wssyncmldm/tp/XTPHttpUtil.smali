.class public Lcom/wssyncmldm/tp/XTPHttpUtil;
.super Ljava/lang/Object;
.source "XTPHttpUtil.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XTPInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xtpCheckValidIPAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "ipaddress"

    .prologue
    .line 154
    const/4 v5, 0x0

    .line 155
    .local v5, szValidAddress:Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, szSplitAddr:[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_8
    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 161
    .local v0, character:[C
    const/4 v6, 0x0

    aget-char v6, v0, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 163
    array-length v6, v4

    new-array v3, v6, [I

    .line 164
    .local v3, nSplitAddr:[I
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_1b
    array-length v6, v4

    if-ge v2, v6, :cond_2d

    .line 166
    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v2

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 168
    :cond_2d
    const-string v6, "%s.%s.%s.%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x2

    aget v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    aget v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 169
    const/4 v3, 0x0

    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "szValidAddress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_75} :catch_79

    .line 183
    .end local v0           #character:[C
    .end local v2           #idx:I
    .end local v3           #nSplitAddr:[I
    :goto_75
    const/4 v4, 0x0

    .line 184
    return-object v5

    .line 174
    .restart local v0       #character:[C
    :cond_77
    move-object v5, p0

    goto :goto_75

    .line 177
    .end local v0           #character:[C
    :catch_79
    move-exception v1

    .line 179
    .local v1, e:Ljava/lang/Exception;
    move-object v5, p0

    .line 180
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto :goto_75
.end method

.method public static xtpHttpExchangeProtocolType(Ljava/lang/String;)I
    .registers 2
    .parameter "szProtocol"

    .prologue
    .line 34
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 36
    const/4 v0, 0x1

    .line 44
    :goto_9
    return v0

    .line 38
    :cond_a
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 40
    const/4 v0, 0x2

    goto :goto_9

    .line 44
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static xtpHttpGetConnectType(Ljava/lang/String;)I
    .registers 5
    .parameter "szURL"

    .prologue
    .line 21
    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, szType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 24
    .local v1, type:I
    const-string v2, "http:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 25
    const/4 v1, 0x2

    .line 29
    :cond_10
    :goto_10
    return v1

    .line 26
    :cond_11
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 27
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public static xtpHttpMakeConURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "szServerURL"
    .parameter "szRequestUri"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, parser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    invoke-static {p0}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, szRetAddr:Ljava/lang/String;
    return-object v1
.end method

.method public static xtpHttpParsePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "szRequest"

    .prologue
    .line 11
    const-string v4, "://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 12
    .local v1, firsturl:I
    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 13
    .local v3, szSub:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 15
    .local v0, firstSlash:I
    add-int v4, v1, v0

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 16
    .local v2, szRet:Ljava/lang/String;
    return-object v2
.end method

.method public static xtpHttpParserServerAddrWithPort(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "szRequestUri"

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, parser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    invoke-static {p0}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v0

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, szRetAddr:Ljava/lang/String;
    return-object v1
.end method

.method public static xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;
    .registers 20
    .parameter "szURL"

    .prologue
    .line 68
    const-string v10, "http://"

    .line 69
    .local v10, szHTTP:Ljava/lang/String;
    const-string v11, "https://"

    .line 74
    .local v11, szHTTPS:Ljava/lang/String;
    const/4 v5, 0x2

    .line 75
    .local v5, nProtocol:I
    const/4 v3, 0x0

    .line 80
    .local v3, index:I
    new-instance v16, Lcom/wssyncmldm/db/file/XDBUrlInfo;

    invoke-direct/range {v16 .. v16}, Lcom/wssyncmldm/db/file/XDBUrlInfo;-><init>()V

    .line 82
    .local v16, xdbURLParser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_90

    .line 84
    const-string v13, "https"

    .line 85
    .local v13, szProtocol:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, szCurrentPointer:Ljava/lang/String;
    :goto_27
    move-object v15, v9

    .line 100
    .local v15, szTempPath:Ljava/lang/String;
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 102
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_b7

    .line 104
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 111
    .local v12, szPath:Ljava/lang/String;
    :goto_40
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, pNextPointer:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v14, v6, v17

    .line 113
    .local v14, szTempAddress:Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v9, v6, v17

    .line 116
    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, pNextPointer2:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_ba

    .line 120
    const/16 v17, 0x1

    aget-object v17, v7, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 121
    .local v4, nPort:I
    const/16 v17, 0x0

    aget-object v8, v7, v17

    .line 143
    .local v8, szAddress:Ljava/lang/String;
    :goto_73
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    .line 144
    invoke-static {v8}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpCheckValidIPAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    .line 145
    move-object/from16 v0, v16

    iput-object v12, v0, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pPath:Ljava/lang/String;

    .line 146
    move-object/from16 v0, v16

    iput-object v13, v0, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    .line 147
    move-object/from16 v0, v16

    iput v4, v0, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    .line 149
    .end local v4           #nPort:I
    .end local v6           #pNextPointer:[Ljava/lang/String;
    .end local v7           #pNextPointer2:[Ljava/lang/String;
    .end local v8           #szAddress:Ljava/lang/String;
    .end local v9           #szCurrentPointer:Ljava/lang/String;
    .end local v12           #szPath:Ljava/lang/String;
    .end local v13           #szProtocol:Ljava/lang/String;
    .end local v14           #szTempAddress:Ljava/lang/String;
    .end local v15           #szTempPath:Ljava/lang/String;
    :goto_8f
    return-object v16

    .line 87
    :cond_90
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_ae

    .line 89
    const-string v13, "http"

    .line 90
    .restart local v13       #szProtocol:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #szCurrentPointer:Ljava/lang/String;
    goto/16 :goto_27

    .line 94
    .end local v9           #szCurrentPointer:Ljava/lang/String;
    .end local v13           #szProtocol:Ljava/lang/String;
    :cond_ae
    move-object/from16 p0, v10

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    goto :goto_8f

    .line 108
    .restart local v9       #szCurrentPointer:Ljava/lang/String;
    .restart local v13       #szProtocol:Ljava/lang/String;
    .restart local v15       #szTempPath:Ljava/lang/String;
    :cond_b7
    const-string v12, ""

    .restart local v12       #szPath:Ljava/lang/String;
    goto :goto_40

    .line 125
    .restart local v6       #pNextPointer:[Ljava/lang/String;
    .restart local v7       #pNextPointer2:[Ljava/lang/String;
    .restart local v14       #szTempAddress:Ljava/lang/String;
    :cond_ba
    move-object v8, v14

    .line 126
    .restart local v8       #szAddress:Ljava/lang/String;
    invoke-static {v13}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpHttpExchangeProtocolType(Ljava/lang/String;)I

    move-result v5

    .line 128
    packed-switch v5, :pswitch_data_cc

    .line 138
    const/16 v4, 0x50

    .restart local v4       #nPort:I
    goto :goto_73

    .line 131
    .end local v4           #nPort:I
    :pswitch_c5
    const/16 v4, 0x1bb

    .line 132
    .restart local v4       #nPort:I
    goto :goto_73

    .line 134
    .end local v4           #nPort:I
    :pswitch_c8
    const/16 v4, 0x50

    .line 135
    .restart local v4       #nPort:I
    goto :goto_73

    .line 128
    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_c8
    .end packed-switch
.end method
