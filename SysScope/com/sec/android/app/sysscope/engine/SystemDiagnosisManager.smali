.class public Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;
.super Ljava/lang/Object;


# static fields
.field private static final e:Lcom/sec/android/app/sysscope/job/c;


# instance fields
.field a:Lcom/sec/android/app/sysscope/engine/m;

.field b:Ljava/util/List;

.field private c:[Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sec/android/app/sysscope/job/c;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/job/c;-><init>()V

    sput-object v0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->e:Lcom/sec/android/app/sysscope/job/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rpscanner"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "adbscanner"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "partition_checker"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "su_scanner"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "kernel_checker"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->c:[Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 11

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->c:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->d:Landroid/content/Context;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v7, v4

    move v2, v3

    :goto_d
    if-lt v2, v7, :cond_22

    invoke-interface {v6, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sec/android/app/sysscope/engine/f;

    invoke-direct {v0, v3}, Lcom/sec/android/app/sysscope/engine/f;-><init>(B)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v6, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->b:Ljava/util/List;

    sget-object v0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->e:Lcom/sec/android/app/sysscope/job/c;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/job/c;->a()V

    return-void

    :cond_22
    aget-object v0, v4, v2

    const-string v8, "rpscanner"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    new-instance v0, Lcom/sec/android/app/sysscope/job/RootProcessScanner;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/job/RootProcessScanner;-><init>()V

    :goto_31
    if-eqz v0, :cond_a2

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/engine/d;->c()V

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/engine/d;->b()Ljava/lang/String;

    move-result-object v8

    const-string v9, "general"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8c

    new-instance v8, Lcom/sec/android/app/sysscope/engine/l;

    invoke-direct {v8}, Lcom/sec/android/app/sysscope/engine/l;-><init>()V

    invoke-virtual {v8, v0}, Lcom/sec/android/app/sysscope/engine/l;->a(Lcom/sec/android/app/sysscope/engine/d;)Lcom/sec/android/app/sysscope/engine/g;

    move-result-object v0

    :goto_4b
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_52
    const-string v8, "adbscanner"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_60

    new-instance v0, Lcom/sec/android/app/sysscope/job/a;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/job/a;-><init>()V

    goto :goto_31

    :cond_60
    const-string v8, "su_scanner"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    new-instance v0, Lcom/sec/android/app/sysscope/job/g;

    invoke-direct {v0, v5}, Lcom/sec/android/app/sysscope/job/g;-><init>(Landroid/content/Context;)V

    goto :goto_31

    :cond_6e
    const-string v8, "partition_checker"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7c

    new-instance v0, Lcom/sec/android/app/sysscope/job/b;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/job/b;-><init>()V

    goto :goto_31

    :cond_7c
    const-string v8, "kernel_checker"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    new-instance v0, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;-><init>()V

    goto :goto_31

    :cond_8a
    move-object v0, v1

    goto :goto_31

    :cond_8c
    invoke-interface {v0}, Lcom/sec/android/app/sysscope/engine/d;->b()Ljava/lang/String;

    move-result-object v8

    const-string v9, "filescanning"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a2

    new-instance v8, Lcom/sec/android/app/sysscope/engine/c;

    invoke-direct {v8}, Lcom/sec/android/app/sysscope/engine/c;-><init>()V

    invoke-virtual {v8, v0}, Lcom/sec/android/app/sysscope/engine/c;->a(Lcom/sec/android/app/sysscope/engine/d;)Lcom/sec/android/app/sysscope/engine/g;

    move-result-object v0

    goto :goto_4b

    :cond_a2
    move-object v0, v1

    goto :goto_4b
.end method

.method public final a(Lcom/sec/android/app/sysscope/engine/m;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/m;

    return-void
.end method

.method public final b()V
    .registers 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->b:Ljava/util/List;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/m;

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/engine/m;->a()V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/m;

    const-string v1, "no jobs loaded"

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/sysscope/engine/m;->a(ZLjava/lang/String;)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/m;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/m;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sysscope/engine/m;->a(I)V

    :cond_26
    new-instance v5, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    invoke-direct {v5}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_32
    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_88

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/sec/android/app/sysscope/engine/j;->a()Lcom/sec/android/app/sysscope/engine/j;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sysscope/engine/j;->a(Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;)V

    invoke-virtual {v5}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a()I

    move-result v0

    const-string v1, "SysScopeDiagnosisManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "SysDiagnosisManager > call storeResult"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/app/sysscope/engine/Log;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->storeResult(I)I

    move-result v1

    const-string v4, "SysScopeDiagnosisManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SysDiagnosisManager > storeResult:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sec/android/app/sysscope/engine/Log;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/m;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/m;

    if-eq v0, v3, :cond_80

    move v2, v3

    :cond_80
    invoke-virtual {v5}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/sysscope/engine/m;->a(ZLjava/lang/String;)V

    goto :goto_16

    :cond_88
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/engine/g;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/g;->a()I

    move-result v7

    const/4 v8, 0x2

    if-gt v7, v8, :cond_32

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/m;

    if-eqz v8, :cond_a8

    iget-object v8, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/m;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v0}, Lcom/sec/android/app/sysscope/engine/m;->a(ILjava/lang/String;)V

    :cond_a8
    sget-object v0, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    :try_start_aa
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_32

    const-string v7, "result"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/sysscope/service/f;->a(I)Lcom/sec/android/app/sysscope/service/f;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    if-eq v7, v8, :cond_32

    const-string v8, "info"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/app/sysscope/service/f;->a(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a(Lcom/sec/android/app/sysscope/service/f;)V
    :try_end_ce
    .catch Ljava/lang/InterruptedException; {:try_start_aa .. :try_end_ce} :catch_d0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_aa .. :try_end_ce} :catch_da

    goto/16 :goto_32

    :catch_d0
    move-exception v0

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v1, v0

    goto/16 :goto_32

    :catch_da
    move-exception v0

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    move v1, v0

    goto/16 :goto_32
.end method

.method public native storeResult(I)I
.end method
