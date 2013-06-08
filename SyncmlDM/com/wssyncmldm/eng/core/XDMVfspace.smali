.class public Lcom/wssyncmldm/eng/core/XDMVfspace;
.super Ljava/lang/Object;
.source "XDMVfspace.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# instance fields
.field end:[I

.field i:I

.field start:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x400

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/wssyncmldm/eng/core/XDMVfspace;->i:I

    .line 14
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMVfspace;->start:[I

    .line 15
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMVfspace;->end:[I

    .line 16
    return-void
.end method
