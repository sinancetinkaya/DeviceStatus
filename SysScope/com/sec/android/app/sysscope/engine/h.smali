.class public final Lcom/sec/android/app/sysscope/engine/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/sec/android/app/sysscope/engine/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sysscope/engine/h;->a:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sysscope/engine/i;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sysscope/engine/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/engine/h;->b:Lcom/sec/android/app/sysscope/engine/i;

    return-void
.end method

.method private a(II)V
    .registers 10

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/h;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-int/lit16 v4, p1, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    mul-int/lit16 v4, p2, 0xe10

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/h;->f()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerAlarm, interval:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit16 v2, p2, 0xe10

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static d()Z
    .registers 3

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v2, "/efs/FactoryApp/factorymode"

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_1f

    :goto_13
    if-eqz v0, :cond_23

    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_1e
    return v0

    :catch_1f
    move-exception v0

    const-string v0, "OFF"

    goto :goto_13

    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/h;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/h;->f()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private f()Landroid/app/PendingIntent;
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/h;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.intent.action.SYSSCOPE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "period_scan"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/h;->b:Lcom/sec/android/app/sysscope/engine/i;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/i;->a()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sysscope/engine/h;->a(II)V

    :goto_c
    return-void

    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/h;->e()V

    goto :goto_c
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/h;->b:Lcom/sec/android/app/sysscope/engine/i;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sysscope/engine/i;->a(I)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/h;->b:Lcom/sec/android/app/sysscope/engine/i;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/i;->a()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-static {}, Lcom/sec/android/app/sysscope/engine/h;->d()Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v1, 0x12c

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sysscope/engine/h;->a(II)V

    :goto_13
    return-void

    :cond_14
    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sysscope/engine/h;->a(II)V

    goto :goto_13

    :cond_1a
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/h;->e()V

    goto :goto_13
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/h;->b:Lcom/sec/android/app/sysscope/engine/i;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/i;->a()I

    move-result v0

    return v0
.end method
