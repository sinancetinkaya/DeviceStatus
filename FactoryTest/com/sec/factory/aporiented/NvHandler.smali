.class public Lcom/sec/factory/aporiented/NvHandler;
.super Ljava/lang/Object;
.source "NvHandler.java"


# static fields
.field static nvInstance:Lcom/sec/factory/aporiented/NvHandler;


# instance fields
.field protected nvList:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 37
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/NvHandler;->getFullTestNv()Ljava/lang/String;

    .line 39
    :cond_d
    return-void
.end method

.method public static getInstance()Lcom/sec/factory/aporiented/NvHandler;
    .registers 3

    .prologue
    .line 26
    const-class v1, Lcom/sec/factory/aporiented/NvHandler;

    monitor-enter v1

    .line 27
    :try_start_3
    sget-object v0, Lcom/sec/factory/aporiented/NvHandler;->nvInstance:Lcom/sec/factory/aporiented/NvHandler;

    if-nez v0, :cond_15

    .line 28
    new-instance v0, Lcom/sec/factory/aporiented/NvHandler;

    invoke-direct {v0}, Lcom/sec/factory/aporiented/NvHandler;-><init>()V

    sput-object v0, Lcom/sec/factory/aporiented/NvHandler;->nvInstance:Lcom/sec/factory/aporiented/NvHandler;

    .line 29
    const-string v0, "NvHandler"

    const-string v2, "nvHandler created"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_19

    .line 32
    sget-object v0, Lcom/sec/factory/aporiented/NvHandler;->nvInstance:Lcom/sec/factory/aporiented/NvHandler;

    return-object v0

    .line 31
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method


# virtual methods
.method public getFullHistNv()Ljava/lang/String;
    .registers 3

    .prologue
    .line 59
    const-string v1, "/efs/FactoryApp/hist_nv"

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/NvHandler;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, histNv:Ljava/lang/String;
    return-object v0
.end method

.method public getFullTestNv()Ljava/lang/String;
    .registers 3

    .prologue
    .line 42
    const-string v0, "/efs/FactoryApp/test_nv"

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/NvHandler;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1d

    .line 44
    const-string v0, "01N02N03N04N05N06N07N08N09N10N11N12N13N14N15N16N17N18N19N20N21N22N23N24N25N26N27N28N29N30N31N32N33N34N35N36N37N38N39N40N"

    iput-object v0, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    .line 45
    const-string v0, "/efs/FactoryApp/test_nv"

    iget-object v1, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/aporiented/NvHandler;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    :cond_1d
    iget-object v0, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    return-object v0
.end method

.method protected readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "filepath"

    .prologue
    .line 157
    const-string v4, ""

    .line 158
    .local v4, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 161
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1fa0

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_2c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_3b

    .line 162
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    if-eqz v1, :cond_1b

    .line 163
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 164
    if-eqz v4, :cond_1b

    .line 165
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_56
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1a} :catch_5c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_59

    move-result-object v4

    .line 173
    :cond_1b
    if-eqz v1, :cond_5f

    .line 175
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_26

    move-object v0, v1

    .line 181
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_21
    :goto_21
    if-nez v4, :cond_25

    .line 182
    const-string v4, ""

    .line 184
    .end local v4           #result:Ljava/lang/String;
    :cond_25
    return-object v4

    .line 176
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v4       #result:Ljava/lang/String;
    :catch_26
    move-exception v2

    .line 177
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 178
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_21

    .line 168
    .end local v2           #e:Ljava/io/IOException;
    :catch_2c
    move-exception v3

    .line 169
    .local v3, ex:Ljava/io/FileNotFoundException;
    :goto_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_4a

    .line 173
    if-eqz v0, :cond_21

    .line 175
    :try_start_32
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_21

    .line 176
    :catch_36
    move-exception v2

    .line 177
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 170
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_3b
    move-exception v2

    .line 171
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3c
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4a

    .line 173
    if-eqz v0, :cond_21

    .line 175
    :try_start_41
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_21

    .line 176
    :catch_45
    move-exception v2

    .line 177
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 173
    .end local v2           #e:Ljava/io/IOException;
    :catchall_4a
    move-exception v5

    :goto_4b
    if-eqz v0, :cond_50

    .line 175
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 178
    :cond_50
    :goto_50
    throw v5

    .line 176
    :catch_51
    move-exception v2

    .line 177
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .line 173
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_56
    move-exception v5

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_4b

    .line 170
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_59
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3c

    .line 168
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_5c
    move-exception v3

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2d

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :cond_5f
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_21
.end method

