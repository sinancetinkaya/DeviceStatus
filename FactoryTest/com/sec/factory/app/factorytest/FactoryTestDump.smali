.class public Lcom/sec/factory/app/factorytest/FactoryTestDump;
.super Ljava/lang/Object;
.source "FactoryTestDump.java"


# instance fields
.field private buf:[B

.field private fin:Ljava/io/FileInputStream;

.field private fis:Ljava/io/FileInputStream;

.field private fos:Ljava/io/FileOutputStream;

.field private fout:Ljava/io/FileOutputStream;

.field private mContext:Landroid/content/Context;

.field private mCurrentStage:Ljava/lang/String;

.field private mDumpTime:Ljava/lang/String;

.field private mLogResult:I

.field private mPastStage:Ljava/lang/String;

.field mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "FactoryTestMain"

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->mCurrentStage:Ljava/lang/String;

    .line 21
    const-string v0, "FactoryTestMain"

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->mPastStage:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->mDumpTime:Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->mLogResult:I

    .line 26
    iput-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fis:Ljava/io/FileInputStream;

    .line 27
    iput-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    .line 28
    iput-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fin:Ljava/io/FileInputStream;

    .line 29
    iput-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fout:Ljava/io/FileOutputStream;

    .line 30
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->buf:[B

    .line 32
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->mTimer:Ljava/util/Timer;

    .line 40
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private WriteToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "in"
    .parameter "out"
    .parameter "DumpType"

    .prologue
    .line 131
    const-string v4, "FactoryTestDump"

    const-string v5, "WriteToSDcard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write to sdcard DumpType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v3, 0x1

    .line 136
    .local v3, result:Z
    :try_start_1b
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fis:Ljava/io/FileInputStream;

    .line 137
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    .line 138
    :goto_29
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fis:Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, n:I
    const/4 v4, -0x1

    if-le v2, v4, :cond_80

    .line 139
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->buf:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3c
    .catchall {:try_start_1b .. :try_end_3c} :catchall_c1
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_3c} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3c} :catch_9e

    goto :goto_29

    .line 141
    .end local v2           #n:I
    :catch_3d
    move-exception v1

    .line 142
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    :try_start_3e
    const-string v4, "FactoryTestDump"

    const-string v5, "WriteToSDcard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fnfe : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v3, 0x0

    .line 145
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "// Exception from"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_3e .. :try_end_64} :catchall_c1

    .line 150
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_76

    .line 152
    :try_start_68
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 153
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_76} :catch_e6

    .line 158
    :cond_76
    :goto_76
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fis:Ljava/io/FileInputStream;

    if-eqz v4, :cond_7f

    .line 160
    :try_start_7a
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7f} :catch_e4

    .line 166
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :cond_7f
    :goto_7f
    return v3

    .line 150
    .restart local v2       #n:I
    :cond_80
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_92

    .line 152
    :try_start_84
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 153
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_92} :catch_e8

    .line 158
    :cond_92
    :goto_92
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fis:Ljava/io/FileInputStream;

    if-eqz v4, :cond_7f

    .line 160
    :try_start_96
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9b} :catch_9c

    goto :goto_7f

    .line 161
    :catch_9c
    move-exception v4

    goto :goto_7f

    .line 146
    .end local v2           #n:I
    :catch_9e
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 148
    :try_start_a0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_c1

    .line 150
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_b5

    .line 152
    :try_start_a7
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 153
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b5} :catch_e2

    .line 158
    :cond_b5
    :goto_b5
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fis:Ljava/io/FileInputStream;

    if-eqz v4, :cond_7f

    .line 160
    :try_start_b9
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_be} :catch_bf

    goto :goto_7f

    .line 161
    :catch_bf
    move-exception v4

    goto :goto_7f

    .line 150
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_c1
    move-exception v4

    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_d4

    .line 152
    :try_start_c6
    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V

    .line 153
    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d4} :catch_e0

    .line 158
    :cond_d4
    :goto_d4
    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fis:Ljava/io/FileInputStream;

    if-eqz v5, :cond_dd

    .line 160
    :try_start_d8
    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_dd} :catch_de

    .line 162
    :cond_dd
    :goto_dd
    throw v4

    .line 161
    :catch_de
    move-exception v5

    goto :goto_dd

    .line 154
    :catch_e0
    move-exception v5

    goto :goto_d4

    .restart local v0       #e:Ljava/lang/Exception;
    :catch_e2
    move-exception v4

    goto :goto_b5

    .line 161
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #fnfe:Ljava/io/FileNotFoundException;
    :catch_e4
    move-exception v4

    goto :goto_7f

    .line 154
    :catch_e6
    move-exception v4

    goto :goto_76

    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v2       #n:I
    :catch_e8
    move-exception v4

    goto :goto_92
.end method

