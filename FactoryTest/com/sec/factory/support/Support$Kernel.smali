.class public Lcom/sec/factory/support/Support$Kernel;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/support/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Kernel"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileLength(Ljava/lang/String;)J
    .registers 3
    .parameter "path"

    .prologue
    .line 903
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "id"

    .prologue
    .line 783
    const-string v0, "path"

    #calls: Lcom/sec/factory/support/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sec/factory/support/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isExistFile(Ljava/lang/String;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 893
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 894
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static isExistFileID(Ljava/lang/String;)Z
    .registers 3
    .parameter "id"

    .prologue
    .line 898
    new-instance v0, Ljava/io/File;

    const-string v1, "path"

    #calls: Lcom/sec/factory/support/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/sec/factory/support/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 899
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static mkDir(Ljava/lang/String;)Z
    .registers 6
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 907
    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_22

    .line 908
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 909
    .local v2, index:I
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, dir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 911
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_23

    .line 912
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    .line 917
    .end local v0           #dir:Ljava/lang/String;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #index:I
    :cond_22
    :goto_22
    return v3

    .line 914
    .restart local v0       #dir:Ljava/lang/String;
    .restart local v1       #f:Ljava/io/File;
    .restart local v2       #index:I
    :cond_23
    const/4 v3, 0x1

    goto :goto_22
.end method

