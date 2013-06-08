.class public Lcom/sec/factory/app/factorytest/MTVTunerTest;
.super Ljava/lang/Object;
.source "MTVTunerTest.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-string v0, "OneSegfactorytest_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native nativeoneseg_mod_deinit()I
.end method

.method public native nativeoneseg_mod_getsiginfo(I)I
.end method

.method public native nativeoneseg_mod_init()I
.end method

.method public native nativeoneseg_mod_settune(I)I
.end method
