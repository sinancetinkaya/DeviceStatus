.class public Lcom/wssyncmldm/eng/core/XDMOmAcl;
.super Ljava/lang/Object;
.source "XDMOmAcl.java"


# instance fields
.field public ac:I

.field public m_szServerid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->m_szServerid:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/wssyncmldm/eng/core/XDMOmAcl;->ac:I

    .line 12
    return-void
.end method
