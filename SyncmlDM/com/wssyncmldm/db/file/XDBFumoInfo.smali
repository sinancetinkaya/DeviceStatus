.class public Lcom/wssyncmldm/db/file/XDBFumoInfo;
.super Ljava/lang/Object;
.source "XDBFumoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public AuthType:I

.field public Correlator:Ljava/lang/String;

.field public ObexType:I

.field public ResultCode:Ljava/lang/String;

.field public ServerIP:Ljava/lang/String;

.field public ServerPort:I

.field public ServerUrl:Ljava/lang/String;

.field public bUpdateWait:Z

.field public m_szAcceptType:Ljava/lang/String;

.field public m_szContentType:Ljava/lang/String;

.field public m_szObjectDownloadIP:Ljava/lang/String;

.field public m_szObjectDownloadProtocol:Ljava/lang/String;

.field public m_szObjectDownloadUrl:Ljava/lang/String;

.field public m_szProtocol:Ljava/lang/String;

.field public m_szReportURI:Ljava/lang/String;

.field public m_szStatusNodeName:Ljava/lang/String;

.field public m_szStatusNotifyIP:Ljava/lang/String;

.field public m_szStatusNotifyProtocol:Ljava/lang/String;

.field public m_szStatusNotifyUrl:Ljava/lang/String;

.field public nDownloadMode:Z

.field public nFFSWriteSize:I

.field public nInitiatedType:I

.field public nObjectDownloadPort:I

.field public nObjectSize:I

.field public nStatus:I

.field public nStatusNotifyPort:I

.field public nUpdateMechanism:I

.field public szDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szProtocol:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerUrl:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ServerIP:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szObjectDownloadProtocol:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szObjectDownloadUrl:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szObjectDownloadIP:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNotifyProtocol:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNotifyUrl:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNotifyIP:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szReportURI:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szStatusNodeName:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->ResultCode:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->Correlator:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szContentType:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->m_szAcceptType:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->nDownloadMode:Z

    .line 63
    iput-boolean v1, p0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->bUpdateWait:Z

    .line 64
    return-void
.end method
