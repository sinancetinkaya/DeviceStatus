.class public abstract Lcom/sec/android/app/sysscope/engine/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field protected b:Lcom/sec/android/app/sysscope/engine/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/g;->b:Lcom/sec/android/app/sysscope/engine/d;

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/engine/d;->e()I

    move-result v0

    return v0
.end method

.method public a(Lcom/sec/android/app/sysscope/engine/d;)Lcom/sec/android/app/sysscope/engine/g;
    .registers 2

    iput-object p1, p0, Lcom/sec/android/app/sysscope/engine/g;->b:Lcom/sec/android/app/sysscope/engine/d;

    return-object p0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "name"

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/engine/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/g;->b:Lcom/sec/android/app/sysscope/engine/d;

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/engine/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/g;->b:Lcom/sec/android/app/sysscope/engine/d;

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/engine/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
