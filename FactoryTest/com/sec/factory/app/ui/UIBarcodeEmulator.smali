.class public Lcom/sec/factory/app/ui/UIBarcodeEmulator;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIBarcodeEmulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;
    }
.end annotation


# static fields
.field private static barbeamFactory:Landroid/app/BarBeamFactory;


# instance fields
.field private final BACK_KEY_EVENT_TIMELAG:J

.field protected ONPASS_FINISH_DELAY:I

.field private barcodeByte:[B

.field private hopSequenceArray:[Landroid/app/Hop;

.field private mExitButton:Landroid/widget/Button;

.field private mIsLongPress:Z

.field private mIsPass:Z

.field private mPrevBackKeyEventTime:J

.field protected mTimerHandler:Landroid/os/Handler;

.field private mView:Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->barbeamFactory:Landroid/app/BarBeamFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    .line 86
    const-string v0, "UIBarcodeEmulator"

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mIsPass:Z

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mPrevBackKeyEventTime:J

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mIsLongPress:Z

    .line 42
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->BACK_KEY_EVENT_TIMELAG:J

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mView:Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;

    .line 45
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->ONPASS_FINISH_DELAY:I

    .line 50
    new-instance v0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIBarcodeEmulator$1;-><init>(Lcom/sec/factory/app/ui/UIBarcodeEmulator;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mTimerHandler:Landroid/os/Handler;

    .line 65
    const/16 v0, 0xa

    new-array v6, v0, [Landroid/app/Hop;

    const/4 v7, 0x0

    new-instance v0, Landroid/app/Hop;

    const/4 v1, 0x0

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x14

    const/16 v5, 0x1f

    invoke-direct/range {v0 .. v5}, Landroid/app/Hop;-><init>(IIIII)V

    aput-object v0, v6, v7

    const/4 v7, 0x1

    new-instance v0, Landroid/app/Hop;

    const/16 v1, 0x14

    const/16 v2, 0x14

    const/16 v3, 0x32

    const/16 v4, 0xa

    const/16 v5, 0x1f

    invoke-direct/range {v0 .. v5}, Landroid/app/Hop;-><init>(IIIII)V

    aput-object v0, v6, v7

    const/4 v7, 0x2

    new-instance v0, Landroid/app/Hop;

    const/4 v1, 0x2

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0xc

    const/16 v5, 0x1f

    invoke-direct/range {v0 .. v5}, Landroid/app/Hop;-><init>(IIIII)V

    aput-object v0, v6, v7

    const/4 v7, 0x3

    new-instance v0, Landroid/app/Hop;

    const/16 v1, 0x8

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0xa

    const/16 v5, 0x1f

    invoke-direct/range {v0 .. v5}, Landroid/app/Hop;-><init>(IIIII)V

    aput-object v0, v6, v7

    const/4 v7, 0x4

    new-instance v0, Landroid/app/Hop;

    const/16 v1, 0xc

    const/16 v2, 0x1e

    const/16 v3, 0x32

    const/16 v4, 0xa

    const/16 v5, 0x1f

    invoke-direct/range {v0 .. v5}, Landroid/app/Hop;-><init>(IIIII)V

    aput-object v0, v6, v7

    const/4 v7, 0x5

    new-instance v0, Landroid/app/Hop;

    const/4 v1, 0x1

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x10

    const/16 v5, 0x1f

    invoke-direct/range {v0 .. v5}, Landroid/app/Hop;-><init>(IIIII)V

    aput-object v0, v6, v7

    const/4 v7, 0x6

    new-instance v0, Landroid/app/Hop;

    const/16 v1, 0xe

    const/16 v2, 0x1e

    const/16 v3, 0x32

    const/16 v4, 0xa

    const/16 v5, 0x1f

    invoke-direct/range {v0 .. v5}, Landroid/app/Hop;-><init>(IIIII)V

    aput-object v0, v6, v7

    const/4 v7, 0x7

    new-instance v0, Landroid/app/Hop;

    const/4 v1, 0x4

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0xa

    const/16 v5, 0x1f

    invoke-direct/range {v0 .. v5}, Landroid/app/Hop;-><init>(IIIII)V

    aput-object v0, v6, v7

    const/16 v7, 0x8

    new-instance v0, Landroid/app/Hop;

    const/16 v1, 0xa

    const/16 v2, 0x28

    const/16 v3, 0x32

    const/16 v4, 0xa

    const/16 v5, 0x1f

    invoke-direct/range {v0 .. v5}, Landroid/app/Hop;-><init>(IIIII)V

    aput-object v0, v6, v7

    const/16 v7, 0x9

    new-instance v0, Landroid/app/Hop;

    const/4 v1, 0x6

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0xa

    const/16 v5, 0x1f

    invoke-direct/range {v0 .. v5}, Landroid/app/Hop;-><init>(IIIII)V

    aput-object v0, v6, v7

    iput-object v6, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->hopSequenceArray:[Landroid/app/Hop;

    .line 80
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_e4

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->barcodeByte:[B

    .line 87
    return-void

    .line 80
    :array_e4
    .array-data 0x1
        0xfft
        0xadt
        0x90t
        0xb1t
        0x4et
        0xf5t
        0xbat
        0xadt
        0xc5t
        0x8dt
        0x32t
        0x4dt
        0xbat
        0xfft
    .end array-data
.end method


# virtual methods
.method public StartBeaming()V
    .registers 7

    .prologue
    .line 132
    const/4 v2, 0x0

    .line 134
    .local v2, result:Z
    :try_start_1
    new-instance v3, Landroid/app/BarBeamFactory;

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->hopSequenceArray:[Landroid/app/Hop;

    invoke-direct {v3, p0, v4}, Landroid/app/BarBeamFactory;-><init>(Landroid/content/Context;[Landroid/app/Hop;)V

    sput-object v3, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->barbeamFactory:Landroid/app/BarBeamFactory;
    :try_end_a
    .catch Landroid/app/BarBeamException; {:try_start_1 .. :try_end_a} :catch_32

    .line 141
    :goto_a
    :try_start_a
    sget-object v3, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->barbeamFactory:Landroid/app/BarBeamFactory;

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->barcodeByte:[B

    invoke-virtual {v3, v4}, Landroid/app/BarBeamFactory;->StartBarBeamFactory([B)Z
    :try_end_11
    .catch Landroid/app/BarBeamException; {:try_start_a .. :try_end_11} :catch_37

    move-result v2

    .line 146
    :goto_12
    const-string v3, "UIBarcodeEmulator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartBarBeamFactory-- : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-eqz v2, :cond_3c

    .line 149
    const/16 v3, 0x50

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->setTestResult(B)V

    .line 156
    :goto_31
    return-void

    .line 135
    :catch_32
    move-exception v1

    .line 136
    .local v1, e1:Landroid/app/BarBeamException;
    invoke-virtual {v1}, Landroid/app/BarBeamException;->printStackTrace()V

    goto :goto_a

    .line 142
    .end local v1           #e1:Landroid/app/BarBeamException;
    :catch_37
    move-exception v0

    .line 144
    .local v0, e:Landroid/app/BarBeamException;
    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    goto :goto_12

    .line 153
    .end local v0           #e:Landroid/app/BarBeamException;
    :cond_3c
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mView:Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;

    const/4 v4, 0x0

    #calls: Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->drawResultText(Z)V
    invoke-static {v3, v4}, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;->access$000(Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;Z)V

    goto :goto_31
.end method

.method public StopBeaming()V
    .registers 6

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, result:Z
    const-string v2, "UIBarcodeEmulator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StopBarBeamFactory ++ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :try_start_19
    sget-object v2, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->barbeamFactory:Landroid/app/BarBeamFactory;

    invoke-virtual {v2}, Landroid/app/BarBeamFactory;->StopBarBeamFactory()Z
    :try_end_1e
    .catch Landroid/app/BarBeamException; {:try_start_19 .. :try_end_1e} :catch_38

    move-result v1

    .line 167
    :goto_1f
    const-string v2, "UIBarcodeEmulator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StopBarBeamFactory -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 164
    :catch_38
    move-exception v0

    .line 165
    .local v0, e:Landroid/app/BarBeamException;
    const-string v2, "UIBarcodeEmulator"

    const-string v3, "exception in StopBarBeamFactory"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method protected finishOnPassWithTimer()V
    .registers 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->ONPASS_FINISH_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    .line 92
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 93
    new-instance v3, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;

    invoke-direct {v3, p0, p0}, Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;-><init>(Lcom/sec/factory/app/ui/UIBarcodeEmulator;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mView:Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;

    .line 94
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mView:Lcom/sec/factory/app/ui/UIBarcodeEmulator$BarcodeTestView;

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->setContentView(Landroid/view/View;)V

    .line 96
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mExitButton:Landroid/widget/Button;

    .line 97
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mExitButton:Landroid/widget/Button;

    const/high16 v4, 0x41c8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 98
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mExitButton:Landroid/widget/Button;

    const-string v4, "Exit"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mExitButton:Landroid/widget/Button;

    new-instance v4, Lcom/sec/factory/app/ui/UIBarcodeEmulator$2;

    invoke-direct {v4, p0}, Lcom/sec/factory/app/ui/UIBarcodeEmulator$2;-><init>(Lcom/sec/factory/app/ui/UIBarcodeEmulator;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 109
    .local v1, lContainerLayout:Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 113
    .local v2, outpoint:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 115
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x3

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x8

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v0, lButtonParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    iget v3, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x8

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 120
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mExitButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mExitButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 124
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    const-string v3, "UIBarcodeEmulator"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 14
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v9, 0x7d0

    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    .line 269
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mIsLongPress:Z

    if-nez v0, :cond_f

    .line 270
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mIsLongPress:Z

    .line 273
    :cond_f
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mIsLongPress:Z

    if-nez v0, :cond_18

    .line 274
    packed-switch p1, :pswitch_data_94

    .line 296
    iput-wide v7, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mPrevBackKeyEventTime:J

    .line 298
    :cond_18
    const-string v0, "UIBarcodeEmulator"

    const-string v1, "onKeyDown return true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_1f
    return v6

    .line 276
    :pswitch_20
    const-string v0, "UIBarcodeEmulator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYCODE_BACK => Prev : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mPrevBackKeyEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Curr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " => Time Lag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mPrevBackKeyEventTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-wide v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mPrevBackKeyEventTime:J

    cmp-long v0, v0, v7

    if-eqz v0, :cond_8c

    .line 281
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mPrevBackKeyEventTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v9

    if-gez v0, :cond_85

    .line 282
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->finish()V

    .line 290
    :goto_7d
    const-string v0, "UIBarcodeEmulator"

    const-string v1, "KEYCODE_BACK = return true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 284
    :cond_85
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mPrevBackKeyEventTime:J

    goto :goto_7d

    .line 287
    :cond_8c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mPrevBackKeyEventTime:J

    goto :goto_7d

    .line 274
    nop

    :pswitch_data_94
    .packed-switch 0x4
        :pswitch_20
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->mIsLongPress:Z

    .line 262
    const-string v0, "UIBarcodeEmulator"

    const-string v1, "onKeyUp return true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 175
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->StopBeaming()V

    .line 176
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 182
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->StartBeaming()V

    .line 183
    return-void
.end method
