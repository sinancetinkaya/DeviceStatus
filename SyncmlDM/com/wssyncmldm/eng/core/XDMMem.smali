.class public Lcom/wssyncmldm/eng/core/XDMMem;
.super Ljava/lang/Object;
.source "XDMMem.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/wssyncmldm/eng/core/XDMMem;->HEX_DIGITS:[C

    .line 7
    return-void

    .line 9
    :array_a
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
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmLibBytesToHexString([B)Ljava/lang/String;
    .registers 5
    .parameter "bytes"

    .prologue
    .line 305
    if-nez p0, :cond_4

    .line 306
    const/4 v3, 0x0

    .line 323
    :goto_3
    return-object v3

    .line 308
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 310
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    array-length v3, p0

    if-lt v1, v3, :cond_15

    .line 323
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 314
    :cond_15
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 316
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 320
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public static xdmLibCharToString([C)Ljava/lang/String;
    .registers 6
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 210
    const/4 v1, 0x0

    .local v1, i:I
    move-object v0, v3

    .line 211
    check-cast v0, [C

    .line 212
    .local v0, buf:[C
    array-length v4, p0

    if-gtz v4, :cond_b

    .line 226
    :goto_8
    return-object v3

    .line 216
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 214
    :cond_b
    aget-char v3, p0, v1

    if-eqz v3, :cond_12

    array-length v3, p0

    if-gt v3, v1, :cond_9

    .line 219
    :cond_12
    new-array v0, v1, [C

    .line 221
    const/4 v2, 0x0

    .local v2, n:I
    :goto_15
    if-lt v2, v1, :cond_1c

    .line 226
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 223
    :cond_1c
    aget-char v3, p0, v2

    aput-char v3, v0, v2

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_15
.end method

.method static xdmLibHexCharToInt(C)I
    .registers 4
    .parameter "c"

    .prologue
    .line 287
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 288
    add-int/lit8 v0, p0, -0x30

    .line 292
    :goto_a
    return v0

    .line 289
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    .line 290
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 291
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    .line 292
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 294
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid hex char \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static xdmLibHexStringToBytes(Ljava/lang/String;)[B
    .registers 7
    .parameter "szData"

    .prologue
    .line 270
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 271
    const/4 v1, 0x0

    .line 282
    :cond_7
    return-object v1

    .line 273
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 275
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 277
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v2, :cond_7

    .line 279
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibHexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibHexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 277
    add-int/lit8 v0, v0, 0x2

    goto :goto_11
.end method

.method public static xdmLibHexToChar(I)I
    .registers 2
    .parameter "nHex"

    .prologue
    .line 175
    if-ltz p0, :cond_9

    const/16 v0, 0x9

    if-gt p0, v0, :cond_9

    .line 176
    add-int/lit8 v0, p0, 0x30

    .line 180
    :goto_8
    return v0

    .line 177
    :cond_9
    const/16 v0, 0xa

    if-gt v0, p0, :cond_16

    const/16 v0, 0xf

    if-gt p0, v0, :cond_16

    .line 178
    add-int/lit8 v0, p0, 0x41

    add-int/lit8 v0, v0, -0xa

    goto :goto_8

    .line 180
    :cond_16
    const/16 v0, 0x3f

    goto :goto_8
.end method

.method public static xdmLibIsAlpha(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 246
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    return v0
.end method

.method public static xdmLibIsAlphaNum(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 256
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    return v0
.end method

.method public static xdmLibIsNum(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 236
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method public static xdmLibIsSpace(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 170
    const/16 v0, 0x20

    if-eq p0, v0, :cond_14

    const/16 v0, 0xc

    if-eq p0, v0, :cond_14

    const/16 v0, 0xa

    if-eq p0, v0, :cond_14

    const/16 v0, 0xd

    if-eq p0, v0, :cond_14

    const/16 v0, 0x9

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static xdmLibMemcpy(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "szDest"
    .parameter "szSrc"
    .parameter "len"

    .prologue
    .line 97
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 98
    .local v0, buf1:[C
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 101
    .local v1, buf2:[C
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_14
    invoke-static {v1, v3, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    .line 107
    :goto_17
    return-void

    .line 103
    :catch_18
    move-exception v2

    .line 105
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public static xdmLibMemcpy([B[BI)V
    .registers 8
    .parameter "dest"
    .parameter "src"
    .parameter "len"

    .prologue
    .line 111
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 112
    .local v0, buf1:[C
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 115
    .local v1, buf2:[C
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_14
    invoke-static {v1, v3, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    .line 121
    :goto_17
    return-void

    .line 117
    :catch_18
    move-exception v2

    .line 119
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public static xdmLibReplaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "szSrc"
    .parameter "szBefore"
    .parameter "szAfter"

    .prologue
    const/4 v4, -0x1

    .line 371
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 393
    .end local p0
    :cond_13
    :goto_13
    return-object p0

    .line 376
    .restart local p0
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 379
    .local v1, index:I
    const/4 v0, 0x0

    .line 380
    .local v0, begine:I
    :goto_1e
    if-ne v1, v4, :cond_34

    .line 388
    if-ne v1, v4, :cond_2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_2f

    .line 390
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    .line 382
    :cond_34
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v1, v3

    .line 385
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1e
.end method

.method public static xdmLibStrchr(Ljava/lang/String;C)Ljava/lang/String;
    .registers 5
    .parameter "szSource"
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, index:I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 86
    :cond_8
    :goto_8
    return-object v1

    .line 81
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 83
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public static xdmLibStrncmp(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .parameter "szData1"
    .parameter "szData2"
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_16

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, szTmp:Ljava/lang/String;
    :goto_f
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_18

    .line 144
    :goto_15
    return v1

    .line 137
    .end local v0           #szTmp:Ljava/lang/String;
    :cond_16
    move-object v0, p0

    .restart local v0       #szTmp:Ljava/lang/String;
    goto :goto_f

    .line 144
    :cond_18
    const/4 v1, 0x1

    goto :goto_15
.end method

.method public static xdmLibStrrchr(Ljava/lang/String;C)Ljava/lang/String;
    .registers 4
    .parameter "szSource"
    .parameter "c"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, index:I
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static xdmLibStrsplit([CC[C)Ljava/lang/String;
    .registers 8
    .parameter "str"
    .parameter "delim"
    .parameter "out"

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x0

    .line 22
    .local v0, i:I
    if-nez p0, :cond_5

    .line 44
    :cond_4
    :goto_4
    return-object v3

    .line 26
    :cond_5
    array-length v4, p0

    if-eqz v4, :cond_4

    .line 31
    :goto_8
    array-length v4, p0

    if-ge v0, v4, :cond_4

    .line 33
    aget-char v4, p0, v0

    if-ne v4, p1, :cond_2f

    .line 35
    const/4 v3, 0x0

    aput-char v3, p2, v0

    .line 36
    array-length v3, p0

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    new-array v2, v3, [C

    .line 37
    .local v2, t:[C
    const/4 v1, 0x0

    .local v1, n:I
    :goto_19
    array-length v3, p0

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_24

    .line 39
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 38
    :cond_24
    add-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    aget-char v3, p0, v3

    aput-char v3, v2, v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 41
    .end local v1           #n:I
    .end local v2           #t:[C
    :cond_2f
    aget-char v4, p0, v0

    aput-char v4, p2, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static xdmLibStrstr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "szSource"
    .parameter "szToken"

    .prologue
    const/4 v1, 0x0

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, index:I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 65
    :cond_8
    :goto_8
    return-object v1

    .line 60
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 62
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public static xdmLibToHexString([B)Ljava/lang/String;
    .registers 5
    .parameter "buf"

    .prologue
    .line 328
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 329
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v2, p0

    if-lt v0, v2, :cond_e

    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 331
    :cond_e
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static xdmLibToHexString([BII)Ljava/lang/String;
    .registers 11
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 338
    mul-int/lit8 v6, p2, 0x2

    new-array v1, v6, [C

    .line 340
    .local v1, buf:[C
    const/4 v2, 0x0

    .local v2, bufIndex:I
    const/4 v4, 0x0

    .line 341
    .local v4, i:I
    const/4 v5, 0x0

    .line 343
    .local v5, szBuf:Ljava/lang/String;
    move v4, p1

    move v3, v2

    .end local v2           #bufIndex:I
    .local v3, bufIndex:I
    :goto_9
    add-int v6, p1, p2

    if-lt v4, v6, :cond_1c

    .line 351
    const/4 v4, 0x0

    :goto_e
    array-length v6, v1

    if-lt v4, v6, :cond_37

    .line 358
    :cond_11
    array-length v6, v1

    if-ne v4, v6, :cond_40

    .line 360
    new-instance v5, Ljava/lang/String;

    .end local v5           #szBuf:Ljava/lang/String;
    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 366
    .restart local v5       #szBuf:Ljava/lang/String;
    :goto_1b
    return-object v5

    .line 345
    :cond_1c
    aget-byte v0, p0, v4

    .line 346
    .local v0, b:B
    add-int/lit8 v2, v3, 0x1

    .end local v3           #bufIndex:I
    .restart local v2       #bufIndex:I
    sget-object v6, Lcom/wssyncmldm/eng/core/XDMMem;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 347
    add-int/lit8 v3, v2, 0x1

    .end local v2           #bufIndex:I
    .restart local v3       #bufIndex:I
    sget-object v6, Lcom/wssyncmldm/eng/core/XDMMem;->HEX_DIGITS:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v2

    .line 343
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 353
    .end local v0           #b:B
    :cond_37
    aget-char v6, v1, v4

    const/16 v7, 0x30

    if-gt v6, v7, :cond_11

    .line 351
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 364
    :cond_40
    array-length v6, v1

    sub-int/2addr v6, v4

    invoke-static {v1, v4, v6}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    goto :goto_1b
.end method

.method public static xdmLibToLower(C)C
    .registers 2
    .parameter "ch"

    .prologue
    .line 200
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    return v0
.end method

.method public static xdmLibToUpper(C)C
    .registers 2
    .parameter "ch"

    .prologue
    .line 190
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    return v0
.end method
