.class public Lcom/wssyncmldm/eng/core/XDMAuth;
.super Ljava/lang/Object;
.source "XDMAuth.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# static fields
.field private static final SHA_KEY_PAD_LEN:I = 0x40

.field private static final SHA_KEY_PAD_LEN_:I = 0x40


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmAuthAAuthType2String(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 46
    packed-switch p0, :pswitch_data_10

    .line 55
    const-string v0, "NONE"

    :goto_5
    return-object v0

    .line 49
    :pswitch_6
    const-string v0, "BASIC"

    goto :goto_5

    .line 51
    :pswitch_9
    const-string v0, "DIGEST"

    goto :goto_5

    .line 53
    :pswitch_c
    const-string v0, "HMAC"

    goto :goto_5

    .line 46
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public static xdmAuthAAuthtring2Type(Ljava/lang/String;)I
    .registers 2
    .parameter "szType"

    .prologue
    .line 61
    const-string v0, "BASIC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 62
    const/4 v0, 0x0

    .line 68
    :goto_9
    return v0

    .line 63
    :cond_a
    const-string v0, "DIGEST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 64
    const/4 v0, 0x1

    goto :goto_9

    .line 65
    :cond_14
    const-string v0, "HMAC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    .line 66
    const/4 v0, 0x2

    goto :goto_9

    .line 68
    :cond_1e
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public static xdmAuthCredString2Type(Ljava/lang/String;)I
    .registers 2
    .parameter "szType"

    .prologue
    .line 34
    const-string v0, "syncml:auth-basic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 35
    const/4 v0, 0x0

    .line 41
    :goto_9
    return v0

    .line 36
    :cond_a
    const-string v0, "syncml:auth-md5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 37
    const/4 v0, 0x1

    goto :goto_9

    .line 38
    :cond_14
    const-string v0, "syncml:auth-MAC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    .line 39
    const/4 v0, 0x2

    goto :goto_9

    .line 41
    :cond_1e
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public static xdmAuthCredType2String(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 18
    packed-switch p0, :pswitch_data_14

    .line 27
    const-string v0, "Not Support Auth Type"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 21
    :pswitch_a
    const-string v0, "syncml:auth-basic"

    goto :goto_9

    .line 23
    :pswitch_d
    const-string v0, "syncml:auth-md5"

    goto :goto_9

    .line 25
    :pswitch_10
    const-string v0, "syncml:auth-MAC"

    goto :goto_9

    .line 18
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public static xdmAuthMakeDigest(ILjava/lang/String;Ljava/lang/String;[BI[BI)Ljava/lang/String;
    .registers 23
    .parameter "authType"
    .parameter "szUserName"
    .parameter "szPassWord"
    .parameter "nonce"
    .parameter "nonceLength"
    .parameter "packetBody"
    .parameter "bodyLength"

    .prologue
    .line 73
    const/4 v13, 0x0

    .line 74
    .local v13, szRet:Ljava/lang/String;
    const/4 v10, 0x0

    .line 76
    .local v10, szCredData:Ljava/lang/String;
    const/16 v14, 0x10

    new-array v3, v14, [B

    .line 78
    .local v3, digest:[B
    packed-switch p0, :pswitch_data_17c

    .line 111
    const-string v14, "Not Support Auth Type"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 112
    const/4 v14, 0x0

    .line 192
    :goto_f
    return-object v14

    .line 82
    :pswitch_10
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1c

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_55

    .line 84
    :cond_1c
    const-string v14, "userName or passWord is NULL"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 85
    const/4 v14, 0x0

    goto :goto_f

    .line 91
    :pswitch_23
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_33

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_33

    if-eqz p3, :cond_33

    if-gtz p4, :cond_55

    .line 93
    :cond_33
    const-string v14, "userName or passWord or nonce or nonceLength is NULL"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 94
    const/4 v14, 0x0

    goto :goto_f

    .line 101
    :pswitch_3a
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4e

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4e

    if-eqz p3, :cond_4e

    if-lez p4, :cond_4e

    if-eqz p5, :cond_4e

    .line 102
    if-gtz p6, :cond_55

    .line 104
    :cond_4e
    const-string v14, "userName or passWord or nonce or nonceLength or packetBody or bodyLength is NULL"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 105
    const/4 v14, 0x0

    goto :goto_f

    .line 116
    :cond_55
    packed-switch p0, :pswitch_data_188

    :goto_58
    move-object v14, v13

    .line 192
    goto :goto_f

    .line 120
    :pswitch_5a
    move-object/from16 v10, p1

    .line 121
    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 122
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 123
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v3

    .line 124
    new-instance v13, Ljava/lang/String;

    .end local v13           #szRet:Ljava/lang/String;
    invoke-direct {v13, v3}, Ljava/lang/String;-><init>([B)V

    .line 126
    .restart local v13       #szRet:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "XDM_CRED_TYPE_BASIC name:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " pwd:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " cred:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ret:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 127
    const/4 v10, 0x0

    .line 128
    goto :goto_58

    .line 133
    :pswitch_ab
    new-instance v8, Lcom/wssyncmldm/eng/core/XDMMD5;

    invoke-direct {v8}, Lcom/wssyncmldm/eng/core/XDMMD5;-><init>()V

    .line 134
    .local v8, md5:Lcom/wssyncmldm/eng/core/XDMMD5;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v8, v0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMMD5;->xdmComputeMD5Credentials(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v9

    .line 135
    .local v9, md5digest:[B
    new-instance v13, Ljava/lang/String;

    .end local v13           #szRet:Ljava/lang/String;
    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    .line 137
    .restart local v13       #szRet:Ljava/lang/String;
    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    .line 138
    .local v12, szNon:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "XDM_CRED_TYPE_MD5 name= "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " pwd= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " nonce= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ret= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_58

    .line 145
    .end local v8           #md5:Lcom/wssyncmldm/eng/core/XDMMD5;
    .end local v9           #md5digest:[B
    .end local v12           #szNon:Ljava/lang/String;
    :pswitch_fc
    const/4 v8, 0x0

    .line 148
    .local v8, md5:Ljava/security/MessageDigest;
    :try_start_fd
    const-string v14, "MD5"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_102
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_fd .. :try_end_102} :catch_108

    move-result-object v8

    .line 156
    :goto_103
    if-nez v8, :cond_111

    .line 157
    const/4 v14, 0x0

    goto/16 :goto_f

    .line 150
    :catch_108
    move-exception v4

    .line 152
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_103

    .line 159
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_111
    move-object/from16 v10, p1

    .line 160
    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 162
    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    .line 164
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 165
    invoke-static {v3}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v5

    .line 167
    .local v5, encoder:[B
    new-instance v10, Ljava/lang/String;

    .end local v10           #szCredData:Ljava/lang/String;
    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    .line 168
    .restart local v10       #szCredData:Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 169
    invoke-static {v3}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v6

    .line 170
    .local v6, encoder2:[B
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v6}, Ljava/lang/String;-><init>([B)V

    .line 172
    .local v11, szDataBody:Ljava/lang/String;
    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 173
    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 174
    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 175
    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 176
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 177
    const/4 v14, 0x2

    move/from16 v0, p0

    if-ne v0, v14, :cond_175

    .line 179
    invoke-static {v3}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v7

    .line 180
    .local v7, encoder3:[B
    new-instance v13, Ljava/lang/String;

    .end local v13           #szRet:Ljava/lang/String;
    invoke-direct {v13, v7}, Ljava/lang/String;-><init>([B)V

    .restart local v13       #szRet:Ljava/lang/String;
    goto/16 :goto_58

    .line 185
    .end local v7           #encoder3:[B
    :cond_175
    new-instance v13, Ljava/lang/String;

    .end local v13           #szRet:Ljava/lang/String;
    invoke-direct {v13, v3}, Ljava/lang/String;-><init>([B)V

    .line 187
    .restart local v13       #szRet:Ljava/lang/String;
    goto/16 :goto_58

    .line 78
    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_23
        :pswitch_3a
        :pswitch_3a
    .end packed-switch

    .line 116
    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_ab
        :pswitch_fc
        :pswitch_fc
    .end packed-switch
.end method

.method public static xdmAuthMakeDigestSHA1(I[BI[B)Ljava/lang/String;
    .registers 15
    .parameter "nAuthType"
    .parameter "pszSecretKey"
    .parameter "nSecertLen"
    .parameter "pszPacketBody"

    .prologue
    .line 197
    move v4, p2

    .line 198
    .local v4, nSecretLen:I
    const/16 v10, 0x40

    new-array v7, v10, [B

    .line 199
    .local v7, szK_IPad:[B
    const/16 v10, 0x40

    new-array v8, v10, [B

    .line 200
    .local v8, szK_OPad:[B
    const/4 v9, 0x0

    check-cast v9, [B

    .line 201
    .local v9, szTemp:[B
    const/4 v0, 0x0

    check-cast v0, [B

    .line 202
    .local v0, digest:[B
    const-string v6, ""

    .line 204
    .local v6, szDigest:Ljava/lang/String;
    packed-switch p0, :pswitch_data_8a

    .line 213
    const-string v10, "Not Support Auth Type."

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 214
    const/4 v10, 0x0

    .line 266
    :goto_1a
    return-object v10

    .line 207
    :pswitch_1b
    if-eqz p1, :cond_1f

    if-nez p3, :cond_21

    .line 209
    :cond_1f
    const/4 v10, 0x0

    goto :goto_1a

    .line 217
    :cond_21
    const/16 v10, 0x40

    if-le v4, v10, :cond_3a

    .line 229
    :cond_25
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    const/16 v10, 0x40

    if-lt v2, v10, :cond_44

    .line 234
    const/4 v3, 0x0

    .local v3, nCount:I
    :goto_2b
    const/16 v10, 0x40

    if-lt v3, v10, :cond_4b

    .line 240
    const/4 v5, 0x0

    .line 243
    .local v5, sha:Ljava/security/MessageDigest;
    :try_start_30
    const-string v10, "SHA-1"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_35} :catch_5c

    move-result-object v5

    .line 251
    :goto_36
    if-nez v5, :cond_65

    .line 252
    const/4 v10, 0x0

    goto :goto_1a

    .line 223
    .end local v2           #i:I
    .end local v3           #nCount:I
    .end local v5           #sha:Ljava/security/MessageDigest;
    :cond_3a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3b
    if-ge v2, v4, :cond_25

    .line 225
    aget-byte v10, p1, v2

    aput-byte v10, v7, v2

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 231
    :cond_44
    aget-byte v10, v7, v2

    aput-byte v10, v8, v2

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 236
    .restart local v3       #nCount:I
    :cond_4b
    aget-byte v10, v7, v3

    xor-int/lit8 v10, v10, 0x36

    int-to-byte v10, v10

    aput-byte v10, v7, v3

    .line 237
    aget-byte v10, v8, v3

    xor-int/lit8 v10, v10, 0x5c

    int-to-byte v10, v10

    aput-byte v10, v8, v3

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 245
    .restart local v5       #sha:Ljava/security/MessageDigest;
    :catch_5c
    move-exception v1

    .line 247
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_36

    .line 254
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_65
    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 255
    invoke-virtual {v5, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 256
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 258
    invoke-virtual {v5, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 259
    invoke-virtual {v5, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 260
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 262
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibBytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 263
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_87

    .line 264
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    :cond_87
    move-object v10, v6

    .line 266
    goto :goto_1a

    .line 204
    nop

    :pswitch_data_8a
    .packed-switch 0x4
        :pswitch_1b
    .end packed-switch
.end method
