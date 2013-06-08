.class public Lcom/sec/factory/aporiented/athandler/AtBarcodeE;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtBarcodeE.java"


# static fields
.field public static Barquietzone:I

.field private static final barcodeByte:[[B

.field private static barcodeType:[Ljava/lang/String;


# instance fields
.field private hopSequenceArray:[Landroid/app/Hop;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xe

    .line 15
    const/16 v0, 0xa

    sput v0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->Barquietzone:I

    .line 17
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EAN_13"

    aput-object v1, v0, v4

    const-string v1, "UPC_1"

    aput-object v1, v0, v5

    const-string v1, "EAN"

    aput-object v1, v0, v6

    const-string v1, "EAN_8"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "CODE_39"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CODE_128"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "INTERLEAVED2of5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CODABAR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DATABAR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->barcodeType:[Ljava/lang/String;

    .line 20
    const/16 v0, 0x9

    new-array v0, v0, [[B

    new-array v1, v3, [B

    fill-array-data v1, :array_92

    aput-object v1, v0, v4

    new-array v1, v3, [B

    fill-array-data v1, :array_9e

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_aa

    aput-object v1, v0, v6

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_b6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_c0

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_d0

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_de

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_e8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x11

    new-array v2, v2, [B

    fill-array-data v2, :array_f6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->barcodeByte:[[B

    return-void

    :array_92
    .array-data 0x1
        0xfft
        0xact
        0xdbt
        0x21t
        0x5ct
        0x9dt
        0x42t
        0xaet
        0xdbt
        0x8bt
        0x1at
        0x64t
        0x9at
        0xfft
    .end array-data

    nop

    :array_9e
    .array-data 0x1
        0xfft
        0xact
        0xdbt
        0x21t
        0x5ct
        0x9dt
        0x42t
        0xaet
        0xdbt
        0x8bt
        0x1at
        0x64t
        0x9at
        0xfft
    .end array-data

    nop

    :array_aa
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

    nop

    :array_b6
    .array-data 0x1
        0xfft
        0xebt
        0x36t
        0xc8t
        0x57t
        0x2at
        0xc5t
        0x7bt
        0xb1t
        0xabt
        0xfft
    .end array-data

    :array_c0
    .array-data 0x1
        0xfft
        0xf7t
        0x44t
        0x51t
        0x17t
        0x51t
        0x45t
        0xd5t
        0x1dt
        0x11t
        0x47t
        0x57t
        0x51t
        0x11t
        0x1dt
        0x54t
        0x74t
        0x57t
        0x44t
        0x5ft
        0xfft
    .end array-data

    nop

    :array_d0
    .array-data 0x1
        0xfft
        0xcbt
        0x7bt
        0xb9t
        0x70t
        0xaft
        0x65t
        0x37t
        0xb2t
        0x36t
        0x32t
        0x63t
        0x45t
        0x98t
        0xd9t
        0x38t
        0xa7t
        0xfft
    .end array-data

    nop

    :array_de
    .array-data 0x1
        0xfft
        0xf5t
        0x2dt
        0x4ct
        0x96t
        0xb2t
        0xcdt
        0x5at
        0x99t
        0x2ft
        0xfft
    .end array-data

    :array_e8
    .array-data 0x1
        0xfft
        0xe9t
        0xb5t
        0x4dt
        0x5at
        0x4dt
        0x54t
        0xb4t
        0xadt
        0x6at
        0x5at
        0x56t
        0x54t
        0xb5t
        0x56t
        0x53t
        0x6ft
        0xfft
    .end array-data

    nop

    :array_f6
    .array-data 0x1
        0xdet
        0xbbt
        0xc8t
        0x7t
        0xa6t
        0x7at
        0x11t
        0xbdt
        0xdat
        0x1ft
        0x8ct
        0xf6t
        0xe4t
        0x80t
        0xa3t
        0x81t
        0xebt
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 32
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

    iput-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->hopSequenceArray:[Landroid/app/Hop;

    .line 47
    const-string v0, "BARCODEE"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->CMD_NAME:Ljava/lang/String;

    .line 48
    const-string v0, "AtBarcodeE"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->CLASS_NAME:Ljava/lang/String;

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->NUM_ARGS:I

    .line 50
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "argu"

    .prologue
    .line 53
    monitor-enter p0

    const/4 v3, 0x0

    .line 54
    .local v3, resData:Ljava/lang/String;
    const/4 v4, 0x0

    .line 55
    .local v4, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 58
    .local v0, barbeamFactory:Landroid/app/BarBeamFactory;
    :try_start_4
    new-instance v1, Landroid/app/BarBeamFactory;

    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->context:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/BarBeamFactory;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_175
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_1a

    .line 59
    .end local v0           #barbeamFactory:Landroid/app/BarBeamFactory;
    .local v1, barbeamFactory:Landroid/app/BarBeamFactory;
    :try_start_b
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->hopSequenceArray:[Landroid/app/Hop;

    invoke-virtual {v1, v6}, Landroid/app/BarBeamFactory;->setHopSequence([Landroid/app/Hop;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_178

    .line 65
    :try_start_10
    array-length v6, p1

    iget v7, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->NUM_ARGS:I

    if-eq v6, v7, :cond_27

    .line 66
    const-string v6, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_17c

    move-object v0, v1

    .line 124
    .end local v1           #barbeamFactory:Landroid/app/BarBeamFactory;
    .restart local v0       #barbeamFactory:Landroid/app/BarBeamFactory;
    :goto_18
    monitor-exit p0

    return-object v6

    .line 60
    :catch_1a
    move-exception v2

    .line 61
    .local v2, e:Ljava/lang/Exception;
    :goto_1b
    :try_start_1b
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "handleCommand"

    const-string v8, "Fail to get BarBeamFactory instance"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v6, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_175

    goto :goto_18

    .line 69
    .end local v0           #barbeamFactory:Landroid/app/BarBeamFactory;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #barbeamFactory:Landroid/app/BarBeamFactory;
    :cond_27
    const/4 v6, 0x3

    :try_start_28
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "0"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "0"

    aput-object v8, v6, v7

    invoke-virtual {p0, p1, v6}, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 70
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "handleCommand"

    const-string v8, "start Barcode Emul self test"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_28 .. :try_end_48} :catchall_17c

    .line 73
    :try_start_48
    sget-object v6, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4e} :catch_8c

    move-result-object v4

    .line 79
    :goto_4f
    :try_start_4f
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "handleCommand"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Barcode Emulator firmware version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_99

    .line 82
    const/4 v6, 0x0

    aget-object v6, p1, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OK_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_89
    move-object v0, v1

    .end local v1           #barbeamFactory:Landroid/app/BarBeamFactory;
    .restart local v0       #barbeamFactory:Landroid/app/BarBeamFactory;
    move-object v6, v3

    .line 124
    goto :goto_18

    .line 74
    .end local v0           #barbeamFactory:Landroid/app/BarBeamFactory;
    .restart local v1       #barbeamFactory:Landroid/app/BarBeamFactory;
    :catch_8c
    move-exception v2

    .line 75
    .restart local v2       #e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "handleCommand"

    const-string v8, "Barcode Emul self test is fail!!"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v4, "NG"

    goto :goto_4f

    .line 84
    .end local v2           #e:Ljava/lang/Exception;
    :cond_99
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto :goto_89

    .line 86
    :cond_9c
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "1"

    aput-object v8, v6, v7

    invoke-virtual {p0, p1, v6}, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_ac
    .catchall {:try_start_4f .. :try_end_ac} :catchall_17c

    move-result v6

    if-eqz v6, :cond_135

    .line 87
    const/4 v5, -0x1

    .line 89
    .local v5, type:I
    const/4 v6, 0x2

    :try_start_b1
    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_b1 .. :try_end_b6} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b6} :catch_cc

    move-result v5

    .line 94
    :try_start_b7
    sget-object v6, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->barcodeType:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_be

    if-gtz v5, :cond_ef

    .line 95
    :cond_be
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "handleCommand"

    const-string v8, "Barcode type is invalid - out of index"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v6, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    move-object v0, v1

    .end local v1           #barbeamFactory:Landroid/app/BarBeamFactory;
    .restart local v0       #barbeamFactory:Landroid/app/BarBeamFactory;
    goto/16 :goto_18

    .line 90
    .end local v0           #barbeamFactory:Landroid/app/BarBeamFactory;
    .restart local v1       #barbeamFactory:Landroid/app/BarBeamFactory;
    :catch_cc
    move-exception v2

    .line 91
    .restart local v2       #e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "handleCommand"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Barcode type is invalid type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, p1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v6, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_ec
    .catchall {:try_start_b7 .. :try_end_ec} :catchall_17c

    move-object v0, v1

    .end local v1           #barbeamFactory:Landroid/app/BarBeamFactory;
    .restart local v0       #barbeamFactory:Landroid/app/BarBeamFactory;
    goto/16 :goto_18

    .line 99
    .end local v0           #barbeamFactory:Landroid/app/BarBeamFactory;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #barbeamFactory:Landroid/app/BarBeamFactory;
    :cond_ef
    :try_start_ef
    sget-object v6, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->barcodeByte:[[B

    aget-object v6, v6, v5

    invoke-virtual {v1, v6}, Landroid/app/BarBeamFactory;->StartBarBeamFactory([B)Z

    move-result v6

    if-eqz v6, :cond_122

    .line 100
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "handleCommand"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Success to startBarBeamFactory - type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->barcodeType:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v6, 0x0

    aget-object v6, p1, v6

    const-string v7, "OK"

    invoke-virtual {p0, v6, v7}, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_89

    .line 103
    :cond_122
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_124
    .catchall {:try_start_ef .. :try_end_124} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_124} :catch_126

    goto/16 :goto_89

    .line 105
    :catch_126
    move-exception v2

    .line 106
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_127
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "handleCommand"

    const-string v8, "Fail to startBarBeamFactory"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v6, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    move-object v0, v1

    .end local v1           #barbeamFactory:Landroid/app/BarBeamFactory;
    .restart local v0       #barbeamFactory:Landroid/app/BarBeamFactory;
    goto/16 :goto_18

    .line 109
    .end local v0           #barbeamFactory:Landroid/app/BarBeamFactory;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #type:I
    .restart local v1       #barbeamFactory:Landroid/app/BarBeamFactory;
    :cond_135
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "2"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "0"

    aput-object v8, v6, v7

    invoke-virtual {p0, p1, v6}, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_14a
    .catchall {:try_start_127 .. :try_end_14a} :catchall_17c

    move-result v6

    if-eqz v6, :cond_171

    .line 111
    :try_start_14d
    invoke-virtual {v1}, Landroid/app/BarBeamFactory;->StopBarBeamFactory()Z

    move-result v6

    if-eqz v6, :cond_15e

    .line 112
    const/4 v6, 0x0

    aget-object v6, p1, v6

    const-string v7, "OK"

    invoke-virtual {p0, v6, v7}, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_89

    .line 114
    :cond_15e
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_160
    .catchall {:try_start_14d .. :try_end_160} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_160} :catch_162

    goto/16 :goto_89

    .line 116
    :catch_162
    move-exception v2

    .line 117
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_163
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtBarcodeE;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "handleCommand"

    const-string v8, "Fail to stopBarBeamFactory"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v6, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    move-object v0, v1

    .end local v1           #barbeamFactory:Landroid/app/BarBeamFactory;
    .restart local v0       #barbeamFactory:Landroid/app/BarBeamFactory;
    goto/16 :goto_18

    .line 121
    .end local v0           #barbeamFactory:Landroid/app/BarBeamFactory;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #barbeamFactory:Landroid/app/BarBeamFactory;
    :cond_171
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_173
    .catchall {:try_start_163 .. :try_end_173} :catchall_17c

    goto/16 :goto_89

    .line 53
    .end local v1           #barbeamFactory:Landroid/app/BarBeamFactory;
    .restart local v0       #barbeamFactory:Landroid/app/BarBeamFactory;
    :catchall_175
    move-exception v6

    :goto_176
    monitor-exit p0

    throw v6

    .line 60
    .end local v0           #barbeamFactory:Landroid/app/BarBeamFactory;
    .restart local v1       #barbeamFactory:Landroid/app/BarBeamFactory;
    :catch_178
    move-exception v2

    move-object v0, v1

    .end local v1           #barbeamFactory:Landroid/app/BarBeamFactory;
    .restart local v0       #barbeamFactory:Landroid/app/BarBeamFactory;
    goto/16 :goto_1b

    .line 53
    .end local v0           #barbeamFactory:Landroid/app/BarBeamFactory;
    .restart local v1       #barbeamFactory:Landroid/app/BarBeamFactory;
    :catchall_17c
    move-exception v6

    move-object v0, v1

    .end local v1           #barbeamFactory:Landroid/app/BarBeamFactory;
    .restart local v0       #barbeamFactory:Landroid/app/BarBeamFactory;
    goto :goto_176
.end method
