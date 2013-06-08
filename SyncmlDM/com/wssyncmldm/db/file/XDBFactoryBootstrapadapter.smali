.class public Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;
.super Ljava/lang/Object;
.source "XDBFactoryBootstrapadapter.java"


# static fields
.field private static clientPasswordDict:[B

.field private static default_passwordLen:I

.field private static g_szPasswdDict:[[B

.field private static serverPasswordDict:[B

.field private static szDict:[B

.field private static final xdb_hexTable:[C


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x10

    const/16 v3, 0xf

    .line 15
    sput v4, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->default_passwordLen:I

    .line 17
    new-array v0, v3, [B

    fill-array-data v0, :array_42

    sput-object v0, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->clientPasswordDict:[B

    .line 21
    new-array v0, v3, [B

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->serverPasswordDict:[B

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_66

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_72

    aput-object v2, v0, v1

    sput-object v0, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->g_szPasswdDict:[[B

    .line 32
    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_7e

    sput-object v0, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->szDict:[B

    .line 340
    new-array v0, v4, [C

    fill-array-data v0, :array_96

    sput-object v0, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdb_hexTable:[C

    return-void

    .line 17
    :array_42
    .array-data 0x1
        0xet
        0x6t
        0x10t
        0xct
        0xat
        0xet
        0x5t
        0xct
        0x12t
        0xat
        0xbt
        0x6t
        0xdt
        0xet
        0x5t
    .end array-data

    .line 21
    :array_4e
    .array-data 0x1
        0xat
        0x6t
        0xet
        0xet
        0xat
        0xbt
        0x6t
        0xet
        0xbt
        0x4t
        0x4t
        0x7t
        0x11t
        0xct
        0xct
    .end array-data

    .line 25
    :array_5a
    .array-data 0x1
        0xet
        0x6t
        0x10t
        0xct
        0xat
        0xet
        0x5t
        0xct
        0x12t
        0xat
        0xbt
        0x6t
        0xdt
        0xet
        0x5t
    .end array-data

    :array_66
    .array-data 0x1
        0xat
        0x6t
        0xet
        0xet
        0xat
        0xbt
        0x6t
        0xet
        0xbt
        0x4t
        0x4t
        0x7t
        0x11t
        0xct
        0xct
    .end array-data

    :array_72
    .array-data 0x1
        0xat
        0x6t
        0x10t
        0xet
        0xat
        0xbt
        0x5t
        0xet
        0x12t
        0x4t
        0xbt
        0x7t
        0xdt
        0xct
        0x5t
    .end array-data

    .line 32
    :array_7e
    .array-data 0x1
        0x1t
        0xft
        0x5t
        0xbt
        0x13t
        0x1ct
        0x17t
        0x2ft
        0x23t
        0x2ct
        0x2t
        0xet
        0x6t
        0xat
        0x12t
        0xdt
        0x16t
        0x1at
        0x20t
        0x2ft
        0x3t
        0xdt
        0x7t
        0x9t
        0x11t
        0x1et
        0x15t
        0x19t
        0x21t
        0x2dt
        0x4t
        0xct
        0x8t
        0x3ft
        0x10t
        0x1ft
        0x14t
        0x18t
        0x22t
        0x2et
    .end array-data

    .line 340
    :array_96
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static xdbFBAdpCingConvertStrToUint64(Ljava/lang/String;I)J
    .registers 16
    .parameter "szData"
    .parameter "nBase"

    .prologue
    const/16 v13, 0x30

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-wide/16 v8, 0x0

    .line 224
    const/4 v3, 0x0

    .line 225
    .local v3, negative:Z
    const-wide/16 v1, 0x0

    .line 226
    .local v1, i:J
    const/4 v4, 0x0

    .line 227
    .local v4, s:[C
    const/4 v0, 0x0

    .line 228
    .local v0, c:C
    const/4 v5, 0x0

    .line 229
    .local v5, si:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 231
    .local v7, slength:I
    if-ltz p1, :cond_18

    if-eq p1, v12, :cond_18

    const/16 v10, 0x24

    if-le p1, v10, :cond_19

    .line 308
    :cond_18
    :goto_18
    return-wide v8

    .line 234
    :cond_19
    new-array v4, v7, [C

    .line 235
    invoke-virtual {p0, v11, v7, v4, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 236
    :goto_1e
    aget-char v10, v4, v5

    invoke-static {v10}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibIsSpace(C)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 237
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 239
    :cond_29
    if-ge v5, v7, :cond_18

    .line 244
    aget-char v10, v4, v5

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_5e

    .line 246
    const/4 v3, 0x1

    .line 247
    add-int/lit8 v5, v5, 0x1

    .line 259
    :goto_34
    aget-char v10, v4, v5

    if-ne v10, v13, :cond_6f

    .line 261
    if-eqz p1, :cond_3e

    const/16 v10, 0x10

    if-ne p1, v10, :cond_6a

    :cond_3e
    aget-char v10, v4, v12

    invoke-static {v10}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibToUpper(C)C

    move-result v10

    const/16 v11, 0x58

    if-ne v10, v11, :cond_6a

    .line 263
    add-int/lit8 v5, v5, 0x2

    .line 264
    const/16 p1, 0x10

    .line 274
    :cond_4c
    :goto_4c
    const-wide/16 v1, 0x0

    .line 275
    :goto_4e
    array-length v10, v4

    if-ge v5, v10, :cond_58

    .line 277
    add-int/lit8 v6, v5, 0x1

    .end local v5           #si:I
    .local v6, si:I
    aget-char v0, v4, v5

    .line 278
    if-nez v4, :cond_74

    move v5, v6

    .line 303
    .end local v6           #si:I
    .restart local v5       #si:I
    :cond_58
    :goto_58
    if-eqz v5, :cond_18

    .line 308
    if-eqz v3, :cond_97

    neg-long v8, v1

    goto :goto_18

    .line 249
    :cond_5e
    aget-char v10, v4, v5

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_68

    .line 251
    const/4 v3, 0x0

    .line 252
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 256
    :cond_68
    const/4 v3, 0x0

    goto :goto_34

    .line 266
    :cond_6a
    if-nez p1, :cond_4c

    .line 267
    const/16 p1, 0x8

    goto :goto_4c

    .line 269
    :cond_6f
    if-nez p1, :cond_4c

    .line 271
    const/16 p1, 0xa

    goto :goto_4c

    .line 283
    .end local v5           #si:I
    .restart local v6       #si:I
    :cond_74
    if-lt v0, v13, :cond_81

    const/16 v10, 0x39

    if-gt v0, v10, :cond_81

    .line 285
    add-int/lit8 v10, v0, -0x30

    int-to-char v0, v10

    .line 296
    :goto_7d
    if-lt v0, p1, :cond_91

    move v5, v6

    .line 297
    .end local v6           #si:I
    .restart local v5       #si:I
    goto :goto_58

    .line 287
    .end local v5           #si:I
    .restart local v6       #si:I
    :cond_81
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibIsAlpha(C)Z

    move-result v10

    if-eqz v10, :cond_99

    .line 289
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibToUpper(C)C

    move-result v10

    add-int/lit8 v10, v10, -0x41

    add-int/lit8 v10, v10, 0xa

    int-to-char v0, v10

    goto :goto_7d

    .line 299
    :cond_91
    int-to-long v10, p1

    mul-long/2addr v1, v10

    .line 300
    int-to-long v10, v0

    add-long/2addr v1, v10

    move v5, v6

    .end local v6           #si:I
    .restart local v5       #si:I
    goto :goto_4e

    :cond_97
    move-wide v8, v1

    .line 308
    goto :goto_18

    .end local v5           #si:I
    .restart local v6       #si:I
    :cond_99
    move v5, v6

    .end local v6           #si:I
    .restart local v5       #si:I
    goto :goto_58
.end method

.method private static xdbFBAdpCingConvertUint64ToA(J[CI)[C
    .registers 14
    .parameter "nVal"
    .parameter "pBuf"
    .parameter "nRadix"

    .prologue
    .line 185
    const/4 v3, 0x0

    .line 186
    .local v3, p:[C
    const/4 v4, 0x0

    .line 187
    .local v4, pFirstDig:[C
    const/4 v2, 0x0

    .line 188
    .local v2, nDigVal:I
    const/4 v5, 0x0

    .line 190
    .local v5, pi:I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p2}, Ljava/lang/String;-><init>([C)V

    .line 191
    .local v7, szBuf:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 196
    :cond_d
    int-to-long v8, p3

    rem-long v8, p0, v8

    long-to-int v2, v8

    .line 198
    int-to-long v8, p3

    div-long/2addr p0, v8

    .line 201
    const/16 v8, 0x9

    if-le v2, v8, :cond_3b

    .line 204
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pi:I
    .local v6, pi:I
    add-int/lit8 v8, v2, -0xa

    add-int/lit8 v8, v8, 0x61

    int-to-char v8, v8

    aput-char v8, v3, v5

    move v5, v6

    .line 211
    .end local v6           #pi:I
    .restart local v5       #pi:I
    :goto_21
    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-gtz v8, :cond_d

    .line 213
    array-length v8, v3

    new-array v4, v8, [C

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, i:I
    const/4 v1, 0x0

    .line 216
    .local v1, j:I
    array-length v8, v3

    add-int/lit8 v0, v8, -0x1

    const/4 v1, 0x0

    :goto_30
    if-ltz v0, :cond_44

    .line 217
    aget-char v8, v3, v0

    aput-char v8, v4, v1

    .line 216
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 209
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_3b
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pi:I
    .restart local v6       #pi:I
    add-int/lit8 v8, v2, 0x30

    int-to-char v8, v8

    aput-char v8, v3, v5

    move v5, v6

    .end local v6           #pi:I
    .restart local v5       #pi:I
    goto :goto_21

    .line 219
    .restart local v0       #i:I
    .restart local v1       #j:I
    :cond_44
    return-object v4
.end method

.method public static xdbFBAdpEncodeHex([B)[C
    .registers 9
    .parameter "data"

    .prologue
    .line 352
    array-length v4, p0

    .line 353
    .local v4, len:I
    mul-int/lit8 v6, v4, 0x2

    new-array v5, v6, [C

    .line 354
    .local v5, output:[C
    const/4 v2, 0x0

    .line 356
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    move v3, v2

    .end local v2           #j:I
    .local v3, j:I
    :goto_8
    if-ge v1, v4, :cond_25

    .line 358
    aget-byte v0, p0, v1

    .line 360
    .local v0, d:B
    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    sget-object v6, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdb_hexTable:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v3

    .line 361
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .restart local v3       #j:I
    sget-object v6, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdb_hexTable:[C

    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v2

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 364
    .end local v0           #d:B
    :cond_25
    return-object v5
.end method

.method public static xdbFBAdpGenerateClientPassword(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .parameter "szDeviceId"
    .parameter "passwordLen"

    .prologue
    .line 70
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, szDevid:Ljava/lang/String;
    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpGenerateClientPasswordKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, szKey:Ljava/lang/String;
    invoke-static {p0, v1, p1}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpGeneratePassword(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static xdbFBAdpGenerateClientPasswordKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "szDeviceId"

    .prologue
    .line 42
    sget-object v0, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->clientPasswordDict:[B

    invoke-static {p0, v0}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpGenerateKeyFromDict(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static xdbFBAdpGenerateKeyFromDict(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 11
    .parameter "szDeviceId"
    .parameter "dict"

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 54
    .local v1, length:I
    const-wide/16 v2, 0x0

    .local v2, serial1:J
    const-wide/16 v4, 0x0

    .line 56
    .local v4, serial2:J
    const/4 v0, 0x0

    :goto_a
    add-int/lit8 v7, v1, -0x3

    if-ge v0, v7, :cond_31

    .line 58
    add-int/lit8 v7, v0, 0x3

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    aget-byte v8, p1, v0

    mul-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 59
    add-int/lit8 v7, v0, 0x3

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    add-int/lit8 v8, v0, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    mul-int/2addr v7, v8

    aget-byte v8, p1, v0

    mul-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v4, v7

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 62
    :cond_31
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, szTemp:Ljava/lang/String;
    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    return-object v6
.end method

.method public static xdbFBAdpGeneratePasswd(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 24
    .parameter "szDeviceId"
    .parameter "szServerId"
    .parameter "nKeyType"

    .prologue
    .line 370
    const-string v15, ""

    .line 371
    .local v15, szKey:Ljava/lang/String;
    const/4 v11, 0x0

    .line 372
    .local v11, szBuf:[B
    const-string v17, ""

    .line 374
    .local v17, szTmpBuf:Ljava/lang/String;
    const/4 v6, 0x0

    .line 375
    .local v6, devidSize:I
    const/4 v4, 0x0

    .line 376
    .local v4, cnt:I
    const-string v16, ""

    .line 377
    .local v16, szTempPasswd:Ljava/lang/String;
    const-string v13, ""

    .line 379
    .local v13, szDest:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpGeneratePasswdKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 381
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 382
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v11, v0, [B

    .line 385
    :try_start_3a
    const-string v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3a .. :try_end_3f} :catch_c6

    move-result-object v11

    .line 394
    :goto_40
    :try_start_40
    const-string v18, "MD5"

    invoke-static/range {v18 .. v18}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 395
    .local v10, md5Digest:Ljava/security/MessageDigest;
    invoke-virtual {v10}, Ljava/security/MessageDigest;->reset()V

    .line 397
    invoke-virtual {v10, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 398
    .local v7, digest:[B
    invoke-static {v7}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpEncodeHex([B)[C

    move-result-object v9

    .line 400
    .local v9, encodedStr1:[C
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 403
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    add-int/lit8 v20, v6, -0x2

    aget-byte v19, v19, v20

    aput-byte v19, v11, v18

    .line 404
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    add-int/lit8 v20, v6, -0x1

    aget-byte v19, v19, v20

    aput-byte v19, v11, v18

    .line 406
    new-instance v5, Lcom/wssyncmldm/db/file/XDBCrypt;

    invoke-direct {v5}, Lcom/wssyncmldm/db/file/XDBCrypt;-><init>()V

    .line 407
    .local v5, cryptData:Lcom/wssyncmldm/db/file/XDBCrypt;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v11}, Lcom/wssyncmldm/db/file/XDBCrypt;->xdbCryptGenerate(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v12

    .line 408
    .local v12, szCrypteDeviceID:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v12

    .line 411
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v3, v0, [C

    .line 412
    .local v3, cBuf:[C
    const/16 v18, 0x0

    const/16 v19, 0x2

    aget-char v19, v9, v19

    aput-char v19, v3, v18

    .line 413
    const/16 v18, 0x1

    const/16 v19, 0x4

    aget-char v19, v9, v19

    aput-char v19, v3, v18

    .line 414
    const/16 v18, 0x2

    const/16 v19, 0x8

    aget-char v19, v9, v19

    aput-char v19, v3, v18

    .line 416
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v16

    .line 417
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 419
    const/4 v2, 0x0

    .line 420
    .local v2, SBuffer:Ljava/lang/StringBuffer;
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 423
    if-nez p2, :cond_d0

    .line 425
    const/4 v4, 0x0

    :goto_b9
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v4, v0, :cond_f4

    .line 427
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_c2} :catch_fb

    move-result-object v2

    .line 425
    add-int/lit8 v4, v4, 0x1

    goto :goto_b9

    .line 387
    .end local v2           #SBuffer:Ljava/lang/StringBuffer;
    .end local v3           #cBuf:[C
    .end local v5           #cryptData:Lcom/wssyncmldm/db/file/XDBCrypt;
    .end local v7           #digest:[B
    .end local v9           #encodedStr1:[C
    .end local v10           #md5Digest:Ljava/security/MessageDigest;
    .end local v12           #szCrypteDeviceID:Ljava/lang/String;
    :catch_c6
    move-exception v8

    .line 389
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_40

    .line 431
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #SBuffer:Ljava/lang/StringBuffer;
    .restart local v3       #cBuf:[C
    .restart local v5       #cryptData:Lcom/wssyncmldm/db/file/XDBCrypt;
    .restart local v7       #digest:[B
    .restart local v9       #encodedStr1:[C
    .restart local v10       #md5Digest:Ljava/security/MessageDigest;
    .restart local v12       #szCrypteDeviceID:Ljava/lang/String;
    :cond_d0
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_e6

    .line 433
    const/4 v4, 0x0

    :goto_d9
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ge v4, v0, :cond_f4

    .line 435
    :try_start_df
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 433
    add-int/lit8 v4, v4, 0x1

    goto :goto_d9

    .line 441
    :cond_e6
    const/4 v4, 0x0

    :goto_e7
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v4, v0, :cond_f4

    .line 443
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 441
    add-int/lit8 v4, v4, 0x1

    goto :goto_e7

    .line 447
    :cond_f4
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_f9} :catch_fb

    .end local v13           #szDest:Ljava/lang/String;
    .local v14, szDest:Ljava/lang/String;
    move-object v13, v14

    .line 455
    .end local v2           #SBuffer:Ljava/lang/StringBuffer;
    .end local v3           #cBuf:[C
    .end local v5           #cryptData:Lcom/wssyncmldm/db/file/XDBCrypt;
    .end local v7           #digest:[B
    .end local v9           #encodedStr1:[C
    .end local v10           #md5Digest:Ljava/security/MessageDigest;
    .end local v12           #szCrypteDeviceID:Ljava/lang/String;
    .end local v14           #szDest:Ljava/lang/String;
    .restart local v13       #szDest:Ljava/lang/String;
    :goto_fa
    return-object v13

    .line 450
    :catch_fb
    move-exception v8

    .line 452
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_fa
.end method

.method private static xdbFBAdpGeneratePasswdKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .parameter "szDeviceId"
    .parameter "type"

    .prologue
    .line 460
    const/4 v1, 0x0

    .line 461
    .local v1, i:I
    const/4 v2, 0x0

    .line 462
    .local v2, nLen:I
    const/4 v4, 0x0

    .local v4, serial1:I
    const/4 v5, 0x0

    .line 463
    .local v5, serial2:I
    const-string v6, ""

    .line 465
    .local v6, szKeyStr:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 466
    new-array v3, v2, [B

    .line 469
    .local v3, pDeviceId:[B
    :try_start_c
    const-string v7, "UTF-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_11} :catch_37

    move-result-object v3

    .line 476
    :goto_12
    const/4 v1, 0x0

    :goto_13
    add-int/lit8 v7, v2, -0x3

    if-ge v1, v7, :cond_40

    .line 478
    add-int/lit8 v7, v1, 0x3

    aget-byte v7, v3, v7

    sget-object v8, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->g_szPasswdDict:[[B

    aget-object v8, v8, p1

    aget-byte v8, v8, v1

    mul-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 479
    add-int/lit8 v7, v1, 0x3

    aget-byte v7, v3, v7

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, v3, v8

    mul-int/2addr v7, v8

    sget-object v8, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->g_szPasswdDict:[[B

    aget-object v8, v8, p1

    aget-byte v8, v8, v1

    mul-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 471
    :catch_37
    move-exception v0

    .line 473
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_12

    .line 482
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_40
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 483
    return-object v6
.end method

.method private static xdbFBAdpGeneratePassword(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 18
    .parameter "szDeviceId"
    .parameter "szKey"
    .parameter "passwordLen"

    .prologue
    .line 100
    const/4 v8, 0x0

    .line 101
    .local v8, szDevid:Ljava/lang/String;
    const/4 v10, 0x0

    .line 102
    .local v10, szRet:Ljava/lang/String;
    const/16 v13, 0x19

    move/from16 v0, p2

    if-ne v13, v0, :cond_a

    .line 104
    const/4 v13, 0x0

    .line 145
    :goto_9
    return-object v13

    .line 107
    :cond_a
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetDeviceID()Ljava/lang/String;

    move-result-object v8

    .line 109
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpGet36BasedDevID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, szNewDevId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 111
    .local v1, SBuffer:Ljava/lang/StringBuffer;
    move-object v7, v8

    .line 112
    .local v7, szBuffer:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-virtual {v7, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    :try_start_1e
    const-string v13, "MD5"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 118
    .local v6, md5Digest:Ljava/security/MessageDigest;
    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 119
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 120
    .local v2, digest:[B
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpEncodeHex([B)[C

    move-result-object v4

    .line 122
    .local v4, encodedStr1:[C
    const/4 v13, 0x6

    new-array v5, v13, [C

    .line 124
    .local v5, encodedStr2:[C
    const/4 v13, 0x0

    const/4 v14, 0x2

    aget-char v14, v4, v14

    aput-char v14, v5, v13

    .line 125
    const/4 v13, 0x1

    const/4 v14, 0x7

    aget-char v14, v4, v14

    aput-char v14, v5, v13

    .line 126
    const/4 v13, 0x2

    const/16 v14, 0x8

    aget-char v14, v4, v14

    aput-char v14, v5, v13

    .line 127
    const/4 v13, 0x3

    const/16 v14, 0xc

    aget-char v14, v4, v14

    aput-char v14, v5, v13

    .line 128
    const/4 v13, 0x4

    const/16 v14, 0x19

    aget-char v14, v4, v14

    aput-char v14, v5, v13

    .line 129
    const/4 v13, 0x5

    const/16 v14, 0x1e

    aget-char v14, v4, v14

    aput-char v14, v5, v13

    .line 131
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    .line 132
    .local v12, szTmpPassword:Ljava/lang/String;
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 134
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 135
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 136
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 139
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V
    :try_end_80
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e .. :try_end_80} :catch_83

    .end local v10           #szRet:Ljava/lang/String;
    .local v11, szRet:Ljava/lang/String;
    move-object v10, v11

    .end local v2           #digest:[B
    .end local v4           #encodedStr1:[C
    .end local v5           #encodedStr2:[C
    .end local v6           #md5Digest:Ljava/security/MessageDigest;
    .end local v11           #szRet:Ljava/lang/String;
    .end local v12           #szTmpPassword:Ljava/lang/String;
    .restart local v10       #szRet:Ljava/lang/String;
    :goto_81
    move-object v13, v10

    .line 145
    goto :goto_9

    .line 141
    :catch_83
    move-exception v3

    .line 143
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_81
.end method

.method public static xdbFBAdpGeneratePswdByID(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "nTypePwd"
    .parameter "szId"

    .prologue
    .line 84
    const-string v1, ""

    .line 85
    .local v1, szPasswd:Ljava/lang/String;
    sget v0, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->default_passwordLen:I

    .line 87
    .local v0, passwordLen:I
    const/4 v2, 0x2

    if-ne p0, v2, :cond_c

    .line 89
    invoke-static {p1, v0}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpGenerateClientPassword(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_b
    :goto_b
    return-object v1

    .line 91
    :cond_c
    if-nez p0, :cond_b

    .line 93
    invoke-static {p1, v0}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpGenerateServerPassword(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method public static xdbFBAdpGenerateServerPassword(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .parameter "szDeviceId"
    .parameter "passwordLen"

    .prologue
    .line 77
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, szDevid:Ljava/lang/String;
    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpGenerateServerPasswordKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, szKey:Ljava/lang/String;
    invoke-static {p0, v1, p1}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpGeneratePassword(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static xdbFBAdpGenerateServerPasswordKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "szDeviceId"

    .prologue
    .line 47
    sget-object v0, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->serverPasswordDict:[B

    invoke-static {p0, v0}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpGenerateKeyFromDict(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static xdbFBAdpGet36BasedDevID(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "szDeviceID"

    .prologue
    .line 150
    const-wide/16 v2, 0x0

    .line 151
    .local v2, nIndex:J
    const/4 v1, 0x0

    .line 152
    .local v1, i:I
    const/4 v7, 0x0

    .line 153
    .local v7, tmpdevid:[C
    const/4 v4, 0x0

    .line 154
    .local v4, nLength:I
    const/16 v0, 0xa

    .line 157
    .local v0, TEMP_DEVID_SIZE:I
    new-array v5, v0, [C

    .line 158
    .local v5, pBase36String:[C
    new-array v7, v0, [C

    .line 160
    const/16 v8, 0xa

    invoke-static {p0, v8}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpCingConvertStrToUint64(Ljava/lang/String;I)J

    move-result-wide v2

    .line 161
    const/16 v8, 0x24

    invoke-static {v2, v3, v7, v8}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpCingConvertUint64ToA(J[CI)[C

    move-result-object v7

    .line 163
    array-length v4, v7

    .line 165
    if-ge v4, v0, :cond_42

    .line 167
    const/4 v1, 0x0

    :goto_1b
    sub-int v8, v0, v4

    if-ge v1, v8, :cond_26

    .line 169
    const/16 v8, 0x30

    aput-char v8, v5, v1

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 171
    :cond_26
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, szTmpDevid:Ljava/lang/String;
    :goto_41
    return-object v6

    .line 176
    .end local v6           #szTmpDevid:Ljava/lang/String;
    :cond_42
    move-object v5, v7

    .line 177
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    .restart local v6       #szTmpDevid:Ljava/lang/String;
    goto :goto_41
.end method

.method private static xdbFBAdpOspGenerateDevPwdKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "szDeviceId"

    .prologue
    .line 488
    const-string v9, ""

    .line 489
    .local v9, szKey:Ljava/lang/String;
    const/4 v11, 0x0

    .line 492
    .local v11, szToken:Ljava/lang/String;
    const/4 v4, 0x0

    .line 493
    .local v4, searchSlash:I
    const-wide/16 v5, 0x0

    .local v5, serialNum1:J
    const-wide/16 v7, 0x0

    .line 494
    .local v7, serialNum2:J
    const/4 v10, 0x0

    .line 495
    .local v10, szTmp:Ljava/lang/String;
    const/16 v12, 0x40

    new-array v0, v12, [C

    .line 497
    .local v0, filterNum:[C
    const/16 v12, 0x3a

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 498
    add-int/lit8 v12, v4, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 499
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_21

    .line 500
    const/4 v12, 0x0

    .line 527
    :goto_20
    return-object v12

    .line 502
    :cond_21
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    .line 503
    .local v3, len:I
    const/4 v2, 0x0

    .line 505
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    if-ge v1, v3, :cond_3e

    .line 507
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibIsAlphaNum(C)Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 509
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aput-char v12, v0, v2

    .line 510
    add-int/lit8 v2, v2, 0x1

    .line 505
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 513
    :cond_3e
    move v3, v2

    .line 515
    const/4 v1, 0x0

    :goto_40
    add-int/lit8 v12, v3, -0x1

    if-ge v1, v12, :cond_60

    .line 517
    aget-char v12, v0, v1

    sget-object v13, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->szDict:[B

    aget-byte v13, v13, v1

    mul-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v5, v12

    .line 518
    aget-char v12, v0, v1

    sub-int v13, v3, v1

    add-int/lit8 v13, v13, -0x1

    aget-char v13, v0, v13

    mul-int/2addr v12, v13

    sget-object v13, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->szDict:[B

    aget-byte v13, v13, v1

    mul-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v7, v12

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 520
    :cond_60
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 521
    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 523
    const/4 v10, 0x0

    .line 524
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 525
    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v12, v9

    .line 527
    goto :goto_20
.end method

.method public static xdbFBAdpOspGenerateDevicePwd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 23
    .parameter "szDeviceId"
    .parameter "szServerId"

    .prologue
    .line 532
    const-string v17, ""

    .line 533
    .local v17, szTmpBuf:Ljava/lang/String;
    const-string v15, ""

    .line 534
    .local v15, szKey:Ljava/lang/String;
    const-string v13, ""

    .line 535
    .local v13, szDevicePw:Ljava/lang/String;
    const-string v12, ""

    .line 536
    .local v12, szCryptResult:Ljava/lang/String;
    const-string v16, ""

    .line 538
    .local v16, szTempPasswd:Ljava/lang/String;
    const/4 v11, 0x0

    .line 540
    .local v11, szBuf:[B
    const/4 v6, 0x0

    .line 541
    .local v6, devidSize:I
    const/4 v4, 0x0

    .line 543
    .local v4, cnt:I
    invoke-static/range {p0 .. p0}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpOspGenerateDevPwdKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 544
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 545
    const/16 v18, 0x0

    .line 599
    :goto_19
    return-object v18

    .line 547
    :cond_1a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 548
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v11, v0, [B

    .line 551
    :try_start_41
    const-string v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_41 .. :try_end_46} :catch_d3

    move-result-object v11

    .line 560
    :goto_47
    :try_start_47
    const-string v18, "MD5"

    invoke-static/range {v18 .. v18}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 561
    .local v10, md5Digest:Ljava/security/MessageDigest;
    invoke-virtual {v10}, Ljava/security/MessageDigest;->reset()V

    .line 563
    invoke-virtual {v10, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 564
    .local v7, digest:[B
    invoke-static {v7}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpEncodeHex([B)[C

    move-result-object v8

    .line 566
    .local v8, digestHex:[C
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 569
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    add-int/lit8 v20, v6, -0x2

    aget-byte v19, v19, v20

    aput-byte v19, v11, v18

    .line 570
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    add-int/lit8 v20, v6, -0x1

    aget-byte v19, v19, v20

    aput-byte v19, v11, v18

    .line 572
    new-instance v5, Lcom/wssyncmldm/db/file/XDBCrypt;

    invoke-direct {v5}, Lcom/wssyncmldm/db/file/XDBCrypt;-><init>()V

    .line 573
    .local v5, cryptData:Lcom/wssyncmldm/db/file/XDBCrypt;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v11}, Lcom/wssyncmldm/db/file/XDBCrypt;->xdbCryptGenerate(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v12

    .line 574
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v12

    .line 576
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v3, v0, [C

    .line 577
    .local v3, cBuf:[C
    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-char v19, v8, v19

    aput-char v19, v3, v18

    .line 578
    const/16 v18, 0x1

    const/16 v19, 0x4

    aget-char v19, v8, v19

    aput-char v19, v3, v18

    .line 579
    const/16 v18, 0x2

    const/16 v19, 0x5

    aget-char v19, v8, v19

    aput-char v19, v3, v18

    .line 580
    const/16 v18, 0x3

    const/16 v19, 0x7

    aget-char v19, v8, v19

    aput-char v19, v3, v18

    .line 582
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v16

    .line 583
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 585
    const/4 v2, 0x0

    .line 586
    .local v2, SBuffer:Ljava/lang/StringBuffer;
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 588
    const/4 v4, 0x0

    :goto_c6
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v4, v0, :cond_dd

    .line 590
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_cf} :catch_e7

    move-result-object v2

    .line 588
    add-int/lit8 v4, v4, 0x1

    goto :goto_c6

    .line 553
    .end local v2           #SBuffer:Ljava/lang/StringBuffer;
    .end local v3           #cBuf:[C
    .end local v5           #cryptData:Lcom/wssyncmldm/db/file/XDBCrypt;
    .end local v7           #digest:[B
    .end local v8           #digestHex:[C
    .end local v10           #md5Digest:Ljava/security/MessageDigest;
    :catch_d3
    move-exception v9

    .line 555
    .local v9, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_47

    .line 592
    .end local v9           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #SBuffer:Ljava/lang/StringBuffer;
    .restart local v3       #cBuf:[C
    .restart local v5       #cryptData:Lcom/wssyncmldm/db/file/XDBCrypt;
    .restart local v7       #digest:[B
    .restart local v8       #digestHex:[C
    .restart local v10       #md5Digest:Ljava/security/MessageDigest;
    :cond_dd
    :try_start_dd
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e2} :catch_e7

    .end local v13           #szDevicePw:Ljava/lang/String;
    .local v14, szDevicePw:Ljava/lang/String;
    move-object v13, v14

    .end local v2           #SBuffer:Ljava/lang/StringBuffer;
    .end local v3           #cBuf:[C
    .end local v5           #cryptData:Lcom/wssyncmldm/db/file/XDBCrypt;
    .end local v7           #digest:[B
    .end local v8           #digestHex:[C
    .end local v10           #md5Digest:Ljava/security/MessageDigest;
    .end local v14           #szDevicePw:Ljava/lang/String;
    .restart local v13       #szDevicePw:Ljava/lang/String;
    :goto_e3
    move-object/from16 v18, v13

    .line 599
    goto/16 :goto_19

    .line 594
    :catch_e7
    move-exception v9

    .line 596
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e3
.end method

.method public static xdbFBAdpShuffle(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 8
    .parameter "buffer"

    .prologue
    .line 313
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 314
    .local v4, nLen:I
    rem-int/lit8 v2, v4, 0x2

    .line 315
    .local v2, mod:I
    if-nez v2, :cond_20

    div-int/lit8 v5, v4, 0x2

    .line 317
    .local v5, secondHalfPos:I
    :goto_a
    move v1, v5

    .local v1, i:I
    :goto_b
    if-ge v1, v4, :cond_28

    .line 319
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 320
    .local v0, ch:C
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 321
    if-nez v2, :cond_25

    sub-int v6, v4, v1

    add-int/lit8 v3, v6, -0x1

    .line 322
    .local v3, nInsertPos:I
    :goto_1a
    invoke-virtual {p0, v3, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 315
    .end local v0           #ch:C
    .end local v1           #i:I
    .end local v3           #nInsertPos:I
    .end local v5           #secondHalfPos:I
    :cond_20
    div-int/lit8 v6, v4, 0x2

    add-int/lit8 v5, v6, 0x1

    goto :goto_a

    .line 321
    .restart local v0       #ch:C
    .restart local v1       #i:I
    .restart local v5       #secondHalfPos:I
    :cond_25
    sub-int v3, v4, v1

    goto :goto_1a

    .line 332
    .end local v0           #ch:C
    :cond_28
    return-object p0
.end method