.method public static read(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "id"

    .prologue
    .line 811
    const-string v8, "path"

    #calls: Lcom/sec/factory/support/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0, v8}, Lcom/sec/factory/support/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 812
    .local v3, path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 813
    .local v6, value:Ljava/lang/String;
    const/4 v4, 0x0

    .line 814
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 815
    .local v1, freader:Ljava/io/FileReader;
    if-eqz v3, :cond_13

    const-string v8, "Unknown"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    :cond_13
    move-object v7, v6

    .line 839
    .end local v6           #value:Ljava/lang/String;
    .local v7, value:Ljava/lang/String;
    :goto_14
    return-object v7

    .line 819
    .end local v7           #value:Ljava/lang/String;
    .restart local v6       #value:Ljava/lang/String;
    :cond_15
    :try_start_15
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_6d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_5e

    .line 820
    .end local v1           #freader:Ljava/io/FileReader;
    .local v2, freader:Ljava/io/FileReader;
    if-eqz v2, :cond_22

    .line 821
    :try_start_1c
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 823
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_22
    if-eqz v4, :cond_2c

    .line 824
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_7c

    move-result-object v6

    .line 829
    :cond_2c
    if-eqz v4, :cond_7f

    .line 831
    :try_start_2e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_58

    move-object v1, v2

    .line 838
    .end local v2           #freader:Ljava/io/FileReader;
    .restart local v1       #freader:Ljava/io/FileReader;
    :cond_32
    :goto_32
    const-string v8, "Support"

    const-string v9, "Kernel.read"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    .line 839
    .end local v6           #value:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    goto :goto_14

    .line 832
    .end local v1           #freader:Ljava/io/FileReader;
    .end local v7           #value:Ljava/lang/String;
    .restart local v2       #freader:Ljava/io/FileReader;
    .restart local v6       #value:Ljava/lang/String;
    :catch_58
    move-exception v0

    .line 833
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    move-object v1, v2

    .line 834
    .end local v2           #freader:Ljava/io/FileReader;
    .restart local v1       #freader:Ljava/io/FileReader;
    goto :goto_32

    .line 826
    .end local v0           #e:Ljava/io/IOException;
    :catch_5e
    move-exception v0

    .line 827
    .local v0, e:Ljava/lang/Exception;
    :goto_5f
    :try_start_5f
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_6d

    .line 829
    if-eqz v4, :cond_32

    .line 831
    :try_start_64
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_32

    .line 832
    :catch_68
    move-exception v0

    .line 833
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_32

    .line 829
    .end local v0           #e:Ljava/io/IOException;
    :catchall_6d
    move-exception v8

    :goto_6e
    if-eqz v4, :cond_73

    .line 831
    :try_start_70
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    .line 834
    :cond_73
    :goto_73
    throw v8

    .line 832
    :catch_74
    move-exception v0

    .line 833
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_73

    .line 829
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #freader:Ljava/io/FileReader;
    .restart local v2       #freader:Ljava/io/FileReader;
    :catchall_79
    move-exception v8

    move-object v1, v2

    .end local v2           #freader:Ljava/io/FileReader;
    .restart local v1       #freader:Ljava/io/FileReader;
    goto :goto_6e

    .line 826
    .end local v1           #freader:Ljava/io/FileReader;
    .restart local v2       #freader:Ljava/io/FileReader;
    :catch_7c
    move-exception v0

    move-object v1, v2

    .end local v2           #freader:Ljava/io/FileReader;
    .restart local v1       #freader:Ljava/io/FileReader;
    goto :goto_5f

    .end local v1           #freader:Ljava/io/FileReader;
    .restart local v2       #freader:Ljava/io/FileReader;
    :cond_7f
    move-object v1, v2

    .end local v2           #freader:Ljava/io/FileReader;
    .restart local v1       #freader:Ljava/io/FileReader;
    goto :goto_32
.end method

.method public static setPermission(Ljava/lang/String;ZZZZZZ)Z
    .registers 12
    .parameter "path"
    .parameter "excutable"
    .parameter "owneronlyE"
    .parameter "writable"
    .parameter "owneronlyW"
    .parameter "readable"
    .parameter "owneronlyR"

    .prologue
    .line 923
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 924
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 925
    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 926
    invoke-virtual {v0, p3, p4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 927
    invoke-virtual {v0, p5, p6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 933
    const/4 v1, 0x1

    :goto_17
    return v1

    .line 929
    :cond_18
    const-string v1, "Support"

    const-string v2, "setPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "id"
    .parameter "value"

    .prologue
    .line 843
    const-string v5, "path"

    #calls: Lcom/sec/factory/support/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/sec/factory/support/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, path:Ljava/lang/String;
    const/4 v2, 0x1

    .line 845
    .local v2, res:Z
    const/4 v3, 0x0

    .line 847
    .local v3, writer:Ljava/io/FileWriter;
    :try_start_8
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_56
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_45

    .line 848
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    :try_start_d
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_63
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_66

    .line 855
    if-eqz v4, :cond_18

    .line 856
    :try_start_15
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_3e

    :cond_18
    move-object v3, v4

    .line 863
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :cond_19
    :goto_19
    const-string v5, "Support"

    const-string v6, "Kernel.write"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return v2

    .line 858
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_3e
    move-exception v0

    .line 859
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    .line 860
    const/4 v2, 0x0

    move-object v3, v4

    .line 862
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_19

    .line 850
    .end local v0           #e:Ljava/io/IOException;
    :catch_45
    move-exception v0

    .line 851
    .local v0, e:Ljava/lang/Exception;
    :goto_46
    :try_start_46
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_56

    .line 852
    const/4 v2, 0x0

    .line 855
    if-eqz v3, :cond_19

    .line 856
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_19

    .line 858
    :catch_50
    move-exception v0

    .line 859
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    .line 860
    const/4 v2, 0x0

    .line 862
    goto :goto_19

    .line 854
    .end local v0           #e:Ljava/io/IOException;
    :catchall_56
    move-exception v5

    .line 855
    :goto_57
    if-eqz v3, :cond_5c

    .line 856
    :try_start_59
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 861
    :cond_5c
    :goto_5c
    throw v5

    .line 858
    :catch_5d
    move-exception v0

    .line 859
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    .line 860
    const/4 v2, 0x0

    goto :goto_5c

    .line 854
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catchall_63
    move-exception v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_57

    .line 850
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_66
    move-exception v0

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_46
.end method

.method public static write(Ljava/lang/String;[B)Z
    .registers 11
    .parameter "id"
    .parameter "value"

    .prologue
    .line 868
    const-string v5, "path"

    #calls: Lcom/sec/factory/support/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/sec/factory/support/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 869
    .local v3, path:Ljava/lang/String;
    const/4 v4, 0x1

    .line 870
    .local v4, res:Z
    const/4 v1, 0x0

    .line 872
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_8
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_56
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_45

    .line 873
    .end local v1           #out:Ljava/io/FileOutputStream;
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_d
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 874
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_63
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_66

    .line 880
    if-eqz v2, :cond_18

    .line 881
    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_3e

    :cond_18
    move-object v1, v2

    .line 888
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    :cond_19
    :goto_19
    const-string v5, "Support"

    const-string v6, "Kernel.write"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    return v4

    .line 883
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_3e
    move-exception v0

    .line 884
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    .line 885
    const/4 v4, 0x0

    move-object v1, v2

    .line 887
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_19

    .line 875
    .end local v0           #e:Ljava/io/IOException;
    :catch_45
    move-exception v0

    .line 876
    .local v0, e:Ljava/lang/Exception;
    :goto_46
    :try_start_46
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_56

    .line 877
    const/4 v4, 0x0

    .line 880
    if-eqz v1, :cond_19

    .line 881
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_19

    .line 883
    :catch_50
    move-exception v0

    .line 884
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    .line 885
    const/4 v4, 0x0

    .line 887
    goto :goto_19

    .line 879
    .end local v0           #e:Ljava/io/IOException;
    :catchall_56
    move-exception v5

    .line 880
    :goto_57
    if-eqz v1, :cond_5c

    .line 881
    :try_start_59
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 886
    :cond_5c
    :goto_5c
    throw v5

    .line 883
    :catch_5d
    move-exception v0

    .line 884
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    .line 885
    const/4 v4, 0x0

    goto :goto_5c

    .line 879
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catchall_63
    move-exception v5

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_57

    .line 875
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_66
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_46
.end method
