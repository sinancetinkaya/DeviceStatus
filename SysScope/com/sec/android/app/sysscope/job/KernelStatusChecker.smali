.class public Lcom/sec/android/app/sysscope/job/KernelStatusChecker;
.super Lcom/sec/android/app/sysscope/engine/k;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "cordon"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/k;-><init>()V

    const-string v0, "Official"

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->b:J

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    const/16 v1, 0x10

    :try_start_3
    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_1d

    move-result-wide v1

    const-wide/32 v3, -0x1000000

    and-long/2addr v3, v1

    const/16 v5, 0x18

    shr-long/2addr v3, v5

    const-wide/16 v5, 0xff

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    :goto_14
    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->b:J

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_14

    :catch_1d
    move-exception v1

    goto :goto_1a
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lcom/sec/android/app/sysscope/service/f;
    .registers 6

    sget-object v0, Lcom/sec/android/app/sysscope/service/f;->f:Lcom/sec/android/app/sysscope/service/f;

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->getCmdLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->getCmdLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " custom binary download count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sysscope/job/KernelStatusChecker;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()V
    .registers 1

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    const-string v0, "Kernel Checker"

    return-object v0
.end method

.method public final e()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public native getCmdLine()Ljava/lang/String;
.end method
