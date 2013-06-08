.class public final Lcom/sec/factory/app/ui/UIQwertyKey;
.super Lcom/sec/factory/app/ui/UIKeyBase;
.source "UIQwertyKey.java"


# instance fields
.field private final COL_MAX:I

.field private final DEFAULT_BUTTON_SIZE:F

.field private final DEFAULT_COUNT_OF_SHIFT:I

.field private final DEFAULT_TEXT_SIZE:F

.field private final DEFAULT_TEXT_VIEW_HEIGHT:F

.field private final KEYCODE_DUMMY:I

.field private final KEYCODE_ENTER_2:I

.field private final KEYCODE_SPACE_2:I

.field private final KEYCODE_SPACE_3:I

.field private final KEYCODE_SPACE_4:I

.field private final RESET_TO_DEFAULT_COUNT_SHIFT:I

.field private final ROW_END:Ljava/lang/String;

.field private final ROW_MAX:I

.field private final SEPARATOR:Ljava/lang/String;

.field private ShiftStatus:I

.field private buffer:[Ljava/lang/String;

.field private dummy:I

.field private mDisplay_String:Ljava/lang/String;

.field private mELLightTimePreQwertKeyTest:I

.field private mELLightTimePreQwertKeyTestReadPass:Z

.field private mIndex_Enter:I

.field private mIndex_Space:I

.field private mKeyCount_Enter:I

.field private mKeyCount_Space:I

.field private mModeLCiA:Z

.field private mOldVolume:I

.field protected mResetButtonAction:Landroid/view/View$OnClickListener;

.field private mTextSize:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 65
    const-string v0, "UIQwertyKey"

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase;-><init>(Ljava/lang/String;)V

    .line 29
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->ROW_MAX:I

    .line 30
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->COL_MAX:I

    .line 31
    const/16 v0, 0xa5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->buffer:[Ljava/lang/String;

    .line 32
    const-string v0, "END"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->ROW_END:Ljava/lang/String;

    .line 33
    const-string v0, " "

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->SEPARATOR:Ljava/lang/String;

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->RESET_TO_DEFAULT_COUNT_SHIFT:I

    .line 36
    iput v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->DEFAULT_COUNT_OF_SHIFT:I

    .line 38
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->dummy:I

    .line 39
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->dummy:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->KEYCODE_DUMMY:I

    .line 40
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->dummy:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->KEYCODE_ENTER_2:I

    .line 41
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->dummy:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->KEYCODE_SPACE_2:I

    .line 42
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->dummy:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->KEYCODE_SPACE_3:I

    .line 43
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->dummy:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->KEYCODE_SPACE_4:I

    .line 45
    const-string v0, "QWERTY_KEY_TEXT_SIZE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getSize(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->DEFAULT_TEXT_SIZE:F

    .line 47
    const-string v0, "QWERTY_KEY_TEXT_VIEW_HEIGHT"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getSize(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->DEFAULT_TEXT_VIEW_HEIGHT:F

    .line 49
    const-string v0, "QWERTY_EXIT_BUTTON_SIZE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getSize(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->DEFAULT_BUTTON_SIZE:F

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mDisplay_String:Ljava/lang/String;

    .line 53
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->DEFAULT_TEXT_SIZE:F

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mTextSize:F

    .line 54
    iput v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Enter:I

    .line 55
    iput v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Space:I

    .line 56
    iput v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Enter:I

    .line 57
    iput v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Space:I

    .line 59
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mModeLCiA:Z

    .line 60
    iput v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mELLightTimePreQwertKeyTest:I

    .line 61
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mELLightTimePreQwertKeyTestReadPass:Z

    .line 62
    iput v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->ShiftStatus:I

    .line 68
    new-instance v0, Lcom/sec/factory/app/ui/UIQwertyKey$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIQwertyKey$1;-><init>(Lcom/sec/factory/app/ui/UIQwertyKey;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mResetButtonAction:Landroid/view/View$OnClickListener;

    .line 66
    return-void
.end method

.method private PressShiftKey()V
    .registers 3

    .prologue
    .line 978
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/factory/app/ui/UIQwertyKey$2;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/ui/UIQwertyKey$2;-><init>(Lcom/sec/factory/app/ui/UIQwertyKey;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 983
    return-void
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UIQwertyKey;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Space:I

    return p1
.end method

.method private converterKeyCode(Ljava/lang/String;)I
    .registers 6
    .parameter

    .prologue
    .line 426
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 427
    const/16 v0, 0x8

    .line 558
    :goto_a
    return v0

    .line 428
    :cond_b
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 429
    const/16 v0, 0x9

    goto :goto_a

    .line 430
    :cond_16
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 431
    const/16 v0, 0xa

    goto :goto_a

    .line 432
    :cond_21
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 433
    const/16 v0, 0xb

    goto :goto_a

    .line 434
    :cond_2c
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 435
    const/16 v0, 0xc

    goto :goto_a

    .line 436
    :cond_37
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 437
    const/16 v0, 0xd

    goto :goto_a

    .line 438
    :cond_42
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 439
    const/16 v0, 0xe

    goto :goto_a

    .line 440
    :cond_4d
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 441
    const/16 v0, 0xf

    goto :goto_a

    .line 442
    :cond_58
    const-string v0, "9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 443
    const/16 v0, 0x10

    goto :goto_a

    .line 444
    :cond_63
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 445
    const/4 v0, 0x7

    goto :goto_a

    .line 446
    :cond_6d
    const-string v0, "A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 447
    const/16 v0, 0x1d

    goto :goto_a

    .line 448
    :cond_78
    const-string v0, "B"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 449
    const/16 v0, 0x1e

    goto :goto_a

    .line 450
    :cond_83
    const-string v0, "C"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 451
    const/16 v0, 0x1f

    goto/16 :goto_a

    .line 452
    :cond_8f
    const-string v0, "D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 453
    const/16 v0, 0x20

    goto/16 :goto_a

    .line 454
    :cond_9b
    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 455
    const/16 v0, 0x21

    goto/16 :goto_a

    .line 456
    :cond_a7
    const-string v0, "F"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 457
    const/16 v0, 0x22

    goto/16 :goto_a

    .line 458
    :cond_b3
    const-string v0, "G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 459
    const/16 v0, 0x23

    goto/16 :goto_a

    .line 460
    :cond_bf
    const-string v0, "H"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 461
    const/16 v0, 0x24

    goto/16 :goto_a

    .line 462
    :cond_cb
    const-string v0, "I"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 463
    const/16 v0, 0x25

    goto/16 :goto_a

    .line 464
    :cond_d7
    const-string v0, "J"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 465
    const/16 v0, 0x26

    goto/16 :goto_a

    .line 466
    :cond_e3
    const-string v0, "K"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 467
    const/16 v0, 0x27

    goto/16 :goto_a

    .line 468
    :cond_ef
    const-string v0, "L"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 469
    const/16 v0, 0x28

    goto/16 :goto_a

    .line 470
    :cond_fb
    const-string v0, "M"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 471
    const/16 v0, 0x29

    goto/16 :goto_a

    .line 472
    :cond_107
    const-string v0, "N"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 473
    const/16 v0, 0x2a

    goto/16 :goto_a

    .line 474
    :cond_113
    const-string v0, "O"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 475
    const/16 v0, 0x2b

    goto/16 :goto_a

    .line 476
    :cond_11f
    const-string v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 477
    const/16 v0, 0x2c

    goto/16 :goto_a

    .line 478
    :cond_12b
    const-string v0, "Q"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 479
    const/16 v0, 0x2d

    goto/16 :goto_a

    .line 480
    :cond_137
    const-string v0, "R"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_143

    .line 481
    const/16 v0, 0x2e

    goto/16 :goto_a

    .line 482
    :cond_143
    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 483
    const/16 v0, 0x2f

    goto/16 :goto_a

    .line 484
    :cond_14f
    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 485
    const/16 v0, 0x30

    goto/16 :goto_a

    .line 486
    :cond_15b
    const-string v0, "U"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 487
    const/16 v0, 0x31

    goto/16 :goto_a

    .line 488
    :cond_167
    const-string v0, "V"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 489
    const/16 v0, 0x32

    goto/16 :goto_a

    .line 490
    :cond_173
    const-string v0, "W"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 491
    const/16 v0, 0x33

    goto/16 :goto_a

    .line 492
    :cond_17f
    const-string v0, "X"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 493
    const/16 v0, 0x34

    goto/16 :goto_a

    .line 494
    :cond_18b
    const-string v0, "Y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 495
    const/16 v0, 0x35

    goto/16 :goto_a

    .line 496
    :cond_197
    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 497
    const/16 v0, 0x36

    goto/16 :goto_a

    .line 499
    :cond_1a3
    const-string v0, "ALT-L"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 500
    const/16 v0, 0x39

    goto/16 :goto_a

    .line 501
    :cond_1af
    const-string v0, "BACK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 502
    const/4 v0, 0x4

    goto/16 :goto_a

    .line 503
    :cond_1ba
    const-string v0, "COMMA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 504
    const/16 v0, 0x37

    goto/16 :goto_a

    .line 505
    :cond_1c6
    const-string v0, "DELETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 506
    const/16 v0, 0x43

    goto/16 :goto_a

    .line 507
    :cond_1d2
    const-string v0, "CENTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 508
    const/16 v0, 0x17

    goto/16 :goto_a

    .line 509
    :cond_1de
    const-string v0, "DOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 510
    const/16 v0, 0x14

    goto/16 :goto_a

    .line 511
    :cond_1ea
    const-string v0, "LEFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f6

    .line 512
    const/16 v0, 0x15

    goto/16 :goto_a

    .line 513
    :cond_1f6
    const-string v0, "RIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_202

    .line 514
    const/16 v0, 0x16

    goto/16 :goto_a

    .line 515
    :cond_202
    const-string v0, "UP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20e

    .line 516
    const/16 v0, 0x13

    goto/16 :goto_a

    .line 517
    :cond_20e
    const-string v0, "EMAIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21a

    .line 518
    const/16 v0, 0xdc

    goto/16 :goto_a

    .line 519
    :cond_21a
    const-string v0, "ENTER1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_226

    .line 520
    const/16 v0, 0x42

    goto/16 :goto_a

    .line 521
    :cond_226
    const-string v0, "ENTER2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_232

    .line 522
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->KEYCODE_ENTER_2:I

    goto/16 :goto_a

    .line 523
    :cond_232
    const-string v0, "ENVELOPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23e

    .line 524
    const/16 v0, 0x41

    goto/16 :goto_a

    .line 525
    :cond_23e
    const-string v0, "EXPLORER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24a

    .line 526
    const/16 v0, 0x40

    goto/16 :goto_a

    .line 527
    :cond_24a
    const-string v0, "HOME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_255

    .line 528
    const/4 v0, 0x3

    goto/16 :goto_a

    .line 529
    :cond_255
    const-string v0, "MENU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_261

    .line 530
    const/16 v0, 0x52

    goto/16 :goto_a

    .line 531
    :cond_261
    const-string v0, "PERIOD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26d

    .line 532
    const/16 v0, 0x38

    goto/16 :goto_a

    .line 533
    :cond_26d
    const-string v0, "QUESTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_279

    .line 534
    const/16 v0, 0xec

    goto/16 :goto_a

    .line 535
    :cond_279
    const-string v0, "SEARCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_285

    .line 536
    const/16 v0, 0x54

    goto/16 :goto_a

    .line 537
    :cond_285
    const-string v0, "SHIFT-L"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_291

    .line 538
    const/16 v0, 0x3b

    goto/16 :goto_a

    .line 539
    :cond_291
    const-string v0, "SHIFT-R"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29d

    .line 540
    const/16 v0, 0x3c

    goto/16 :goto_a

    .line 541
    :cond_29d
    const-string v0, "SPACE1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a9

    .line 542
    const/16 v0, 0x3e

    goto/16 :goto_a

    .line 543
    :cond_2a9
    const-string v0, "SPACE2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b5

    .line 544
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->KEYCODE_SPACE_2:I

    goto/16 :goto_a

    .line 545
    :cond_2b5
    const-string v0, "SPACE3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c1

    .line 546
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->KEYCODE_SPACE_3:I

    goto/16 :goto_a

    .line 547
    :cond_2c1
    const-string v0, "SPACE4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cd

    .line 548
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->KEYCODE_SPACE_4:I

    goto/16 :goto_a

    .line 549
    :cond_2cd
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d9

    .line 550
    const/16 v0, 0xeb

    goto/16 :goto_a

    .line 551
    :cond_2d9
    const-string v0, "VOICESEARCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e5

    .line 552
    const/16 v0, 0xe5

    goto/16 :goto_a

    .line 553
    :cond_2e5
    const-string v0, "DUMMY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f1

    .line 554
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->KEYCODE_DUMMY:I

    goto/16 :goto_a

    .line 556
    :cond_2f1
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "converterKeyCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown => qwertyKey : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const/4 v0, -0x1

    goto/16 :goto_a
.end method

.method private getObjectHardKeyItem(II)Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 563
    if-ne p1, v1, :cond_14c

    .line 564
    if-ne p2, v1, :cond_19

    .line 565
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090125

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    .line 950
    :goto_18
    return-object v0

    .line 566
    :cond_19
    if-ne p2, v2, :cond_2b

    .line 567
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090126

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto :goto_18

    .line 568
    :cond_2b
    if-ne p2, v3, :cond_3d

    .line 569
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090127

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto :goto_18

    .line 570
    :cond_3d
    if-ne p2, v4, :cond_4f

    .line 571
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090128

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto :goto_18

    .line 572
    :cond_4f
    if-ne p2, v5, :cond_61

    .line 573
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090129

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto :goto_18

    .line 574
    :cond_61
    const/4 v0, 0x6

    if-ne p2, v0, :cond_74

    .line 575
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09012a

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto :goto_18

    .line 576
    :cond_74
    const/4 v0, 0x7

    if-ne p2, v0, :cond_87

    .line 577
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09012b

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto :goto_18

    .line 578
    :cond_87
    const/16 v0, 0x8

    if-ne p2, v0, :cond_9c

    .line 579
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09012c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 580
    :cond_9c
    const/16 v0, 0x9

    if-ne p2, v0, :cond_b1

    .line 581
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 582
    :cond_b1
    const/16 v0, 0xa

    if-ne p2, v0, :cond_c6

    .line 583
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09012e

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 584
    :cond_c6
    const/16 v0, 0xb

    if-ne p2, v0, :cond_db

    .line 585
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09012f

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 586
    :cond_db
    const/16 v0, 0xc

    if-ne p2, v0, :cond_f0

    .line 587
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090130

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 588
    :cond_f0
    const/16 v0, 0xd

    if-ne p2, v0, :cond_105

    .line 589
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090131

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 590
    :cond_105
    const/16 v0, 0xe

    if-ne p2, v0, :cond_11a

    .line 591
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090132

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 592
    :cond_11a
    const/16 v0, 0xf

    if-ne p2, v0, :cond_12f

    .line 593
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090133

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 595
    :cond_12f
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getObjectHardKeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown - col : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 598
    :cond_14c
    if-ne p1, v2, :cond_29a

    .line 599
    if-ne p2, v1, :cond_161

    .line 600
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090135

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 601
    :cond_161
    if-ne p2, v2, :cond_174

    .line 602
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090136

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 603
    :cond_174
    if-ne p2, v3, :cond_187

    .line 604
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090137

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 605
    :cond_187
    if-ne p2, v4, :cond_19a

    .line 606
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090138

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 607
    :cond_19a
    if-ne p2, v5, :cond_1ad

    .line 608
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090139

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 609
    :cond_1ad
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1c1

    .line 610
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09013a

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 611
    :cond_1c1
    const/4 v0, 0x7

    if-ne p2, v0, :cond_1d5

    .line 612
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09013b

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 613
    :cond_1d5
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1ea

    .line 614
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09013c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 615
    :cond_1ea
    const/16 v0, 0x9

    if-ne p2, v0, :cond_1ff

    .line 616
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09013d

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 617
    :cond_1ff
    const/16 v0, 0xa

    if-ne p2, v0, :cond_214

    .line 618
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09013e

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 619
    :cond_214
    const/16 v0, 0xb

    if-ne p2, v0, :cond_229

    .line 620
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09013f

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 621
    :cond_229
    const/16 v0, 0xc

    if-ne p2, v0, :cond_23e

    .line 622
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090140

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 623
    :cond_23e
    const/16 v0, 0xd

    if-ne p2, v0, :cond_253

    .line 624
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090141

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 625
    :cond_253
    const/16 v0, 0xe

    if-ne p2, v0, :cond_268

    .line 626
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090142

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 627
    :cond_268
    const/16 v0, 0xf

    if-ne p2, v0, :cond_27d

    .line 628
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090143

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 630
    :cond_27d
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getObjectHardKeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown - col : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 633
    :cond_29a
    if-ne p1, v3, :cond_3e8

    .line 634
    if-ne p2, v1, :cond_2af

    .line 635
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090145

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 636
    :cond_2af
    if-ne p2, v2, :cond_2c2

    .line 637
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090146

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 638
    :cond_2c2
    if-ne p2, v3, :cond_2d5

    .line 639
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090147

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 640
    :cond_2d5
    if-ne p2, v4, :cond_2e8

    .line 641
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090148

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 642
    :cond_2e8
    if-ne p2, v5, :cond_2fb

    .line 643
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090149

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 644
    :cond_2fb
    const/4 v0, 0x6

    if-ne p2, v0, :cond_30f

    .line 645
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09014a

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 646
    :cond_30f
    const/4 v0, 0x7

    if-ne p2, v0, :cond_323

    .line 647
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09014b

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 648
    :cond_323
    const/16 v0, 0x8

    if-ne p2, v0, :cond_338

    .line 649
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09014c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 650
    :cond_338
    const/16 v0, 0x9

    if-ne p2, v0, :cond_34d

    .line 651
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09014d

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 652
    :cond_34d
    const/16 v0, 0xa

    if-ne p2, v0, :cond_362

    .line 653
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09014e

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 654
    :cond_362
    const/16 v0, 0xb

    if-ne p2, v0, :cond_377

    .line 655
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09014f

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 656
    :cond_377
    const/16 v0, 0xc

    if-ne p2, v0, :cond_38c

    .line 657
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090150

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 658
    :cond_38c
    const/16 v0, 0xd

    if-ne p2, v0, :cond_3a1

    .line 659
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090151

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 660
    :cond_3a1
    const/16 v0, 0xe

    if-ne p2, v0, :cond_3b6

    .line 661
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 662
    :cond_3b6
    const/16 v0, 0xf

    if-ne p2, v0, :cond_3cb

    .line 663
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090153

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 665
    :cond_3cb
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getObjectHardKeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown - col : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 668
    :cond_3e8
    if-ne p1, v4, :cond_536

    .line 669
    if-ne p2, v1, :cond_3fd

    .line 670
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 671
    :cond_3fd
    if-ne p2, v2, :cond_410

    .line 672
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090156

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 673
    :cond_410
    if-ne p2, v3, :cond_423

    .line 674
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090157

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 675
    :cond_423
    if-ne p2, v4, :cond_436

    .line 676
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090158

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 677
    :cond_436
    if-ne p2, v5, :cond_449

    .line 678
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090159

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 679
    :cond_449
    const/4 v0, 0x6

    if-ne p2, v0, :cond_45d

    .line 680
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09015a

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 681
    :cond_45d
    const/4 v0, 0x7

    if-ne p2, v0, :cond_471

    .line 682
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09015b

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 683
    :cond_471
    const/16 v0, 0x8

    if-ne p2, v0, :cond_486

    .line 684
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09015c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 685
    :cond_486
    const/16 v0, 0x9

    if-ne p2, v0, :cond_49b

    .line 686
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09015d

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 687
    :cond_49b
    const/16 v0, 0xa

    if-ne p2, v0, :cond_4b0

    .line 688
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09015e

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 689
    :cond_4b0
    const/16 v0, 0xb

    if-ne p2, v0, :cond_4c5

    .line 690
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09015f

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 691
    :cond_4c5
    const/16 v0, 0xc

    if-ne p2, v0, :cond_4da

    .line 692
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090160

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 693
    :cond_4da
    const/16 v0, 0xd

    if-ne p2, v0, :cond_4ef

    .line 694
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090161

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 695
    :cond_4ef
    const/16 v0, 0xe

    if-ne p2, v0, :cond_504

    .line 696
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090162

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 697
    :cond_504
    const/16 v0, 0xf

    if-ne p2, v0, :cond_519

    .line 698
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090163

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 700
    :cond_519
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getObjectHardKeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown - col : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 703
    :cond_536
    if-ne p1, v5, :cond_684

    .line 704
    if-ne p2, v1, :cond_54b

    .line 705
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090165

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 706
    :cond_54b
    if-ne p2, v2, :cond_55e

    .line 707
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090166

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 708
    :cond_55e
    if-ne p2, v3, :cond_571

    .line 709
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090167

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 710
    :cond_571
    if-ne p2, v4, :cond_584

    .line 711
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090168

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 712
    :cond_584
    if-ne p2, v5, :cond_597

    .line 713
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090169

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 714
    :cond_597
    const/4 v0, 0x6

    if-ne p2, v0, :cond_5ab

    .line 715
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09016a

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 716
    :cond_5ab
    const/4 v0, 0x7

    if-ne p2, v0, :cond_5bf

    .line 717
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09016b

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 718
    :cond_5bf
    const/16 v0, 0x8

    if-ne p2, v0, :cond_5d4

    .line 719
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09016c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 720
    :cond_5d4
    const/16 v0, 0x9

    if-ne p2, v0, :cond_5e9

    .line 721
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09016d

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 722
    :cond_5e9
    const/16 v0, 0xa

    if-ne p2, v0, :cond_5fe

    .line 723
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09016e

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 724
    :cond_5fe
    const/16 v0, 0xb

    if-ne p2, v0, :cond_613

    .line 725
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09016f

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 726
    :cond_613
    const/16 v0, 0xc

    if-ne p2, v0, :cond_628

    .line 727
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090170

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 728
    :cond_628
    const/16 v0, 0xd

    if-ne p2, v0, :cond_63d

    .line 729
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090171

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 730
    :cond_63d
    const/16 v0, 0xe

    if-ne p2, v0, :cond_652

    .line 731
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090172

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 732
    :cond_652
    const/16 v0, 0xf

    if-ne p2, v0, :cond_667

    .line 733
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090173

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 735
    :cond_667
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getObjectHardKeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown - col : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 738
    :cond_684
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7d3

    .line 739
    if-ne p2, v1, :cond_69a

    .line 740
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090175

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 741
    :cond_69a
    if-ne p2, v2, :cond_6ad

    .line 742
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090176

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 743
    :cond_6ad
    if-ne p2, v3, :cond_6c0

    .line 744
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090177

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 745
    :cond_6c0
    if-ne p2, v4, :cond_6d3

    .line 746
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090178

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 747
    :cond_6d3
    if-ne p2, v5, :cond_6e6

    .line 748
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090179

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 749
    :cond_6e6
    const/4 v0, 0x6

    if-ne p2, v0, :cond_6fa

    .line 750
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09017a

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 751
    :cond_6fa
    const/4 v0, 0x7

    if-ne p2, v0, :cond_70e

    .line 752
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09017b

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 753
    :cond_70e
    const/16 v0, 0x8

    if-ne p2, v0, :cond_723

    .line 754
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09017c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 755
    :cond_723
    const/16 v0, 0x9

    if-ne p2, v0, :cond_738

    .line 756
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09017d

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 757
    :cond_738
    const/16 v0, 0xa

    if-ne p2, v0, :cond_74d

    .line 758
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09017e

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 759
    :cond_74d
    const/16 v0, 0xb

    if-ne p2, v0, :cond_762

    .line 760
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09017f

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 761
    :cond_762
    const/16 v0, 0xc

    if-ne p2, v0, :cond_777

    .line 762
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090180

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 763
    :cond_777
    const/16 v0, 0xd

    if-ne p2, v0, :cond_78c

    .line 764
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090181

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 765
    :cond_78c
    const/16 v0, 0xe

    if-ne p2, v0, :cond_7a1

    .line 766
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090182

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 767
    :cond_7a1
    const/16 v0, 0xf

    if-ne p2, v0, :cond_7b6

    .line 768
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090183

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 770
    :cond_7b6
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getObjectHardKeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown - col : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 773
    :cond_7d3
    const/4 v0, 0x7

    if-ne p1, v0, :cond_922

    .line 774
    if-ne p2, v1, :cond_7e9

    .line 775
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090185

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 776
    :cond_7e9
    if-ne p2, v2, :cond_7fc

    .line 777
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090186

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 778
    :cond_7fc
    if-ne p2, v3, :cond_80f

    .line 779
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090187

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 780
    :cond_80f
    if-ne p2, v4, :cond_822

    .line 781
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090188

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 782
    :cond_822
    if-ne p2, v5, :cond_835

    .line 783
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090189

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 784
    :cond_835
    const/4 v0, 0x6

    if-ne p2, v0, :cond_849

    .line 785
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09018a

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 786
    :cond_849
    const/4 v0, 0x7

    if-ne p2, v0, :cond_85d

    .line 787
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09018b

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 788
    :cond_85d
    const/16 v0, 0x8

    if-ne p2, v0, :cond_872

    .line 789
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09018c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 790
    :cond_872
    const/16 v0, 0x9

    if-ne p2, v0, :cond_887

    .line 791
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09018d

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 792
    :cond_887
    const/16 v0, 0xa

    if-ne p2, v0, :cond_89c

    .line 793
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09018e

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 794
    :cond_89c
    const/16 v0, 0xb

    if-ne p2, v0, :cond_8b1

    .line 795
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09018f

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 796
    :cond_8b1
    const/16 v0, 0xc

    if-ne p2, v0, :cond_8c6

    .line 797
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090190

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 798
    :cond_8c6
    const/16 v0, 0xd

    if-ne p2, v0, :cond_8db

    .line 799
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090191

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 800
    :cond_8db
    const/16 v0, 0xe

    if-ne p2, v0, :cond_8f0

    .line 801
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090192

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 802
    :cond_8f0
    const/16 v0, 0xf

    if-ne p2, v0, :cond_905

    .line 803
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090193

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 805
    :cond_905
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getObjectHardKeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown - col : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 808
    :cond_922
    const/16 v0, 0x8

    if-ne p1, v0, :cond_a72

    .line 809
    if-ne p2, v1, :cond_939

    .line 810
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090195

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 811
    :cond_939
    if-ne p2, v2, :cond_94c

    .line 812
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090196

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 813
    :cond_94c
    if-ne p2, v3, :cond_95f

    .line 814
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090197

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 815
    :cond_95f
    if-ne p2, v4, :cond_972

    .line 816
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090198

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 817
    :cond_972
    if-ne p2, v5, :cond_985

    .line 818
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f090199

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 819
    :cond_985
    const/4 v0, 0x6

    if-ne p2, v0, :cond_999

    .line 820
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09019a

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 821
    :cond_999
    const/4 v0, 0x7

    if-ne p2, v0, :cond_9ad

    .line 822
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09019b

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 823
    :cond_9ad
    const/16 v0, 0x8

    if-ne p2, v0, :cond_9c2

    .line 824
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09019c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 825
    :cond_9c2
    const/16 v0, 0x9

    if-ne p2, v0, :cond_9d7

    .line 826
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09019d

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 827
    :cond_9d7
    const/16 v0, 0xa

    if-ne p2, v0, :cond_9ec

    .line 828
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09019e

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 829
    :cond_9ec
    const/16 v0, 0xb

    if-ne p2, v0, :cond_a01

    .line 830
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f09019f

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 831
    :cond_a01
    const/16 v0, 0xc

    if-ne p2, v0, :cond_a16

    .line 832
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901a0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 833
    :cond_a16
    const/16 v0, 0xd

    if-ne p2, v0, :cond_a2b

    .line 834
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901a1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 835
    :cond_a2b
    const/16 v0, 0xe

    if-ne p2, v0, :cond_a40

    .line 836
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901a2

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 837
    :cond_a40
    const/16 v0, 0xf

    if-ne p2, v0, :cond_a55

    .line 838
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901a3

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 840
    :cond_a55
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getObjectHardKeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown - col : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 843
    :cond_a72
    const/16 v0, 0x9

    if-ne p1, v0, :cond_bc2

    .line 844
    if-ne p2, v1, :cond_a89

    .line 845
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901a5

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 846
    :cond_a89
    if-ne p2, v2, :cond_a9c

    .line 847
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901a6

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 848
    :cond_a9c
    if-ne p2, v3, :cond_aaf

    .line 849
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901a7

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 850
    :cond_aaf
    if-ne p2, v4, :cond_ac2

    .line 851
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901a8

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 852
    :cond_ac2
    if-ne p2, v5, :cond_ad5

    .line 853
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901a9

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 854
    :cond_ad5
    const/4 v0, 0x6

    if-ne p2, v0, :cond_ae9

    .line 855
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901aa

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 856
    :cond_ae9
    const/4 v0, 0x7

    if-ne p2, v0, :cond_afd

    .line 857
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901ab

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 858
    :cond_afd
    const/16 v0, 0x8

    if-ne p2, v0, :cond_b12

    .line 859
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901ac

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 860
    :cond_b12
    const/16 v0, 0x9

    if-ne p2, v0, :cond_b27

    .line 861
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901ad

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 862
    :cond_b27
    const/16 v0, 0xa

    if-ne p2, v0, :cond_b3c

    .line 863
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901ae

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 864
    :cond_b3c
    const/16 v0, 0xb

    if-ne p2, v0, :cond_b51

    .line 865
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901af

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 866
    :cond_b51
    const/16 v0, 0xc

    if-ne p2, v0, :cond_b66

    .line 867
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901b0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 868
    :cond_b66
    const/16 v0, 0xd

    if-ne p2, v0, :cond_b7b

    .line 869
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901b1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 870
    :cond_b7b
    const/16 v0, 0xe

    if-ne p2, v0, :cond_b90

    .line 871
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901b2

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 872
    :cond_b90
    const/16 v0, 0xf

    if-ne p2, v0, :cond_ba5

    .line 873
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901b3

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 875
    :cond_ba5
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getObjectHardKeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown - col : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 878
    :cond_bc2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_d12

    .line 879
    if-ne p2, v1, :cond_bd9

    .line 880
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901b5

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 881
    :cond_bd9
    if-ne p2, v2, :cond_bec

    .line 882
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901b6

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 883
    :cond_bec
    if-ne p2, v3, :cond_bff

    .line 884
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901b7

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 885
    :cond_bff
    if-ne p2, v4, :cond_c12

    .line 886
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901b8

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 887
    :cond_c12
    if-ne p2, v5, :cond_c25

    .line 888
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901b9

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 889
    :cond_c25
    const/4 v0, 0x6

    if-ne p2, v0, :cond_c39

    .line 890
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901ba

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 891
    :cond_c39
    const/4 v0, 0x7

    if-ne p2, v0, :cond_c4d

    .line 892
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901bb

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 893
    :cond_c4d
    const/16 v0, 0x8

    if-ne p2, v0, :cond_c62

    .line 894
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901bc

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 895
    :cond_c62
    const/16 v0, 0x9

    if-ne p2, v0, :cond_c77

    .line 896
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901bd

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 897
    :cond_c77
    const/16 v0, 0xa

    if-ne p2, v0, :cond_c8c

    .line 898
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901be

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 899
    :cond_c8c
    const/16 v0, 0xb

    if-ne p2, v0, :cond_ca1

    .line 900
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901bf

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 901
    :cond_ca1
    const/16 v0, 0xc

    if-ne p2, v0, :cond_cb6

    .line 902
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901c0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 903
    :cond_cb6
    const/16 v0, 0xd

    if-ne p2, v0, :cond_ccb

    .line 904
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901c1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 905
    :cond_ccb
    const/16 v0, 0xe

    if-ne p2, v0, :cond_ce0

    .line 906
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901c2

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 907
    :cond_ce0
    const/16 v0, 0xf

    if-ne p2, v0, :cond_cf5

    .line 908
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901c3

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 910
    :cond_cf5
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getObjectHardKeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown - col : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 913
    :cond_d12
    const/16 v0, 0xb

    if-ne p1, v0, :cond_e62

    .line 914
    if-ne p2, v1, :cond_d29

    .line 915
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901c5

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 916
    :cond_d29
    if-ne p2, v2, :cond_d3c

    .line 917
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901c6

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 918
    :cond_d3c
    if-ne p2, v3, :cond_d4f

    .line 919
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901c7

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 920
    :cond_d4f
    if-ne p2, v4, :cond_d62

    .line 921
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901c8

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 922
    :cond_d62
    if-ne p2, v5, :cond_d75

    .line 923
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901c9

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 924
    :cond_d75
    const/4 v0, 0x6

    if-ne p2, v0, :cond_d89

    .line 925
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901ca

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 926
    :cond_d89
    const/4 v0, 0x7

    if-ne p2, v0, :cond_d9d

    .line 927
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901cb

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 928
    :cond_d9d
    const/16 v0, 0x8

    if-ne p2, v0, :cond_db2

    .line 929
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901cc

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 930
    :cond_db2
    const/16 v0, 0x9

    if-ne p2, v0, :cond_dc7

    .line 931
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901cd

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 932
    :cond_dc7
    const/16 v0, 0xa

    if-ne p2, v0, :cond_ddc

    .line 933
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901ce

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 934
    :cond_ddc
    const/16 v0, 0xb

    if-ne p2, v0, :cond_df1

    .line 935
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901cf

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 936
    :cond_df1
    const/16 v0, 0xc

    if-ne p2, v0, :cond_e06

    .line 937
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901d0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 938
    :cond_e06
    const/16 v0, 0xd

    if-ne p2, v0, :cond_e1b

    .line 939
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901d1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 940
    :cond_e1b
    const/16 v0, 0xe

    if-ne p2, v0, :cond_e30

    .line 941
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901d2

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 942
    :cond_e30
    const/16 v0, 0xf

    if-ne p2, v0, :cond_e45

    .line 943
    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    const v0, 0x7f0901d3

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V

    move-object v0, v1

    goto/16 :goto_18

    .line 945
    :cond_e45
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getObjectHardKeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown - col : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 949
    :cond_e62
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getObjectHardKeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown - row : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const/4 v0, 0x0

    goto/16 :goto_18
.end method

.method private getObjectKeyTestItem(IILjava/lang/String;Ljava/lang/String;FF)Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    invoke-direct {p0, p3}, Lcom/sec/factory/app/ui/UIQwertyKey;->converterKeyCode(Ljava/lang/String;)I

    move-result v1

    .line 408
    invoke-direct {p0, p1, p2}, Lcom/sec/factory/app/ui/UIQwertyKey;->getObjectHardKeyItem(II)Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    move-result-object v2

    .line 410
    const/4 v0, 0x0

    .line 411
    const/4 v3, -0x1

    if-le v1, v3, :cond_25

    if-eqz v2, :cond_25

    .line 414
    const-string v3, "DUMMY"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    if-nez p4, :cond_21

    .line 415
    :cond_18
    invoke-virtual {v2, v0, p3, p5, p6}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->setAttribute_TextView(ILjava/lang/String;FF)V

    .line 418
    :goto_1b
    new-instance v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;ILcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;Ljava/lang/String;)V

    .line 421
    :goto_20
    return-object v0

    .line 417
    :cond_21
    invoke-virtual {v2, v0, p4, p5, p6}, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->setAttribute_TextView(ILjava/lang/String;FF)V

    goto :goto_1b

    .line 420
    :cond_25
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getObjectKeyTestItem"

    const-string v2, "keyCode=Unknown or hardKeyItem=null"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private initialize()V
    .registers 16

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 185
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIQwertyKey;->readTestItem()[Ljava/lang/String;

    move-result-object v13

    .line 186
    array-length v14, v13

    .line 190
    if-lez v14, :cond_f6

    .line 191
    new-array v10, v14, [Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    move v1, v11

    move v0, v9

    move v7, v9

    move v8, v9

    .line 197
    :goto_f
    const/16 v2, 0xb

    if-gt v1, v2, :cond_b2

    move v2, v11

    .line 198
    :goto_14
    const/16 v3, 0xf

    if-gt v2, v3, :cond_2d

    .line 199
    add-int/lit8 v12, v0, 0x1

    aget-object v0, v13, v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 203
    aget-object v3, v0, v9

    const-string v4, "END"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    move v0, v12

    .line 222
    :cond_2d
    if-lez v8, :cond_33

    .line 223
    invoke-direct {p0, v1}, Lcom/sec/factory/app/ui/UIQwertyKey;->showRow(I)V

    move v8, v9

    .line 197
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 206
    :cond_36
    aget-object v3, v0, v9

    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UIQwertyKey;->setKeyCount(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->parsingItem([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_49

    move v0, v7

    move v3, v8

    .line 198
    :goto_43
    add-int/lit8 v2, v2, 0x1

    move v7, v0

    move v8, v3

    move v0, v12

    goto :goto_14

    .line 211
    :cond_49
    aget-object v0, v0, v9

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mDisplay_String:Ljava/lang/String;

    iget v5, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mTextSize:F

    iget v6, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->DEFAULT_TEXT_VIEW_HEIGHT:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/factory/app/ui/UIQwertyKey;->getObjectKeyTestItem(IILjava/lang/String;Ljava/lang/String;FF)Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    move-result-object v3

    .line 213
    if-eqz v3, :cond_8f

    .line 214
    add-int/lit8 v0, v7, 0x1

    aput-object v3, v10, v7

    .line 215
    add-int/lit8 v3, v8, 0x1

    .line 216
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "initialize"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Row["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] item : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v0, -0x1

    aget-object v7, v10, v7

    invoke-virtual {v7}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->getKeyCode_String()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 219
    :cond_8f
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "initialize"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Row["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] item : NONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    move v3, v8

    goto :goto_43

    .line 229
    :cond_b2
    if-eq v14, v7, :cond_bf

    .line 230
    new-array v0, v7, [Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    .line 231
    :goto_b6
    if-ge v9, v7, :cond_c0

    .line 232
    aget-object v1, v10, v9

    aput-object v1, v0, v9

    .line 231
    add-int/lit8 v9, v9, 0x1

    goto :goto_b6

    :cond_bf
    move-object v0, v10

    .line 236
    :cond_c0
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mTestList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mTestList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 240
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 241
    iget v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->DEFAULT_BUTTON_SIZE:F

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 242
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mExitButtonAction:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 245
    iget v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->DEFAULT_BUTTON_SIZE:F

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 246
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mResetButtonAction:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_f6
    return-void
.end method

.method private parsingItem([Ljava/lang/String;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 383
    array-length v1, p1

    if-ne v1, v0, :cond_e

    .line 384
    iput-object v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mDisplay_String:Ljava/lang/String;

    .line 385
    iget v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->DEFAULT_TEXT_SIZE:F

    iput v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mTextSize:F

    .line 402
    :goto_d
    return v0

    .line 386
    :cond_e
    array-length v1, p1

    if-ne v1, v4, :cond_33

    .line 387
    iput-object v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mDisplay_String:Ljava/lang/String;

    .line 388
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2e

    .line 389
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mTextSize:F

    goto :goto_d

    .line 391
    :cond_2e
    iget v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->DEFAULT_TEXT_SIZE:F

    iput v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mTextSize:F

    goto :goto_d

    .line 392
    :cond_33
    array-length v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5b

    .line 393
    aget-object v1, p1, v4

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mDisplay_String:Ljava/lang/String;

    .line 394
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_56

    .line 395
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mTextSize:F

    goto :goto_d

    .line 397
    :cond_56
    iget v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->DEFAULT_TEXT_SIZE:F

    iput v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mTextSize:F

    goto :goto_d

    .line 399
    :cond_5b
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "parsingItem"

    const-string v2, "Error => item.length > 3"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private readTestItem()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 251
    const-string v0, ""

    .line 252
    const-string v1, ""

    .line 254
    const-string v1, "QWERTY_KEY_TEST_ROW_1"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_20f

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_2f
    const-string v1, "QWERTY_KEY_TEST_ROW_2"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_224

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_5a
    const-string v1, "QWERTY_KEY_TEST_ROW_3"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_239

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_85
    const-string v1, "QWERTY_KEY_TEST_ROW_4"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    if-eqz v1, :cond_24e

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_b0
    const-string v1, "QWERTY_KEY_TEST_ROW_5"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_263

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_db
    const-string v1, "QWERTY_KEY_TEST_ROW_6"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_278

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_106
    const-string v1, "QWERTY_KEY_TEST_ROW_7"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_28d

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_131
    const-string v1, "QWERTY_KEY_TEST_ROW_8"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    if-eqz v1, :cond_2a2

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_15c
    const-string v1, "QWERTY_KEY_TEST_ROW_9"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    if-eqz v1, :cond_2b7

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    :goto_187
    const-string v1, "QWERTY_KEY_TEST_ROW_10"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    if-eqz v1, :cond_2cc

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    :goto_1b2
    const-string v1, "QWERTY_KEY_TEST_ROW_11"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    if-eqz v1, :cond_2e1

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_1d7
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readTestItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v1, 0x0

    .line 323
    const-string v2, "[^ \t]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    move v0, v1

    .line 324
    :goto_1fd
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2f6

    .line 325
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->buffer:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    goto :goto_1fd

    .line 258
    :cond_20f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2f

    .line 264
    :cond_224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5a

    .line 270
    :cond_239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_85

    .line 276
    :cond_24e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b0

    .line 282
    :cond_263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_db

    .line 288
    :cond_278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_106

    .line 294
    :cond_28d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_131

    .line 300
    :cond_2a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15c

    .line 306
    :cond_2b7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_187

    .line 312
    :cond_2cc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b2

    .line 318
    :cond_2e1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d7

    .line 327
    :cond_2f6
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->buffer:[Ljava/lang/String;

    return-object v0
.end method

.method private setKeyCount(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 331
    const-string v0, "ENTER1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 332
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Enter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Enter:I

    .line 343
    :cond_e
    :goto_e
    return-void

    .line 333
    :cond_f
    const-string v0, "ENTER2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 334
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Enter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Enter:I

    goto :goto_e

    .line 335
    :cond_1e
    const-string v0, "SPACE1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 336
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Space:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Space:I

    goto :goto_e

    .line 337
    :cond_2d
    const-string v0, "SPACE2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 338
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Space:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Space:I

    goto :goto_e

    .line 339
    :cond_3c
    const-string v0, "SPACE3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 340
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Space:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Space:I

    goto :goto_e

    .line 341
    :cond_4b
    const-string v0, "SPACE4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 342
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Space:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Space:I

    goto :goto_e
.end method

.method private setResult_MultiKey(I)V
    .registers 7
    .parameter

    .prologue
    const/16 v0, 0x42

    const/16 v2, 0x3e

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 346
    const/4 v1, -0x1

    .line 347
    if-ne p1, v0, :cond_6c

    .line 348
    iget v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Enter:I

    if-nez v2, :cond_65

    .line 353
    :goto_d
    iget v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Enter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Enter:I

    .line 355
    iget v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Enter:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Enter:I

    if-ne v1, v2, :cond_9e

    .line 356
    iput v4, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Enter:I

    move v1, v0

    .line 373
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mTestList:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    invoke-direct {v2, p0, v1}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;I)V

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mTestList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    .line 375
    iget-boolean v1, v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    if-nez v1, :cond_99

    move v1, v3

    :goto_36
    iput-boolean v1, v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    .line 376
    iget-object v1, v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    iget-object v2, v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    iget-boolean v1, v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    if-eqz v1, :cond_9b

    const v1, -0xffff01

    :goto_43
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 378
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "setResult_MultiKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->getKeyCode_String()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void

    .line 350
    :cond_65
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Enter:I

    if-ne v0, v3, :cond_a1

    .line 351
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->KEYCODE_ENTER_2:I

    goto :goto_d

    .line 357
    :cond_6c
    if-ne p1, v2, :cond_1c

    .line 358
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Space:I

    if-nez v0, :cond_82

    move v1, v2

    .line 367
    :cond_73
    :goto_73
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Space:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Space:I

    .line 369
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Space:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mKeyCount_Space:I

    if-ne v0, v2, :cond_1c

    .line 370
    iput v4, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Space:I

    goto :goto_1c

    .line 360
    :cond_82
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Space:I

    if-ne v0, v3, :cond_89

    .line 361
    iget v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->KEYCODE_SPACE_2:I

    goto :goto_73

    .line 362
    :cond_89
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Space:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_91

    .line 363
    iget v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->KEYCODE_SPACE_3:I

    goto :goto_73

    .line 364
    :cond_91
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Space:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_73

    .line 365
    iget v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->KEYCODE_SPACE_4:I

    goto :goto_73

    :cond_99
    move v1, v4

    .line 375
    goto :goto_36

    .line 376
    :cond_9b
    const/high16 v1, -0x1

    goto :goto_43

    :cond_9e
    move v1, v0

    goto/16 :goto_1c

    :cond_a1
    move v0, v1

    goto/16 :goto_d
.end method

.method private showRow(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 955
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 956
    const v0, 0x7f090124

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 975
    :cond_10
    :goto_10
    return-void

    .line 957
    :cond_11
    const/4 v0, 0x2

    if-ne p1, v0, :cond_21

    .line 958
    const v0, 0x7f090134

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10

    .line 959
    :cond_21
    const/4 v0, 0x3

    if-ne p1, v0, :cond_31

    .line 960
    const v0, 0x7f090144

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10

    .line 961
    :cond_31
    const/4 v0, 0x4

    if-ne p1, v0, :cond_41

    .line 962
    const v0, 0x7f090154

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10

    .line 963
    :cond_41
    const/4 v0, 0x5

    if-ne p1, v0, :cond_51

    .line 964
    const v0, 0x7f090164

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10

    .line 965
    :cond_51
    const/4 v0, 0x6

    if-ne p1, v0, :cond_61

    .line 966
    const v0, 0x7f090174

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10

    .line 967
    :cond_61
    const/4 v0, 0x7

    if-ne p1, v0, :cond_71

    .line 968
    const v0, 0x7f090184

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10

    .line 969
    :cond_71
    const/16 v0, 0x8

    if-ne p1, v0, :cond_82

    .line 970
    const v0, 0x7f090194

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10

    .line 971
    :cond_82
    const/16 v0, 0x9

    if-ne p1, v0, :cond_94

    .line 972
    const v0, 0x7f0901a4

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_10

    .line 973
    :cond_94
    const/16 v0, 0xa

    if-ne p1, v0, :cond_10

    .line 974
    const v0, 0x7f0901b4

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_10
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIKeyBase;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->setContentView(I)V

    .line 83
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onCreate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<Default> DEFAULT_TEXT_SIZE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->DEFAULT_TEXT_SIZE:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onCreate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<Default> DEFAULT_TEXT_VIEW_HEIGHT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->DEFAULT_TEXT_VIEW_HEIGHT:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onCreate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<Default> DEFAULT_BUTTON_SIZE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->DEFAULT_BUTTON_SIZE:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIQwertyKey;->initialize()V

    .line 89
    const-string v0, "LCiA"

    const-string v1, "PGM_STAGE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mModeLCiA:Z

    .line 90
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 128
    invoke-super {p0, v3, p2}, Lcom/sec/factory/app/ui/UIKeyBase;->setLongPress(ZLandroid/view/KeyEvent;)Z

    .line 129
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIQwertyKey;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_10c

    .line 131
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_38

    .line 132
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyCode : KEYCODE_SHIFT_LEFT ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->ShiftStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->ShiftStatus:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_77

    .line 134
    iput v3, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->ShiftStatus:I

    .line 143
    :cond_38
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mTestList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    invoke-direct {v1, p0, p1}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;-><init>(Lcom/sec/factory/app/ui/UIKeyBase;I)V

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 145
    if-ltz v0, :cond_ec

    .line 146
    const/16 v1, 0x42

    if-eq p1, v1, :cond_4f

    const/16 v1, 0x3e

    if-ne p1, v1, :cond_81

    .line 147
    :cond_4f
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIQwertyKey;->setResult_MultiKey(I)V

    .line 156
    :goto_52
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mModeLCiA:Z

    if-nez v0, :cond_60

    .line 157
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1, v3}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 159
    :cond_60
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mTestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    .line 160
    iget-boolean v0, v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    if-nez v0, :cond_66

    .line 181
    :goto_76
    return v2

    .line 137
    :cond_77
    iget v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->ShiftStatus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->ShiftStatus:I

    .line 138
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIQwertyKey;->PressShiftKey()V

    goto :goto_76

    .line 149
    :cond_81
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mTestList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    .line 150
    iget-boolean v1, v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    if-nez v1, :cond_bd

    move v1, v2

    :goto_8e
    iput-boolean v1, v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    .line 151
    iget-object v1, v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    iget-object v4, v1, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    iget-boolean v1, v0, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    if-eqz v1, :cond_bf

    const v1, -0xffff01

    :goto_9b
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "onKeyDown"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->getKeyCode_String()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    :cond_bd
    move v1, v3

    .line 150
    goto :goto_8e

    .line 151
    :cond_bf
    const/high16 v1, -0x1

    goto :goto_9b

    .line 164
    :cond_c2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIQwertyKey;->setResult(I)V

    .line 165
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mELLightTimePreQwertKeyTestReadPass:Z

    if-ne v0, v2, :cond_d5

    .line 166
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIQwertyKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "button_key_light"

    iget v3, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mELLightTimePreQwertKeyTest:I

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    :cond_d5
    :try_start_d5
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "delay"

    const-string v3, " : 1000ms"

    invoke-static {v0, v1, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e3
    .catch Ljava/lang/InterruptedException; {:try_start_d5 .. :try_end_e3} :catch_e7

    .line 176
    :goto_e3
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIQwertyKey;->finish()V

    goto :goto_76

    .line 173
    :catch_e7
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_e3

    .line 179
    :cond_ec
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyCode : Unknown ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_10c
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIKeyBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_76
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 117
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIKeyBase;->onPause()V

    .line 118
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    iget v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mOldVolume:I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolume(I)V

    .line 120
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mELLightTimePreQwertKeyTestReadPass:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 121
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIQwertyKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "button_key_light"

    iget v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mELLightTimePreQwertKeyTest:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    :cond_1c
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 94
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIKeyBase;->onResume()V

    .line 95
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->getStreamMusicVolume()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mOldVolume:I

    .line 96
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "initialize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOldVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mOldVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 100
    :try_start_30
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIQwertyKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "button_key_light"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mELLightTimePreQwertKeyTest:I

    .line 102
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIQwertyKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "button_key_light"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mELLightTimePreQwertKeyTestReadPass:Z

    .line 106
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "initialize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mELLightTimePreQwertKeyTest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mELLightTimePreQwertKeyTest:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_65} :catch_66

    .line 113
    :goto_65
    return-void

    .line 108
    :catch_66
    move-exception v0

    .line 109
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "initialize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIQwertyKey;->mELLightTimePreQwertKeyTestReadPass:Z

    goto :goto_65
.end method
