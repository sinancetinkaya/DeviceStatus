.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saturatedCast(J)I
    .registers 4
    .parameter "value"

    .prologue
    .line 97
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_b

    .line 98
    const v0, 0x7fffffff

    .line 103
    :goto_a
    return v0

    .line 100
    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_15

    .line 101
    const/high16 v0, -0x8000

    goto :goto_a

    .line 103
    :cond_15
    long-to-int v0, p0

    goto :goto_a
.end method
