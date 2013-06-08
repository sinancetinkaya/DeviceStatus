.class public Lcom/wssyncmldm/db/file/XDBCrypt;
.super Ljava/lang/Object;
.source "XDBCrypt.java"


# static fields
.field private static C:[B

.field private static D:[B

.field private static E:[B

.field private static FP:[B

.field private static IP:[B

.field private static KS:[[B

.field private static MAX_CRYPT_BITS_SIZE:I

.field private static MAX_ENCRYPT_SIZE:I

.field private static P:[B

.field private static PC1_C:[B

.field private static PC1_D:[B

.field private static PC2_C:[B

.field private static PC2_D:[B

.field private static S:[[B

.field private static e2:[B

.field private static m_cryptCryptByte:[B

.field private static m_szCryptCryptResult:Ljava/lang/String;

.field private static preS:[B

.field private static shifts:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v2, 0x1c

    const/16 v1, 0x18

    const/16 v4, 0x10

    const/16 v3, 0x40

    .line 7
    new-array v0, v3, [B

    fill-array-data v0, :array_96

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->IP:[B

    .line 19
    new-array v0, v3, [B

    fill-array-data v0, :array_ba

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->FP:[B

    .line 31
    new-array v0, v2, [B

    fill-array-data v0, :array_de

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->PC1_C:[B

    .line 39
    new-array v0, v2, [B

    fill-array-data v0, :array_f0

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->PC1_D:[B

    .line 47
    new-array v0, v4, [B

    fill-array-data v0, :array_102

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->shifts:[B

    .line 49
    new-array v0, v1, [B

    fill-array-data v0, :array_10e

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->PC2_C:[B

    .line 57
    new-array v0, v1, [B

    fill-array-data v0, :array_11e

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->PC2_D:[B

    .line 65
    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_12e

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->e2:[B

    .line 77
    const/16 v0, 0x8

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_14a

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_16e

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_192

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_1b6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_1da

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_1fe

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_222

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_246

    aput-object v2, v0, v1

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->S:[[B

    .line 129
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_26a

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->P:[B

    .line 141
    sput v3, Lcom/wssyncmldm/db/file/XDBCrypt;->MAX_CRYPT_BITS_SIZE:I

    .line 142
    sput v4, Lcom/wssyncmldm/db/file/XDBCrypt;->MAX_ENCRYPT_SIZE:I

    return-void

    .line 7
    :array_96
    .array-data 0x1
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x40t
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x1bt
        0x13t
        0xbt
        0x3t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ft
        0x37t
        0x2ft
        0x27t
        0x1ft
        0x17t
        0xft
        0x7t
    .end array-data

    .line 19
    :array_ba
    .array-data 0x1
        0x28t
        0x8t
        0x30t
        0x10t
        0x38t
        0x18t
        0x40t
        0x20t
        0x27t
        0x7t
        0x2ft
        0xft
        0x37t
        0x17t
        0x3ft
        0x1ft
        0x26t
        0x6t
        0x2et
        0xet
        0x36t
        0x16t
        0x3et
        0x1et
        0x25t
        0x5t
        0x2dt
        0xdt
        0x35t
        0x15t
        0x3dt
        0x1dt
        0x24t
        0x4t
        0x2ct
        0xct
        0x34t
        0x14t
        0x3ct
        0x1ct
        0x23t
        0x3t
        0x2bt
        0xbt
        0x33t
        0x13t
        0x3bt
        0x1bt
        0x22t
        0x2t
        0x2at
        0xat
        0x32t
        0x12t
        0x3at
        0x1at
        0x21t
        0x1t
        0x29t
        0x9t
        0x31t
        0x11t
        0x39t
        0x19t
    .end array-data

    .line 31
    :array_de
    .array-data 0x1
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x1bt
        0x13t
        0xbt
        0x3t
        0x3ct
        0x34t
        0x2ct
        0x24t
    .end array-data

    .line 39
    :array_f0
    .array-data 0x1
        0x3ft
        0x37t
        0x2ft
        0x27t
        0x1ft
        0x17t
        0xft
        0x7t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x1ct
        0x14t
        0xct
        0x4t
    .end array-data

    .line 47
    :array_102
    .array-data 0x1
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
    .end array-data

    .line 49
    :array_10e
    .array-data 0x1
        0xet
        0x11t
        0xbt
        0x18t
        0x1t
        0x5t
        0x3t
        0x1ct
        0xft
        0x6t
        0x15t
        0xat
        0x17t
        0x13t
        0xct
        0x4t
        0x1at
        0x8t
        0x10t
        0x7t
        0x1bt
        0x14t
        0xdt
        0x2t
    .end array-data

    .line 57
    :array_11e
    .array-data 0x1
        0x29t
        0x34t
        0x1ft
        0x25t
        0x2ft
        0x37t
        0x1et
        0x28t
        0x33t
        0x2dt
        0x21t
        0x30t
        0x2ct
        0x31t
        0x27t
        0x38t
        0x22t
        0x35t
        0x2et
        0x2at
        0x32t
        0x24t
        0x1dt
        0x20t
    .end array-data

    .line 65
    :array_12e
    .array-data 0x1
        0x20t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x1t
    .end array-data

    .line 77
    :array_14a
    .array-data 0x1
        0xet
        0x4t
        0xdt
        0x1t
        0x2t
        0xft
        0xbt
        0x8t
        0x3t
        0xat
        0x6t
        0xct
        0x5t
        0x9t
        0x0t
        0x7t
        0x0t
        0xft
        0x7t
        0x4t
        0xet
        0x2t
        0xdt
        0x1t
        0xat
        0x6t
        0xct
        0xbt
        0x9t
        0x5t
        0x3t
        0x8t
        0x4t
        0x1t
        0xet
        0x8t
        0xdt
        0x6t
        0x2t
        0xbt
        0xft
        0xct
        0x9t
        0x7t
        0x3t
        0xat
        0x5t
        0x0t
        0xft
        0xct
        0x8t
        0x2t
        0x4t
        0x9t
        0x1t
        0x7t
        0x5t
        0xbt
        0x3t
        0xet
        0xat
        0x0t
        0x6t
        0xdt
    .end array-data

    :array_16e
    .array-data 0x1
        0xft
        0x1t
        0x8t
        0xet
        0x6t
        0xbt
        0x3t
        0x4t
        0x9t
        0x7t
        0x2t
        0xdt
        0xct
        0x0t
        0x5t
        0xat
        0x3t
        0xdt
        0x4t
        0x7t
        0xft
        0x2t
        0x8t
        0xet
        0xct
        0x0t
        0x1t
        0xat
        0x6t
        0x9t
        0xbt
        0x5t
        0x0t
        0xet
        0x7t
        0xbt
        0xat
        0x4t
        0xdt
        0x1t
        0x5t
        0x8t
        0xct
        0x6t
        0x9t
        0x3t
        0x2t
        0xft
        0xdt
        0x8t
        0xat
        0x1t
        0x3t
        0xft
        0x4t
        0x2t
        0xbt
        0x6t
        0x7t
        0xct
        0x0t
        0x5t
        0xet
        0x9t
    .end array-data

    :array_192
    .array-data 0x1
        0xat
        0x0t
        0x9t
        0xet
        0x6t
        0x3t
        0xft
        0x5t
        0x1t
        0xdt
        0xct
        0x7t
        0xbt
        0x4t
        0x2t
        0x8t
        0xdt
        0x7t
        0x0t
        0x9t
        0x3t
        0x4t
        0x6t
        0xat
        0x2t
        0x8t
        0x5t
        0xet
        0xct
        0xbt
        0xft
        0x1t
        0xdt
        0x6t
        0x4t
        0x9t
        0x8t
        0xft
        0x3t
        0x0t
        0xbt
        0x1t
        0x2t
        0xct
        0x5t
        0xat
        0xet
        0x7t
        0x1t
        0xat
        0xdt
        0x0t
        0x6t
        0x9t
        0x8t
        0x7t
        0x4t
        0xft
        0xet
        0x3t
        0xbt
        0x5t
        0x2t
        0xct
    .end array-data

    :array_1b6
    .array-data 0x1
        0x7t
        0xdt
        0xet
        0x3t
        0x0t
        0x6t
        0x9t
        0xat
        0x1t
        0x2t
        0x8t
        0x5t
        0xbt
        0xct
        0x4t
        0xft
        0xdt
        0x8t
        0xbt
        0x5t
        0x6t
        0xft
        0x0t
        0x3t
        0x4t
        0x7t
        0x2t
        0xct
        0x1t
        0xat
        0xet
        0x9t
        0xat
        0x6t
        0x9t
        0x0t
        0xct
        0xbt
        0x7t
        0xdt
        0xft
        0x1t
        0x3t
        0xet
        0x5t
        0x2t
        0x8t
        0x4t
        0x3t
        0xft
        0x0t
        0x6t
        0xat
        0x1t
        0xdt
        0x8t
        0x9t
        0x4t
        0x5t
        0xbt
        0xct
        0x7t
        0x2t
        0xet
    .end array-data

    :array_1da
    .array-data 0x1
        0x2t
        0xct
        0x4t
        0x1t
        0x7t
        0xat
        0xbt
        0x6t
        0x8t
        0x5t
        0x3t
        0xft
        0xdt
        0x0t
        0xet
        0x9t
        0xet
        0xbt
        0x2t
        0xct
        0x4t
        0x7t
        0xdt
        0x1t
        0x5t
        0x0t
        0xft
        0xat
        0x3t
        0x9t
        0x8t
        0x6t
        0x4t
        0x2t
        0x1t
        0xbt
        0xat
        0xdt
        0x7t
        0x8t
        0xft
        0x9t
        0xct
        0x5t
        0x6t
        0x3t
        0x0t
        0xet
        0xbt
        0x8t
        0xct
        0x7t
        0x1t
        0xet
        0x2t
        0xdt
        0x6t
        0xft
        0x0t
        0x9t
        0xat
        0x4t
        0x5t
        0x3t
    .end array-data

    :array_1fe
    .array-data 0x1
        0xct
        0x1t
        0xat
        0xft
        0x9t
        0x2t
        0x6t
        0x8t
        0x0t
        0xdt
        0x3t
        0x4t
        0xet
        0x7t
        0x5t
        0xbt
        0xat
        0xft
        0x4t
        0x2t
        0x7t
        0xct
        0x9t
        0x5t
        0x6t
        0x1t
        0xdt
        0xet
        0x0t
        0xbt
        0x3t
        0x8t
        0x9t
        0xet
        0xft
        0x5t
        0x2t
        0x8t
        0xct
        0x3t
        0x7t
        0x0t
        0x4t
        0xat
        0x1t
        0xdt
        0xbt
        0x6t
        0x4t
        0x3t
        0x2t
        0xct
        0x9t
        0x5t
        0xft
        0xat
        0xbt
        0xet
        0x1t
        0x7t
        0x6t
        0x0t
        0x8t
        0xdt
    .end array-data

    :array_222
    .array-data 0x1
        0x4t
        0xbt
        0x2t
        0xet
        0xft
        0x0t
        0x8t
        0xdt
        0x3t
        0xct
        0x9t
        0x7t
        0x5t
        0xat
        0x6t
        0x1t
        0xdt
        0x0t
        0xbt
        0x7t
        0x4t
        0x9t
        0x1t
        0xat
        0xet
        0x3t
        0x5t
        0xct
        0x2t
        0xft
        0x8t
        0x6t
        0x1t
        0x4t
        0xbt
        0xdt
        0xct
        0x3t
        0x7t
        0xet
        0xat
        0xft
        0x6t
        0x8t
        0x0t
        0x5t
        0x9t
        0x2t
        0x6t
        0xbt
        0xdt
        0x8t
        0x1t
        0x4t
        0xat
        0x7t
        0x9t
        0x5t
        0x0t
        0xft
        0xet
        0x2t
        0x3t
        0xct
    .end array-data

    :array_246
    .array-data 0x1
        0xdt
        0x2t
        0x8t
        0x4t
        0x6t
        0xft
        0xbt
        0x1t
        0xat
        0x9t
        0x3t
        0xet
        0x5t
        0x0t
        0xct
        0x7t
        0x1t
        0xft
        0xdt
        0x8t
        0xat
        0x3t
        0x7t
        0x4t
        0xct
        0x5t
        0x6t
        0xbt
        0x0t
        0xet
        0x9t
        0x2t
        0x7t
        0xbt
        0x4t
        0x1t
        0x9t
        0xct
        0xet
        0x2t
        0x0t
        0x6t
        0xat
        0xdt
        0xft
        0x3t
        0x5t
        0x8t
        0x2t
        0x1t
        0xet
        0x7t
        0x4t
        0xat
        0x8t
        0xdt
        0xft
        0xct
        0x9t
        0x0t
        0x3t
        0x5t
        0x6t
        0xbt
    .end array-data

    .line 129
    :array_26a
    .array-data 0x1
        0x10t
        0x7t
        0x14t
        0x15t
        0x1dt
        0xct
        0x1ct
        0x11t
        0x1t
        0xft
        0x17t
        0x1at
        0x5t
        0x12t
        0x1ft
        0xat
        0x2t
        0x8t
        0x18t
        0xet
        0x20t
        0x1bt
        0x3t
        0x9t
        0x13t
        0xdt
        0x1et
        0x6t
        0x16t
        0xbt
        0x4t
        0x19t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v1, 0x1c

    const/16 v2, 0x30

    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-array v0, v1, [B

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->C:[B

    .line 156
    new-array v0, v1, [B

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->D:[B

    .line 157
    const/16 v0, 0x10

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->KS:[[B

    .line 158
    new-array v0, v2, [B

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->E:[B

    .line 159
    new-array v0, v2, [B

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->preS:[B

    .line 161
    sget v0, Lcom/wssyncmldm/db/file/XDBCrypt;->MAX_ENCRYPT_SIZE:I

    new-array v0, v0, [B

    sput-object v0, Lcom/wssyncmldm/db/file/XDBCrypt;->m_cryptCryptByte:[B

    .line 162
    return-void
.end method

.method private xdbCryptDESEncrypt([B)[B
    .registers 22
    .parameter "block"

    .prologue
    .line 293
    const/16 v17, 0x20

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 294
    .local v6, left:[B
    const/16 v17, 0x20

    move/from16 v0, v17

    new-array v8, v0, [B

    .line 295
    .local v8, right:[B
    const/16 v17, 0x20

    move/from16 v0, v17

    new-array v7, v0, [B

    .line 296
    .local v7, old:[B
    const/16 v17, 0x20

    move/from16 v0, v17

    new-array v1, v0, [B

    .line 299
    .local v1, f:[B
    const/4 v4, 0x0

    .local v4, j:I
    :goto_19
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v4, v0, :cond_2c

    .line 301
    sget-object v17, Lcom/wssyncmldm/db/file/XDBCrypt;->IP:[B

    aget-byte v17, v17, v4

    add-int/lit8 v17, v17, -0x1

    aget-byte v17, p1, v17

    aput-byte v17, v6, v4

    .line 299
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 304
    :cond_2c
    :goto_2c
    const/16 v17, 0x40

    move/from16 v0, v17

    if-ge v4, v0, :cond_41

    .line 306
    add-int/lit8 v17, v4, -0x20

    sget-object v18, Lcom/wssyncmldm/db/file/XDBCrypt;->IP:[B

    aget-byte v18, v18, v4

    add-int/lit8 v18, v18, -0x1

    aget-byte v18, p1, v18

    aput-byte v18, v8, v17

    .line 304
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 309
    :cond_41
    const/4 v3, 0x0

    .local v3, ii:I
    :goto_42
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v3, v0, :cond_136

    .line 311
    move v2, v3

    .line 313
    .local v2, i:I
    const/4 v4, 0x0

    :goto_4a
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v4, v0, :cond_57

    .line 315
    aget-byte v17, v8, v4

    aput-byte v17, v7, v4

    .line 313
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 318
    :cond_57
    const/4 v4, 0x0

    :goto_58
    const/16 v17, 0x30

    move/from16 v0, v17

    if-ge v4, v0, :cond_7a

    .line 320
    sget-object v17, Lcom/wssyncmldm/db/file/XDBCrypt;->preS:[B

    sget-object v18, Lcom/wssyncmldm/db/file/XDBCrypt;->E:[B

    aget-byte v18, v18, v4

    add-int/lit8 v18, v18, -0x1

    aget-byte v18, v8, v18

    sget-object v19, Lcom/wssyncmldm/db/file/XDBCrypt;->KS:[[B

    aget-object v19, v19, v2

    aget-byte v19, v19, v4

    xor-int v18, v18, v19

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v17, v4

    .line 318
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 323
    :cond_7a
    const/4 v4, 0x0

    :goto_7b
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ge v4, v0, :cond_107

    .line 325
    mul-int/lit8 v17, v4, 0x6

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 327
    .local v16, temp:B
    sget-object v17, Lcom/wssyncmldm/db/file/XDBCrypt;->preS:[B

    add-int/lit8 v18, v16, 0x0

    aget-byte v17, v17, v18

    shl-int/lit8 v9, v17, 0x5

    .line 328
    .local v9, s1:I
    sget-object v17, Lcom/wssyncmldm/db/file/XDBCrypt;->preS:[B

    add-int/lit8 v18, v16, 0x1

    aget-byte v17, v17, v18

    shl-int/lit8 v10, v17, 0x3

    .line 329
    .local v10, s2:I
    sget-object v17, Lcom/wssyncmldm/db/file/XDBCrypt;->preS:[B

    add-int/lit8 v18, v16, 0x2

    aget-byte v17, v17, v18

    shl-int/lit8 v11, v17, 0x2

    .line 330
    .local v11, s3:I
    sget-object v17, Lcom/wssyncmldm/db/file/XDBCrypt;->preS:[B

    add-int/lit8 v18, v16, 0x3

    aget-byte v17, v17, v18

    shl-int/lit8 v12, v17, 0x1

    .line 331
    .local v12, s4:I
    sget-object v17, Lcom/wssyncmldm/db/file/XDBCrypt;->preS:[B

    add-int/lit8 v18, v16, 0x4

    aget-byte v17, v17, v18

    shl-int/lit8 v13, v17, 0x0

    .line 332
    .local v13, s5:I
    sget-object v17, Lcom/wssyncmldm/db/file/XDBCrypt;->preS:[B

    add-int/lit8 v18, v16, 0x5

    aget-byte v17, v17, v18

    shl-int/lit8 v14, v17, 0x4

    .line 334
    .local v14, s6:I
    add-int v17, v9, v10

    add-int v17, v17, v11

    add-int v17, v17, v12

    add-int v17, v17, v13

    add-int v15, v17, v14

    .line 335
    .local v15, sSum:I
    sget-object v17, Lcom/wssyncmldm/db/file/XDBCrypt;->S:[[B

    aget-object v17, v17, v4

    aget-byte v5, v17, v15

    .line 337
    .local v5, k:I
    mul-int/lit8 v17, v4, 0x4

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 338
    add-int/lit8 v17, v16, 0x0

    shr-int/lit8 v18, v5, 0x3

    and-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v1, v17

    .line 339
    add-int/lit8 v17, v16, 0x1

    shr-int/lit8 v18, v5, 0x2

    and-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v1, v17

    .line 340
    add-int/lit8 v17, v16, 0x2

    shr-int/lit8 v18, v5, 0x1

    and-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v1, v17

    .line 341
    add-int/lit8 v17, v16, 0x3

    shr-int/lit8 v18, v5, 0x0

    and-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v1, v17

    .line 323
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7b

    .line 344
    .end local v5           #k:I
    .end local v9           #s1:I
    .end local v10           #s2:I
    .end local v11           #s3:I
    .end local v12           #s4:I
    .end local v13           #s5:I
    .end local v14           #s6:I
    .end local v15           #sSum:I
    .end local v16           #temp:B
    :cond_107
    const/4 v4, 0x0

    :goto_108
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v4, v0, :cond_124

    .line 346
    aget-byte v17, v6, v4

    sget-object v18, Lcom/wssyncmldm/db/file/XDBCrypt;->P:[B

    aget-byte v18, v18, v4

    add-int/lit8 v18, v18, -0x1

    aget-byte v18, v1, v18

    xor-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v8, v4

    .line 344
    add-int/lit8 v4, v4, 0x1

    goto :goto_108

    .line 349
    :cond_124
    const/4 v4, 0x0

    :goto_125
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v4, v0, :cond_132

    .line 351
    aget-byte v17, v7, v4

    aput-byte v17, v6, v4

    .line 349
    add-int/lit8 v4, v4, 0x1

    goto :goto_125

    .line 309
    :cond_132
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_42

    .line 355
    .end local v2           #i:I
    :cond_136
    const/4 v4, 0x0

    :goto_137
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v4, v0, :cond_148

    .line 357
    aget-byte v16, v6, v4

    .line 358
    .restart local v16       #temp:B
    aget-byte v17, v8, v4

    aput-byte v17, v6, v4

    .line 359
    aput-byte v16, v8, v4

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_137

    .line 362
    .end local v16           #temp:B
    :cond_148
    const/4 v4, 0x0

    .line 363
    const/4 v4, 0x0

    :goto_14a
    const/16 v17, 0x40

    move/from16 v0, v17

    if-ge v4, v0, :cond_172

    .line 365
    sget-object v17, Lcom/wssyncmldm/db/file/XDBCrypt;->FP:[B

    aget-byte v2, v17, v4

    .line 366
    .restart local v2       #i:I
    const/16 v17, 0x21

    move/from16 v0, v17

    if-ge v2, v0, :cond_167

    .line 368
    sget-object v17, Lcom/wssyncmldm/db/file/XDBCrypt;->FP:[B

    aget-byte v17, v17, v4

    add-int/lit8 v17, v17, -0x1

    aget-byte v17, v6, v17

    aput-byte v17, p1, v4

    .line 363
    :goto_164
    add-int/lit8 v4, v4, 0x1

    goto :goto_14a

    .line 372
    :cond_167
    sget-object v17, Lcom/wssyncmldm/db/file/XDBCrypt;->FP:[B

    aget-byte v17, v17, v4

    add-int/lit8 v17, v17, -0x21

    aget-byte v17, v8, v17

    aput-byte v17, p1, v4

    goto :goto_164

    .line 375
    .end local v2           #i:I
    :cond_172
    return-object p1
.end method

.method private xdbCryptEExpandsion([B)V
    .registers 12
    .parameter "salt"

    .prologue
    .line 253
    if-nez p1, :cond_3

    .line 288
    :cond_2
    return-void

    .line 256
    :cond_3
    const/4 v3, 0x0

    .line 258
    .local v3, k:I
    const/4 v1, 0x0

    .local v1, i:I
    move v4, v3

    .end local v3           #k:I
    .local v4, k:I
    :goto_6
    const/4 v6, 0x2

    if-ge v1, v6, :cond_2

    .line 262
    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .restart local v3       #k:I
    aget-byte v0, p1, v4

    .line 263
    .local v0, c:B
    sget-object v6, Lcom/wssyncmldm/db/file/XDBCrypt;->m_cryptCryptByte:[B

    aput-byte v0, v6, v1

    .line 265
    const/16 v6, 0x5a

    if-le v0, v6, :cond_46

    .line 267
    add-int/lit8 v6, v0, -0x3b

    int-to-byte v0, v6

    .line 278
    :goto_18
    const/4 v2, 0x0

    .local v2, j:I
    :goto_19
    const/4 v6, 0x6

    if-ge v2, v6, :cond_52

    .line 280
    shr-int v6, v0, v2

    and-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    if-eqz v6, :cond_43

    .line 282
    sget-object v6, Lcom/wssyncmldm/db/file/XDBCrypt;->E:[B

    mul-int/lit8 v7, v1, 0x6

    add-int/2addr v7, v2

    aget-byte v5, v6, v7

    .line 283
    .local v5, temp:B
    sget-object v6, Lcom/wssyncmldm/db/file/XDBCrypt;->E:[B

    mul-int/lit8 v7, v1, 0x6

    add-int/2addr v7, v2

    sget-object v8, Lcom/wssyncmldm/db/file/XDBCrypt;->E:[B

    mul-int/lit8 v9, v1, 0x6

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x18

    aget-byte v8, v8, v9

    aput-byte v8, v6, v7

    .line 284
    sget-object v6, Lcom/wssyncmldm/db/file/XDBCrypt;->E:[B

    mul-int/lit8 v7, v1, 0x6

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x18

    aput-byte v5, v6, v7

    .line 278
    .end local v5           #temp:B
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 269
    .end local v2           #j:I
    :cond_46
    const/16 v6, 0x39

    if-le v0, v6, :cond_4e

    .line 271
    add-int/lit8 v6, v0, -0x35

    int-to-byte v0, v6

    goto :goto_18

    .line 275
    :cond_4e
    add-int/lit8 v6, v0, -0x2e

    int-to-byte v0, v6

    goto :goto_18

    .line 258
    .restart local v2       #j:I
    :cond_52
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3           #k:I
    .restart local v4       #k:I
    goto :goto_6
.end method

.method private xdbCryptEncrypt([B)V
    .registers 9
    .parameter "password"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 383
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    const/16 v3, 0x19

    if-ge v1, v3, :cond_e

    .line 385
    invoke-direct {p0, p1}, Lcom/wssyncmldm/db/file/XDBCrypt;->xdbCryptDESEncrypt([B)[B

    move-result-object p1

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 388
    :cond_e
    const/4 v1, 0x0

    :goto_f
    const/16 v3, 0xb

    if-ge v1, v3, :cond_3f

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, c:B
    const/4 v2, 0x0

    .local v2, j:I
    :goto_15
    const/4 v3, 0x6

    if-ge v2, v3, :cond_25

    .line 393
    shl-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    .line 394
    mul-int/lit8 v3, v1, 0x6

    add-int/2addr v3, v2

    aget-byte v3, p1, v3

    or-int/2addr v3, v0

    int-to-byte v0, v3

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 396
    :cond_25
    add-int/lit8 v3, v0, 0x2e

    int-to-byte v0, v3

    .line 397
    const/16 v3, 0x39

    if-le v0, v3, :cond_2f

    .line 399
    add-int/lit8 v3, v0, 0x7

    int-to-byte v0, v3

    .line 401
    :cond_2f
    const/16 v3, 0x5a

    if-le v0, v3, :cond_36

    .line 403
    add-int/lit8 v3, v0, 0x6

    int-to-byte v0, v3

    .line 405
    :cond_36
    sget-object v3, Lcom/wssyncmldm/db/file/XDBCrypt;->m_cryptCryptByte:[B

    add-int/lit8 v4, v1, 0x2

    aput-byte v0, v3, v4

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 407
    .end local v0           #c:B
    .end local v2           #j:I
    :cond_3f
    sget-object v3, Lcom/wssyncmldm/db/file/XDBCrypt;->m_cryptCryptByte:[B

    add-int/lit8 v4, v1, 0x2

    aput-byte v5, v3, v4

    .line 408
    sget-object v3, Lcom/wssyncmldm/db/file/XDBCrypt;->m_cryptCryptByte:[B

    aget-byte v3, v3, v6

    if-nez v3, :cond_53

    .line 410
    sget-object v3, Lcom/wssyncmldm/db/file/XDBCrypt;->m_cryptCryptByte:[B

    sget-object v4, Lcom/wssyncmldm/db/file/XDBCrypt;->m_cryptCryptByte:[B

    aget-byte v4, v4, v5

    aput-byte v4, v3, v6

    .line 412
    :cond_53
    return-void
.end method

.method private xdbCryptInitPassword([B[B)[B
    .registers 9
    .parameter "key"
    .parameter "password"

    .prologue
    const/4 v5, 0x0

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, i:I
    const/4 v2, 0x0

    .line 169
    .local v2, j:I
    if-eqz p1, :cond_7

    if-nez p2, :cond_9

    .line 170
    :cond_7
    const/4 p2, 0x0

    .line 190
    .end local p2
    :cond_8
    return-object p2

    .line 172
    .restart local p2
    :cond_9
    const/4 v3, 0x0

    .line 174
    .local v3, k:I
    :goto_a
    aget-byte v4, p1, v3

    if-eqz v4, :cond_2b

    sget v4, Lcom/wssyncmldm/db/file/XDBCrypt;->MAX_CRYPT_BITS_SIZE:I

    if-ge v0, v4, :cond_2b

    .line 176
    const/4 v2, 0x6

    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_14
    if-ltz v2, :cond_24

    .line 178
    aget-byte v4, p1, v3

    shr-int/2addr v4, v2

    and-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    .line 179
    add-int/lit8 v0, v1, 0x1

    .line 176
    .end local v1           #i:I
    .restart local v0       #i:I
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_14

    .line 181
    :cond_24
    add-int/lit8 v3, v3, 0x1

    .line 182
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aput-byte v5, p2, v1

    goto :goto_a

    .line 185
    :cond_2b
    :goto_2b
    sget v4, Lcom/wssyncmldm/db/file/XDBCrypt;->MAX_CRYPT_BITS_SIZE:I

    add-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_8

    .line 187
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aput-byte v5, p2, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_2b
.end method

.method private xdbCryptSetKey([B)V
    .registers 12
    .parameter "key"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x1b

    .line 209
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    const/16 v4, 0x1c

    if-ge v0, v4, :cond_23

    .line 211
    sget-object v4, Lcom/wssyncmldm/db/file/XDBCrypt;->C:[B

    sget-object v5, Lcom/wssyncmldm/db/file/XDBCrypt;->PC1_C:[B

    aget-byte v5, v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p1, v5

    aput-byte v5, v4, v0

    .line 212
    sget-object v4, Lcom/wssyncmldm/db/file/XDBCrypt;->D:[B

    sget-object v5, Lcom/wssyncmldm/db/file/XDBCrypt;->PC1_D:[B

    aget-byte v5, v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p1, v5

    aput-byte v5, v4, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 215
    :cond_23
    const/4 v0, 0x0

    :goto_24
    const/16 v4, 0x10

    if-ge v0, v4, :cond_91

    .line 217
    const/4 v2, 0x0

    .local v2, k:I
    :goto_29
    sget-object v4, Lcom/wssyncmldm/db/file/XDBCrypt;->shifts:[B

    aget-byte v4, v4, v0

    if-ge v2, v4, :cond_62

    .line 219
    sget-object v4, Lcom/wssyncmldm/db/file/XDBCrypt;->C:[B

    aget-byte v3, v4, v9

    .line 220
    .local v3, temp:B
    const/4 v1, 0x0

    .local v1, j:I
    :goto_34
    if-ge v1, v8, :cond_43

    .line 222
    sget-object v4, Lcom/wssyncmldm/db/file/XDBCrypt;->C:[B

    sget-object v5, Lcom/wssyncmldm/db/file/XDBCrypt;->C:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v5, v5, v6

    aput-byte v5, v4, v1

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 224
    :cond_43
    sget-object v4, Lcom/wssyncmldm/db/file/XDBCrypt;->C:[B

    aput-byte v3, v4, v8

    .line 226
    sget-object v4, Lcom/wssyncmldm/db/file/XDBCrypt;->D:[B

    aget-byte v3, v4, v9

    .line 227
    const/4 v1, 0x0

    :goto_4c
    if-ge v1, v8, :cond_5b

    .line 229
    sget-object v4, Lcom/wssyncmldm/db/file/XDBCrypt;->D:[B

    sget-object v5, Lcom/wssyncmldm/db/file/XDBCrypt;->D:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v5, v5, v6

    aput-byte v5, v4, v1

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 231
    :cond_5b
    sget-object v4, Lcom/wssyncmldm/db/file/XDBCrypt;->D:[B

    aput-byte v3, v4, v8

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 234
    .end local v1           #j:I
    .end local v3           #temp:B
    :cond_62
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_63
    const/16 v4, 0x18

    if-ge v1, v4, :cond_8e

    .line 236
    sget-object v4, Lcom/wssyncmldm/db/file/XDBCrypt;->KS:[[B

    aget-object v4, v4, v0

    sget-object v5, Lcom/wssyncmldm/db/file/XDBCrypt;->C:[B

    sget-object v6, Lcom/wssyncmldm/db/file/XDBCrypt;->PC2_C:[B

    aget-byte v6, v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-byte v5, v5, v6

    aput-byte v5, v4, v1

    .line 238
    sget-object v4, Lcom/wssyncmldm/db/file/XDBCrypt;->KS:[[B

    aget-object v4, v4, v0

    add-int/lit8 v5, v1, 0x18

    sget-object v6, Lcom/wssyncmldm/db/file/XDBCrypt;->D:[B

    sget-object v7, Lcom/wssyncmldm/db/file/XDBCrypt;->PC2_D:[B

    aget-byte v7, v7, v1

    add-int/lit8 v7, v7, -0x1c

    add-int/lit8 v7, v7, -0x1

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 215
    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 242
    .end local v1           #j:I
    .end local v2           #k:I
    :cond_91
    const/4 v0, 0x0

    :goto_92
    const/16 v4, 0x30

    if-ge v0, v4, :cond_a1

    .line 244
    sget-object v4, Lcom/wssyncmldm/db/file/XDBCrypt;->E:[B

    sget-object v5, Lcom/wssyncmldm/db/file/XDBCrypt;->e2:[B

    aget-byte v5, v5, v0

    aput-byte v5, v4, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    .line 246
    :cond_a1
    return-void
.end method

.method private xdbCrypttZeroPassword([B)[B
    .registers 4
    .parameter "password"

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v1, Lcom/wssyncmldm/db/file/XDBCrypt;->MAX_CRYPT_BITS_SIZE:I

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_d

    .line 199
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_d
    return-object p1
.end method


# virtual methods
.method public xdbCryptGenerate(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 8
    .parameter "szKey"
    .parameter "salt"

    .prologue
    .line 426
    sget v3, Lcom/wssyncmldm/db/file/XDBCrypt;->MAX_CRYPT_BITS_SIZE:I

    add-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 427
    .local v2, password:[B
    const/4 v1, 0x0

    .line 430
    .local v1, key:[B
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 431
    invoke-direct {p0, v1, v2}, Lcom/wssyncmldm/db/file/XDBCrypt;->xdbCryptInitPassword([B[B)[B

    move-result-object v2

    .line 433
    if-eqz v2, :cond_1e

    .line 435
    invoke-direct {p0, v2}, Lcom/wssyncmldm/db/file/XDBCrypt;->xdbCryptSetKey([B)V

    .line 436
    invoke-direct {p0, v2}, Lcom/wssyncmldm/db/file/XDBCrypt;->xdbCrypttZeroPassword([B)[B

    move-result-object v2

    .line 437
    invoke-direct {p0, p2}, Lcom/wssyncmldm/db/file/XDBCrypt;->xdbCryptEExpandsion([B)V

    .line 438
    invoke-direct {p0, v2}, Lcom/wssyncmldm/db/file/XDBCrypt;->xdbCryptEncrypt([B)V

    .line 441
    :cond_1e
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/wssyncmldm/db/file/XDBCrypt;->m_cryptCryptByte:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    sput-object v3, Lcom/wssyncmldm/db/file/XDBCrypt;->m_szCryptCryptResult:Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_27} :catch_2a

    .line 447
    :goto_27
    sget-object v3, Lcom/wssyncmldm/db/file/XDBCrypt;->m_szCryptCryptResult:Ljava/lang/String;

    return-object v3

    .line 443
    :catch_2a
    move-exception v0

    .line 445
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "xdbCryptGenerate Fail"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_27
.end method
