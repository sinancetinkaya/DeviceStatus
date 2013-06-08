.class public Lcom/wssyncmldm/db/file/XDBProflieListInfo;
.super Ljava/lang/Object;
.source "XDBProflieListInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public MagicNumber:I

.field public NotiResumeState:Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;

.field public ProfileName:[Ljava/lang/String;

.field public Profileindex:I

.field public bAutoUpdate:Z

.field public bPushMessage:Z

.field public bSkipDevDiscovery:Z

.field public bWifiOnly:Z

.field public m_szNetworkConnName:Ljava/lang/String;

.field public m_szSessionID:Ljava/lang/String;

.field public nDDFParserNodeIndex:I

.field public nDestoryNotiTime:J

.field public nNotiEvent:I

.field public nNotiReSyncMode:I

.field public nProxyIndex:I

.field public nSaveDeltaFileIndex:I

.field public tUicResultKeep:Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->m_szNetworkConnName:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nProxyIndex:I

    .line 34
    iput v1, p0, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->Profileindex:I

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->ProfileName:[Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->bSkipDevDiscovery:Z

    .line 37
    new-instance v0, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->NotiResumeState:Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;

    .line 38
    new-instance v0, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->tUicResultKeep:Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;

    .line 39
    iput v1, p0, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nDDFParserNodeIndex:I

    .line 40
    iput-boolean v1, p0, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->bWifiOnly:Z

    .line 41
    iput-boolean v1, p0, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->bAutoUpdate:Z

    .line 42
    iput-boolean v1, p0, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->bPushMessage:Z

    .line 43
    iput v1, p0, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->nSaveDeltaFileIndex:I

    .line 44
    return-void
.end method
