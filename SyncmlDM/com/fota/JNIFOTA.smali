.class public Lcom/fota/JNIFOTA;
.super Ljava/lang/Object;
.source "JNIFOTA.java"


# static fields
.field public static final DP_FLAG_DONE:I = 0x3

.field public static final DP_FLAG_ERROR:I = -0x1

.field public static final DP_FLAG_FAIL:I = 0x0

.field public static final DP_FLAG_SKIP:I = 0x1

.field public static final DP_FLAG_TODO:I = 0x2


# instance fields
.field public final DP_BLOCK_SIZE:J

.field public final DP_MAX_BLOCK:I

.field public final DP_PAGE_SIZE:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-string v0, "dprw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/32 v0, 0x80000

    iput-wide v0, p0, Lcom/fota/JNIFOTA;->DP_BLOCK_SIZE:J

    .line 6
    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Lcom/fota/JNIFOTA;->DP_PAGE_SIZE:J

    .line 7
    const/16 v0, 0x2f

    iput v0, p0, Lcom/fota/JNIFOTA;->DP_MAX_BLOCK:I

    .line 3
    return-void
.end method

.method static native FOTA_EraseDelta()I
.end method

.method static native FOTA_GetAuthName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static native FOTA_GetAuthSecret(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static native FOTA_ReadFlag()I
.end method

.method static native FOTA_WriteDelta(Ljava/lang/String;)J
.end method

.method static native FOTA_WriteDelta(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method static native FOTA_WriteFlag()I
.end method


# virtual methods
.method public FOTA_GetAuthID(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "authKey"

    .prologue
    .line 62
    invoke-static {p1}, Lcom/fota/JNIFOTA;->FOTA_GetAuthName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FOTA_GetAuthPassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "authKey"

    .prologue
    .line 67
    invoke-static {p1}, Lcom/fota/JNIFOTA;->FOTA_GetAuthSecret(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FOTA_GetFlag()I
    .registers 2

    .prologue
    .line 40
    invoke-static {}, Lcom/fota/JNIFOTA;->FOTA_ReadFlag()I

    move-result v0

    return v0
.end method

.method public FOTA_SetEraseDelta()I
    .registers 2

    .prologue
    .line 35
    invoke-static {}, Lcom/fota/JNIFOTA;->FOTA_EraseDelta()I

    move-result v0

    return v0
.end method

.method public FOTA_SetFlag()I
    .registers 2

    .prologue
    .line 45
    invoke-static {}, Lcom/fota/JNIFOTA;->FOTA_WriteFlag()I

    move-result v0

    return v0
.end method

.method public FOTA_SetWriteDelta(Ljava/lang/String;)J
    .registers 4
    .parameter "deltapath"

    .prologue
    .line 50
    invoke-static {p1}, Lcom/fota/JNIFOTA;->FOTA_WriteDelta(Ljava/lang/String;)J

    move-result-wide v0

    .line 51
    .local v0, ret:J
    return-wide v0
.end method

.method public FOTA_SetWriteDelta(Ljava/lang/String;Ljava/lang/String;)J
    .registers 5
    .parameter "deltapath"
    .parameter "splitpath"

    .prologue
    .line 56
    invoke-static {p1, p2}, Lcom/fota/JNIFOTA;->FOTA_WriteDelta(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 57
    .local v0, ret:J
    return-wide v0
.end method
