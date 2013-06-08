.class public Lcom/wssyncmldm/eng/core/XDMAccXNode;
.super Ljava/lang/Object;
.source "XDMAccXNode.java"


# instance fields
.field public m_szAccount:Ljava/lang/String;

.field public m_szAppAddr:Ljava/lang/String;

.field public m_szAppAddrPort:Ljava/lang/String;

.field public m_szClientAppAuth:Ljava/lang/String;

.field public m_szServerAppAuth:Ljava/lang/String;

.field public m_szToConRef:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/String;

    const-string v1, "./DMAcc/OSP"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAccount:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/String;

    const-string v1, "./DMAcc/OSP/AppAddr/AppAddrX"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddr:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/String;

    const-string v1, "./DMAcc/OSP/AppAddr/AppAddrX/Port/PortX"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szAppAddrPort:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/String;

    const-string v1, "./DMAcc/OSP/AppAuth/ClientSide"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szClientAppAuth:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/String;

    const-string v1, "./DMAcc/OSP/AppAuth/ServerSide"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szServerAppAuth:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/String;

    const-string v1, "./DMAcc/OSP/ToConRef/Connectivity Reference Name"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMAccXNode;->m_szToConRef:Ljava/lang/String;

    .line 20
    return-void
.end method
