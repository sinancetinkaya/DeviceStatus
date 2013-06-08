.class Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;
.super Ljava/lang/Object;
.source "XDMDDFParser.java"

# interfaces
.implements Lcom/wssyncmldm/eng/core/XDMXml;


# instance fields
.field eTagID:[I

.field nTagSP:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/16 v0, 0x1e

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;->eTagID:[I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/wssyncmldm/eng/parser/XDMTndsTagManage;->nTagSP:I

    .line 76
    return-void
.end method
