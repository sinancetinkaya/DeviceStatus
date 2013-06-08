.class public Lcom/sec/factory/support/Support$Spec;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/support/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Ljava/lang/String;)I
    .registers 2
    .parameter "id"

    .prologue
    .line 454
    const-string v0, "value"

    #calls: Lcom/sec/factory/support/Support$Values;->getInt(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v0}, Lcom/sec/factory/support/Support$Values;->access$400(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
