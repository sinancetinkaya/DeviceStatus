.class Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;
.super Ljava/lang/Object;
.source "UITspReferenceMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UITspReferenceMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Ref_value"
.end annotation


# instance fields
.field ref_string:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UITspReferenceMode;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "str"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;->this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;->ref_string:Ljava/lang/String;

    .line 383
    return-void
.end method


# virtual methods
.method get_string()Ljava/lang/String;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;->ref_string:Ljava/lang/String;

    return-object v0
.end method
