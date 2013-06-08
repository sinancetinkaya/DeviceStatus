.class public Lcom/android/common/Rfc822InputFilter;
.super Ljava/lang/Object;
.source "Rfc822InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 13
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v2, 0x0

    .line 37
    sub-int v4, p3, p2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_f

    .line 72
    :cond_e
    :goto_e
    :sswitch_e
    return-object v2

    .line 43
    :cond_f
    move v3, p5

    .line 44
    .local v3, scanBack:I
    const/4 v1, 0x0

    .line 45
    .local v1, dotFound:Z
    :goto_11
    if-lez v3, :cond_e

    .line 46
    add-int/lit8 v3, v3, -0x1

    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 47
    .local v0, c:C
    sparse-switch v0, :sswitch_data_34

    goto :goto_11

    .line 49
    :sswitch_1d
    const/4 v1, 0x1

    .line 50
    goto :goto_11

    .line 54
    :sswitch_1f
    if-eqz v1, :cond_e

    .line 59
    instance-of v4, p1, Landroid/text/Spanned;

    if-eqz v4, :cond_30

    .line 60
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v4, ","

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    .local v2, sb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_e

    .line 64
    .end local v2           #sb:Landroid/text/SpannableStringBuilder;
    :cond_30
    const-string v2, ", "

    goto :goto_e

    .line 47
    nop

    :sswitch_data_34
    .sparse-switch
        0x2c -> :sswitch_e
        0x2e -> :sswitch_1d
        0x40 -> :sswitch_1f
    .end sparse-switch
.end method