.method public setTestNv(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "id"
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 119
    .local v1, idx:I
    const-string v6, "NvHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 122
    const-string v6, "P"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_50

    const-string v6, "N"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_50

    const-string v6, "F"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_50

    const-string v6, "E"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 124
    :cond_50
    if-lez v1, :cond_b0

    const/16 v6, 0x29

    if-ge v1, v6, :cond_b0

    .line 125
    iget-object v6, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    add-int/lit8 v7, v1, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, sub1:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    mul-int/lit8 v6, v1, 0x3

    iget-object v7, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, sub2:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    .line 128
    const-string v4, "/efs/FactoryApp/test_nv"

    iget-object v6, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/sec/factory/aporiented/NvHandler;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    const-string v4, "/efs/FactoryApp/hist_nv"

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/NvHandler;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, histNv:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v4, "/efs/FactoryApp/hist_nv"

    invoke-virtual {p0, v4, v0}, Lcom/sec/factory/aporiented/NvHandler;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move v4, v5

    .line 153
    .end local v0           #histNv:Ljava/lang/String;
    .end local v2           #sub1:Ljava/lang/String;
    .end local v3           #sub2:Ljava/lang/String;
    :cond_af
    :goto_af
    return v4

    .line 133
    :cond_b0
    const/16 v6, 0x62

    if-ne v1, v6, :cond_fa

    .line 134
    iget-object v6, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    const/16 v7, 0x9

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 135
    .restart local v2       #sub1:Ljava/lang/String;
    const-string v3, "04N05N06N07N08N09N10N11N12N13N14N15N16N17N18N19N20N21N22N23N24N25N26N27N28N29N30N31N32N33N34N35N36N37N38N39N40N"

    .line 136
    .restart local v3       #sub2:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    .line 137
    const-string v4, "/efs/FactoryApp/test_nv"

    iget-object v6, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/sec/factory/aporiented/NvHandler;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    const-string v4, "/efs/FactoryApp/hist_nv"

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/NvHandler;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .restart local v0       #histNv:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v4, "/efs/FactoryApp/hist_nv"

    invoke-virtual {p0, v4, v0}, Lcom/sec/factory/aporiented/NvHandler;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move v4, v5

    .line 141
    goto :goto_af

    .line 142
    .end local v0           #histNv:Ljava/lang/String;
    .end local v2           #sub1:Ljava/lang/String;
    .end local v3           #sub2:Ljava/lang/String;
    :cond_fa
    const/16 v6, 0x63

    if-ne v1, v6, :cond_af

    .line 143
    iget-object v6, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    const/16 v7, 0x12

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 144
    .restart local v2       #sub1:Ljava/lang/String;
    const-string v3, "07N08N09N10N11N12N13N14N15N16N17N18N19N20N21N22N23N24N25N26N27N28N29N30N31N32N33N34N35N36N37N38N39N40N"

    .line 145
    .restart local v3       #sub2:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    .line 146
    const-string v4, "/efs/FactoryApp/test_nv"

    iget-object v6, p0, Lcom/sec/factory/aporiented/NvHandler;->nvList:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/sec/factory/aporiented/NvHandler;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    const-string v4, "/efs/FactoryApp/hist_nv"

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/NvHandler;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .restart local v0       #histNv:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v4, "/efs/FactoryApp/hist_nv"

    invoke-virtual {p0, v4, v0}, Lcom/sec/factory/aporiented/NvHandler;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move v4, v5

    .line 150
    goto/16 :goto_af
.end method

.method protected writeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "filepath"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 189
    const/4 v2, 0x0

    .line 191
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_2
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_13

    .line 192
    .end local v2           #fw:Ljava/io/FileWriter;
    .local v3, fw:Ljava/io/FileWriter;
    :try_start_7
    invoke-virtual {v3, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 194
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_1c

    .line 195
    const/4 v4, 0x1

    move-object v2, v3

    .line 204
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :cond_12
    :goto_12
    return v4

    .line 196
    :catch_13
    move-exception v0

    .line 197
    .local v0, e:Ljava/io/IOException;
    :goto_14
    if-eqz v2, :cond_12

    .line 199
    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_12

    .line 200
    :catch_1a
    move-exception v1

    .line 201
    .local v1, e1:Ljava/io/IOException;
    goto :goto_12

    .line 196
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/IOException;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catch_1c
    move-exception v0

    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_14
.end method
