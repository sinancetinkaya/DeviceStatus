.class public final Lcom/sec/android/app/sysscope/engine/c;
.super Lcom/sec/android/app/sysscope/engine/g;


# instance fields
.field a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/g;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/engine/c;->a:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/sec/android/app/sysscope/service/f;
    .registers 8

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_a
    array-length v1, v3

    if-lt v0, v1, :cond_10

    sget-object v0, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    :goto_f
    return-object v0

    :cond_10
    new-instance v4, Ljava/io/File;

    aget-object v1, v3, v0

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sysscope/engine/c;->a(Ljava/lang/String;)Lcom/sec/android/app/sysscope/service/f;

    move-result-object v1

    sget-object v5, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    if-eq v1, v5, :cond_2b

    move-object v0, v1

    goto :goto_f

    :cond_2b
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v5, "filepath"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sysscope/engine/c;->b:Lcom/sec/android/app/sysscope/engine/d;

    invoke-interface {v4, v1}, Lcom/sec/android/app/sysscope/engine/d;->a(Landroid/os/Bundle;)Lcom/sec/android/app/sysscope/service/f;

    move-result-object v1

    sget-object v4, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    if-eq v1, v4, :cond_4b

    move-object v0, v1

    goto :goto_f

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public final a(Lcom/sec/android/app/sysscope/engine/d;)Lcom/sec/android/app/sysscope/engine/g;
    .registers 6

    invoke-super {p0, p1}, Lcom/sec/android/app/sysscope/engine/g;->a(Lcom/sec/android/app/sysscope/engine/d;)Lcom/sec/android/app/sysscope/engine/g;

    instance-of v0, p1, Lcom/sec/android/app/sysscope/engine/b;

    if-nez v0, :cond_9

    const/4 p0, 0x0

    :cond_8
    return-object p0

    :cond_9
    check-cast p1, Lcom/sec/android/app/sysscope/engine/b;

    iget-object v0, p1, Lcom/sec/android/app/sysscope/engine/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_24
.end method

.method public final synthetic call()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/c;->b:Lcom/sec/android/app/sysscope/engine/d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/engine/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_30

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/engine/c;->a(Landroid/os/Bundle;)V

    const-string v2, "result"

    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/service/f;->a()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "info"

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/engine/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sysscope/engine/c;->a(Ljava/lang/String;)Lcom/sec/android/app/sysscope/service/f;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    if-eq v0, v3, :cond_f

    move-object v1, v0

    goto :goto_f
.end method
