.class public Lcom/wssyncmldm/eng/core/XDMOmTree;
.super Ljava/lang/Object;
.source "XDMOmTree.java"


# instance fields
.field public m_szServerId:Ljava/lang/String;

.field public vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMOmVfs;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMOmVfs;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->vfs:Lcom/wssyncmldm/eng/core/XDMOmVfs;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMOmTree;->m_szServerId:Ljava/lang/String;

    .line 12
    return-void
.end method
