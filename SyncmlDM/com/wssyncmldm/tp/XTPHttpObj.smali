.class public Lcom/wssyncmldm/tp/XTPHttpObj;
.super Ljava/lang/Object;
.source "XTPHttpObj.java"


# instance fields
.field public AppSockfd:I

.field public EvtMsg:I

.field public HttpSocketStatus:I

.field public Networkstatus:I

.field public appId:I

.field public bHttpBufferAlloc:Z

.field public bHttpHeaderParser:Z

.field public cServerType:I

.field public currentOffset:I

.field public dataSize:I

.field public dnsQueryRetryCount:I

.field public eCode:I

.field public hProtocol:I

.field public httpObjUseable:Z

.field public isServerInfo:Z

.field public m_szContentRange:Ljava/lang/String;

.field public m_szEventHandlerName:Ljava/lang/String;

.field public m_szHttpAccept:Ljava/lang/String;

.field public m_szHttpConnection:Ljava/lang/String;

.field public m_szHttpHost:Ljava/lang/String;

.field public m_szHttpMimeType:Ljava/lang/String;

.field public m_szHttpOpenMode:Ljava/lang/String;

.field public m_szHttpUserAgent:Ljava/lang/String;

.field public m_szHttpVersion:Ljava/lang/String;

.field public m_szHttpcookie:Ljava/lang/String;

.field public m_szProxyAddr:Ljava/lang/String;

.field public m_szProxyIP:Ljava/lang/String;

.field public m_szRequestUri:Ljava/lang/String;

.field public m_szResponseContentType:Ljava/lang/String;

.field public m_szServerAddr:Ljava/lang/String;

.field public m_szServerIP:Ljava/lang/String;

.field public m_szServerURL:Ljava/lang/String;

.field public nChunkCurOffset:I

.field public nChunkDataSize:I

.field public nChunkReadLen:I

.field public nComingRemoteClose:Z

.field public nContentLength:I

.field public nDownloadMode:Z

.field public nHeaderLength:I

.field public nHttpConnection:I

.field public nHttpReturnStatusValue:I

.field public nInetAddr:I

.field public nPort:I

.field public nReadLen:I

.field public nRecvCurOffset:I

.field public nRecvDataSize:I

.field public nRecvReadLen:I

.field public nRemainLen:I

.field public nServerPort:I

.field public nTimerID:I

.field public nTimerUsed:Z

.field public nTimerWaitCounter:I

.field public nTransferCoding:I

.field public nTransferCodingFlag:Z

.field public nTunnelConnected:I

.field public nTunnelMode:I

.field public nWriteBuffAllocSize:I

.field public nWriteCurOffset:I

.field public nWriteDataSize:I

.field public pChunkBuffer:[B

.field public pDownloadData:[B

.field public pHmacData:[B

.field public pReceiveBuffer:[B

.field public pReceiveHmacData:[B

.field public pWriteBuffer:[B

.field public protocol:I

.field public proxyPort:I

.field public recevieBufferAllocSize:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szEventHandlerName:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerURL:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szProxyAddr:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerAddr:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerIP:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szProxyIP:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpOpenMode:Ljava/lang/String;

    .line 100
    iput v1, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpConnection:I

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpConnection:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpMimeType:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpVersion:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpUserAgent:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpHost:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpAccept:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szRequestUri:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szContentRange:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpcookie:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szResponseContentType:Ljava/lang/String;

    .line 112
    iput v1, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpReturnStatusValue:I

    .line 113
    iput v1, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->nContentLength:I

    .line 114
    iput v1, p0, Lcom/wssyncmldm/tp/XTPHttpObj;->nTransferCoding:I

    .line 115
    return-void
.end method
