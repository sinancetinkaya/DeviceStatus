.class public Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;
.super Ljava/lang/Object;
.source "XDMDDXMLDataSet.java"


# instance fields
.field public m_szDDVersion:Ljava/lang/String;

.field public m_szDescription:Ljava/lang/String;

.field public m_szIconURI:Ljava/lang/String;

.field public m_szInfoURL:Ljava/lang/String;

.field public m_szInstallNotifyURI:Ljava/lang/String;

.field public m_szInstallParam:Ljava/lang/String;

.field public m_szName:Ljava/lang/String;

.field public m_szNextURL:Ljava/lang/String;

.field public m_szObjectURI:Ljava/lang/String;

.field public m_szSize:Ljava/lang/String;

.field public m_szType:Ljava/lang/String;

.field public m_szVendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szName:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szSize:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szDDVersion:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szObjectURI:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szType:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szVendor:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szDescription:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szInstallNotifyURI:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szNextURL:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szInfoURL:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szIconURI:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMDDXMLDataSet;->m_szInstallParam:Ljava/lang/String;

    .line 32
    return-void
.end method
