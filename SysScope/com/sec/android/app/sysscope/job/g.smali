.class public final Lcom/sec/android/app/sysscope/job/g;
.super Lcom/sec/android/app/sysscope/engine/b;


# instance fields
.field public b:Lcom/sec/android/app/sysscope/job/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/b;-><init>()V

    new-instance v0, Lcom/sec/android/app/sysscope/job/a/b;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sysscope/job/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/g;->b:Lcom/sec/android/app/sysscope/job/a/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lcom/sec/android/app/sysscope/service/f;
    .registers 4

    const-string v0, "filepath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_b
    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/g;->b:Lcom/sec/android/app/sysscope/job/a/b;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sysscope/job/a/b;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/job/g;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sysscope/service/f;->e:Lcom/sec/android/app/sysscope/service/f;
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_1c} :catch_23
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_1d

    :goto_1c
    return-object v0

    :catch_1d
    move-exception v0

    :cond_1e
    :goto_1e
    sget-object v0, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    goto :goto_1c

    :catch_21
    move-exception v0

    goto :goto_1e

    :catch_23
    move-exception v0

    goto :goto_1e
.end method

.method public final c()V
    .registers 2

    const-string v0, "/system/bin/"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/job/g;->b(Ljava/lang/String;)V

    const-string v0, "/system/xbin/"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/job/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    const-string v0, "Dangerous executable file scanner"

    return-object v0
.end method

.method public final e()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
