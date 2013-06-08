.class public Lcom/sec/factory/app/ui/UiHallICTest;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UiHallICTest.java"


# instance fields
.field private final KEYCODE_FOLDER_CLOSE:I

.field private final KEYCODE_FOLDER_OPEN:I

.field private _timer:Landroid/os/CountDownTimer;

.field private mCurrentTime:J

.field private mIsHallICTestAllPass:Z

.field private mIsPressedBackkey:Z

.field private mIsReleasePass:Z

.field private mIsWorkingPass:Z

.field private mReleaseTextView:Landroid/widget/TextView;

.field protected mTimerHandler:Landroid/os/Handler;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWorkingTextView:Landroid/widget/TextView;

.field private nHallICTestState:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 93
    const-string v0, "UiHallICTest"

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsReleasePass:Z

    .line 52
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsWorkingPass:Z

    .line 53
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsHallICTestAllPass:Z

    .line 70
    iput v2, p0, Lcom/sec/factory/app/ui/UiHallICTest;->nHallICTestState:I

    .line 73
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsPressedBackkey:Z

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mCurrentTime:J

    .line 86
    const/16 v0, 0xea

    iput v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->KEYCODE_FOLDER_OPEN:I

    .line 87
    const/16 v0, 0xeb

    iput v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->KEYCODE_FOLDER_CLOSE:I

    .line 146
    new-instance v0, Lcom/sec/factory/app/ui/UiHallICTest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UiHallICTest$1;-><init>(Lcom/sec/factory/app/ui/UiHallICTest;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mTimerHandler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method private DisplayResult(I)V
    .registers 10
    .parameter "nCurrentTest"

    .prologue
    const-wide/16 v6, 0x3e8

    const/high16 v5, -0x1

    const v4, -0xffff01

    const/4 v3, 0x1

    .line 263
    const-string v0, "HallICTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayResult - mIsWorkingPass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsWorkingPass:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsReleasePass : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsReleasePass:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v0, "HallICTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayResult - nCurrentTest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsHallICTestAllPass:Z

    if-ne v0, v3, :cond_4b

    .line 299
    :cond_4a
    :goto_4a
    return-void

    .line 271
    :cond_4b
    if-ne p1, v3, :cond_62

    .line 272
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsWorkingPass:Z

    if-eqz v0, :cond_93

    .line 273
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mWorkingTextView:Landroid/widget/TextView;

    const-string v1, "PASS"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mWorkingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 283
    :cond_62
    :goto_62
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7a

    .line 284
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsReleasePass:Z

    if-eqz v0, :cond_a0

    .line 285
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mReleaseTextView:Landroid/widget/TextView;

    const-string v1, "PASS"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mReleaseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 293
    :cond_7a
    :goto_7a
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsWorkingPass:Z

    if-ne v0, v3, :cond_4a

    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsReleasePass:Z

    if-ne v0, v3, :cond_4a

    .line 294
    iput-boolean v3, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsHallICTestAllPass:Z

    .line 295
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UiHallICTest;->setResult(I)V

    .line 296
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UiHallICTest;->setTestResult(B)V

    .line 297
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->_timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_4a

    .line 277
    :cond_93
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mWorkingTextView:Landroid/widget/TextView;

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mWorkingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_62

    .line 289
    :cond_a0
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mReleaseTextView:Landroid/widget/TextView;

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mReleaseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7a
.end method

.method private HallICTestInit()V
    .registers 7

    .prologue
    const-wide/16 v2, 0x3e8

    .line 225
    const-string v0, "SUPPORT_DUAL_LCD_FOLDER"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 226
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "HallICTestInit"

    const-string v4, "Folder open/close check mode"

    invoke-static {v0, v1, v4}, Lcom/sec/factory/support/FtUtil;->log_v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const v0, 0x7f09009d

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UiHallICTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UiHallICTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070091

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UiHallICTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const v0, 0x7f0900a0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UiHallICTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070090

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UiHallICTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_47
    const v0, 0x7f09009f

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UiHallICTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mWorkingTextView:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UiHallICTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mReleaseTextView:Landroid/widget/TextView;

    .line 237
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UiHallICTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mVibrator:Landroid/os/Vibrator;

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->nHallICTestState:I

    .line 241
    const-string v0, "SUPPORT_DUAL_LCD_FOLDER"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 242
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->nHallICTestState:I

    .line 246
    :cond_75
    new-instance v0, Lcom/sec/factory/app/ui/UiHallICTest$2;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/app/ui/UiHallICTest$2;-><init>(Lcom/sec/factory/app/ui/UiHallICTest;JJ)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->_timer:Landroid/os/CountDownTimer;

    .line 259
    return-void
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UiHallICTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsPressedBackkey:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UiHallICTest;)Landroid/os/Vibrator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method private hallIc_by_sysfs()I
    .registers 7

    .prologue
    .line 339
    const-string v3, "HallICTest"

    const-string v4, "hallIc_by_sysfs()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v2, 0x0

    .line 343
    .local v2, sysfsVal:Ljava/lang/String;
    :try_start_8
    const-string v3, "PATH_HALLIC_STATE"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UiHallICTest;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    move-object v1, v2

    .line 346
    .local v1, state:Ljava/lang/String;
    const-string v3, "HallICTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hallIc_by_sysfs : state value ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 349
    const/4 v3, 0x1

    .line 355
    .end local v1           #state:Ljava/lang/String;
    :goto_3a
    return v3

    .line 350
    .restart local v1       #state:Ljava/lang/String;
    :cond_3b
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_40} :catch_45

    move-result v3

    if-eqz v3, :cond_5e

    .line 351
    const/4 v3, 0x0

    goto :goto_3a

    .line 352
    .end local v1           #state:Ljava/lang/String;
    :catch_45
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HallICTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hallIc_by_sysfs Exception ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5e
    const/4 v3, 0x2

    goto :goto_3a
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "filepath"

    .prologue
    .line 311
    const-string v3, ""

    .line 312
    .local v3, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 313
    .local v0, buf:Ljava/io/BufferedReader;
    const-string v4, "HallICTest"

    const-string v5, "readOneLine()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1fa0

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_40
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_31

    .line 316
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    if-eqz v1, :cond_20

    .line 317
    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_4c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1f} :catch_4f

    move-result-object v3

    .line 323
    :cond_20
    if-eqz v1, :cond_52

    .line 325
    :try_start_22
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2b

    move-object v0, v1

    .line 331
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_26
    :goto_26
    if-nez v3, :cond_2a

    .line 332
    const-string v3, ""

    .line 334
    .end local v3           #result:Ljava/lang/String;
    :cond_2a
    return-object v3

    .line 326
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #result:Ljava/lang/String;
    :catch_2b
    move-exception v2

    .line 327
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 328
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_26

    .line 319
    .end local v2           #e:Ljava/io/IOException;
    :catch_31
    move-exception v2

    .line 320
    .restart local v2       #e:Ljava/io/IOException;
    :goto_32
    :try_start_32
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_40

    .line 323
    if-eqz v0, :cond_26

    .line 325
    :try_start_37
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_26

    .line 326
    :catch_3b
    move-exception v2

    .line 327
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 323
    .end local v2           #e:Ljava/io/IOException;
    :catchall_40
    move-exception v4

    :goto_41
    if-eqz v0, :cond_46

    .line 325
    :try_start_43
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 328
    :cond_46
    :goto_46
    throw v4

    .line 326
    :catch_47
    move-exception v2

    .line 327
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    .line 323
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_4c
    move-exception v4

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_41

    .line 319
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_4f
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_32

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :cond_52
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_26
.end method


