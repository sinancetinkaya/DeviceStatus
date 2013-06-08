.class public Lcom/sec/android/app/sysscope/service/SysScopeVerifier;
.super Ljava/lang/Object;
.source "SysScopeVerifier.java"


# static fields
.field private static final SYSSCOPE_DATA_PKG_NAME1:Ljava/lang/String; = "/data/app/com.sec.android.app.sysscope-1.apk"

.field private static final SYSSCOPE_DATA_PKG_NAME2:Ljava/lang/String; = "/data/app/com.sec.android.app.sysscope-2.apk"

.field private static final SYSSCOPE_SYSTEM_PKG_NAME:Ljava/lang/String; = "/system/app/SysScope.apk"

.field private static final TAG:Ljava/lang/String; = "SysScopeVerifier"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private parseScopeApk(Ljava/lang/String;)Z
    .registers 30
    .parameter "apkPath"

    .prologue
    .line 72
    const/16 v20, 0x0

    .line 73
    .local v20, retValue:Z
    const/4 v3, 0x0

    .line 74
    .local v3, apkFile:Ljava/util/jar/JarFile;
    const/4 v12, 0x0

    .line 81
    .local v12, is:Ljava/io/InputStream;
    :try_start_4
    const-string v25, "SHA-1"

    invoke-static/range {v25 .. v25}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 82
    .local v7, digest:Ljava/security/MessageDigest;
    const/4 v8, 0x0

    .line 83
    .local v8, digestB64String:Ljava/lang/String;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    const-string v26, "lib/armeabi/libcordon.so"

    aput-object v26, v23, v25

    const/16 v25, 0x1

    const-string v26, "classes.dex"

    aput-object v26, v23, v25

    .line 84
    .local v23, strKey:[Ljava/lang/String;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, ""

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string v26, ""

    aput-object v26, v24, v25

    .line 86
    .local v24, strValue:[Ljava/lang/String;
    const/16 v25, 0x2000

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 92
    .local v19, readBuffer:[B
    new-instance v4, Ljava/util/jar/JarFile;

    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-direct {v4, v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_2dd
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_46} :catch_30a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_46} :catch_302
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_46} :catch_2fc

    .line 94
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .local v4, apkFile:Ljava/util/jar/JarFile;
    :try_start_46
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v16

    .line 96
    .local v16, mf:Ljava/util/jar/Manifest;
    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 98
    .local v14, it:Ljava/util/Iterator;
    :cond_56
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_ee

    .line 123
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;
    :try_end_5f
    .catchall {:try_start_46 .. :try_end_5f} :catchall_2f5
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_5f} :catch_149
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_5f} :catch_235
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_46 .. :try_end_5f} :catch_294

    move-result-object v10

    .local v10, entries:Ljava/util/Enumeration;
    move-object v13, v12

    .line 125
    .end local v12           #is:Ljava/io/InputStream;
    .local v13, is:Ljava/io/InputStream;
    :cond_61
    :try_start_61
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-nez v25, :cond_173

    .line 172
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    .line 176
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v25, Ljava/io/FileInputStream;

    .line 177
    const-string v26, "/system/lib/libcordon.so"

    invoke-direct/range {v25 .. v26}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_78
    .catchall {:try_start_61 .. :try_end_78} :catchall_2f8
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_78} :catch_30d
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_78} :catch_305
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_61 .. :try_end_78} :catch_2fe

    .line 179
    .end local v13           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    :try_start_78
    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 180
    const/16 v17, 0x0

    .line 181
    .local v17, nByteCount:I
    :goto_7d
    const/16 v25, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v17

    const/16 v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_287

    .line 184
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 186
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v25

    .line 187
    const/16 v26, 0x0

    .line 186
    invoke-static/range {v25 .. v26}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    .line 188
    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 190
    const/16 v25, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v24, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2c8

    .line 191
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "/system/lib/libcordon.so return false: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v27, v24, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 191
    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catchall {:try_start_78 .. :try_end_de} :catchall_2f5
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_de} :catch_149
    .catch Ljava/lang/RuntimeException; {:try_start_78 .. :try_end_de} :catch_235
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_78 .. :try_end_de} :catch_294

    .line 193
    const/16 v20, 0x0

    .line 212
    if-eqz v4, :cond_e5

    .line 213
    :try_start_e2
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    .line 215
    :cond_e5
    if-eqz v12, :cond_ea

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_ea} :catch_2c2

    :cond_ea
    :goto_ea
    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    move/from16 v21, v20

    .line 224
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v17           #nByteCount:I
    .end local v19           #readBuffer:[B
    .end local v20           #retValue:Z
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    .local v21, retValue:I
    :goto_ed
    return v21

    .line 99
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v21           #retValue:I
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v19       #readBuffer:[B
    .restart local v20       #retValue:Z
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :cond_ee
    :try_start_ee
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 100
    .local v9, e:Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 103
    .local v18, name:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_fb
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ge v11, v0, :cond_56

    .line 105
    aget-object v25, v23, v11

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_121

    .line 107
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes;

    .line 108
    .local v6, attr:Ljava/util/jar/Attributes;
    invoke-virtual {v6}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 110
    .local v5, attIt:Ljava/util/Iterator;
    :goto_11b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_124

    .line 103
    .end local v5           #attIt:Ljava/util/Iterator;
    .end local v6           #attr:Ljava/util/jar/Attributes;
    :cond_121
    add-int/lit8 v11, v11, 0x1

    goto :goto_fb

    .line 111
    .restart local v5       #attIt:Ljava/util/Iterator;
    .restart local v6       #attr:Ljava/util/jar/Attributes;
    :cond_124
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 112
    .local v22, se:Ljava/util/Map$Entry;
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    aput-object v25, v24, v11

    .line 113
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "SHA1-Digest :"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v27, v24, v11

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catchall {:try_start_ee .. :try_end_148} :catchall_2f5
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_148} :catch_149
    .catch Ljava/lang/RuntimeException; {:try_start_ee .. :try_end_148} :catch_235
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ee .. :try_end_148} :catch_294

    goto :goto_11b

    .line 201
    .end local v5           #attIt:Ljava/util/Iterator;
    .end local v6           #attr:Ljava/util/jar/Attributes;
    .end local v9           #e:Ljava/util/Map$Entry;
    .end local v11           #i:I
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v18           #name:Ljava/lang/String;
    .end local v22           #se:Ljava/util/Map$Entry;
    :catch_149
    move-exception v9

    move-object v3, v4

    .line 202
    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v19           #readBuffer:[B
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    .local v9, e:Ljava/io/IOException;
    :goto_14b
    :try_start_14b
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_163
    .catchall {:try_start_14b .. :try_end_163} :catchall_2dd

    .line 203
    const/16 v20, 0x0

    .line 212
    if-eqz v3, :cond_16a

    .line 213
    :try_start_167
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    .line 215
    :cond_16a
    if-eqz v12, :cond_16f

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16f} :catch_2d7

    .end local v9           #e:Ljava/io/IOException;
    :cond_16f
    :goto_16f
    move/from16 v21, v20

    .line 224
    .restart local v21       #retValue:I
    goto/16 :goto_ed

    .line 126
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v21           #retValue:I
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v19       #readBuffer:[B
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :cond_173
    :try_start_173
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/jar/JarEntry;

    .line 128
    .local v15, je:Ljava/util/jar/JarEntry;
    invoke-virtual {v15}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v25

    if-nez v25, :cond_61

    .line 132
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_180
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ge v11, v0, :cond_61

    .line 133
    invoke-virtual {v15}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v25

    aget-object v26, v23, v11

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_312

    .line 140
    new-instance v12, Ljava/io/BufferedInputStream;

    .line 141
    invoke-virtual {v4, v15}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v25

    .line 140
    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19d
    .catchall {:try_start_173 .. :try_end_19d} :catchall_2f8
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_19d} :catch_30d
    .catch Ljava/lang/RuntimeException; {:try_start_173 .. :try_end_19d} :catch_305
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_173 .. :try_end_19d} :catch_2fe

    .line 143
    .end local v13           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    :try_start_19d
    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 144
    const/16 v17, 0x0

    .line 145
    .restart local v17       #nByteCount:I
    :goto_1a2
    const/16 v25, 0x0

    .line 146
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    .line 145
    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v17

    .line 146
    const/16 v25, -0x1

    .line 145
    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_228

    .line 149
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 152
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v25

    const/16 v26, 0x0

    .line 151
    invoke-static/range {v25 .. v26}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 155
    aget-object v25, v24, v11

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 156
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 158
    const/16 v25, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    aget-object v26, v24, v11

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_268

    .line 159
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "digestB64String:"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "strValue[i]:"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v27, v24, v11

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_217
    .catchall {:try_start_19d .. :try_end_217} :catchall_2f5
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_217} :catch_149
    .catch Ljava/lang/RuntimeException; {:try_start_19d .. :try_end_217} :catch_235
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19d .. :try_end_217} :catch_294

    .line 161
    const/16 v20, 0x0

    .line 212
    if-eqz v4, :cond_21e

    .line 213
    :try_start_21b
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    .line 215
    :cond_21e
    if-eqz v12, :cond_223

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_21b .. :try_end_223} :catch_263

    :cond_223
    :goto_223
    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    move/from16 v21, v20

    .line 162
    .restart local v21       #retValue:I
    goto/16 :goto_ed

    .line 147
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v21           #retValue:I
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    :cond_228
    const/16 v25, 0x0

    :try_start_22a
    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v7, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_233
    .catchall {:try_start_22a .. :try_end_233} :catchall_2f5
    .catch Ljava/io/IOException; {:try_start_22a .. :try_end_233} :catch_149
    .catch Ljava/lang/RuntimeException; {:try_start_22a .. :try_end_233} :catch_235
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22a .. :try_end_233} :catch_294

    goto/16 :goto_1a2

    .line 204
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v11           #i:I
    .end local v14           #it:Ljava/util/Iterator;
    .end local v15           #je:Ljava/util/jar/JarEntry;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v17           #nByteCount:I
    :catch_235
    move-exception v9

    move-object v3, v4

    .line 205
    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v19           #readBuffer:[B
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    .local v9, e:Ljava/lang/RuntimeException;
    :goto_237
    :try_start_237
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24f
    .catchall {:try_start_237 .. :try_end_24f} :catchall_2dd

    .line 206
    const/16 v20, 0x0

    .line 212
    if-eqz v3, :cond_256

    .line 213
    :try_start_253
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    .line 215
    :cond_256
    if-eqz v12, :cond_16f

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_25b
    .catch Ljava/io/IOException; {:try_start_253 .. :try_end_25b} :catch_25d

    goto/16 :goto_16f

    .line 218
    :catch_25d
    move-exception v9

    .line 220
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_16f

    .line 218
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v9           #e:Ljava/io/IOException;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v11       #i:I
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v15       #je:Ljava/util/jar/JarEntry;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v17       #nByteCount:I
    .restart local v19       #readBuffer:[B
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :catch_263
    move-exception v9

    .line 220
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_223

    .line 166
    .end local v9           #e:Ljava/io/IOException;
    :cond_268
    :try_start_268
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    aget-object v27, v23, v11

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v27, v24, v11

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v17           #nByteCount:I
    :goto_282
    add-int/lit8 v11, v11, 0x1

    move-object v13, v12

    .end local v12           #is:Ljava/io/InputStream;
    .restart local v13       #is:Ljava/io/InputStream;
    goto/16 :goto_180

    .line 182
    .end local v11           #i:I
    .end local v13           #is:Ljava/io/InputStream;
    .end local v15           #je:Ljava/util/jar/JarEntry;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v17       #nByteCount:I
    :cond_287
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v7, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_292
    .catchall {:try_start_268 .. :try_end_292} :catchall_2f5
    .catch Ljava/io/IOException; {:try_start_268 .. :try_end_292} :catch_149
    .catch Ljava/lang/RuntimeException; {:try_start_268 .. :try_end_292} :catch_235
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_268 .. :try_end_292} :catch_294

    goto/16 :goto_7d

    .line 207
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v17           #nByteCount:I
    :catch_294
    move-exception v9

    move-object v3, v4

    .line 208
    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v19           #readBuffer:[B
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    .local v9, e:Ljava/security/NoSuchAlgorithmException;
    :goto_296
    :try_start_296
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ae
    .catchall {:try_start_296 .. :try_end_2ae} :catchall_2dd

    .line 209
    const/16 v20, 0x0

    .line 212
    if-eqz v3, :cond_2b5

    .line 213
    :try_start_2b2
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    .line 215
    :cond_2b5
    if-eqz v12, :cond_16f

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2ba
    .catch Ljava/io/IOException; {:try_start_2b2 .. :try_end_2ba} :catch_2bc

    goto/16 :goto_16f

    .line 218
    :catch_2bc
    move-exception v9

    .line 220
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_16f

    .line 218
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v9           #e:Ljava/io/IOException;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v17       #nByteCount:I
    .restart local v19       #readBuffer:[B
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :catch_2c2
    move-exception v9

    .line 220
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_ea

    .line 200
    .end local v9           #e:Ljava/io/IOException;
    :cond_2c8
    const/16 v20, 0x1

    .line 212
    if-eqz v4, :cond_2cf

    .line 213
    :try_start_2cc
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    .line 215
    :cond_2cf
    if-eqz v12, :cond_2f2

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2d4
    .catch Ljava/io/IOException; {:try_start_2cc .. :try_end_2d4} :catch_2ee

    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    goto/16 :goto_16f

    .line 218
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v17           #nByteCount:I
    .end local v19           #readBuffer:[B
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    .restart local v9       #e:Ljava/io/IOException;
    :catch_2d7
    move-exception v9

    .line 220
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_16f

    .line 210
    .end local v9           #e:Ljava/io/IOException;
    :catchall_2dd
    move-exception v25

    .line 212
    :goto_2de
    if-eqz v3, :cond_2e3

    .line 213
    :try_start_2e0
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    .line 215
    :cond_2e3
    if-eqz v12, :cond_2e8

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2e8
    .catch Ljava/io/IOException; {:try_start_2e0 .. :try_end_2e8} :catch_2e9

    .line 222
    :cond_2e8
    :goto_2e8
    throw v25

    .line 218
    :catch_2e9
    move-exception v9

    .line 220
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e8

    .line 218
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v9           #e:Ljava/io/IOException;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v17       #nByteCount:I
    .restart local v19       #readBuffer:[B
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :catch_2ee
    move-exception v9

    .line 220
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .end local v9           #e:Ljava/io/IOException;
    :cond_2f2
    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    goto/16 :goto_16f

    .line 210
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v17           #nByteCount:I
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    :catchall_2f5
    move-exception v25

    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    goto :goto_2de

    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v12           #is:Ljava/io/InputStream;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    :catchall_2f8
    move-exception v25

    move-object v12, v13

    .end local v13           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    goto :goto_2de

    .line 207
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v19           #readBuffer:[B
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    :catch_2fc
    move-exception v9

    goto :goto_296

    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v12           #is:Ljava/io/InputStream;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v19       #readBuffer:[B
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :catch_2fe
    move-exception v9

    move-object v12, v13

    .end local v13           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    goto :goto_296

    .line 204
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v19           #readBuffer:[B
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    :catch_302
    move-exception v9

    goto/16 :goto_237

    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v12           #is:Ljava/io/InputStream;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v19       #readBuffer:[B
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :catch_305
    move-exception v9

    move-object v12, v13

    .end local v13           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    goto/16 :goto_237

    .line 201
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v19           #readBuffer:[B
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    :catch_30a
    move-exception v9

    goto/16 :goto_14b

    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v12           #is:Ljava/io/InputStream;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v19       #readBuffer:[B
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :catch_30d
    move-exception v9

    move-object v12, v13

    .end local v13           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    goto/16 :goto_14b

    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v12           #is:Ljava/io/InputStream;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v11       #i:I
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v15       #je:Ljava/util/jar/JarEntry;
    :cond_312
    move-object v12, v13

    .end local v13           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    goto/16 :goto_282
.end method

.method private verifyWithPmKey()Z
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 68
    const-string v1, "com.android.settings"

    const-string v2, "com.sec.android.app.sysscope"

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method final verifySysScopeService()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, apkPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/app/com.sec.android.app.sysscope-1.apk"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 42
    const-string v0, "/data/app/com.sec.android.app.sysscope-1.apk"

    .line 52
    :goto_11
    invoke-direct {p0, v0}, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->parseScopeApk(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 53
    const-string v3, "SysScopeVerifier"

    const-string v4, "parse error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_1e
    return v2

    .line 44
    :cond_1f
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    const-string v3, "/data/app/com.sec.android.app.sysscope-2.apk"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 46
    const-string v0, "/data/app/com.sec.android.app.sysscope-2.apk"

    goto :goto_11

    .line 48
    :cond_2f
    const-string v0, "/system/app/SysScope.apk"

    goto :goto_11

    .line 57
    :cond_32
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->verifyWithPmKey()Z

    move-result v3

    if-nez v3, :cond_40

    .line 58
    const-string v3, "SysScopeVerifier"

    const-string v4, "verifyWithPmKey error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 62
    :cond_40
    const/4 v2, 0x1

    goto :goto_1e
.end method
