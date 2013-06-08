.class Lcom/sec/factory/aporiented/athandler/AtTspptest$Ref_value;
.super Ljava/lang/Object;
.source "AtTspptest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtTspptest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Ref_value"
.end annotation


# instance fields
.field ref_string:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtTspptest;


# direct methods
.method public constructor <init>(Lcom/sec/factory/aporiented/athandler/AtTspptest;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "str"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest$Ref_value;->this$0:Lcom/sec/factory/aporiented/athandler/AtTspptest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest$Ref_value;->ref_string:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method get_string()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest$Ref_value;->ref_string:Ljava/lang/String;

    return-object v0
.end method
