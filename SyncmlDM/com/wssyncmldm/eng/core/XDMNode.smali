.class public Lcom/wssyncmldm/eng/core/XDMNode;
.super Ljava/lang/Object;
.source "XDMNode.java"


# instance fields
.field public next:Lcom/wssyncmldm/eng/core/XDMNode;

.field public obj:Ljava/lang/Object;

.field public previous:Lcom/wssyncmldm/eng/core/XDMNode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMNode;->obj:Ljava/lang/Object;

    .line 12
    return-void
.end method