.method private copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .registers 14
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 72
    const-string v7, "FactoryTestDump"

    const-string v8, "copyDirectory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "src : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / dest : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_83

    .line 75
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_33

    .line 76
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 79
    :cond_33
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, fileList:[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, destfileList:[Ljava/lang/String;
    if-eqz v3, :cond_40

    array-length v7, v3

    if-gtz v7, :cond_41

    .line 128
    .end local v1           #destfileList:[Ljava/lang/String;
    .end local v3           #fileList:[Ljava/lang/String;
    :cond_40
    :goto_40
    return-void

    .line 85
    .restart local v1       #destfileList:[Ljava/lang/String;
    .restart local v3       #fileList:[Ljava/lang/String;
    :cond_41
    const/4 v5, 0x0

    .local v5, i:I
    :goto_42
    array-length v7, v3

    if-ge v5, v7, :cond_40

    .line 86
    array-length v7, v1

    if-ge v5, v7, :cond_71

    aget-object v7, v3, v5

    aget-object v8, v1, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 87
    const-string v7, "FactoryTestDump"

    const-string v8, "copyDirectory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File already Exists: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 90
    :cond_71
    new-instance v7, Ljava/io/File;

    aget-object v8, v3, v5

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    aget-object v9, v3, v5

    invoke-direct {v8, p2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v7, v8}, Lcom/sec/factory/app/factorytest/FactoryTestDump;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    goto :goto_6e

    .line 94
    .end local v1           #destfileList:[Ljava/lang/String;
    .end local v3           #fileList:[Ljava/lang/String;
    .end local v5           #i:I
    :cond_83
    :try_start_83
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fin:Ljava/io/FileInputStream;

    .line 95
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fout:Ljava/io/FileOutputStream;

    .line 98
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 101
    .local v0, buffer:[B
    :goto_95
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, len:I
    if-lez v6, :cond_c1

    .line 102
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fout:Ljava/io/FileOutputStream;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a3
    .catchall {:try_start_83 .. :try_end_a3} :catchall_fd
    .catch Ljava/io/FileNotFoundException; {:try_start_83 .. :try_end_a3} :catch_a4
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_a3} :catch_e2

    goto :goto_95

    .line 106
    .end local v0           #buffer:[B
    .end local v6           #len:I
    :catch_a4
    move-exception v4

    .line 107
    .local v4, fnfe:Ljava/io/FileNotFoundException;
    :try_start_a5
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "// Exception from"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_fd

    .line 113
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fin:Ljava/io/FileInputStream;

    if-eqz v7, :cond_b5

    .line 115
    :try_start_b0
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b5} :catch_117

    .line 120
    :cond_b5
    :goto_b5
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fout:Ljava/io/FileOutputStream;

    if-eqz v7, :cond_40

    .line 122
    :try_start_b9
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_be} :catch_bf

    goto :goto_40

    .line 123
    :catch_bf
    move-exception v7

    goto :goto_40

    .line 104
    .end local v4           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v0       #buffer:[B
    .restart local v6       #len:I
    :cond_c1
    :try_start_c1
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 105
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_cb
    .catchall {:try_start_c1 .. :try_end_cb} :catchall_fd
    .catch Ljava/io/FileNotFoundException; {:try_start_c1 .. :try_end_cb} :catch_a4
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_cb} :catch_e2

    .line 113
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fin:Ljava/io/FileInputStream;

    if-eqz v7, :cond_d4

    .line 115
    :try_start_cf
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d4} :catch_119

    .line 120
    :cond_d4
    :goto_d4
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fout:Ljava/io/FileOutputStream;

    if-eqz v7, :cond_40

    .line 122
    :try_start_d8
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_dd} :catch_df

    goto/16 :goto_40

    .line 123
    :catch_df
    move-exception v7

    goto/16 :goto_40

    .line 108
    .end local v0           #buffer:[B
    .end local v6           #len:I
    :catch_e2
    move-exception v2

    .line 109
    .local v2, e:Ljava/lang/Exception;
    :try_start_e3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_fd

    .line 113
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fin:Ljava/io/FileInputStream;

    if-eqz v7, :cond_ef

    .line 115
    :try_start_ea
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ef} :catch_115

    .line 120
    :cond_ef
    :goto_ef
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fout:Ljava/io/FileOutputStream;

    if-eqz v7, :cond_40

    .line 122
    :try_start_f3
    iget-object v7, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f8} :catch_fa

    goto/16 :goto_40

    .line 123
    :catch_fa
    move-exception v7

    goto/16 :goto_40

    .line 113
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_fd
    move-exception v7

    iget-object v8, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fin:Ljava/io/FileInputStream;

    if-eqz v8, :cond_107

    .line 115
    :try_start_102
    iget-object v8, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_107} :catch_113

    .line 120
    :cond_107
    :goto_107
    iget-object v8, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fout:Ljava/io/FileOutputStream;

    if-eqz v8, :cond_110

    .line 122
    :try_start_10b
    iget-object v8, p0, Lcom/sec/factory/app/factorytest/FactoryTestDump;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_110} :catch_111

    .line 124
    :cond_110
    :goto_110
    throw v7

    .line 123
    :catch_111
    move-exception v8

    goto :goto_110

    .line 116
    :catch_113
    move-exception v8

    goto :goto_107

    .restart local v2       #e:Ljava/lang/Exception;
    :catch_115
    move-exception v7

    goto :goto_ef

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #fnfe:Ljava/io/FileNotFoundException;
    :catch_117
    move-exception v7

    goto :goto_b5

    .end local v4           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v0       #buffer:[B
    .restart local v6       #len:I
    :catch_119
    move-exception v7

    goto :goto_d4
