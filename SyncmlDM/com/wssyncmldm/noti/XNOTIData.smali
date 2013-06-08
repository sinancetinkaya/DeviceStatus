.class public Lcom/wssyncmldm/noti/XNOTIData;
.super Ljava/lang/Object;
.source "XNOTIData.java"


# instance fields
.field pushData:[B

.field type:I


# direct methods
.method public constructor <init>(I[B)V
    .registers 3
    .parameter "type"
    .parameter "pushData"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/wssyncmldm/noti/XNOTIData;->type:I

    .line 11
    iput-object p2, p0, Lcom/wssyncmldm/noti/XNOTIData;->pushData:[B

    .line 12
    return-void
.end method