# virtual methods
.method public CheckingFolderState()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 171
    const-string v1, "HallICTest"

    const-string v2, "CheckingFolderState ()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UiHallICTest;->hallIc_by_sysfs()I

    move-result v0

    .line 174
    .local v0, nCheckingCurrentFolderState:I
    iget v1, p0, Lcom/sec/factory/app/ui/UiHallICTest;->nHallICTestState:I

    packed-switch v1, :pswitch_data_64

    .line 219
    :cond_12
    :goto_12
    return-void

    .line 176
    :pswitch_13
    const-string v1, "HallICTest"

    const-string v2, "CheckingFolderState - TESTCASE_ONCREATE_RELEASE_CHECK"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-eqz v0, :cond_12

    .line 180
    iput v4, p0, Lcom/sec/factory/app/ui/UiHallICTest;->nHallICTestState:I

    goto :goto_12

    .line 183
    :pswitch_1f
    const-string v1, "HallICTest"

    const-string v2, "CheckingFolderState - TESTCASE_WORKING_CHECK"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-nez v0, :cond_12

    .line 185
    iput-boolean v4, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsWorkingPass:Z

    .line 186
    invoke-direct {p0, v4}, Lcom/sec/factory/app/ui/UiHallICTest;->DisplayResult(I)V

    .line 187
    iput v5, p0, Lcom/sec/factory/app/ui/UiHallICTest;->nHallICTestState:I

    goto :goto_12

    .line 192
    :pswitch_30
    const-string v1, "HallICTest"

    const-string v2, "CheckingFolderState - TESTCASE_RELEASE_CHECK"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-ne v0, v4, :cond_12

    .line 194
    iput-boolean v4, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsReleasePass:Z

    .line 195
    invoke-direct {p0, v5}, Lcom/sec/factory/app/ui/UiHallICTest;->DisplayResult(I)V

    goto :goto_12

    .line 200
    :pswitch_3f
    iget-object v1, p0, Lcom/sec/factory/app/ui/UiHallICTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "CheckingFolderState"

    const-string v3, "TESTCASE_CLOSE_CHECK"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    if-ne v0, v4, :cond_12

    .line 202
    iput-boolean v4, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsWorkingPass:Z

    .line 203
    invoke-direct {p0, v4}, Lcom/sec/factory/app/ui/UiHallICTest;->DisplayResult(I)V

    .line 204
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/factory/app/ui/UiHallICTest;->nHallICTestState:I

    goto :goto_12

    .line 209
    :pswitch_53
    iget-object v1, p0, Lcom/sec/factory/app/ui/UiHallICTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "CheckingFolderState"

    const-string v3, "TESTCASE_OPEN_CHECK"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    if-nez v0, :cond_12

    .line 211
    iput-boolean v4, p0, Lcom/sec/factory/app/ui/UiHallICTest;->mIsReleasePass:Z

    .line 212
    invoke-direct {p0, v5}, Lcom/sec/factory/app/ui/UiHallICTest;->DisplayResult(I)V

    goto :goto_12

    .line 174
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_13
        :pswitch_1f
        :pswitch_30
        :pswitch_3f
        :pswitch_53
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 305
    const-string v0, "HallICTest"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UiHallICTest;->CheckingFolderState()V

    .line 308
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UiHallICTest;->setContentView(I)V

    .line 101
    const-string v0, "HallICTest"

    const-string v1, "OnCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UiHallICTest;->HallICTestInit()V

    .line 104
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UiHallICTest;->CheckingFolderState()V

    .line 105
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 120
    const-string v0, "HallICTest"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 124
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->_timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 126
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 130
    const-string v0, "HallICTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x3

    if-ne p1, v0, :cond_21

    .line 132
    const/4 v0, 0x1

    .line 143
    :goto_20
    return v0

    .line 135
    :cond_21
    const-string v0, "SUPPORT_DUAL_LCD_FOLDER"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 136
    if-eqz p1, :cond_33

    const/16 v0, 0xea

    if-eq p1, v0, :cond_33

    const/16 v0, 0xeb

    if-ne p1, v0, :cond_3f

    .line 138
    :cond_33
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "SUPPORT_DUAL_LCD_FOLDER"

    const-string v2, "Temporary checking flip status"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UiHallICTest;->CheckingFolderState()V

    .line 143
    :cond_3f
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_20
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 115
    const-string v0, "HallICTest"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 117
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 110
    const-string v0, "HallICTest"

    const-string v1, "OnResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 112
    return-void
.end method
