.class public Lcom/sec/android/app/sysscope/job/RootProcessScanner;
.super Lcom/sec/android/app/sysscope/engine/k;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "debuggerd"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "init"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "installd"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "servicemanager"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "vold"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "zygote"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "netd"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ueventd"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "dock_kbd_attach"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "pppd"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "pppd_runner"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "mpdecision"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "thermald"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "hdmid"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "sec_keyboard"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5b
    array-length v3, v1

    if-lt v0, v3, :cond_69

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->a:Ljava/util/regex/Pattern;

    return-void

    :cond_69
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    array-length v4, v1

    if-ge v3, v4, :cond_78

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/k;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "status"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    :try_start_c
    const-string v0, "Name:"

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->a(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1a

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    return-object v0

    :catchall_1a
    move-exception v0

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    throw v0
.end method

.method private static a(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Scanner;
    .registers 3

    :cond_0
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lcom/sec/android/app/sysscope/service/f;
    .registers 13

    const/4 v4, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    :try_start_4
    new-instance v1, Ljava/io/File;

    const-string v3, "/proc"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2c

    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is missing (man 5 proc)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2a
    move-exception v1

    :cond_2b
    :goto_2b
    return-object v0

    :cond_2c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_3e

    array-length v1, v6

    if-lez v1, :cond_3e

    array-length v7, v6

    move v1, v2

    :goto_3c
    if-lt v1, v7, :cond_53

    :cond_3e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2b

    sget-object v1, Lcom/sec/android/app/sysscope/service/f;->d:Lcom/sec/android/app/sysscope/service/f;
    :try_end_46
    .catch Lcom/sec/android/app/sysscope/job/f; {:try_start_4 .. :try_end_46} :catch_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_46} :catch_cf

    :try_start_46
    const-string v0, ""

    :goto_48
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_a8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->a(Ljava/lang/String;)V
    :try_end_51
    .catch Lcom/sec/android/app/sysscope/job/f; {:try_start_46 .. :try_end_51} :catch_d6
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_51} :catch_d2

    move-object v0, v1

    goto :goto_2b

    :cond_53
    :try_start_53
    aget-object v8, v6, v1

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_a4

    const-string v3, "\\d+"

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a4

    move v3, v4

    :goto_68
    if-eqz v3, :cond_a6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "/proc/"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->checkIsApprivedProcess(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_a6

    move v3, v4

    :goto_84
    if-eqz v3, :cond_a1

    const-string v3, "SysScopeRootScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isUnapprovedRootProcess returns true: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/sec/android/app/sysscope/engine/Log;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a1
    .catch Lcom/sec/android/app/sysscope/job/f; {:try_start_53 .. :try_end_a1} :catch_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_a1} :catch_cf

    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_a4
    move v3, v2

    goto :goto_68

    :cond_a6
    move v3, v2

    goto :goto_84

    :cond_a8
    :try_start_a8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c8
    .catch Lcom/sec/android/app/sysscope/job/f; {:try_start_a8 .. :try_end_c8} :catch_d6
    .catch Ljava/io/FileNotFoundException; {:try_start_a8 .. :try_end_c8} :catch_d2

    move-result-object v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto/16 :goto_48

    :catch_cf
    move-exception v1

    goto/16 :goto_2b

    :catch_d2
    move-exception v0

    move-object v0, v1

    goto/16 :goto_2b

    :catch_d6
    move-exception v0

    move-object v0, v1

    goto/16 :goto_2b
.end method

.method public final c()V
    .registers 1

    return-void
.end method

.method public native checkIsApprivedProcess(Ljava/lang/String;)I
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    const-string v0, "Unauthorized root process scanner"

    return-object v0
.end method

.method public final e()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
