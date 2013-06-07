.class public Lcom/android/settings/SettingsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private GetMTStatus(Ljava/lang/String;)Z
    .registers 9
    .parameter "mtData"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 929
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 933
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 935
    .local v0, i:I
    :goto_10
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 937
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 939
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 944
    :cond_1f
    const/4 v5, 0x2

    if-ge v0, v5, :cond_23

    .line 958
    :cond_22
    :goto_22
    return v3

    .line 951
    :cond_23
    aget-object v5, v2, v4

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_22

    move v3, v4

    .line 953
    goto :goto_22
.end method

.method private GetPhPWD(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "mtData"

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 891
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v1, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 895
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 897
    .local v0, i:I
    :goto_12
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 899
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 906
    :cond_21
    const/4 v4, 0x1

    if-ge v0, v4, :cond_25

    .line 922
    :cond_24
    :goto_24
    return-object v3

    .line 913
    :cond_25
    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_24

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_24

    .line 922
    aget-object v3, v2, v5

    goto :goto_24
.end method

.method private checkSmartDockType()Z
    .registers 12

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 700
    const-string v0, "sys/class/sec/switch/adc"

    .line 702
    .local v0, SmartDockName:Ljava/lang/String;
    new-array v1, v8, [C

    .line 704
    .local v1, buffer:[C
    const/4 v3, 0x0

    .line 706
    .local v3, file:Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 710
    .local v5, fileString:Ljava/lang/String;
    :try_start_9
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_5d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_66

    .line 712
    .end local v3           #file:Ljava/io/FileReader;
    .local v4, file:Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_11
    invoke-virtual {v4, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 714
    .local v6, len:I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 716
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch/adc :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_3a} :catch_75
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3a} :catch_72

    move-object v3, v4

    .line 732
    .end local v4           #file:Ljava/io/FileReader;
    .end local v6           #len:I
    .restart local v3       #file:Ljava/io/FileReader;
    :goto_3b
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Docktype :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-string v8, "10"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 736
    const/4 v7, 0x1

    .line 740
    :cond_5c
    return v7

    .line 720
    :catch_5d
    move-exception v2

    .line 722
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_5e
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "does not readSmartDock! This Kernel does not have wired headset support"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 724
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_66
    move-exception v2

    .line 726
    .local v2, e:Ljava/io/IOException;
    :goto_67
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 724
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_72
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_67

    .line 720
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_75
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_5e
.end method

.method private isAutoActivateFMM(Z)Z
    .registers 5
    .parameter "onoff"

    .prologue
    const/4 v1, 0x1

    .line 762
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, sales_code:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 770
    if-eqz p1, :cond_28

    const-string v2, "CHM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "CHU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "CTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 776
    :cond_27
    const/4 v1, 0x0

    .line 786
    :cond_28
    return v1
.end method

.method private makeDMfile()V
    .registers 9

    .prologue
    .line 795
    const/4 v3, 0x0

    .line 799
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/samsungaccount.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, dmFileName:Ljava/lang/String;
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_38

    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DM file name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_38
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_c2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_3f} :catch_64
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3f} :catch_93

    .line 815
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_4a

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_4a
    if-eqz v4, :cond_e6

    .line 821
    :try_start_4c
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_57

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_57
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5a} :catch_5c

    move-object v3, v4

    .line 835
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_5b
    :goto_5b
    return-void

    .line 825
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_5c
    move-exception v2

    .line 827
    .local v2, ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 829
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_5b

    .line 805
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v2           #ex1:Ljava/io/IOException;
    :catch_64
    move-exception v1

    .line 807
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_65
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_70

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - Exception in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_c2

    .line 815
    :cond_70
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_7b

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_7b
    if-eqz v3, :cond_5b

    .line 821
    :try_start_7d
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_88

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_88
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_8b} :catch_8c

    goto :goto_5b

    .line 825
    :catch_8c
    move-exception v2

    .line 827
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    .line 809
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .end local v2           #ex1:Ljava/io/IOException;
    :catch_93
    move-exception v1

    .line 811
    .local v1, ex:Ljava/io/IOException;
    :try_start_94
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_9f

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - IOException in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_94 .. :try_end_9f} :catchall_c2

    .line 815
    :cond_9f
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_aa

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_aa
    if-eqz v3, :cond_5b

    .line 821
    :try_start_ac
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_b7

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_b7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_ba} :catch_bb

    goto :goto_5b

    .line 825
    :catch_bb
    move-exception v2

    .line 827
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    .line 815
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #ex1:Ljava/io/IOException;
    :catchall_c2
    move-exception v5

    sget-boolean v6, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v6, :cond_ce

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - finally"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_ce
    if-eqz v3, :cond_de

    .line 821
    :try_start_d0
    sget-boolean v6, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v6, :cond_db

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - call raf.close()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_db
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_de} :catch_df

    .line 829
    :cond_de
    :goto_de
    throw v5

    .line 825
    :catch_df
    move-exception v2

    .line 827
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v6, "SettingsIntentReceiver"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_de

    .end local v2           #ex1:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_e6
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_5b
.end method

