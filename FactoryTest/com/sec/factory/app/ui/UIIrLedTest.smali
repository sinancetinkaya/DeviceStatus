.class public Lcom/sec/factory/app/ui/UIIrLedTest;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIIrLedTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCounter:I

.field private mCounterView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 68
    const-string v0, "UIIrLedTest"

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object v1, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mTimer:Ljava/util/Timer;

    .line 63
    iput-object v1, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mRunnable:Ljava/lang/Runnable;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mCounter:I

    .line 65
    iput-object v1, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mCounterView:Landroid/widget/TextView;

    .line 69
    return-void
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UIIrLedTest;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIIrLedTest;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIIrLedTest;->controlIrED(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UIIrLedTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mCounter:I

    return v0
.end method

.method static synthetic access$208(Lcom/sec/factory/app/ui/UIIrLedTest;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mCounter:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UIIrLedTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mCounterView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UIIrLedTest;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private controlIrED(Ljava/lang/String;)V
    .registers 8
    .parameter "control"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/sec/sec_ir/ir_send"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, out:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 253
    .local v0, data:[B
    :try_start_b
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_2a

    .line 257
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 260
    :goto_11
    const-string v3, "UIIrLedTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "controlIrED - write bytes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 254
    :catch_2a
    move-exception v1

    .line 255
    .local v1, e:Ljava/lang/Exception;
    :try_start_2b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_32

    .line 257
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_11

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_32
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v3
.end method

.method private onoffIrED(Ljava/lang/String;)V
    .registers 8
    .parameter "control"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 265
    .local v0, data:[B
    const-string v3, "UIIrLedTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onoffIrED - write bytes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/sec/sec_ir_test/ir_send_test"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 268
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_23
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_2a

    .line 272
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 274
    :goto_29
    return-void

    .line 269
    :catch_2a
    move-exception v1

    .line 270
    .local v1, e:Ljava/lang/Exception;
    :try_start_2b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_32

    .line 272
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_29

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_32
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v3
.end method


# virtual methods
.method public finishOperation()V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 140
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mRunnable:Ljava/lang/Runnable;

    .line 144
    :cond_12
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1b

    .line 145
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIIrLedTest;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 147
    :cond_1b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, -0x1

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_c8

    .line 234
    :goto_8
    :pswitch_8
    return-void

    .line 152
    :pswitch_9
    const-string v3, "UIIrLedTest"

    const-string v4, "channel_up"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_10
    const-string v3, "38400,173,171,24,62,24,61,24,62,24,17,24,17,24,18,24,17,24,18,23,62,24,61,24,62,24,17,24,17,25,17,24,17,24,17,24,19,23,61,24,18,24,17,24,61,24,19,23,17,24,17,24,62,24,17,24,62,24,61,24,19,23,61,24,62,24,61,24,1880,0"

    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UIIrLedTest;->controlIrED(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_8

    .line 155
    :catch_16
    move-exception v0

    .line 157
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 161
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_1b
    const-string v3, "UIIrLedTest"

    const-string v4, "channel_down"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :try_start_22
    const-string v3, "38400,173,171,24,62,24,61,24,62,24,17,24,17,24,18,24,17,24,18,23,62,24,61,24,62,24,18,23,17,25,17,24,17,24,17,24,19,23,17,24,17,24,18,24,61,24,17,25,17,24,17,24,62,24,61,24,62,24,61,24,19,23,61,24,62,24,61,24,1880,0"

    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UIIrLedTest;->controlIrED(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_8

    .line 164
    :catch_28
    move-exception v0

    .line 166
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 170
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_2d
    const-string v3, "UIIrLedTest"

    const-string v4, "volume_up"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :try_start_34
    const-string v3, "38400,173,171,24,62,24,61,24,62,24,17,24,17,24,18,24,17,24,19,22,62,24,61,24,62,24,19,22,17,25,17,24,17,24,17,24,62,24,61,25,61,24,17,24,19,23,17,24,17,24,20,22,17,24,17,24,17,25,61,24,62,24,61,24,62,24,61,24,1880,0"

    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UIIrLedTest;->controlIrED(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_3a

    goto :goto_8

    .line 173
    :catch_3a
    move-exception v0

    .line 175
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 179
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_3f
    const-string v3, "UIIrLedTest"

    const-string v4, "volume_down"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :try_start_46
    const-string v3, "38400,173,171,24,62,24,61,24,62,24,17,24,17,24,18,24,17,24,18,23,62,24,61,24,62,24,18,23,17,25,17,24,17,24,17,24,62,24,61,25,17,24,61,24,18,24,17,24,17,24,18,24,17,24,17,24,62,24,17,24,62,24,61,24,62,24,61,24,1880,0"

    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UIIrLedTest;->controlIrED(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4b} :catch_4c

    goto :goto_8

    .line 182
    :catch_4c
    move-exception v0

    .line 184
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 188
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_51
    const-string v3, "UIIrLedTest"

    const-string v4, "button_on"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_58
    const-string v3, "38400,10"

    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UIIrLedTest;->onoffIrED(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5d} :catch_5e

    goto :goto_8

    .line 191
    :catch_5e
    move-exception v0

    .line 193
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 197
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_63
    const-string v3, "UIIrLedTest"

    const-string v4, "button_off"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :try_start_6a
    const-string v3, "38400,5"

    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UIIrLedTest;->onoffIrED(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6f} :catch_70

    goto :goto_8

    .line 200
    :catch_70
    move-exception v0

    .line 202
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 206
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_75
    const-string v3, "UIIrLedTest"

    const-string v4, "on_off_repeat"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :try_start_7c
    const-string v3, "38400,10,5,10,5,10,5,10,5,10,5,10,5,10,5,10,5,10,5,10,5"

    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UIIrLedTest;->onoffIrED(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_81} :catch_82

    goto :goto_8

    .line 209
    :catch_82
    move-exception v0

    .line 211
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 215
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_87
    const-string v3, "UIIrLedTest"

    const-string v4, "Finished IR LED Test in 15 mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v3, "SUPPORT_IRLED_FEEDBACK_IC"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 217
    .local v1, feeedBackIc:Z
    const-string v3, "IR_LED_RESULT_TX"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, result:Ljava/lang/String;
    if-eqz v1, :cond_c4

    .line 219
    const-string v3, "UIIrLedTest"

    const-string v4, "Feed Back IC Supported"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 221
    invoke-virtual {p0, v5}, Lcom/sec/factory/app/ui/UIIrLedTest;->setResult(I)V

    .line 229
    :cond_af
    :goto_af
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIIrLedTest;->finish()V

    goto/16 :goto_8

    .line 222
    :cond_b4
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 223
    const-string v3, "UIIrLedTest"

    const-string v4, "IR LED Tx on Check Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 226
    :cond_c4
    invoke-virtual {p0, v5}, Lcom/sec/factory/app/ui/UIIrLedTest;->setResult(I)V

    goto :goto_af

    .line 150
    :pswitch_data_c8
    .packed-switch 0x7f0900d6
        :pswitch_87
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_1b
        :pswitch_8
        :pswitch_2d
        :pswitch_3f
        :pswitch_8
        :pswitch_51
        :pswitch_63
        :pswitch_75
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 22
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super/range {p0 .. p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v2, 0x7f03001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->setContentView(I)V

    .line 77
    const-string v2, "UIIrLedTest"

    const-string v3, "UIIrLedTest onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const v2, 0x7f0900d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 80
    .local v10, channelUp:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v2, 0x7f0900da

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 82
    .local v8, channelDown:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v2, 0x7f0900dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 84
    .local v19, volumeUp:Landroid/view/View;
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v2, 0x7f0900dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 86
    .local v17, volumeDown:Landroid/view/View;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v2, 0x7f0900df

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 88
    .local v13, iRLedOn:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v2, 0x7f0900e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 90
    .local v12, iRLedOff:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v2, 0x7f0900e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 92
    .local v14, iRLedRepeat:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v2, 0x7f0900d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 95
    .local v15, layout:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    const v2, 0x7f0900d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 98
    .local v11, clrButton:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    const v2, 0x7f0900d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/factory/app/ui/UIIrLedTest;->mCounterView:Landroid/widget/TextView;

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UIIrLedTest;->mCounterView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    const v2, 0x7f0900d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 113
    .local v9, channelTitle:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 114
    const v2, 0x7f0900db

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 115
    .local v18, volumeTitle:Landroid/view/View;
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    const v2, 0x7f0900de

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/ui/UIIrLedTest;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 117
    .local v16, onoffTitle:Landroid/view/View;
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/factory/app/ui/UIIrLedTest;->mTimer:Ljava/util/Timer;

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/factory/app/ui/UIIrLedTest;->mTimer:Ljava/util/Timer;

    new-instance v3, Lcom/sec/factory/app/ui/UIIrLedTest$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/factory/app/ui/UIIrLedTest$1;-><init>(Lcom/sec/factory/app/ui/UIIrLedTest;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x320

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 136
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIIrLedTest;->finishOperation()V

    .line 244
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 245
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 238
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 239
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIIrLedTest;->finishOperation()V

    .line 240
    return-void
.end method
