.class public final Lcom/sec/android/app/sysscope/job/a/b;
.super Ljava/lang/Object;


# static fields
.field static final b:[B


# instance fields
.field a:Lcom/sec/android/app/sysscope/job/a/c;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sec/android/app/sysscope/job/a/b;->b:[B

    return-void

    nop

    :array_a
    .array-data 0x1
        0x7ft
        0x45t
        0x4ct
        0x46t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sysscope/job/a/b;->c:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sysscope/job/a/c;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/job/a/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sysscope/job/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/a/b;->a:Lcom/sec/android/app/sysscope/job/a/c;

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/job/a/b;->a()V

    return-void
.end method

.method private a()V
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v1, [Ljava/io/InputStream;

    new-array v3, v1, [Ljava/io/BufferedInputStream;

    :try_start_6
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.sec.android.app.sysscope/databases/"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_16
    new-instance v4, Ljava/io/File;

    const-string v1, "/data/data/com.sec.android.app.sysscope/databases/SysScope.db"

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_29
    iget-object v1, p0, Lcom/sec/android/app/sysscope/job/a/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    move v1, v0

    :goto_34
    array-length v6, v2

    if-lt v1, v6, :cond_4c

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_45
    array-length v6, v2

    if-lt v0, v6, :cond_64

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :goto_4b
    return-void

    :cond_4c
    const-string v6, "databases/SysScope.db"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    aput-object v6, v2, v1

    new-instance v6, Ljava/io/BufferedInputStream;

    aget-object v7, v2, v1

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    aput-object v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_60
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    :cond_64
    aget-object v6, v3, v0

    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v6, v5, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_60

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_73} :catch_76

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :catch_76
    move-exception v0

    goto :goto_4b
.end method


# virtual methods
.method public final a(Ljava/io/File;)Z
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v1, Lcom/sec/android/app/sysscope/job/a/b;->b:[B

    array-length v1, v1

    new-array v1, v1, [B

    sget-object v2, Lcom/sec/android/app/sysscope/job/a/b;->b:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v8, v2}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    sget-object v0, Lcom/sec/android/app/sysscope/job/a/b;->b:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v9

    :goto_1e
    if-nez v0, :cond_24

    move v0, v8

    :goto_21
    return v0

    :cond_22
    move v0, v8

    goto :goto_1e

    :cond_24
    new-instance v0, Lcom/sec/android/app/sysscope/job/a/a;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/job/a/a;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sysscope/job/a/b;->a:Lcom/sec/android/app/sysscope/job/a/c;

    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/job/a/c;->a()Lcom/sec/android/app/sysscope/job/a/c;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/job/a/b;->a:Lcom/sec/android/app/sysscope/job/a/c;

    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/job/a/c;->c()Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_37
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/a/b;->a:Lcom/sec/android/app/sysscope/job/a/c;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/job/a/c;->b()V

    move v0, v8

    goto :goto_21

    :cond_47
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sysscope/job/a/a;->a(Ljava/io/File;JJLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    move v0, v9

    goto :goto_21

    :cond_67
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_37
.end method
