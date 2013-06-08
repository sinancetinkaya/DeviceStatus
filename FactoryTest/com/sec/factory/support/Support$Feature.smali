.class public Lcom/sec/factory/support/Support$Feature;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/support/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .registers 2
    .parameter "id"

    .prologue
    .line 125
    const-string v0, "value"

    #calls: Lcom/sec/factory/support/Support$Values;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p0, v0}, Lcom/sec/factory/support/Support$Values;->access$100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "id"
    .parameter "defaultValue"

    .prologue
    .line 129
    const-string v0, "value"

    const/4 v1, 0x1

    #calls: Lcom/sec/factory/support/Support$Values;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {p0, v0, v1}, Lcom/sec/factory/support/Support$Values;->access$200(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getFactoryTextSize()F
    .registers 4

    .prologue
    .line 153
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v1

    invoke-static {}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getFactoryTestMenuElemName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fontsize"

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/support/XMLDataStorage;->getAttributeValueByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, fontsize:Ljava/lang/String;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public static getInt(Ljava/lang/String;)I
    .registers 2
    .parameter "id"

    .prologue
    .line 141
    const-string v0, "value"

    #calls: Lcom/sec/factory/support/Support$Values;->getInt(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v0}, Lcom/sec/factory/support/Support$Values;->access$400(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "id"

    .prologue
    .line 137
    const-string v0, "value"

    #calls: Lcom/sec/factory/support/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sec/factory/support/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
