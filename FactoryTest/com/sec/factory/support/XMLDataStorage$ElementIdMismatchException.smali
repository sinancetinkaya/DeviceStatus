.class public Lcom/sec/factory/support/XMLDataStorage$ElementIdMismatchException;
.super Ljava/lang/RuntimeException;
.source "XMLDataStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/support/XMLDataStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ElementIdMismatchException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x481b5e841df8cf50L


# instance fields
.field final synthetic this$0:Lcom/sec/factory/support/XMLDataStorage;


# direct methods
.method public constructor <init>(Lcom/sec/factory/support/XMLDataStorage;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "detailMessage"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/sec/factory/support/XMLDataStorage$ElementIdMismatchException;->this$0:Lcom/sec/factory/support/XMLDataStorage;

    .line 370
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 371
    return-void
.end method