.end method


# virtual methods
.method public DoShellCmd(Ljava/lang/String;)I
    .registers 12
    .parameter "cmd"

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 171
    const-string v6, "FactoryTestDump"

    const-string v7, "DoShellCmd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DoShellCmd : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, p:Ljava/lang/Process;
    const/4 v6, 0x3

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "/system/bin/sh"

    aput-object v7, v3, v6

    const-string v6, "-c"

    aput-object v6, v3, v4

    const/4 v6, 0x2

    aput-object p1, v3, v6

    .line 176
    .local v3, shell_command:[Ljava/lang/String;
    :try_start_2c
    const-string v6, "FactoryTestDump"

    const-string v7, "DoShellCmd"

    const-string v8, "exec command"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 179
    const-string v6, "FactoryTestDump"

    const-string v7, "DoShellCmd"

    const-string v8, "exec done"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_49} :catch_53
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_49} :catch_5f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_49} :catch_6b

    .line 192
    const-string v5, "FactoryTestDump"

    const-string v6, "DoShellCmd"

    const-string v7, "DoShellCmd done"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_52
    return v4

    .line 180
    :catch_53
    move-exception v1

    .line 181
    .local v1, exception:Ljava/io/IOException;
    const-string v4, "FactoryTestDump"

    const-string v6, "DoShellCmd"

    const-string v7, "DoShellCmd - IOException"

    invoke-static {v4, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 182
    goto :goto_52

    .line 183
    .end local v1           #exception:Ljava/io/IOException;
    :catch_5f
    move-exception v1

    .line 184
    .local v1, exception:Ljava/lang/SecurityException;
    const-string v4, "FactoryTestDump"

    const-string v6, "DoShellCmd"

    const-string v7, "DoShellCmd - SecurityException"

    invoke-static {v4, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 185
    goto :goto_52

    .line 186
    .end local v1           #exception:Ljava/lang/SecurityException;
    :catch_6b
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v4, v5

    .line 189
    goto :goto_52
.end method

.method public doCopyDump()Z
    .registers 12

    .prologue
    .line 45
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/log"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v4, dataLogDirectory:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/log/err"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, dataCPLogDirectory:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v8, "/efs/root/ERR"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v3, dataCPLogDirectoryEfs:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v8, "/tombstones/mdm"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, dataCPCrashLogDirectory:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v8, "/storage/sdcard0/log"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v7, sdcardLogDirectory:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v8, "/storage/sdcard0/log/err"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v6, sdcardCPLogDirectory:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v8, "/storage/sdcard0/log/cp"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v5, sdcardCPCrashLogDirectory:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v8, "/data/app/bt.log"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, btlog:Ljava/io/File;
    invoke-direct {p0, v4, v7}, Lcom/sec/factory/app/factorytest/FactoryTestDump;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 57
    invoke-direct {p0, v1, v5}, Lcom/sec/factory/app/factorytest/FactoryTestDump;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 59
    invoke-direct {p0, v2, v6}, Lcom/sec/factory/app/factorytest/FactoryTestDump;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_52

    .line 62
    invoke-direct {p0, v3, v7}, Lcom/sec/factory/app/factorytest/FactoryTestDump;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 64
    :cond_52
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 65
    const-string v8, "FactoryTestDump"

    const-string v9, "doCopyDump"

    const-string v10, "btlog.exists == true"

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v8, "/data/app/bt.log"

    const-string v9, "/mnt/sdcard/log/bt.log"

    const-string v10, "bt.log"

    invoke-direct {p0, v8, v9, v10}, Lcom/sec/factory/app/factorytest/FactoryTestDump;->WriteToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    :cond_6a
    const/4 v8, 0x1

    return v8
.end method

.method public getTimestamp()Ljava/lang/String;
    .registers 11

    .prologue
    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 200
    .local v0, cal:Ljava/util/Calendar;
    const-string v6, ""

    .line 201
    .local v6, sysdump_time:Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, month:Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, day:Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, hour:Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, min:Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, sec:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 209
    return-object v6
.end method
