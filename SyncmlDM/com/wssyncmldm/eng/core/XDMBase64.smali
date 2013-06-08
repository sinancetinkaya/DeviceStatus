.class public Lcom/wssyncmldm/eng/core/XDMBase64;
.super Ljava/lang/Object;
.source "XDMBase64.java"


# static fields
.field private static base64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0xff

    .line 25
    new-array v1, v3, [B

    sput-object v1, Lcom/wssyncmldm/eng/core/XDMBase64;->base64Alphabet:[B

    .line 30
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-lt v0, v3, :cond_2c

    .line 34
    const/16 v0, 0x5a

    :goto_b
    const/16 v1, 0x41

    if-ge v0, v1, :cond_34

    .line 38
    const/16 v0, 0x7a

    :goto_11
    const/16 v1, 0x61

    if-ge v0, v1, :cond_3e

    .line 42
    const/16 v0, 0x39

    :goto_17
    const/16 v1, 0x30

    if-ge v0, v1, :cond_4a

    .line 47
    sget-object v1, Lcom/wssyncmldm/eng/core/XDMBase64;->base64Alphabet:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 48
    sget-object v1, Lcom/wssyncmldm/eng/core/XDMBase64;->base64Alphabet:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 23
    return-void

    .line 32
    :cond_2c
    sget-object v1, Lcom/wssyncmldm/eng/core/XDMBase64;->base64Alphabet:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 36
    :cond_34
    sget-object v1, Lcom/wssyncmldm/eng/core/XDMBase64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 40
    :cond_3e
    sget-object v1, Lcom/wssyncmldm/eng/core/XDMBase64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 44
    :cond_4a
    sget-object v1, Lcom/wssyncmldm/eng/core/XDMBase64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, -0x1

    goto :goto_17
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static myisBase64(B)Z
    .registers 4
    .parameter "octect"

    .prologue
    const/4 v0, 0x1

    .line 53
    const/16 v1, 0x3d

    if-ne p0, v1, :cond_6

    .line 63
    :cond_5
    :goto_5
    return v0

    .line 57
    :cond_6
    sget-object v1, Lcom/wssyncmldm/eng/core/XDMBase64;->base64Alphabet:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 59
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static xdmBase64Decode([B)[B
    .registers 15
    .parameter "base64Data"

    .prologue
    const/4 v13, 0x4

    .line 90
    const/4 v2, 0x0

    check-cast v2, [B

    .line 92
    .local v2, buf:[B
    const/4 v8, 0x0

    .line 95
    .local v8, ncnt:I
    :try_start_5
    const-string v11, "org.apache.commons.codec.binary.Base64"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 96
    .local v1, Base64:Ljava/lang/Class;
    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, [B

    aput-object v12, v10, v11

    .line 98
    .local v10, parameterTypes:[Ljava/lang/Class;
    array-length v11, p0

    new-array v6, v11, [B
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_78

    .line 99
    .local v6, myroomedData:[B
    const/4 v5, 0x0

    .local v5, i:I
    move v9, v8

    .end local v8           #ncnt:I
    .local v9, ncnt:I
    :goto_18
    :try_start_18
    array-length v11, p0

    if-lt v5, v11, :cond_50

    .line 111
    const/4 v7, 0x0

    .line 112
    .local v7, ncheckcnt:I
    array-length v11, v6

    rem-int/lit8 v11, v11, 0x4

    if-nez v11, :cond_24

    .line 114
    const/4 v5, 0x0

    :goto_22
    if-lt v5, v13, :cond_69

    .line 122
    :cond_24
    if-ne v7, v13, :cond_3a

    .line 124
    add-int/lit8 v11, v9, -0x4

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 125
    add-int/lit8 v11, v9, -0x3

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 126
    add-int/lit8 v11, v9, -0x2

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 127
    add-int/lit8 v11, v9, -0x1

    const/4 v12, 0x0

    aput-byte v12, v6, v11

    .line 130
    :cond_3a
    const-string v11, "decodeBase64"

    invoke-virtual {v1, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 131
    .local v3, decodeBase64:Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v3, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, [B

    move-object v2, v0

    move v8, v9

    .line 138
    .end local v1           #Base64:Ljava/lang/Class;
    .end local v3           #decodeBase64:Ljava/lang/reflect/Method;
    .end local v5           #i:I
    .end local v6           #myroomedData:[B
    .end local v7           #ncheckcnt:I
    .end local v9           #ncnt:I
    .end local v10           #parameterTypes:[Ljava/lang/Class;
    .restart local v8       #ncnt:I
    :goto_4f
    return-object v2

    .line 101
    .end local v8           #ncnt:I
    .restart local v1       #Base64:Ljava/lang/Class;
    .restart local v5       #i:I
    .restart local v6       #myroomedData:[B
    .restart local v9       #ncnt:I
    .restart local v10       #parameterTypes:[Ljava/lang/Class;
    :cond_50
    aget-byte v11, p0, v5

    invoke-static {v11}, Lcom/wssyncmldm/eng/core/XDMBase64;->myisBase64(B)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_55} :catch_81

    move-result v11

    if-eqz v11, :cond_62

    .line 103
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ncnt:I
    .restart local v8       #ncnt:I
    :try_start_5a
    aget-byte v11, p0, v5

    aput-byte v11, v6, v9
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5e} :catch_78

    .line 99
    :goto_5e
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8           #ncnt:I
    .restart local v9       #ncnt:I
    goto :goto_18

    .line 107
    :cond_62
    :try_start_62
    const-string v11, "Not base64"

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v8, v9

    .end local v9           #ncnt:I
    .restart local v8       #ncnt:I
    goto :goto_5e

    .line 116
    .end local v8           #ncnt:I
    .restart local v7       #ncheckcnt:I
    .restart local v9       #ncnt:I
    :cond_69
    add-int/lit8 v11, v5, 0x1

    sub-int v11, v9, v11

    aget-byte v11, v6, v11
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6f} :catch_81

    const/16 v12, 0x3d

    if-ne v11, v12, :cond_75

    .line 118
    add-int/lit8 v7, v7, 0x1

    .line 114
    :cond_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 133
    .end local v1           #Base64:Ljava/lang/Class;
    .end local v5           #i:I
    .end local v6           #myroomedData:[B
    .end local v7           #ncheckcnt:I
    .end local v9           #ncnt:I
    .end local v10           #parameterTypes:[Ljava/lang/Class;
    .restart local v8       #ncnt:I
    :catch_78
    move-exception v4

    .line 135
    .local v4, e:Ljava/lang/Exception;
    :goto_79
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_4f

    .line 133
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #ncnt:I
    .restart local v1       #Base64:Ljava/lang/Class;
    .restart local v5       #i:I
    .restart local v6       #myroomedData:[B
    .restart local v9       #ncnt:I
    .restart local v10       #parameterTypes:[Ljava/lang/Class;
    :catch_81
    move-exception v4

    move v8, v9

    .end local v9           #ncnt:I
    .restart local v8       #ncnt:I
    goto :goto_79
.end method

.method public static xdmBase64Encode([B)[B
    .registers 9
    .parameter "binaryData"

    .prologue
    .line 70
    const/4 v2, 0x0

    check-cast v2, [B

    .line 74
    .local v2, buf:[B
    :try_start_3
    const-string v6, "org.apache.commons.codec.binary.Base64"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 75
    .local v1, Base64:Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [B

    aput-object v7, v5, v6

    .line 76
    .local v5, parameterTypes:[Ljava/lang/Class;
    const-string v6, "encodeBase64"

    invoke-virtual {v1, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 77
    .local v4, encodeBase64:Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_26

    .line 84
    .end local v1           #Base64:Ljava/lang/Class;
    .end local v4           #encodeBase64:Ljava/lang/reflect/Method;
    .end local v5           #parameterTypes:[Ljava/lang/Class;
    :goto_25
    return-object v2

    .line 79
    :catch_26
    move-exception v3

    .line 81
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_25
.end method
