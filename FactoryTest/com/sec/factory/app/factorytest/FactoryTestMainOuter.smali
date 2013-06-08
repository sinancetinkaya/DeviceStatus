.class public Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;
.super Ljava/lang/Object;
.source "FactoryTestMainOuter.java"


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "FactoryTestMainOuter"

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->CLASS_NAME:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public startBarcodeEmulator()V
    .registers 4

    .prologue
    .line 240
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startBarcodeEmulator"

    const-string v2, "Start BarcodeEmulator"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIBarcodeEmulator;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 243
    return-void
.end method

.method public startBarometer()V
    .registers 4

    .prologue
    .line 36
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startBarometer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIBarometer;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 39
    return-void
.end method

.method public startBtLeSearch()V
    .registers 4

    .prologue
    .line 42
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startBtLeSearch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIBtlesearch;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 46
    return-void
.end method

.method public startChargeNFCRead()V
    .registers 4

    .prologue
    .line 49
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startChargeNFCRead"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 52
    return-void
.end method

.method public startDMB1()V
    .registers 5

    .prologue
    .line 55
    const-string v1, "FactoryTestMainOuter"

    const-string v2, "startDMB1"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FACTORYTEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, i:Landroid/content/Intent;
    const-string v1, "STARTMODE"

    const-string v2, "FactoryTest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    return-void
.end method

.method public startDMB2()V
    .registers 5

    .prologue
    .line 62
    const-string v1, "FactoryTestMainOuter"

    const-string v2, "startDMB2"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.samsung.sec.mtv"

    const-string v2, "com.samsung.sec.mtv.ui.TestMode.MtvUiTestMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "fromFactoryTest"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 67
    return-void
.end method

.method public startDmbDetach()V
    .registers 4

    .prologue
    .line 292
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startDMB_DETACH"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIDmbDetach;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 297
    return-void
.end method

.method public startFeliCa()V
    .registers 4

    .prologue
    .line 267
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startFeliCa"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIFeliCa;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 270
    return-void
.end method

.method public startGeomagneticGyro()V
    .registers 4

    .prologue
    .line 70
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startGeomagneticGyro"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIGeomagneticGyro;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 73
    return-void
.end method

.method public startGrip()V
    .registers 4

    .prologue
    .line 76
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startGrip"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIGrip;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 79
    return-void
.end method

.method public startGyroscope()V
    .registers 4

    .prologue
    .line 82
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startGyroscope"

    const-string v2, "DO NOT USE [ startGyroscope() => startGeomagneticGyro() ]"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public startHDMI()V
    .registers 5

    .prologue
    const/16 v3, 0x17

    .line 108
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startHDMI"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 110
    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v2, "LAND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 113
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIHDMI_Landscape;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    :goto_26
    const-string v0, "Enter15Mode"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    return-void

    .line 115
    :cond_34
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIHDMI_Portrait;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_26
.end method

.method public startHallIC()V
    .registers 4

    .prologue
    .line 102
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startHallIC"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UiHallICTest;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 105
    return-void
.end method

.method public startIRLED()V
    .registers 4

    .prologue
    .line 124
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startIRLED"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIIrLedTest;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 127
    return-void
.end method

.method public startKey(I)V
    .registers 6
    .parameter

    .prologue
    .line 138
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startKey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIKey;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const-string v0, "requestCode"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 142
    return-void
.end method

.method public startLcd()V
    .registers 5

    .prologue
    const/16 v3, 0x2e

    .line 204
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startLcd"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UISimple;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    const-string v0, "requestCode"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 207
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    return-void
.end method

.method public startMacroAF()V
    .registers 5

    .prologue
    .line 273
    const-string v1, "FactoryTestMainOuter"

    const-string v2, "startMacroAF"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "SUPPORT_NCR"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 275
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.bst.ncr"

    const-string v2, "com.sec.android.app.ncr.camera.NcrCamera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v1, "fromFactoryTest"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x30

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 282
    .end local v0           #i:Landroid/content/Intent;
    :goto_2b
    return-void

    .line 280
    :cond_2c
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-string v2, "No app for Macro AF test"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2b
.end method

.method public startMagnetic()V
    .registers 6

    .prologue
    .line 145
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startMagnetic"

    const-string v2, "DO NOT USE [ startMagnetic() => startGeomagneticGyro() ]"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GEOMAGNETIC:I

    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "FactoryTestMainOuter"

    const-string v2, "startMagnetic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start Magnetic Sensor - feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    const-string v2, "HSCDTD004"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "HSCDTD004A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "HSCDTD006A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 168
    :cond_48
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    :cond_58
    return-void
.end method

.method public startNFC()V
    .registers 4

    .prologue
    .line 174
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startNFC"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UINFC;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    return-void
.end method

.method public startProximityLight()V
    .registers 4

    .prologue
    .line 180
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startProximityLight"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIProximityLight;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 183
    return-void
.end method

.method public startRGB()V
    .registers 4

    .prologue
    .line 186
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startRGB"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIRgb;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    return-void
.end method

.method public startSPDIFAudioTest()V
    .registers 4

    .prologue
    .line 192
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startSPDIFAudioTest"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UISPDIF;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 195
    return-void
.end method

.method public startSPenDetection()V
    .registers 4

    .prologue
    .line 234
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startSPenDectection"

    const-string v2, "Start SPenDetection"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UISpenDetectionTest;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 237
    return-void
.end method

.method public startSPenDrawing()V
    .registers 5

    .prologue
    .line 212
    const-string v1, "FactoryTestMainOuter"

    const-string v2, "startSPenDrawing"

    const-string v3, "Start SPenDrawing(Pen-Type)"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UISpenTypeTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v0, i:Landroid/content/Intent;
    const-string v1, "TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x1a

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 216
    return-void
.end method

.method public startSPenEraser()V
    .registers 5

    .prologue
    .line 219
    const-string v1, "FactoryTestMainOuter"

    const-string v2, "startSPenEraser"

    const-string v3, "Start SPenEraser(Eraser-Type)"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UISpenTypeTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .local v0, i:Landroid/content/Intent;
    const-string v1, "TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x1c

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 223
    return-void
.end method

.method public startSPenHovering()V
    .registers 4

    .prologue
    .line 226
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startSPenHovering"

    const-string v2, "Start SPenHovering"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UISpenHoveringTest;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 229
    return-void
.end method

.method public startSensorHub()V
    .registers 4

    .prologue
    .line 286
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startSensorHub"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UISensorHub;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 289
    return-void
.end method

.method public startSimple()V
    .registers 4

    .prologue
    .line 198
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startSimple"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UISimple;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 201
    return-void
.end method

.method public startTSP(I)V
    .registers 6
    .parameter

    .prologue
    .line 252
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startTSP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UITSP;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    const-string v0, "requestCode"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 256
    return-void
.end method

.method public startUSB()V
    .registers 4

    .prologue
    .line 300
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startUSB"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIUSB;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 303
    return-void
.end method

.method public startWirelessCharge()V
    .registers 4

    .prologue
    .line 259
    const-string v0, "FactoryTestMainOuter"

    const-string v1, "startWirelessCharge"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIWirelessCharge;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 263
    return-void
.end method