.method private toggleFmm(Landroid/content/Context;Z)V
    .registers 9
    .parameter "context"
    .parameter "onoff"

    .prologue
    const/4 v3, 0x0

    .line 748
    const-string v2, "SettingsIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMM enabled? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-direct {p0, p2}, Lcom/android/settings/SettingsIntentReceiver;->isAutoActivateFMM(Z)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 750
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "remote_control"

    if-eqz p2, :cond_3e

    const/4 v2, 0x1

    :goto_28
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 753
    :cond_2b
    const-string v2, "FMMPreferences"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 754
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 755
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_fmm"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 756
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 757
    return-void

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_3e
    move v2, v3

    .line 750
    goto :goto_28
.end method

.method private writeMTData(Ljava/lang/String;)V
    .registers 10
    .parameter "mtData"

    .prologue
    .line 840
    const/4 v3, 0x0

    .line 844
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/mobiletracker.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, mtFileName:Ljava/lang/String;
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_38

    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MT file name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_38
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_fc
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_3f} :catch_6d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_3f} :catch_9c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3f} :catch_cb

    .line 850
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_3f
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_120
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_48} :catch_12a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_48} :catch_126
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_48} :catch_123

    .line 866
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_53

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_53
    if-eqz v4, :cond_12e

    .line 872
    :try_start_55
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_60

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_60
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_63} :catch_65

    move-object v3, v4

    .line 886
    .end local v2           #mtFileName:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_64
    :goto_64
    return-void

    .line 876
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #mtFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_65
    move-exception v1

    .line 878
    .local v1, ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 880
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_64

    .line 852
    .end local v1           #ex1:Ljava/io/IOException;
    .end local v2           #mtFileName:Ljava/lang/String;
    :catch_6d
    move-exception v0

    .line 854
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_6e
    :try_start_6e
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_79

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - Exception in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_fc

    .line 866
    :cond_79
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_84

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_84
    if-eqz v3, :cond_64

    .line 872
    :try_start_86
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_91

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_91
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_94} :catch_95

    goto :goto_64

    .line 876
    :catch_95
    move-exception v1

    .line 878
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 856
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catch_9c
    move-exception v0

    .line 858
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    :goto_9d
    :try_start_9d
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_a8

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - UnsupportedEncodingException in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_9d .. :try_end_a8} :catchall_fc

    .line 866
    :cond_a8
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_b3

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_b3
    if-eqz v3, :cond_64

    .line 872
    :try_start_b5
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_c0

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_c0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_c3} :catch_c4

    goto :goto_64

    .line 876
    :catch_c4
    move-exception v1

    .line 878
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 860
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catch_cb
    move-exception v0

    .line 862
    .local v0, ex:Ljava/io/IOException;
    :goto_cc
    :try_start_cc
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_d7

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - IOException in steam write"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_cc .. :try_end_d7} :catchall_fc

    .line 866
    :cond_d7
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_e2

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_e2
    if-eqz v3, :cond_64

    .line 872
    :try_start_e4
    sget-boolean v5, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v5, :cond_ef

    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_ef
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_f2} :catch_f4

    goto/16 :goto_64

    .line 876
    :catch_f4
    move-exception v1

    .line 878
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_64

    .line 866
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catchall_fc
    move-exception v5

    :goto_fd
    sget-boolean v6, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v6, :cond_108

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - finally"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_108
    if-eqz v3, :cond_118

    .line 872
    :try_start_10a
    sget-boolean v6, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v6, :cond_115

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - call raf.close()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_115
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_118} :catch_119

    .line 880
    :cond_118
    :goto_118
    throw v5

    .line 876
    :catch_119
    move-exception v1

    .line 878
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v6, "SettingsIntentReceiver"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_118

    .line 866
    .end local v1           #ex1:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #mtFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_120
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_fd

    .line 860
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_123
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_cc

    .line 856
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_126
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_9d

    .line 852
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_12a
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_6e

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_12e
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_64
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 39
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, action:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 112
    .local v28, resolver:Landroid/content/ContentResolver;
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_26

    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "onReceive(): "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_26
    const-string v33, "com.samsung.wipe.MTDATA"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b8

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 118
    .local v17, extras:Landroid/os/Bundle;
    const-string v33, "MTDATA"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 120
    .local v32, temp:Ljava/lang/String;
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_5e

    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "MT data: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_5e
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->writeMTData(Ljava/lang/String;)V

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->makeDMfile()V

    .line 129
    const-string v33, "mt_pwd"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetPhPWD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    const-string v34, "mt_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetMTStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_b5

    const/16 v33, 0x1

    :goto_89
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 687
    .end local v17           #extras:Landroid/os/Bundle;
    .end local v32           #temp:Ljava/lang/String;
    :cond_92
    :goto_92
    const-string v33, "android.intent.action.REGISTRATION_COMPLETED"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b4

    .line 689
    const-string v33, "samsung_signin"

    const/16 v34, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 691
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    .line 695
    :cond_b4
    return-void

    .line 131
    .restart local v17       #extras:Landroid/os/Bundle;
    .restart local v32       #temp:Ljava/lang/String;
    :cond_b5
    const/16 v33, 0x0

    goto :goto_89

    .line 137
    .end local v17           #extras:Landroid/os/Bundle;
    .end local v32           #temp:Ljava/lang/String;
    :cond_b8
    const-string v33, "android.intent.action.ASSISTIVELIGHT_ON"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c8

    .line 139
    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    goto :goto_92

    .line 141
    :cond_c8
    const-string v33, "android.intent.action.ASSISTIVELIGHT_OFF"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_ee

    .line 143
    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 145
    const-string v33, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/NotificationManager;

    .line 147
    .local v23, notificationManager:Landroid/app/NotificationManager;
    const v33, 0x7f0202ce

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_92

    .line 149
    .end local v23           #notificationManager:Landroid/app/NotificationManager;
    :cond_ee
    const-string v33, "android.intent.action.NEGATIVECOLOR_ON"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_fe

    .line 151
    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    goto :goto_92

    .line 153
    :cond_fe
    const-string v33, "android.intent.action.NEGATIVECOLOR_OFF"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_10e

    .line 155
    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    goto :goto_92

    .line 160
    :cond_10e
    const-string v33, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1e6

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 164
    .restart local v17       #extras:Landroid/os/Bundle;
    const/16 v29, 0x2

    .line 166
    .local v29, ringerMode:I
    if-eqz v17, :cond_15a

    .line 168
    const-string v33, "android.media.EXTRA_RINGER_MODE"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 170
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_14a

    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Extras, ringer mode: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_14a
    :goto_14a
    packed-switch v29, :pswitch_data_98e

    .line 217
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_92

    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Not supported ringer mode"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 174
    :cond_15a
    const-string v33, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 176
    .local v4, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v29

    .line 178
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_14a

    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "No extras, ringer mode: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14a

    .line 187
    .end local v4           #audioManager:Landroid/media/AudioManager;
    :pswitch_18b
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_196

    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Ringer mode: silent & set driving mode off"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_196
    const-string v33, "driving_mode_on"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    const-string v33, "vibrate_in_silent"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_92

    .line 199
    :pswitch_1b2
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_1bd

    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Ringer mode: vibrate"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1bd
    const-string v33, "vibrate_in_silent"

    const/16 v34, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_92

    .line 209
    :pswitch_1cc
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_1d7

    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Ringer mode: normal"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1d7
    const-string v33, "vibrate_in_silent"

    const/16 v34, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_92

    .line 221
    .end local v17           #extras:Landroid/os/Bundle;
    .end local v29           #ringerMode:I
    :cond_1e6
    const-string v33, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_460

    .line 223
    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_20d

    .line 224
    const-string v33, "power_saving_mode"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_454

    const/16 v33, 0x1

    :goto_20a
    invoke-static/range {v33 .. v33}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    .line 230
    :cond_20d
    const-string v33, "high_contrast"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_458

    const/16 v33, 0x1

    :goto_21f
    invoke-static/range {v33 .. v33}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    .line 236
    const-string v33, "torch_light"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_245

    .line 240
    const-string v33, "torch_light"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    :cond_245
    const-string v33, "screen_mode_setting"

    const/16 v34, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    invoke-static/range {v33 .. v33}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 255
    const-string v33, "pen_settings"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 257
    .local v8, currentPenSettings:I
    invoke-static {v8}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenType(I)Z

    .line 259
    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "set pen settings to "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v33, "pen_detect_mode_disabled"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 264
    .local v6, currentPenBatterySavingMode:I
    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 266
    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "currentPenBatterySavingMode: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v33, "pen_hand_side"

    const/16 v34, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 275
    .local v7, currentPenHandType:I
    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setEpenHandType(I)V

    .line 277
    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "currentPenHandType: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v30

    .line 288
    .local v30, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v33, "pref_device_provision"

    const/16 v34, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    if-nez v33, :cond_353

    .line 290
    const-string v33, "screen_off_timeout"

    const/16 v34, 0x7530

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    const v34, 0x1d8a8

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_329

    .line 292
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Overriding setup wizard set screen timeout"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v34, "screen_off_timeout"

    const-string v33, "USC"

    const-string v35, "ro.csc.sales_code"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_45c

    const v33, 0xea60

    :goto_320
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    :cond_329
    const-string v33, "device_provisioned"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_353

    .line 302
    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 304
    .local v16, editor:Landroid/content/SharedPreferences$Editor;
    const-string v33, "pref_device_provision"

    const/16 v34, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    .end local v16           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_353
    const-string v33, "screen_off_timeout"

    const/16 v34, 0x7530

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 325
    .local v24, oldScreenTimOut:I
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_381

    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Current screen timeout value: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_381
    const v33, 0x927c0

    move/from16 v0, v24

    move/from16 v1, v33

    if-gt v0, v1, :cond_38c

    if-gez v24, :cond_3a1

    .line 331
    :cond_38c
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Reset screen timeout to 10mins"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v33, "screen_off_timeout"

    const v34, 0x927c0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    :cond_3a1
    const-string v33, "stay_on_while_plugged_in"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 340
    .local v25, oldStayAwake:I
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_3cf

    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Current stay awake value: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_3cf
    if-eqz v25, :cond_3e5

    .line 344
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Set stay awake off"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v33, "stay_on_while_plugged_in"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 357
    :cond_3e5
    const-string v33, "usb_setting_mode"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_408

    .line 359
    const-string v33, "usb_setting_mode"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    :cond_408
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_42a

    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "salesCode = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ro.csc.sales_code"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_42a
    const-string v33, "TMB"

    const-string v34, "ro.csc.sales_code"

    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_92

    .line 372
    const-string v33, "auto_time"

    const/16 v34, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    const-string v33, "auto_time_zone"

    const/16 v34, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_92

    .line 224
    .end local v6           #currentPenBatterySavingMode:I
    .end local v7           #currentPenHandType:I
    .end local v8           #currentPenSettings:I
    .end local v24           #oldScreenTimOut:I
    .end local v25           #oldStayAwake:I
    .end local v30           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_454
    const/16 v33, 0x0

    goto/16 :goto_20a

    .line 230
    :cond_458
    const/16 v33, 0x0

    goto/16 :goto_21f

    .line 294
    .restart local v6       #currentPenBatterySavingMode:I
    .restart local v7       #currentPenHandType:I
    .restart local v8       #currentPenSettings:I
    .restart local v30       #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_45c
    const/16 v33, 0x7530

    goto/16 :goto_320

    .line 379
    .end local v6           #currentPenBatterySavingMode:I
    .end local v7           #currentPenHandType:I
    .end local v8           #currentPenSettings:I
    .end local v30           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_460
    const-string v33, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_590

    .line 381
    const-string v33, "android.intent.extra.DOCK_STATE"

    const/16 v34, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 383
    .local v31, state:I
    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Received dock event with state: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v33, "cradle_enable"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 388
    .local v5, cradleEnabled:I
    if-nez v31, :cond_516

    .line 392
    const-string v33, "cradle_connect"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    if-eqz v5, :cond_4f3

    .line 396
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Cradle is enabled without dock"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 400
    .local v20, mSendIntent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v33

    if-eqz v33, :cond_4e9

    .line 402
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "SmartDock connected, Do nothing"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_4cc
    const-string v33, "state"

    const/16 v34, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 416
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Sound state changed to device (state: 0)"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 406
    :cond_4e9
    const-string v33, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4cc

    .line 420
    .end local v20           #mSendIntent:Landroid/content/Intent;
    :cond_4f3
    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Cradle is disabled1: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Sound state is device"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 426
    :cond_516
    const/16 v33, 0x7

    move/from16 v0, v31

    move/from16 v1, v33

    if-eq v0, v1, :cond_92

    .line 430
    const-string v33, "cradle_connect"

    const/16 v34, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 432
    if-eqz v5, :cond_56d

    .line 434
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Cradle is enabled with dock"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 438
    .restart local v20       #mSendIntent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v33

    if-eqz v33, :cond_563

    .line 440
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "SmartDock connected, Do nothing"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_546
    const-string v33, "state"

    const/16 v34, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 454
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Sound state changed to line out (state: 1)"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 444
    :cond_563
    const-string v33, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_546

    .line 458
    .end local v20           #mSendIntent:Landroid/content/Intent;
    :cond_56d
    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Cradle is disabled2: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Sound state is device"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 466
    .end local v5           #cradleEnabled:I
    .end local v31           #state:I
    :cond_590
    const-string v33, "shopdemo_on"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5b0

    .line 468
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "+++++ shop demo on +++++"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v33, "shopdemo"

    const/16 v34, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_92

    .line 472
    :cond_5b0
    const-string v33, "shopdemo_off"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5d0

    .line 474
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "+++++ shop demo off +++++"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v33, "shopdemo"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_92

    .line 478
    :cond_5d0
    const-string v33, "com.sec.samsung.torchwidget.torch_on_1"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5ec

    .line 480
    const/16 v33, 0xe

    invoke-static/range {v33 .. v33}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 482
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_92

    const-string v33, "SettingsIntentReceiver"

    const-string v34, "SecHardwareInterface.setFlashLed(LIGHT_MIN)"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 484
    :cond_5ec
    const-string v33, "com.sec.samsung.torchwidget.torch_on_2"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_608

    .line 486
    const/16 v33, 0x6

    invoke-static/range {v33 .. v33}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 488
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_92

    const-string v33, "SettingsIntentReceiver"

    const-string v34, "SecHardwareInterface.setFlashLed(LIGHT_STANDARD)"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 490
    :cond_608
    const-string v33, "com.sec.samsung.torchwidget.torch_on_3"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_624

    .line 492
    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 494
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_92

    const-string v33, "SettingsIntentReceiver"

    const-string v34, "SecHardwareInterface.setFlashLed(LIGHT_MAX)"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 496
    :cond_624
    const-string v33, "com.sec.samsung.torchwidget.torch_off"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_640

    .line 498
    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 500
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_92

    const-string v33, "SettingsIntentReceiver"

    const-string v34, "SecHardwareInterface.setFlashLed(LIGHT_OFF)"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 506
    :cond_640
    const-string v33, "android.intent.action.CSC_CHAMELEON_UPDATE_SETTINGS"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_66a

    .line 508
    const-string v33, "persist.sys.roaming_menu"

    const-string v34, "roaming_menu"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v33, "persist.sys.tether_data"

    const-string v34, "tether_data"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_92

    .line 516
    :cond_66a
    const-string v33, "android.intent.action.ACTION_ASSISTIVE_OFF"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6ab

    .line 518
    const-string v33, "torch_light"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 522
    const/16 v33, 0x0

    :try_start_683
    invoke-static/range {v33 .. v33}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_686
    .catch Ljava/lang/Exception; {:try_start_683 .. :try_end_686} :catch_69e

    .line 530
    :goto_686
    const-string v33, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/NotificationManager;

    .line 532
    .restart local v23       #notificationManager:Landroid/app/NotificationManager;
    const v33, 0x7f0202ce

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_92

    .line 524
    .end local v23           #notificationManager:Landroid/app/NotificationManager;
    :catch_69e
    move-exception v15

    .line 526
    .local v15, e:Ljava/lang/Exception;
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Could not turn off torch light "

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_686

    .line 534
    .end local v15           #e:Ljava/lang/Exception;
    :cond_6ab
    const-string v33, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6e6

    .line 538
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_6c0

    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Limit brightness"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_6c0
    const-string v33, "max_brightness"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 542
    .local v19, mMaxBrightness:I
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v30

    .line 544
    .restart local v30       #sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 546
    .restart local v16       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v33, "pref_siop_brightness"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 548
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_92

    .line 550
    .end local v16           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v19           #mMaxBrightness:I
    .end local v30           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_6e6
    const-string v33, "osp.signin.SAMSUNG_ACCOUNT_SIGNOUT"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_724

    .line 552
    const-string v33, "change_alert"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    const-string v33, "remote_control"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 556
    const-string v33, "samsung_signin"

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 558
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    goto/16 :goto_92

    .line 560
    :cond_724
    const-string v33, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_914

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 565
    .local v27, removedPackage:Ljava/lang/String;
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_758

    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Removed package: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_758
    const-string v33, "default_activity_app_list"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 569
    .local v9, defaultAppsList:Ljava/lang/String;
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_780

    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "current list = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_780
    if-eqz v9, :cond_92

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_92

    .line 573
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Package on current list is removed"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/16 v33, 0x0

    const/16 v34, 0x3b

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 578
    .local v12, default_phone:Ljava/lang/String;
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_7c1

    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Default phone: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_7c1
    const/16 v33, 0x3b

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 583
    const/16 v33, 0x0

    const/16 v34, 0x3b

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 585
    .local v10, default_email:Ljava/lang/String;
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_807

    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Default email: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_807
    const/16 v33, 0x3b

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 590
    const/16 v33, 0x0

    const/16 v34, 0x3b

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 592
    .local v13, default_web:Ljava/lang/String;
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_84d

    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Default web: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_84d
    const/16 v33, 0x3b

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 597
    const/16 v33, 0x0

    const/16 v34, 0x3b

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 599
    .local v11, default_map:Ljava/lang/String;
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_893

    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Default map: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_893
    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_89d

    .line 606
    const-string v12, "com.android.contacts/com.android.contacts.activities.DialtactsActivity"

    .line 610
    :cond_89d
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_8a7

    .line 612
    const-string v10, "com.android.email/com.android.email.activity.MessageCompose"

    .line 616
    :cond_8a7
    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_8b1

    .line 618
    const-string v13, "com.android.browser/com.android.browser.BrowserActivity"

    .line 622
    :cond_8b1
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_8bb

    .line 624
    const-string v11, "com.google.android.apps.maps/com.google.android.maps.MapsActivity"

    .line 629
    :cond_8bb
    const-string v33, ";"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v34, ";"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v34, ";"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v34, ";"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 637
    .local v26, processedList:Ljava/lang/String;
    const-string v33, "default_activity_app_list"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 639
    sget-boolean v33, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v33, :cond_92

    const-string v33, "SettingsIntentReceiver"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Changed app list: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 646
    .end local v9           #defaultAppsList:Ljava/lang/String;
    .end local v10           #default_email:Ljava/lang/String;
    .end local v11           #default_map:Ljava/lang/String;
    .end local v12           #default_phone:Ljava/lang/String;
    .end local v13           #default_web:Ljava/lang/String;
    .end local v26           #processedList:Ljava/lang/String;
    .end local v27           #removedPackage:Ljava/lang/String;
    :cond_914
    const-string v33, "android.settings.EAS_POLICY_STATE_CHANGED"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_92

    .line 648
    const-string v33, "device_policy"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/admin/DevicePolicyManager;

    .line 650
    .local v14, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v14, :cond_988

    const/16 v33, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v21

    .line 654
    .local v21, maxTimeout:J
    :goto_934
    const-string v33, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v34

    const-string v35, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v34 .. v35}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 659
    .local v18, isDeviceLockTime:Z
    const-wide/16 v33, 0x1

    cmp-long v33, v21, v33

    if-gez v33, :cond_92

    .line 661
    const-string v33, "SettingsIntentReceiver"

    const-string v34, "Max timeout is removed. Rollback timeout value"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v33, "screen_off_timeout"

    const-string v34, "screen_off_timeout_rollback"

    const/16 v35, 0x7530

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 667
    const-string v34, "lock_screen_lock_after_timeout"

    const-string v35, "lock_after_timeout_rollback"

    if-eqz v18, :cond_98b

    const v33, 0x927c0

    :goto_973
    move-object/from16 v0, v28

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_92

    .line 650
    .end local v18           #isDeviceLockTime:Z
    .end local v21           #maxTimeout:J
    :cond_988
    const-wide/16 v21, 0x0

    goto :goto_934

    .line 667
    .restart local v18       #isDeviceLockTime:Z
    .restart local v21       #maxTimeout:J
    :cond_98b
    const/16 v33, 0x1388

    goto :goto_973

    .line 183
    :pswitch_data_98e
    .packed-switch 0x0
        :pswitch_18b
        :pswitch_1b2
        :pswitch_1cc
    .end packed-switch
.end method
