.class public Lcom/sec/factory/support/Support$SystemInfo;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/support/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBGColor()I
    .registers 2

    .prologue
    .line 414
    const-string v0, "SYS_INFO_BG_COLOR"

    const-string v1, "color"

    #calls: Lcom/sec/factory/support/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFontColor()I
    .registers 2

    .prologue
    .line 410
    const-string v0, "SYS_INFO_FONT_COLOR"

    const-string v1, "color"

    #calls: Lcom/sec/factory/support/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFontSize()I
    .registers 2

    .prologue
    .line 406
    const-string v0, "SYS_INFO_FONT_SIZE"

    const-string v1, "size"

    #calls: Lcom/sec/factory/support/Support$Values;->getInt(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Values;->access$400(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPosition()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 418
    const-string v0, "SYS_INFO_OUT_POSITION"

    const-string v1, "point"

    #calls: Lcom/sec/factory/support/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVisibility(Ljava/lang/String;)Z
    .registers 2
    .parameter "id"

    .prologue
    .line 422
    const-string v0, "visibility"

    #calls: Lcom/sec/factory/support/Support$Values;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p0, v0}, Lcom/sec/factory/support/Support$Values;->access$100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
