.class public Lcom/wssyncmldm/eng/core/XDMText;
.super Ljava/lang/Object;
.source "XDMText.java"


# instance fields
.field public len:I

.field public size:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    .line 6
    iput v1, p0, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    .line 7
    iput v1, p0, Lcom/wssyncmldm/eng/core/XDMText;->size:I

    .line 3
    return-void
.end method
