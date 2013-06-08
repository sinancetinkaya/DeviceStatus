.class public Lcom/wssyncmldm/eng/core/XDMMD5;
.super Ljava/lang/Object;
.source "XDMMD5.java"


# instance fields
.field private MD5Sum:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final xdmComputeMD5Credentials(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 15
    .parameter "szUsername"
    .parameter "szPassword"
    .parameter "nonce"

    .prologue
    const/4 v10, 0x0

    .line 15
    move-object v7, p1

    .line 16
    .local v7, szUserAndPassword:Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual {v7, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 21
    :try_start_c
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    iput-object v8, p0, Lcom/wssyncmldm/eng/core/XDMMD5;->MD5Sum:Ljava/lang/Object;

    .line 22
    iget-object v8, p0, Lcom/wssyncmldm/eng/core/XDMMD5;->MD5Sum:Ljava/lang/Object;

    check-cast v8, Ljava/security/MessageDigest;

    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_1b} :catch_57

    .line 28
    :goto_1b
    iget-object v8, p0, Lcom/wssyncmldm/eng/core/XDMMD5;->MD5Sum:Ljava/lang/Object;

    check-cast v8, Ljava/security/MessageDigest;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 29
    .local v1, digest:[B
    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v5

    .line 31
    .local v5, endoder:[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 32
    .local v6, szDigest:Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v3, v8

    .line 37
    .local v3, digestStrLen:I
    array-length v8, p3

    add-int/2addr v8, v3

    new-array v2, v8, [B

    .line 38
    .local v2, digestByteArray:[B
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v10, v2, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    array-length v8, p3

    invoke-static {p3, v10, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iget-object v8, p0, Lcom/wssyncmldm/eng/core/XDMMD5;->MD5Sum:Ljava/lang/Object;

    check-cast v8, Ljava/security/MessageDigest;

    invoke-virtual {v8, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v0

    .line 44
    .local v0, credentials:[B
    return-object v0

    .line 24
    .end local v0           #credentials:[B
    .end local v1           #digest:[B
    .end local v2           #digestByteArray:[B
    .end local v3           #digestStrLen:I
    .end local v5           #endoder:[B
    .end local v6           #szDigest:Ljava/lang/String;
    :catch_57
    move-exception v4

    .line 26
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1b
.end method
