.class final Lcom/sec/android/app/sysscope/job/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    const/4 v1, 0x1

    const/4 v0, -0x1

    check-cast p1, Lcom/sec/android/app/sysscope/job/e;

    check-cast p2, Lcom/sec/android/app/sysscope/job/e;

    iget v2, p1, Lcom/sec/android/app/sysscope/job/e;->l:I

    iget v3, p1, Lcom/sec/android/app/sysscope/job/e;->m:I

    add-int/2addr v2, v3

    iget v3, p2, Lcom/sec/android/app/sysscope/job/e;->l:I

    iget v4, p2, Lcom/sec/android/app/sysscope/job/e;->m:I

    add-int/2addr v3, v4

    if-eq v2, v3, :cond_17

    if-le v2, v3, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    :cond_17
    iget-boolean v2, p1, Lcom/sec/android/app/sysscope/job/e;->s:Z

    iget-boolean v3, p2, Lcom/sec/android/app/sysscope/job/e;->s:Z

    if-eq v2, v3, :cond_23

    iget-boolean v2, p1, Lcom/sec/android/app/sysscope/job/e;->s:Z

    if-nez v2, :cond_14

    move v0, v1

    goto :goto_14

    :cond_23
    iget-boolean v2, p1, Lcom/sec/android/app/sysscope/job/e;->t:Z

    iget-boolean v3, p2, Lcom/sec/android/app/sysscope/job/e;->t:Z

    if-eq v2, v3, :cond_2f

    iget-boolean v2, p1, Lcom/sec/android/app/sysscope/job/e;->s:Z

    if-nez v2, :cond_14

    move v0, v1

    goto :goto_14

    :cond_2f
    const/4 v0, 0x0

    goto :goto_14
.end method
