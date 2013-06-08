.class public Lcom/wssyncmldm/db/file/XDBAESCrypt;
.super Ljava/lang/Object;
.source "XDBAESCrypt.java"


# static fields
.field private static final CRYPTO_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final CRYPTO_KEY_SIZE:I = 0x80

.field private static final CRYPTO_RANDOM_ALGORITHM:Ljava/lang/String; = "SHA1PRNG"

.field public static final CRYPTO_SEED_PASSWORD:Ljava/lang/String; = "smldm"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdbDecryptor([B)Ljava/lang/String;
    .registers 7
    .parameter "decryptData"

    .prologue
    .line 69
    const-string v2, ""

    .line 70
    .local v2, szDeCryptionResult:Ljava/lang/String;
    const/4 v1, 0x0

    .line 73
    .local v1, result:[B
    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_5
    invoke-static {p0, v4, v5}, Lcom/wssyncmldm/db/file/XDBAESCrypt;->xdbGetCryptionResult([BILjava/lang/String;)[B

    move-result-object v1

    .line 74
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_10

    .end local v2           #szDeCryptionResult:Ljava/lang/String;
    .local v3, szDeCryptionResult:Ljava/lang/String;
    move-object v2, v3

    .line 80
    .end local v3           #szDeCryptionResult:Ljava/lang/String;
    .restart local v2       #szDeCryptionResult:Ljava/lang/String;
    :goto_f
    return-object v2

    .line 76
    :catch_10
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static xdbDecryptor([BLjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "decryptData"
    .parameter "szSeedPassword"

    .prologue
    .line 53
    const-string v2, ""

    .line 54
    .local v2, szDeCryptionResult:Ljava/lang/String;
    const/4 v1, 0x0

    .line 57
    .local v1, result:[B
    const/4 v4, 0x2

    :try_start_4
    invoke-static {p0, v4, p1}, Lcom/wssyncmldm/db/file/XDBAESCrypt;->xdbGetCryptionResult([BILjava/lang/String;)[B

    move-result-object v1

    .line 58
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_f

    .end local v2           #szDeCryptionResult:Ljava/lang/String;
    .local v3, szDeCryptionResult:Ljava/lang/String;
    move-object v2, v3

    .line 64
    .end local v3           #szDeCryptionResult:Ljava/lang/String;
    .restart local v2       #szDeCryptionResult:Ljava/lang/String;
    :goto_e
    return-object v2

    .line 60
    :catch_f
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static xdbEncryptor(Ljava/lang/String;)[B
    .registers 6
    .parameter "szEncryptText"

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 41
    .local v1, encryptionResult:[B
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/wssyncmldm/db/file/XDBAESCrypt;->xdbGetCryptionResult([BILjava/lang/String;)[B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 48
    :goto_b
    return-object v1

    .line 43
    :catch_c
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static xdbEncryptor(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6
    .parameter "szEncryptText"
    .parameter "szSeedPassword"

    .prologue
    .line 24
    const/4 v1, 0x0

    .line 27
    .local v1, encryptionResult:[B
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Lcom/wssyncmldm/db/file/XDBAESCrypt;->xdbGetCryptionResult([BILjava/lang/String;)[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v1

    .line 33
    :goto_a
    return-object v1

    .line 29
    :catch_b
    move-exception v0

    .line 31
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private static xdbGetCryptionResult([BILjava/lang/String;)[B
    .registers 15
    .parameter "cryptionData"
    .parameter "nCryptionMode"
    .parameter "szSeedPassword"

    .prologue
    .line 85
    const/4 v3, 0x0

    .line 86
    .local v3, mCipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x0

    .line 87
    .local v5, mLogCipher:Ljavax/crypto/Cipher;
    const/4 v8, 0x0

    .line 88
    .local v8, nCurCryptionMode:I
    const/4 v0, 0x0

    .line 89
    .local v0, cryptResult:[B
    const/4 v1, 0x0

    .line 90
    .local v1, cryptionKey:[B
    const/4 v7, 0x0

    .line 91
    .local v7, mSecureRandom:Ljava/security/SecureRandom;
    const/4 v4, 0x0

    .line 92
    .local v4, mKeyGenerator:Ljavax/crypto/KeyGenerator;
    const/4 v6, 0x0

    .line 96
    .local v6, mSecretKey:Ljavax/crypto/SecretKey;
    :try_start_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 98
    if-eqz v5, :cond_12

    if-eq p1, v8, :cond_2f

    .line 100
    :cond_12
    const-string v9, "AES"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 101
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v10, 0x172c

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lcom/wssyncmldm/db/file/XDBAESCrypt;->xdbMealyMachine(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const-string v11, "AES"

    invoke-direct {v9, v10, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, p1, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 102
    move v8, p1

    .line 104
    :cond_2f
    invoke-virtual {v5, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 125
    :goto_33
    return-object v0

    .line 108
    :cond_34
    const-string v9, "SHA1PRNG"

    invoke-static {v9}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v7

    .line 109
    const-string v9, "AES"

    invoke-static {v9}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    .line 110
    const-string v9, "smldm"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 111
    const/16 v9, 0x80

    invoke-virtual {v4, v9, v7}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 112
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 113
    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 115
    const-string v9, "AES"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 116
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "AES"

    invoke-direct {v9, v1, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, p1, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 117
    invoke-virtual {v3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_69} :catch_6b

    move-result-object v0

    goto :goto_33

    .line 120
    :catch_6b
    move-exception v2

    .line 122
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_33
.end method

.method private static xdbMealyMachine(II)Ljava/lang/String;
    .registers 16
    .parameter "v"
    .parameter "sz"

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 130
    new-array v6, p1, [B

    .line 131
    .local v6, str:[B
    const/16 v7, 0x10

    new-array v3, v7, [[I

    new-array v7, v9, [I

    fill-array-data v7, :array_134

    aput-object v7, v3, v10

    new-array v7, v9, [I

    fill-array-data v7, :array_13c

    aput-object v7, v3, v11

    new-array v7, v9, [I

    fill-array-data v7, :array_144

    aput-object v7, v3, v9

    new-array v7, v9, [I

    fill-array-data v7, :array_14c

    aput-object v7, v3, v12

    new-array v7, v9, [I

    fill-array-data v7, :array_154

    aput-object v7, v3, v13

    const/4 v7, 0x5

    new-array v8, v9, [I

    fill-array-data v8, :array_15c

    aput-object v8, v3, v7

    const/4 v7, 0x6

    new-array v8, v9, [I

    fill-array-data v8, :array_164

    aput-object v8, v3, v7

    const/4 v7, 0x7

    new-array v8, v9, [I

    fill-array-data v8, :array_16c

    aput-object v8, v3, v7

    const/16 v7, 0x8

    new-array v8, v9, [I

    fill-array-data v8, :array_174

    aput-object v8, v3, v7

    const/16 v7, 0x9

    new-array v8, v9, [I

    fill-array-data v8, :array_17c

    aput-object v8, v3, v7

    const/16 v7, 0xa

    new-array v8, v9, [I

    fill-array-data v8, :array_184

    aput-object v8, v3, v7

    const/16 v7, 0xb

    new-array v8, v9, [I

    fill-array-data v8, :array_18c

    aput-object v8, v3, v7

    const/16 v7, 0xc

    new-array v8, v9, [I

    fill-array-data v8, :array_194

    aput-object v8, v3, v7

    const/16 v7, 0xd

    new-array v8, v9, [I

    fill-array-data v8, :array_19c

    aput-object v8, v3, v7

    const/16 v7, 0xe

    new-array v8, v9, [I

    fill-array-data v8, :array_1a4

    aput-object v8, v3, v7

    const/16 v7, 0xf

    new-array v8, v9, [I

    fill-array-data v8, :array_1ac

    aput-object v8, v3, v7

    .line 132
    .local v3, next:[[I
    const/16 v7, 0x10

    new-array v4, v7, [[C

    new-array v7, v9, [C

    fill-array-data v7, :array_1b4

    aput-object v7, v4, v10

    new-array v7, v9, [C

    fill-array-data v7, :array_1ba

    aput-object v7, v4, v11

    new-array v7, v9, [C

    fill-array-data v7, :array_1c0

    aput-object v7, v4, v9

    new-array v7, v9, [C

    fill-array-data v7, :array_1c6

    aput-object v7, v4, v12

    new-array v7, v9, [C

    fill-array-data v7, :array_1cc

    aput-object v7, v4, v13

    const/4 v7, 0x5

    new-array v8, v9, [C

    fill-array-data v8, :array_1d2

    aput-object v8, v4, v7

    const/4 v7, 0x6

    new-array v8, v9, [C

    fill-array-data v8, :array_1d8

    aput-object v8, v4, v7

    const/4 v7, 0x7

    new-array v8, v9, [C

    fill-array-data v8, :array_1de

    aput-object v8, v4, v7

    const/16 v7, 0x8

    new-array v8, v9, [C

    fill-array-data v8, :array_1e4

    aput-object v8, v4, v7

    const/16 v7, 0x9

    new-array v8, v9, [C

    fill-array-data v8, :array_1ea

    aput-object v8, v4, v7

    const/16 v7, 0xa

    new-array v8, v9, [C

    fill-array-data v8, :array_1f0

    aput-object v8, v4, v7

    const/16 v7, 0xb

    new-array v8, v9, [C

    fill-array-data v8, :array_1f6

    aput-object v8, v4, v7

    const/16 v7, 0xc

    new-array v8, v9, [C

    fill-array-data v8, :array_1fc

    aput-object v8, v4, v7

    const/16 v7, 0xd

    new-array v8, v9, [C

    fill-array-data v8, :array_202

    aput-object v8, v4, v7

    const/16 v7, 0xe

    new-array v8, v9, [C

    fill-array-data v8, :array_208

    aput-object v8, v4, v7

    const/16 v7, 0xf

    new-array v8, v9, [C

    fill-array-data v8, :array_20e

    aput-object v8, v4, v7

    .line 150
    .local v4, out_char:[[C
    const/4 v5, 0x0

    .local v5, state:I
    const/4 v1, 0x0

    .local v1, len:I
    move v2, v1

    .line 152
    .end local v1           #len:I
    .local v2, len:I
    :goto_118
    if-ge v2, p1, :cond_12d

    .line 154
    and-int/lit8 v0, p0, 0x1

    .line 155
    .local v0, input:I
    shr-int/lit8 p0, p0, 0x1

    .line 156
    add-int/lit8 v1, v2, 0x1

    .end local v2           #len:I
    .restart local v1       #len:I
    aget-object v7, v4, v5

    aget-char v7, v7, v0

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 157
    aget-object v7, v3, v5

    aget v5, v7, v0

    move v2, v1

    .line 158
    .end local v1           #len:I
    .restart local v2       #len:I
    goto :goto_118

    .line 160
    .end local v0           #input:I
    :cond_12d
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    return-object v7

    .line 131
    nop

    :array_134
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_13c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_144
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_14c
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_154
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_15c
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_164
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_16c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_174
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_17c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_184
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_18c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_194
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_19c
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_1a4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1ac
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 132
    :array_1b4
    .array-data 0x2
        0x73t 0x0t
        0x33t 0x0t
    .end array-data

    :array_1ba
    .array-data 0x2
        0x76t 0x0t
        0x6et 0x0t
    .end array-data

    :array_1c0
    .array-data 0x2
        0x31t 0x0t
        0x39t 0x0t
    .end array-data

    :array_1c6
    .array-data 0x2
        0x6dt 0x0t
        0x30t 0x0t
    .end array-data

    :array_1cc
    .array-data 0x2
        0x65t 0x0t
        0x63t 0x0t
    .end array-data

    :array_1d2
    .array-data 0x2
        0x33t 0x0t
        0x42t 0x0t
    .end array-data

    :array_1d8
    .array-data 0x2
        0x37t 0x0t
        0x4et 0x0t
    .end array-data

    :array_1de
    .array-data 0x2
        0x6bt 0x0t
        0x32t 0x0t
    .end array-data

    :array_1e4
    .array-data 0x2
        0x32t 0x0t
        0x43t 0x0t
    .end array-data

    :array_1ea
    .array-data 0x2
        0x61t 0x0t
        0x43t 0x0t
    .end array-data

    :array_1f0
    .array-data 0x2
        0x4at 0x0t
        0x32t 0x0t
    .end array-data

    :array_1f6
    .array-data 0x2
        0x79t 0x0t
        0x6ct 0x0t
    .end array-data

    :array_1fc
    .array-data 0x2
        0x38t 0x0t
        0x64t 0x0t
    .end array-data

    :array_202
    .array-data 0x2
        0x31t 0x0t
        0x30t 0x0t
    .end array-data

    :array_208
    .array-data 0x2
        0x41t 0x0t
        0x5et 0x0t
    .end array-data

    :array_20e
    .array-data 0x2
        0x37t 0x0t
        0x30t 0x0t
    .end array-data
.end method
