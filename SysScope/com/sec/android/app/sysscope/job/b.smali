.class public final Lcom/sec/android/app/sysscope/job/b;
.super Lcom/sec/android/app/sysscope/engine/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/k;-><init>()V

    return-void
.end method

.method private f()Lcom/sec/android/app/sysscope/service/f;
    .registers 7

    const/4 v5, 0x3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    :try_start_4
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "/proc/mounts"

    const-string v4, "r"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_82
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_d} :catch_6a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_7a

    :try_start_d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_10} :catch_94
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_10} :catch_90

    move-result-object v2

    if-nez v2, :cond_21

    :try_start_13
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_8e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_88
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_16} :catch_94
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_16} :catch_90

    :goto_16
    :try_start_16
    sget-object v0, Lcom/sec/android/app/sysscope/service/f;->c:Lcom/sec/android/app/sysscope/service/f;

    const-string v2, "File system : There\'s no mount info"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sysscope/job/b;->a(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1d} :catch_94
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1d} :catch_90

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_8a

    :goto_20
    return-object v0

    :cond_21
    :try_start_21
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_63

    array-length v3, v2

    if-le v3, v5, :cond_63

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "/system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    const/4 v3, 0x3

    aget-object v3, v2, v3

    const-string v4, "rw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is mounted in rw mode."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sysscope/job/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sysscope/service/f;->c:Lcom/sec/android/app/sysscope/service/f;
    :try_end_5d
    .catchall {:try_start_21 .. :try_end_5d} :catchall_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_5d} :catch_94
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_5d} :catch_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_5d} :catch_90

    :goto_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_20

    :catch_61
    move-exception v1

    goto :goto_20

    :cond_63
    :try_start_63
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_66} :catch_94
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_66} :catch_90

    move-result-object v2

    if-nez v2, :cond_21

    goto :goto_5d

    :catch_6a
    move-exception v1

    move-object v1, v2

    :goto_6c
    :try_start_6c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_20

    :catch_70
    move-exception v1

    goto :goto_20

    :catch_72
    move-exception v1

    move-object v1, v2

    :goto_74
    :try_start_74
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_20

    :catch_78
    move-exception v1

    goto :goto_20

    :catch_7a
    move-exception v1

    move-object v1, v2

    :goto_7c
    :try_start_7c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_20

    :catch_80
    move-exception v1

    goto :goto_20

    :catchall_82
    move-exception v0

    move-object v1, v2

    :goto_84
    :try_start_84
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_8c

    :goto_87
    throw v0

    :catch_88
    move-exception v2

    goto :goto_16

    :catch_8a
    move-exception v1

    goto :goto_20

    :catch_8c
    move-exception v1

    goto :goto_87

    :catchall_8e
    move-exception v0

    goto :goto_84

    :catch_90
    move-exception v2

    goto :goto_7c

    :catch_92
    move-exception v2

    goto :goto_74

    :catch_94
    move-exception v2

    goto :goto_6c
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lcom/sec/android/app/sysscope/service/f;
    .registers 3

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/job/b;->f()Lcom/sec/android/app/sysscope/service/f;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .registers 1

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    const-string v0, "Filesystem table info. scanner"

    return-object v0
.end method

.method public final e()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
