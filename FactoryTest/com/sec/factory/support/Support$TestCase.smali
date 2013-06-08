.class public Lcom/sec/factory/support/Support$TestCase;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/support/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestCase"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnabled(Ljava/lang/String;)Z
    .registers 2
    .parameter "id"

    .prologue
    .line 366
    const-string v0, "enable"

    #calls: Lcom/sec/factory/support/Support$Values;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p0, v0}, Lcom/sec/factory/support/Support$Values;->access$100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getKeyTextSize(Ljava/lang/String;)F
    .registers 2
    .parameter "id"

    .prologue
    .line 362
    const-string v0, "size"

    #calls: Lcom/sec/factory/support/Support$Values;->getFloat(Ljava/lang/String;Ljava/lang/String;)F
    invoke-static {p0, v0}, Lcom/sec/factory/support/Support$Values;->access$500(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getSize(Ljava/lang/String;)F
    .registers 2
    .parameter "id"

    .prologue
    .line 378
    const-string v0, "size"

    #calls: Lcom/sec/factory/support/Support$Values;->getFloat(Ljava/lang/String;Ljava/lang/String;)F
    invoke-static {p0, v0}, Lcom/sec/factory/support/Support$Values;->access$500(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "id"

    .prologue
    .line 370
    const-string v0, "value"

    #calls: Lcom/sec/factory/support/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sec/factory/support/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewPoint(Ljava/lang/String;)Landroid/graphics/Point;
    .registers 5
    .parameter "id"

    .prologue
    .line 351
    const-string v3, "point"

    #calls: Lcom/sec/factory/support/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/sec/factory/support/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, position:Ljava/lang/String;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 353
    .local v0, point:Landroid/graphics/Point;
    if-eqz v2, :cond_25

    .line 354
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, pointStr:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 356
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 358
    .end local v1           #pointStr:[Ljava/lang/String;
    :cond_25
    return-object v0
.end method

.method public static isTouchkey(Ljava/lang/String;)Z
    .registers 3
    .parameter "id"

    .prologue
    .line 347
    const-string v0, "keytype"

    #calls: Lcom/sec/factory/support/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sec/factory/support/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
