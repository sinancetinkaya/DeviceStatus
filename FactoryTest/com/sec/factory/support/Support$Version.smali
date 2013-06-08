.class public Lcom/sec/factory/support/Support$Version;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/support/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "id"

    .prologue
    .line 31
    const-string v0, "value"

    #calls: Lcom/sec/factory/support/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sec/factory/support/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
