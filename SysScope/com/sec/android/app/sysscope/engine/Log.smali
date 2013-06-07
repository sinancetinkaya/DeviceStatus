.class public Lcom/sec/android/app/sysscope/engine/Log;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sysscope/engine/Log;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    sget-boolean v0, Lcom/sec/android/app/sysscope/engine/Log;->a:Z

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    sget-boolean v0, Lcom/sec/android/app/sysscope/engine/Log;->a:Z

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/sec/android/app/sysscope/engine/Log;->a:Z

    invoke-static {p0}, Lcom/sec/android/app/sysscope/engine/Log;->setNativeLogState(Z)V

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/sec/android/app/sysscope/engine/Log;->a:Z

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    sget-boolean v0, Lcom/sec/android/app/sysscope/engine/Log;->a:Z

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    sget-boolean v0, Lcom/sec/android/app/sysscope/engine/Log;->a:Z

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    sget-boolean v0, Lcom/sec/android/app/sysscope/engine/Log;->a:Z

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static native setNativeLogState(Z)V
.end method
