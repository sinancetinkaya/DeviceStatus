.class final Lcom/sec/android/app/sysscope/engine/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/sec/android/app/sysscope/engine/g;

    check-cast p2, Lcom/sec/android/app/sysscope/engine/g;

    invoke-virtual {p1}, Lcom/sec/android/app/sysscope/engine/g;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/app/sysscope/engine/g;->a()I

    move-result v1

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, -0x1

    goto :goto_f
.end method
