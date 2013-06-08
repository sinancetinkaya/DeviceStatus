.class public Lcom/sec/factory/support/NVAccessor;
.super Ljava/lang/Object;
.source "NVAccessor.java"


# static fields
.field private static mNVAccessor:Lcom/sec/factory/support/NVAccessor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    new-instance v0, Lcom/sec/factory/support/NVAccessor;

    invoke-direct {v0}, Lcom/sec/factory/support/NVAccessor;-><init>()V

    sput-object v0, Lcom/sec/factory/support/NVAccessor;->mNVAccessor:Lcom/sec/factory/support/NVAccessor;

    .line 47
    const-string v0, "nvaccessor"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getNV(B)B
    .registers 3
    .parameter "key"

    .prologue
    .line 17
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_15

    if-lez p0, :cond_15

    .line 18
    sget-object v0, Lcom/sec/factory/support/NVAccessor;->mNVAccessor:Lcom/sec/factory/support/NVAccessor;

    invoke-virtual {v0, p0}, Lcom/sec/factory/support/NVAccessor;->nativeGetNV(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-byte v0, v0

    .line 20
    :goto_14
    return v0

    :cond_15
    const/16 v0, 0x4e

    goto :goto_14
.end method

.method public static getNVHistory()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 34
    sget-object v0, Lcom/sec/factory/support/NVAccessor;->mNVAccessor:Lcom/sec/factory/support/NVAccessor;

    invoke-virtual {v0}, Lcom/sec/factory/support/NVAccessor;->nativeGetNVHistory()Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static setNV(BB)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 25
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 26
    sget-object v0, Lcom/sec/factory/support/NVAccessor;->mNVAccessor:Lcom/sec/factory/support/NVAccessor;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/sec/factory/support/NVAccessor;->nativeSetNV(ILjava/lang/String;)I

    .line 30
    :cond_10
    return-void
.end method


# virtual methods
.method native nativeGetNV(I)Ljava/lang/String;
.end method

.method native nativeGetNVHistory()Ljava/lang/String;
.end method

.method native nativeSetNV(ILjava/lang/String;)I
.end method
