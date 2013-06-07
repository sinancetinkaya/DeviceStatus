.class public Lcom/android/settings/flipfont/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, "FontWriter"

    sput-object v0, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 49
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 51
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .registers 9
    .parameter "FontDir"
    .parameter "folderName"

    .prologue
    .line 125
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .local v3, newDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, tmp:[Ljava/lang/String;
    if-eqz v4, :cond_21

    .line 128
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    array-length v5, v4

    if-ge v2, v5, :cond_1c

    .line 129
    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 132
    .end local v1           #file:Ljava/io/File;
    :cond_1c
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 135
    .end local v2           #i:I
    .local v0, bRet:Z
    :goto_20
    return v0

    .line 134
    .end local v0           #bRet:Z
    :cond_21
    const/4 v0, 0x0

    .restart local v0       #bRet:Z
    goto :goto_20
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .registers 7
    .parameter "fontPath"

    .prologue
    .line 143
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 145
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 146
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_14} :catch_15

    .line 150
    .end local v1           #file:Ljava/io/File;
    :goto_14
    return-void

    .line 147
    :catch_15
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeFilePermission : File permission error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 19
    .parameter "directory"
    .parameter "is"
    .parameter "destination"

    .prologue
    .line 159
    move-object/from16 v10, p2

    .line 160
    .local v10, myInputStream:Ljava/io/InputStream;
    move-object/from16 v9, p1

    .line 161
    .local v9, myDirectory:Ljava/io/File;
    move-object/from16 v8, p3

    .line 162
    .local v8, myDestination:Ljava/lang/String;
    const-string v0, ""

    .line 164
    .local v0, absolutePath:Ljava/lang/String;
    :try_start_8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .local v2, dest:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 168
    new-instance v12, Ljava/io/BufferedOutputStream;

    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 169
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 170
    .local v1, b:[B
    const/4 v11, 0x0

    .line 171
    .local v11, read:I
    :goto_29
    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_79

    .line 172
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_db
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_36

    goto :goto_29

    .line 178
    .end local v1           #b:[B
    .end local v2           #dest:Ljava/io/File;
    .end local v11           #read:I
    :catch_36
    move-exception v4

    .line 180
    .local v4, ex:Ljava/lang/Exception;
    :try_start_37
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 182
    .local v6, length:J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_49

    .line 183
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 185
    :cond_49
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_37 .. :try_end_4c} :catchall_db

    .line 188
    if-eqz v10, :cond_51

    .line 189
    :try_start_4e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_c0

    .line 194
    :cond_51
    :goto_51
    :try_start_51
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_5a

    .line 195
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5a} :catch_c9

    .line 200
    :cond_5a
    :goto_5a
    :try_start_5a
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_63

    .line 201
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_63} :catch_d2

    .line 206
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:J
    :cond_63
    :goto_63
    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 208
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    .restart local v5       #file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 210
    .restart local v6       #length:J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_78

    .line 211
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 213
    :cond_78
    return-void

    .line 174
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:J
    .restart local v1       #b:[B
    .restart local v2       #dest:Ljava/io/File;
    .restart local v11       #read:I
    :cond_79
    :try_start_79
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->flush()V

    .line 175
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 176
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-static {v12}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 177
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8d
    .catchall {:try_start_79 .. :try_end_8d} :catchall_db
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_8d} :catch_36

    .line 188
    if-eqz v10, :cond_92

    .line 189
    :try_start_8f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_ae

    .line 194
    :cond_92
    :goto_92
    :try_start_92
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_9b

    .line 195
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9b} :catch_b7

    .line 200
    :cond_9b
    :goto_9b
    :try_start_9b
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_63

    .line 201
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a4} :catch_a5

    goto :goto_63

    .line 202
    :catch_a5
    move-exception v3

    .line 203
    .local v3, e:Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 190
    .end local v3           #e:Ljava/io/IOException;
    :catch_ae
    move-exception v3

    .line 191
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 196
    .end local v3           #e:Ljava/io/IOException;
    :catch_b7
    move-exception v3

    .line 197
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 190
    .end local v1           #b:[B
    .end local v2           #dest:Ljava/io/File;
    .end local v3           #e:Ljava/io/IOException;
    .end local v11           #read:I
    .restart local v4       #ex:Ljava/lang/Exception;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:J
    :catch_c0
    move-exception v3

    .line 191
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 196
    .end local v3           #e:Ljava/io/IOException;
    :catch_c9
    move-exception v3

    .line 197
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 202
    .end local v3           #e:Ljava/io/IOException;
    :catch_d2
    move-exception v3

    .line 203
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 187
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:J
    :catchall_db
    move-exception v12

    .line 188
    if-eqz v10, :cond_e1

    .line 189
    :try_start_de
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_f4

    .line 194
    :cond_e1
    :goto_e1
    :try_start_e1
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v13, :cond_ea

    .line 195
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_ea} :catch_fd

    .line 200
    :cond_ea
    :goto_ea
    :try_start_ea
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v13, :cond_f3

    .line 201
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_f3} :catch_106

    .line 204
    :cond_f3
    :goto_f3
    throw v12

    .line 190
    :catch_f4
    move-exception v3

    .line 191
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v13, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : myInputStream.close() error"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1

    .line 196
    .end local v3           #e:Ljava/io/IOException;
    :catch_fd
    move-exception v3

    .line 197
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v13, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : fOut.close() error"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea

    .line 202
    .end local v3           #e:Ljava/io/IOException;
    :catch_106
    move-exception v3

    .line 203
    .restart local v3       #e:Ljava/io/IOException;
    sget-object v13, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : bos.close() error"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f3
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 11
    .parameter "context"
    .parameter "fontName"

    .prologue
    const/4 v6, 0x1

    .line 100
    const-string v5, "fonts"

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 101
    .local v3, newFontDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v1, fontFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, tmp:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v5, v4

    if-ge v2, v5, :cond_1c

    .line 106
    aget-object v5, v4, v2

    invoke-direct {p0, v3, v5}, Lcom/android/settings/flipfont/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 109
    :cond_1c
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 111
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_21
    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 112
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 113
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_2e
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_2e} :catch_2f

    .line 117
    :goto_2e
    return-object v1

    .line 114
    :catch_2f
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v5, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeLoc : File permission error, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "filename"
    .parameter "directory"

    .prologue
    .line 64
    const-string v0, ""

    .line 66
    .local v0, absolutePath:Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/app_fonts"

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v1, dest:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 70
    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 71
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 72
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 73
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 74
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_47
    .catchall {:try_start_2 .. :try_end_47} :catchall_9d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_47} :catch_74

    .line 79
    :try_start_47
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_50

    .line 80
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_50} :catch_62

    .line 85
    :cond_50
    :goto_50
    :try_start_50
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_59

    .line 86
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_59} :catch_6b

    .line 91
    .end local v1           #dest:Ljava/io/File;
    :cond_59
    :goto_59
    const-string v4, "persist.sys.flipfontpath"

    invoke-static {v4, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 94
    return-void

    .line 81
    .restart local v1       #dest:Ljava/io/File;
    :catch_62
    move-exception v2

    .line 82
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 87
    .end local v2           #e:Ljava/io/IOException;
    :catch_6b
    move-exception v2

    .line 88
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : fOut.close() error"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 75
    .end local v1           #dest:Ljava/io/File;
    .end local v2           #e:Ljava/io/IOException;
    :catch_74
    move-exception v3

    .line 76
    .local v3, ex:Ljava/lang/Exception;
    :try_start_75
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_9d

    .line 79
    :try_start_78
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_81

    .line 80
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_81} :catch_94

    .line 85
    :cond_81
    :goto_81
    :try_start_81
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_59

    .line 86
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8a} :catch_8b

    goto :goto_59

    .line 87
    :catch_8b
    move-exception v2

    .line 88
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : fOut.close() error"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 81
    .end local v2           #e:Ljava/io/IOException;
    :catch_94
    move-exception v2

    .line 82
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 78
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_9d
    move-exception v4

    .line 79
    :try_start_9e
    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_a7

    .line 80
    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a7} :catch_b1

    .line 85
    :cond_a7
    :goto_a7
    :try_start_a7
    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_b0

    .line 86
    iget-object v5, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_b0} :catch_ba

    .line 89
    :cond_b0
    :goto_b0
    throw v4

    .line 81
    :catch_b1
    move-exception v2

    .line 82
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "writeLoc : osw.close() error"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 87
    .end local v2           #e:Ljava/io/IOException;
    :catch_ba
    move-exception v2

    .line 88
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/android/settings/flipfont/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "writeLoc : fOut.close() error"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0
.end method
